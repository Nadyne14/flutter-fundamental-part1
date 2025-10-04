import 'package:flutter/material.dart';

class DialogSnackbar extends StatelessWidget {
  const DialogSnackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contoh Dialog & Snackbar'),
        backgroundColor: const Color.fromARGB(255, 223, 205, 255),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _showAlertDialog(context);
              },
              style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 204, 195, 219)),
              child: const Text('Tampilkan Dialog'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showSnackBar(context);
              },
              style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(2255, 204, 195, 219)),
              child: const Text('Tampilkan Snackbar'),
            ),
          ],
        ),
      ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Pesan Penting'),
          content: const Text('Apakah kamu yakin ingin melanjutkan?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Tutup dialog
              },
              child: const Text('Batal'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Kamu menekan tombol OK!')),
                );
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Ini adalah Snackbar!'),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
