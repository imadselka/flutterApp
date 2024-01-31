# 📱 Flutter Basics

A new Flutter project, where you will learn the basics.

### 📚 What I Learned

This project is a starting point for Flutter.

- **`Widgets`** : What is a widget?, How to use it?.
- **`AppBar`** : A simple title with background colors.
- **`Bottom Navigation Bar`** : With icons and semanticlabels.
- **`swipe between tabs`** : This is so helpful, allows you to navigate between tabs.
- **`Add buttons`** : With styles.
- **`Add Images`** : With styles.
- **`Add Icons`** : With styles.
- **`Drawer`** : For now not that much.

  ### This is a helpful code to swipe between tabs you need it:

  ```dart
  @override
    void dispose() {
      _pageController.dispose();
      super.dispose();
    }

  ```

```dart
 body: PageView(
          controller: _pageController,
          scrollDirection: Axis.horizontal,
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
 ),
```

### 📈 Overall Growth:

Each part of this project helped understand more about bulding mobile apps using flutter.

## 🚦 Running the Project

To run the project in your local environment, follow these steps:

1. Clone the repository to your local machine.
2. Run `Flutter run` to run the project.

# NOTE : YOU NEED AN EMULATOR.

If you dont have an emulator or you are new make sure to check out fullter docs : https://docs.flutter.dev/get-started/install
