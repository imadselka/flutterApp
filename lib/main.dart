import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // to remove debug banner so annoying !!!
      home: Scaffold(
        appBar: AppBar(
          title: const Text('slm'),
          backgroundColor: const Color.fromARGB(255, 29, 79, 119),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello, World!'),
              SizedBox(
                  height:
                      20), // Optional: Add some space between text and button
              ElevatedButton(
                onPressed: null,
                child: Text('Your Button Text'),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Like',
              icon: Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
            ),
            BottomNavigationBarItem(
              label: 'Audio',
              icon: Icon(
                Icons.audiotrack,
                color: Color.fromARGB(255, 33, 158, 37),
                size: 30.0,
                semanticLabel: 'Audio track',
              ),
            ),
            BottomNavigationBarItem(
                label: 'Settings',
                icon: Icon(
                  Icons.settings,
                  size: 30.0,
                  semanticLabel: 'Settings',
                ))
          ],
        ),
      ),
    );
  }
}
