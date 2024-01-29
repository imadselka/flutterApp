import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int result = 1 + 1;
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // to remove debug banner so annoying !!!8
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 243, 247, 185),
        appBar: AppBar(
          title: const Text('slm'),
          backgroundColor: Colors.yellow[200],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Hello, World!'),
              const SizedBox(
                  height:
                      20), // Optional: Add some space between text and button
              ElevatedButton(
                onPressed: () {
                  Text(result.toString());
                },
                child: const Text('Press Me'),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 243, 247, 185),
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
