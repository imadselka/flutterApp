# 📱 Flutter Basics

A new Flutter project, where you will learn the basics.

### 📚 What I Learned

This project is a starting point for Flutter.

- **`Widgets`** : What is a Widget?, How to use it?.
- **`AppBar`** : A Simple Title with Background Colors.
- **`Bottom Navigation Bar`** : With icons and semanticlabels.
- **`swipe between tabs`** : This is so helpful, allows you to Navigate between Tabs.
- **`Add buttons`** : With Styles.
- **`Add Images`** : With Styles.
- **`Add Icons`** : With Styles.
- **`Drawer`** : Leading, Adding Icons and Styles.
- **`Audio`** : Learned to Add Audio to the Pages.
- **`Next Page`** : In this section i learned when u press a button u jump to a specific page, I had to Refactor the Code.

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
