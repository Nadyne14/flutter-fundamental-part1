import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingCupertino extends StatelessWidget {
  const LoadingCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Tampilan Loading'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoButton(
              onPressed: null,
              color: CupertinoColors.activeBlue,
              child: Text('Tombol iOS'),
            ),
            SizedBox(height: 20),
            CupertinoActivityIndicator(),
          ],
        ),
      ),
    );
  }
}
