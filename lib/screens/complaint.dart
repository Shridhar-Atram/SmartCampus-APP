import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gallery',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Gallery'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
