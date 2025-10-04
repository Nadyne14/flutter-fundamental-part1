import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contoh Scaffold Widget'),
        backgroundColor: Colors.deepPurple,
      ),
      body: const Center(
        child: Text(
          'Ini adalah body dari Scaffold!',
          style: TextStyle(fontSize: 18),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // aksi ketika tombol ditekan
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Tombol ditekan!')),
          );
        },
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.add),
      ),
    );
  }
}
