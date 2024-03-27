import 'package:l3iage_app/commons/constants_assets.dart';

class CategorieModel {
  String iconName;
  String libelle;

  CategorieModel({required this.iconName, required this.libelle});
}
List<CategorieModel> categorieList = [
  CategorieModel(iconName: kIconCosmetique, libelle: 'Cosmétique'),
  CategorieModel(iconName: kIconCuisine, libelle: 'Cuisine'),
  CategorieModel(iconName: kIconElectromenager, libelle: 'Electroménager'),
  CategorieModel(iconName: kIconSolaire, libelle: 'Solaire'),
  CategorieModel(iconName: kIconElectronique, libelle: 'Electronique'),
];