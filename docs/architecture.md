# ⚙️ Architecture Overview - CocoCare

CocoCare is built following the **MVVM (Model-View-ViewModel)** design pattern, organized within a **Layered Feature-First** folder structure. This approach combines the reactive nature of MVVM with the organized separation of concerns often found in Clean Architecture.

## 🏗️ Layered Structure

### 1. Presentation Layer (`lib/features/`)
This layer handles the UI and user interaction.
- **Views**: Flutter widgets that represent the UI.
- **ViewModels (Controllers)**: Powered by `GetxController`, these manage the state and bridge the UI with the data layer.

### 2. Data Layer (`lib/data/`)
This layer handles data retrieval, persistence, and external service communication.
- **Repositories**: Standardize access to data sources (Firebase, Local Storage).
- **Models**: Plain Dart objects representing the data structure (e.g., `UserModel`, `DiseaseModel`).

### 3. Core Layer (`lib/core/`)
Shared utilities and infrastructure components used across the entire application.
- **Bindings**: Dependency injection setups using GetX.
- **Widgets**: Reusable UI components (AppBars, Buttons, TextStyles).
- **Utils**: Helpers for networking, constants, and logging.

## 🛠️ Tech Stack & Design Patterns

- **State Management**: [GetX](https://pub.dev/packages/get) - Used for state management, dependency injection, and routing.
- **Backend Service**: [Firebase](https://firebase.google.com/) - Auth, Firestore, and Cloud Storage for real-time data and media management.
- **Local Storage**: [GetStorage](https://pub.dev/packages/get_storage) & [SQFlite](https://pub.dev/packages/sqflite) - For offline caching and persistent settings.
- **Reactive Programming**: Leveraging GetX's stream capabilities with Firebase.

## 🛡️ Design Decisions

- **Decoupling**: Business logic is strictly separated from the UI using ViewModels (Controllers) in GetX.
- **Dependency Injection**: Services and Repositories are injected at the start of the application lifecycle for consistent state transitions.
- **Secure Persistence**: User sensitive data is handled via Firebase Auth with local caching using encrypted storage where necessary.
