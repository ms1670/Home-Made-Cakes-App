import 'package:flutter/material.dart';
import 'package:homemade_cakes_app/recourse/AppColors.dart';
import 'package:homemade_cakes_app/pageSection/HomePage/ExploreMore.dart';
import 'package:homemade_cakes_app/pageSection/HomePage/PopularCake.dart';
import 'package:homemade_cakes_app/pageSection/HomePage/CakeCategories.dart';
import 'package:homemade_cakes_app/pageSection/HomePage/CakeTypeSort.dart';
import 'package:homemade_cakes_app/components/SubHeading.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //  mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget> [
          SubHeading(SubHeadingText: "Sort Your Favourite",),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              // children: [
              //   ...cakeTypeList.map((name) => CakeTypeCard(typeName: name.typeName, leadingTypeIcon: name.leadingTypeIcon,)),
              // ],
              children: cakeTypeList
                  .map((cakeType) => Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: CakeTypeCard(
                  typeName: cakeType.typeName,
                  leadingTypeIcon: cakeType.leadingTypeIcon,
                ),
              )).toList(),
            ),
          ),
          SizedBox(height: 8),
          SubHeading(SubHeadingText: "Categories",),
          SizedBox(height: 8),

          // SingleChildScrollView(
          //   child: Column(
          //     children: [
          //       Wrap(
          //         alignment: WrapAlignment.center, // 🔥 This centers each row
          //         spacing: 12,
          //         runSpacing: 12,
          //         children: catNamesList.map((cake) {
          //           return SizedBox(
          //             height: 120,
          //             //width: MediaQuery.of(context).size.width / 3 - 20, // approximate 3 columns
          //             child: CakeCategoriesCard(
          //               CatName: cake.CatName,
          //               imagePath: cake.imagePath,
          //             ),
          //           );
          //         }).toList(),
          //       )
          //     ],
          //   ),
          // ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                //  childAspectRatio: 0.65,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: [
                  ...catNamesList.map((cake) => CakeCategoriesCard(CatName: cake.CatName, imagePath: cake.imagePath))
                ],
              )
            ],
          ),

          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     Wrap(
          //       alignment: WrapAlignment.center, // 💡 Center items in each row
          //       spacing: 8,
          //       runSpacing: 8,
          //       children: catNamesList
          //           .map((cake) => CakeCategoriesCard(
          //         CatName: cake.CatName,
          //         imagePath: cake.imagePath,
          //       ))
          //           .toList(),
          //     )
          //   ],
          // ),

          SizedBox(height: 8),
          SubHeading(SubHeadingText: "Popular Cakes"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CakeCardDesign(
                  CakeCardSize(CakeName: "Chocolate", CakePrice: "₹299", imagePath: 'assets/pink_cake.jpg'),
                ),
                SizedBox(width: 8),
                CakeCardDesign(
                  CakeCardSize(CakeName: "Vanilla", CakePrice: "₹299", imagePath: 'assets/pink_cake.jpg'),
                ),
                SizedBox(width: 8),
                CakeCardDesign(
                  CakeCardSize(CakeName: "Butter", CakePrice: "₹299", imagePath: 'assets/pink_cake.jpg'),
                ),
                SizedBox(width: 8),
                CakeCardDesign(
                  CakeCardSize(CakeName: "Cup Cake", CakePrice: "₹299", imagePath: 'assets/pink_cake.jpg'),
                ),
                SizedBox(width: 8),
                CakeCardDesign(
                  CakeCardSize(CakeName: "Choco-vanilla", CakePrice: "₹299", imagePath: 'assets/pink_cake.jpg'),
                ),
                SizedBox(width: 8),
                CakeCardDesign(
                  CakeCardSize(CakeName: "Chocolate", CakePrice: "₹299", imagePath: 'assets/pink_cake.jpg'),
                ),
                SizedBox(width: 8),
              ],
            ),
          ),
          SizedBox(height: 8),
          SubHeading(SubHeadingText: "Explore More"),
          SizedBox(height: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                childAspectRatio: 0.65,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(), // Allow scrolling
                children: exploreCakesList.map((cake) => AllProducts(
                  imagePath: cake.imagePath,
                  CakeName: cake.cakeName,
                  CakePrice: cake.cakePrice,
                  CakeMRPPrice: cake.cakeMRPPrice,
                )).toList(),
              )

              // GridView.count(
              //   crossAxisCount: 2,
              //   shrinkWrap: true,
              //   physics: NeverScrollableScrollPhysics(),
              //   mainAxisSpacing: 4,
              //   crossAxisSpacing: 4,
              //   childAspectRatio: 0.65,
              //   children: [
              //     AllProducts(imagePath: 'assets/pink_cake.jpg', CakeName: 'Chocolate', CakePrice: '₹299', CakeMRPPrice: '₹349',),
              //     AllProducts(imagePath: 'assets/pink_cake.jpg', CakeName: 'Vanilla', CakePrice: '₹199', CakeMRPPrice: '₹349',),
              //     AllProducts(imagePath: 'assets/pink_cake.jpg', CakeName: 'Strawberry', CakePrice: '₹249', CakeMRPPrice: '₹349',),
              //     AllProducts(imagePath: 'assets/pink_cake.jpg', CakeName: 'Black Forest', CakePrice: '₹349', CakeMRPPrice: '₹449',),
              //     AllProducts(imagePath: 'assets/pink_cake.jpg', CakeName: 'Black Forest', CakePrice: '₹349', CakeMRPPrice: '₹449',),
              //   ],
              // ),
            ],
          ),
        ],
      ),
    );
  }
}


