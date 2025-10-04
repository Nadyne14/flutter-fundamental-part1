import 'package:flutter/material.dart';

class FabWidget extends StatelessWidget {
  const FabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Action Button Example'),
        backgroundColor: Colors.deepPurple,
      ),
      body: const Center(
        child: Text(
          'Tekan tombol di kanan bawah!',
          style: TextStyle(fontSize: 18),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Aksi ketika tombol ditekan
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('FAB ditekan!')),
          );
        },
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.add),
      ),
    );
  }
}
