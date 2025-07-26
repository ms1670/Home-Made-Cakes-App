import 'package:flutter/material.dart';
import 'package:homemade_cakes_app/recourse/AppColors.dart';
import 'package:homemade_cakes_app/pages/HomePage.dart';
import 'package:homemade_cakes_app/pageSection/HomePage/CakeTypeSort.dart';

//AllProducts
class AllProducts extends StatelessWidget{
  const AllProducts({super.key, required this.imagePath, required this.CakeName, required this.CakePrice, required this.CakeMRPPrice});
  final String imagePath;
  final String CakeName;
  final String CakePrice;
  final String CakeMRPPrice;

  @override
  Widget build(BuildContext context){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      color: AppColors.cardBackground,
      //color: Colors.deepOrangeAccent.shade100,
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        width: 180,
        height: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imagePath,
                width: 180,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    CakeName,
                    style: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: AppColors.textColor),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            CakePrice,
                            style: TextStyle(fontSize: 18, fontWeight:
                            FontWeight.w600, color: AppColors.textColor),
                          ),
                          Text(
                            CakeMRPPrice,
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.lineThrough,
                              decorationColor: AppColors.primary,
                              decorationThickness: 2,
                              color: AppColors.textColorSec,
                            ),
                          )
                        ],
                      ),
                      // IconButton(onPressed: () {},
                      //     icon: Icon(Icons.add_circle_outline_rounded),
                      //     highlightColor: AppColors.primary,
                      // )
                      Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            //  color: Colors.amber,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add),
                            iconSize: 30.0,
                            color: AppColors.primary,
                            highlightColor: Colors.orange,
                            //splashColor: Colors.green,
                            splashRadius: 24.0,
                            tooltip: 'Add item',
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(8),
                            constraints: BoxConstraints(
                              minWidth: 48,
                              minHeight: 48,
                            ),
                          )
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExploreCakes {
  final String imagePath;
  final String cakeName;
  final String cakePrice;
  final String cakeMRPPrice;
  final List<CakeType> tags;

  ExploreCakes({
    required this.imagePath,
    required this.cakeName,
    required this.cakePrice,
    required this.cakeMRPPrice,
    required this.tags,
  });
}

final List<ExploreCakes> exploreCakesList = [
  ExploreCakes(
    //imagePath: 'assets/pineapple_cake.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Pineapple Cake',
    cakePrice: '₹299',
    cakeMRPPrice: '₹329',
    tags: [],
  ),
  ExploreCakes(
    // imagePath: 'assets/butter_scotch_cake.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Butter Scotch Cake',
    cakePrice: '₹319',
    cakeMRPPrice: '₹349',
    tags: [cakeTypeList[0]],
  ),
  ExploreCakes(
    //imagePath: 'assets/black_forest_cake.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Black Forest Cake',
    cakePrice: '₹349',
    cakeMRPPrice: '₹379',
    tags: [],
  ),
  ExploreCakes(
    //imagePath: 'assets/mango_cake.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Mango Cake',
    cakePrice: '₹329',
    cakeMRPPrice: '₹359',
    tags: [],
  ),
  ExploreCakes(
    //imagePath: 'assets/strawberry_cake.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Strawberry Cake',
    cakePrice: '₹319',
    cakeMRPPrice: '₹349',
    tags: [],
  ),
  ExploreCakes(
    //imagePath: 'assets/choco_vanilla.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Choco Vanilla Cake',
    cakePrice: '₹309',
    cakeMRPPrice: '₹339',
    tags: [cakeTypeList[0], cakeTypeList[1]],
  ),
  ExploreCakes(
    //imagePath: 'assets/chocolate_cake.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Chocolate Cake',
    cakePrice: '₹349',
    cakeMRPPrice: '₹389',
    tags: [cakeTypeList[0], cakeTypeList[1]],
  ),
  ExploreCakes(
    //imagePath: 'assets/red_velvet.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Red Velvet Cake',
    cakePrice: '₹499',
    cakeMRPPrice: '₹549',
    tags: [],
  ),
  ExploreCakes(
    //imagePath: 'assets/blueberry_cake.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Blueberry Cake',
    cakePrice: '₹529',
    cakeMRPPrice: '₹569',
    tags: [],
  ),
  ExploreCakes(
    //imagePath: 'assets/fruit_fresh_cake.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Fruit Fresh Cake',
    cakePrice: '₹489',
    cakeMRPPrice: '₹519',
    tags: [],
  ),
  ExploreCakes(
    //imagePath: 'assets/white_forest_cake.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'White Forest Cake',
    cakePrice: '₹459',
    cakeMRPPrice: '₹499',
    tags: [],
  ),
  ExploreCakes(
    //imagePath: 'assets/coffee_toffee.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Coffee Toffee Cake',
    cakePrice: '₹519',
    cakeMRPPrice: '₹549',
    tags: [],
  ),
  ExploreCakes(
    //imagePath: 'assets/choco_truffle.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Chocolate Truffle',
    cakePrice: '₹549',
    cakeMRPPrice: '₹579',
    tags: [],
  ),
  ExploreCakes(
    //imagePath: 'assets/german_forest.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'German Forest Cake',
    cakePrice: '₹539',
    cakeMRPPrice: '₹579',
    tags: [],
  ),
  ExploreCakes(
    //imagePath: 'assets/rasmalai_desi.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Rasmalai Desi Cake',
    cakePrice: '₹599',
    cakeMRPPrice: '₹649',
    tags: [],
  ),
  ExploreCakes(
    //imagePath: 'assets/choco_overloaded.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Chocolate Overloaded',
    cakePrice: '₹600',
    cakeMRPPrice: '₹649',
    tags: [],
  ),
  ExploreCakes(
    //imagePath: 'assets/gulab_jamun.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Gulab Jamun Cake',
    cakePrice: '₹579',
    cakeMRPPrice: '₹619',
    tags: [],
  ),
  ExploreCakes(
    //imagePath: 'assets/kitkat_cake.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'KitKat Cake',
    cakePrice: '₹549',
    cakeMRPPrice: '₹579',
    tags: [cakeTypeList[0]],
  ),
  ExploreCakes(
    //imagePath: 'assets/oreo_chocolate.jpg',
    imagePath: 'assets/pink_cake.jpg',
    cakeName: 'Oreo Chocolate Cake',
    cakePrice: '₹559',
    cakeMRPPrice: '₹589',
    tags: [cakeTypeList[0]],
  ),


];

List<ExploreCakes> filterCakesByCategory(String selectedTypeName) {
  return exploreCakesList
      .where((cake) => cake.tags.contains(selectedTypeName))
      .toList();
}
