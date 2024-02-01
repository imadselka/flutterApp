import 'package:flutter/material.dart';
import './next_page.dart';

class LikePage extends StatefulWidget {
  const LikePage({super.key});
  @override
  State<LikePage> createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> {
  String buttonText = 'click me';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
