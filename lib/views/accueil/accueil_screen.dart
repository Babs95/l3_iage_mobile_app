import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccueilScreen extends StatelessWidget {
  static const String routeName = '/home';
  const AccueilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accueil'),
      ),
      body: const Center(
        child: Text(
          'Bienvenue sur NDSHOP!'
        ),
      ),
    );
  }

}