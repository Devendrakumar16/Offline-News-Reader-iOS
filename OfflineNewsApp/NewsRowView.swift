//
//  NewsRowView.swift
//  OfflineNewsApp
//
//  Created by Devendra Kumar on 17/06/26.
//


import SwiftUI

struct NewsRowView: View {

    let article: NewsArticle

    var body: some View {

        HStack(alignment: .top, spacing: 12) {

            AsyncImage(url: article.imageURL) { phase in

                switch phase {

                case .empty:
                    ProgressView()
                        .frame(width: 100, height: 100)

                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()

                case .failure:
                    Image(systemName: "photo")
                        .font(.largeTitle)
                        .foregroundStyle(.secondary)

                @unknown default:
                    EmptyView()
                }

            }
            .frame(width: 100, height: 100)
            .clipShape(RoundedRectangle(cornerRadius: 12))

            VStack(alignment: .leading, spacing: 8) {

                Text(article.title)
                    .font(.headline)
                    .lineLimit(2)

                if let description = article.description {
                    Text(description)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                        .lineLimit(3)
                }

                HStack {

                    if let author = article.author {
                        Text(author)
                    }

                    Spacer()

                    Text(
                        article.publishedAt,
                        style: .date
                    )
                }
                .font(.caption)
                .foregroundStyle(.secondary)
            }
        }
        .padding(.vertical, 4)
    }
}
