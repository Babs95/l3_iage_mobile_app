import 'package:flutter/material.dart';
import 'package:l3iage_app/model/CategorieModel.dart';

class ProduitScreen extends StatefulWidget {
  static const rootName = '/produits';
  ProduitScreen({super.key, required this.categorieModel});
  CategorieModel categorieModel;

  @override
  State<ProduitScreen> createState() => _ProduitScreenState();
}

class _ProduitScreenState extends State<ProduitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.categorieModel.libelle),
      ),
      body: Container(),
    );
  }
}