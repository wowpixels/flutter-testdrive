import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key, required this.title});

  final String title;

  @override
  build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('👋',
                style: TextStyle(fontSize: 60, color: Colors.white)),
            const Text('Cool Intro Page',
                style: TextStyle(fontSize: 30, color: Colors.white)),
            const SizedBox(height: 20),
            ElevatedButton(
                child: const Text('Go to Home Page'),
                onPressed: () {
                  // go to new page
                  Navigator.pushNamed(context, '/home');
                }),
          ],
        ),
      ),
      backgroundColor: Colors.deepPurple,
    );
  }
}
