import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonText = 'click me';
  int currentIndex = 0;
  PageController _pageController = PageController();

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
        drawer:
            const Drawer(backgroundColor: Color.fromARGB(255, 161, 206, 236)),
        backgroundColor: const Color.fromARGB(255, 161, 206, 236),
        appBar: AppBar(
          title: const Text('slm'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 109, 146, 226),
        ),
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          children: _buildBody(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 161, 206, 236),
          items: const [
            BottomNavigationBarItem(
              label: 'Like',
              icon: Icon(
                Icons.favorite,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Audio',
              icon: Icon(
                Icons.audiotrack,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(
                Icons.settings,
              ),
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

  List<Widget> _buildBody() {
    return [
      SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Home Page.'),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  buttonText = 'clicked';
                });
              },
              child: Text(buttonText),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  buttonText = 'clicked';
                });
              },
              child: Text(buttonText),
            ),
          ],
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: const Text('Audio content'),
      ),
      Container(
        alignment: Alignment.center,
        child: const Text('Settings content'),
      ),
    ];
  }
}
