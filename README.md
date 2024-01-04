## Flutter E-Commerce Prototype App
Welcome to the README file for the Flutter E-Commerce Prototype App! This prototype app showcases an e-commerce application with a well-designed homepage featuring carousel sliders, a search bar in the app bar, and a convenient app drawer. The project follows the MVVM (Model-View-ViewModel) architecture and utilizes GetX for state management.

## Features
Homepage Carousel Sliders: Engage users with visually appealing carousel sliders on the homepage, showcasing featured products or promotions.

Search Functionality: Make it easy for users to find products by implementing a search bar in the app bar. The search functionality is seamlessly integrated for a smooth user experience.

App Drawer: Provide a user-friendly navigation experience with an app drawer containing essential links and features.

## Project Structure
The project follows the MVVM structure, which separates the application logic into three components: Model, View, and ViewModel. This structure promotes code organization and maintainability.

## File Pattern Inside The `lib` Folder

```
    lib/
    ├── data/
    │   └── local // Local storage/ caching data
    │   └── remote // Api/ remote data
    ├── models/
    │   └── ... // All model classes are stored here
    ├── repository/
    │   ├── homepage_repo.dart
    │   ├── products_repo.dart
    │   └── ...
    ├── resources/
    │   ├── assets/...
    │   ├── colors/...
    │   ├── dimentions/... // For storing constant paddings, border radius etc...
    │   ├── strings/... // For storing app strings
    │   ├── texts_styles/... // For storing text styles
    │   └──  theme/...
    ├── utilities/
    │   ├── di/ // For dependency injection
    │   ├── routing/... // Routing
    │   └── ... // Other utilities and helper classes
    ├── view_model/ // All view models and/or controllers are stored here
    │   ├── dashboard_vm.dart
    │   └── home_vm.dart
    ├── view/
    │   ├── dashboard/
    │   │   └── widgets/... // For storing dashboard related widgets/ components
    │   │   └── views/... // For storing dashboard related views/ screens
    │   └── ... // Other views and screens
    └── main.dart
```

## State Management
The app utilizes GetX for efficient and reactive state management. GetX is a lightweight and powerful state management library that simplifies the process of managing the state in your application.

## Third-Party Packages
The project incorporates various third-party packages to enhance functionality and improve development efficiency. Some of the included packages are:

Permission Handler: Manage and request permissions in your app.
Cached Network Image: Efficiently load and cache images from the network.
Dio: A powerful HTTP client for making network requests.

And many more commonly used packages, all of which are specified in the pubspec.yaml file.

## Getting Started

# Clone the repository:

```
git clone https://github.com/your-username/flutter-ecommerce-prototype.git
```

# Navigate to the project directory:

```
cd flutter-ecommerce-prototype
```

# Install dependencies:

```
flutter pub get
```

# Run the app:

```
flutter run
```
