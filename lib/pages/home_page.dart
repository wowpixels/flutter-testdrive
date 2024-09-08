import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _count = 0;

  void _incrementCounter() {
    // add to counter
    setState(() {
      _count++;
    });
  }

  void _decrementCounter() {
    // add to counter
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: _decrementCounter,
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
              heroTag: 'decrement',
              child: const Icon(Icons.remove),
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
              onPressed: _incrementCounter,
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
              heroTag: 'increment',
              child: const Icon(Icons.add),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _count.toString(),
                style: const TextStyle(
                    fontSize: 60,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'You are now on the Home Page 😎',
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                child: const Text('Go to Intro Page'),
                onPressed: () {
                  // go to new page
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ));
  }
}
