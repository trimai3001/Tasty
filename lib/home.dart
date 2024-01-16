import 'package:flutter/material.dart';

class Navigator extends StatelessWidget {
  const Navigator({super.key, required this.title});
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: Colors.white),
      child: Row(children: [
        const IconButton(onPressed: null, icon: Icon(Icons.menu)),
        Expanded(child: title),
        const IconButton(
            onPressed: null, icon: Icon(Icons.notifications_off_rounded))
      ]),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece
    // of paper on which the UI appears.
    return Material(
      // Column is a vertical, linear layout.
      child: Column(
        children: [
          Navigator(
            title: Text('Manage',
                style: TextStyle(
                    color: Colors.blue[200],
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
          ),
          const Expanded(
            child: Center(
              child: Text('Hello!'),
            ),
          ),
        ],
      ),
    );
  }
}
