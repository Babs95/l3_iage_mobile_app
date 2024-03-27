import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:l3iage_app/commons/constants_color.dart';
import 'package:l3iage_app/commons/size_config.dart';
import 'package:l3iage_app/model/CategorieModel.dart';
import 'package:l3iage_app/model/PubliciteModel.dart';
import 'package:l3iage_app/route/routes.dart';
import 'package:l3iage_app/views/produits/produit_screen.dart';

class AccueilScreen extends StatelessWidget {
  static const String routeName = '/home';
  const AccueilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accueil'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20.0, top: 10.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(publiciteList.length, (index) {
                  PubliciteModel item = publiciteList[index];
                  return Container(
                    margin: const EdgeInsets.only(right: 10.0),
                    width: getProportionateScreenWidth(SizeConfig.screenWidth60),
                    height: getProportionateScreenHeight(SizeConfig.screenHeight25),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                          item.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 10.0,),
            const Align(
              alignment: Alignment(-1, 0),
              child: Text(
                'Catégories',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 0.90,
              children: List.generate(categorieList.length, (index) {
                CategorieModel categorie = categorieList[index];
                return GestureDetector(
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: kGreyLightColor,
                      border: Border.all(
                        color: kGreyColor.withOpacity(0.6),
                        width: 0.5
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 0.5,
                          spreadRadius: 0.5
                        )
                      ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ClipRRect(
                          child: Image.asset(
                            categorie.iconName,
                            fit: BoxFit.cover,
                            width: getProportionateScreenWidth(50),
                            height: getProportionateScreenHeight(60),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                              categorie.libelle,
                            style: const TextStyle(
                              fontWeight: FontWeight.w700
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder:
                                (context) => ProduitScreen(
                                  categorieModel: categorie,
                                )
                        )
                    );
                  }
                );
              }),
            )
          ],
        ),
      )
    );
  }

}