import 'package:flutter/material.dart';
import 'pages/audio_page.dart';
import 'pages/home_page.dart';
import 'pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: const Drawer(
            backgroundColor: Color.fromARGB(255, 161, 206, 236),
            child: Column(
              children: [
                DrawerHeader(child: Text('Home')),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                ),
                ListTile(
                  leading: Icon(Icons.audio_file),
                  title: Text('Audio'),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                )
              ],
            )),
        appBar: AppBar(
          title: const Text('slm'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 109, 146, 226),
        ),
        body: PageView(
          controller: _pageController,
          scrollDirection: Axis.horizontal,
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          children: [
            const LikePage(),
            AudioPage(),
            const SettingsPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 161, 206, 236),
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Audio',
              icon: Icon(Icons.audiotrack),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings),
            ),
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
              _pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            });
          },
        ),
      ),
    );
  }
}
