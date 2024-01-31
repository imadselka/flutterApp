import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import './pages/home_page.dart';
import './pages/like_page.dart';
import './pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Firstpage(),
    );
  }
}

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  String buttonText = 'click me';

  int currentIndex = 0;

  final PageController _pageController = PageController();
  final player = AudioPlayer();
  AudioPlayer audioPlayer = AudioPlayer();

  Future<void> playAudioFromUrl(String url) async {
    await player.play(UrlSource(url));
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
          backgroundColor: Color.fromARGB(255, 161, 206, 236),
          child: Column(
            children: [
              DrawerHeader(child: Text('Header')),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('HOME'),
              )
            ],
          )),
      backgroundColor: const Color.fromARGB(255, 161, 206, 236),
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
            const Text('Swipe left between tab'),
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
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const NextPage();
                  }));
                });
              },
              child: const Text('click to go to next page'),
            ),
          ],
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Audio content'),
            const SizedBox(height: 20),
            Image.asset('images/pic.jpg',
                width: 300, height: 300, fit: BoxFit.cover),
            ElevatedButton(
              onPressed: () {
                playAudioFromUrl(
                    'https://filesamples.com/samples/audio/mp3/Symphony%20No.6%20(1st%20movement).mp3');
              },
              child: const Text('Play Audio'),
            ),
            ElevatedButton(
                onPressed: () {
                  player.stop();
                },
                child: const Text('Stop Audio')),
          ],
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: const Text('Settings content'),
      ),
    ];
  }
}

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 68, 139, 197),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Use Navigator.pop to go back to the previous page
            Navigator.pop(context);
          },
        ),
        title: const Text('Next Page'),
      ),
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('$count'),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count = count + 1;
                    });
                  },
                  child: const Text('+'))
            ]),
      ),
    );
  }
}
