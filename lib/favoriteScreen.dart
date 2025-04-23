import 'package:afghan_backpack/constants.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kButtonBackgroundColor,
        title: const Text('Favorites'),
      ),
      body: Center(
        child: const Text(
          'This is your Favorites page!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}