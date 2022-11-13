import 'package:flutter/material.dart';

class E_libary extends StatelessWidget {
  const E_libary({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elibrary',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('DIgital Library'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
