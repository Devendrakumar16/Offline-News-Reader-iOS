//
//  NewsListView.swift
//  OfflineNewsApp
//
//  Created by Devendra Kumar on 17/06/26.
//


import SwiftUI

struct NewsListView: View {

    @StateObject private var viewModel = NewsListViewModel()

    var body: some View {
        NavigationStack {
            Group {
                if viewModel.isLoading && viewModel.articles.isEmpty {
                    ProgressView()
                } else {
                    List {
                        ForEach(viewModel.articles) { article in
                            NewsRowView(article: article)
                                .listRowSeparator(.hidden)
                                .listRowInsets(
                                    EdgeInsets(
                                        top: 8,
                                        leading: 16,
                                        bottom: 8,
                                        trailing: 16
                                    )
                                )
                                .onAppear {
                                    viewModel.loadMoreIfNeeded(current: article)
                                }
                        }

                        if viewModel.isPaginating {
                            HStack {
                                Spacer()
                                ProgressView()
                                Spacer()
                            }
                        }
                    }
                    .listStyle(.plain)
                    .refreshable {
                        await viewModel.refresh()
                    }
                }
            }
            .navigationTitle("Top Headlines")
            .searchable(
                text: $viewModel.searchText,
                prompt: "Search news"
            )
            .overlay(alignment: .bottom) {
                if !viewModel.isOnline {
                    Label("Offline Mode", systemImage: "wifi.slash")
                        .padding(.horizontal, 14)
                        .padding(.vertical, 8)
                        .background(.ultraThinMaterial)
                        .clipShape(Capsule())
                        .padding(.bottom)
                }
            }
        }
        .task {
            await viewModel.loadNews()
        }
    }
}