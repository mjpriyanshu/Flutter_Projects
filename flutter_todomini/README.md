# Flutter To-Do Mini

A lightweight and efficient task management application with Provider state management and task statistics.

## 📖 Description

A minimalist yet powerful to-do list application that helps users manage their tasks efficiently. Features a clean amber-themed UI with task statistics and smooth user experience.

## ✨ Features

- Add new tasks
- Mark tasks as complete/incomplete
- Delete tasks
- Task statistics dashboard
- Task counter
- Provider state management
- Material Design 3 UI
- Amber color theme
- Responsive design

## 🛠️ Technologies Used

- Flutter SDK
- Provider package for state management
- Custom widgets architecture
- Material Design 3 components

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^latest
```

## 📁 Project Structure

```
lib/
├── main.dart
├── providers/
│   └── task_provider.dart
└── widgets/
    ├── add_task_widget.dart
    ├── task_item.dart
    └── task_stats_widget.dart
```

## 🚀 Getting Started

1. Install dependencies:
   ```bash
   flutter pub get
   ```

2. Run the application:
   ```bash
   flutter run
   ```

## 🎯 Learning Outcomes

- Implementing Provider for state management
- Creating custom reusable widgets
- Building to-do list functionality
- Managing task states
- Widget composition
- State persistence patterns
- Clean architecture principles

## 💡 Features in Detail

### Task Management
- **Add Tasks**: Create new tasks with custom widget
- **Complete Tasks**: Toggle task completion status
- **Delete Tasks**: Remove completed or unwanted tasks
- **Task List**: View all tasks in organized list

### Statistics
- Total tasks count
- Completed tasks count
- Pending tasks count
- Visual progress indicators

### UI Components
- **AddTaskWidget**: Input form for new tasks
- **TaskItem**: Individual task card with actions
- **TaskStatsWidget**: Statistics dashboard
- **TodoHomePage**: Main screen with all components

## 🎨 Design Theme

- **Primary Color**: Amber
- **Secondary Color**: Black
- **Background**: Clean and minimal
- **Typography**: Bold headers with clear hierarchy

## 🔄 State Management

Uses Provider pattern with:
- **TaskProvider**: Centralized state management
- **ChangeNotifier**: For reactive updates
- **Consumer widgets**: For efficient rebuilds

## 📱 User Experience

- Smooth animations
- Instant feedback
- Clean amber theme for focus
- No banner for clean look
- AppBar with elevation

