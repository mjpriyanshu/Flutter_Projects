# 📝 Flutter To-Do Mini

A beautiful and simple To-Do application built with Flutter using Provider for state management. Features a modern black and yellow design inspired by conventional productivity apps.

## 🎯 Features

### Core Functionality
- ✅ **Add Tasks** - Easily add new tasks with a simple text input
- ✅ **Toggle Tasks** - Mark tasks as completed/incomplete with checkboxes
- ✅ **Delete Tasks** - Remove tasks with confirmation dialog
- ✅ **Task Statistics** - Real-time display of total, completed, and pending tasks

### User Experience
- 🎨 **Modern UI** - Clean design with black and yellow color scheme
- 📊 **Visual Dashboard** - Statistics cards with gradient background
- 🔄 **Real-time Updates** - Instant UI updates using Provider state management
- 💬 **Confirmation Dialogs** - Safe task deletion with user confirmation
- 📅 **Creation Timestamps** - See when each task was created
- 🎭 **Empty State** - Friendly message when no tasks exist

## 🛠️ Technologies Used

- **Flutter** - Cross-platform UI framework
- **Provider** - State management solution using ChangeNotifier
- **Material Design** - Google's design system for consistent UI
- **Dart** - Programming language
---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK 
- Dart SDK
- Android Studio / VS Code
r

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd flutter_todomini
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Available Platforms
- ✅ Windows
- ✅ Android
- ✅ iOS
- ✅ Web
- ✅ macOS
- ✅ Linux

## 📱 How to Use

1. **Adding Tasks**
   - Type your task in the text field
   - Press "Add" button or hit Enter
   - Task appears in the list below

2. **Managing Tasks**
   - Tap checkbox to mark as complete/incomplete
   - Completed tasks show with strikethrough text
   - Tap delete icon to remove tasks (with confirmation)

3. **Viewing Statistics**
   - See total tasks, completed, and pending counts
   - Statistics update automatically as you manage tasks

## 🎨 Design Features

### Color Scheme
- **Primary**: Amber/Yellow (#FFC107)
- **Secondary**: Black (#000000)
- **Accent**: Green for completed tasks, Orange for pending

### UI Components
- **Gradient Cards** - Amber gradient for statistics
- **Material Cards** - Clean task item containers
- **Elevated Buttons** - Amber background with black text
- **Custom Checkboxes** - Amber active color with black checkmarks

## 🧪 State Management

Uses **Provider** pattern with:
- `ChangeNotifier` for state updates
- `Consumer` widgets for reactive UI
- Immutable task list with proper notifications

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.1.2

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^5.0.0
```

## 🔄 Key Classes

### Task Model
```dart
class Task {
  final String id;
  String title;
  bool isCompleted;
  final DateTime createdAt;
}
```

### TaskProvider
```dart
class TaskProvider extends ChangeNotifier {
  // Methods: addTask, deleteTask, toggleTask
  // Getters: tasks, totalTasks, completedTasks, pendingTasks
}
```

## 🎯 Learning Objectives

This project demonstrates:
- **State Management** with Provider
- **Widget Composition** and reusability
- **Material Design** principles
- **Form Handling** and user input
- **List Management** with ListView.builder
- **Dialog Management** for confirmations
- **Responsive Design** principles

## 🐛 Known Issues

- None currently reported

## 🔜 Future Enhancements

- Task editing functionality
- Task categories/tags
- Due dates and reminders
- Data persistence (local storage)
- Task search and filtering
- Dark/Light theme toggle
- Task reordering with drag & drop

## 👨‍💻 Developer

**Priyanshu**

