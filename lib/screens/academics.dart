import 'package:flutter/material.dart';

class academics extends StatelessWidget {
  const academics({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elibrary',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Academics'),
        ),
        body: const Center(
          child: Text('Hello students'),
        ),
      ),
    );
  }
}
