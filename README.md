# Offline-First News Reader iOS App

Modern news feed reader app with an offline-first caching architecture. Fetches the latest articles from remote REST APIs and synchronizes them into local CoreData persistence for seamless offline reading.

---

## 🛠️ Tech Stack & Architecture
`SwiftUI` `CoreData` `REST API` `Async/Await` `Offline Synchronization`

- **Platform:** iOS 16.0+
- **Language:** Swift 5.10+
- **Framework:** SwiftUI
- **Architecture:** MVVM / Clean Architecture

---

## ✨ Key Features
- **Offline-first caching**: read saved stories even without active connectivity
- Automatic cache sync and pull-to-refresh remote updates
- Clean article list with headline thumbnails and publication timestamps
- Comprehensive API and network failure fallback handling

---

## 🚀 Getting Started

### Prerequisites
- macOS Sonoma or newer
- Xcode 15.0 or newer
- iOS Simulator or physical device running iOS 16+

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/Devendrakumar16/Offline-News-Reader-iOS.git
   cd Offline-News-Reader-iOS
   ```
2. Open the project in Xcode:
   ```bash
   open *.xcodeproj 2>/dev/null || open *.xcworkspace
   ```
3. If CocoaPods is used:
   ```bash
   pod install
   open *.xcworkspace
   ```
4. Select your target simulator (e.g., iPhone 15 Pro) and press `Cmd + R` to build and run!

---

## 👨‍💻 Author
- **Devendra Kumar** ([@Devendrakumar16](https://github.com/Devendrakumar16))

---

## 📄 License
This project is open source and available under the [MIT License](LICENSE).
