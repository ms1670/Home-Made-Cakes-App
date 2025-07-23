import 'package:flutter/material.dart';
import 'package:homemade_cakes_app/recourse/AppColors.dart';

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

class SubHeading extends StatelessWidget{
  const SubHeading({super.key, required this.SubHeadingText});
  final String SubHeadingText;

  @override
  Widget build(BuildContext context){
    return Text(
      SubHeadingText,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}

// Popular section

class CakeCardDesign extends StatelessWidget{
  final Widget child;
  const CakeCardDesign(this.child, {super.key});

  @override
  Widget build(BuildContext context){
    return Card(
      elevation: 4,
      color: Colors.pink.shade50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Rounded corners
      ),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: child,
      ),
    );
  }
}

class CakeCardSize extends StatelessWidget {
  const CakeCardSize({super.key, required this.CakeName, required this.CakePrice, required this.imagePath});
  final String CakeName;
  final String CakePrice;
  final String imagePath;

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: 120,
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              width: 120,
              height: 120,
              fit: BoxFit.cover, // Keeps image size uniform
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Text(CakeName, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.start
              ),
              // const SizedBox(height: 4),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(CakePrice, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.add_circle_outline_rounded))
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//Cake Type

class CakeTypeCard extends StatelessWidget{
  const CakeTypeCard({super.key, required this.typeName, required this.leadingTypeIcon,});
  final String typeName;
  final IconData leadingTypeIcon;

  @override
  Widget build(BuildContext context){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
      ),
      elevation: 4,
      //  color: Colors.amber.shade200,
      // color: AppColors.accentColor,
      color: AppColors.cardColor,
      clipBehavior: Clip.hardEdge, // clips content inside the card
      child: SizedBox(
        //width: 100,
        height: 50,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                      children: [
                        Icon(leadingTypeIcon),
                        const SizedBox(width: 6),
                        Text(typeName, overflow: TextOverflow.ellipsis,),
                      ]
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CakeType {
  final IconData leadingTypeIcon;
  final String typeName;

  CakeType({
    required this.leadingTypeIcon,
    required this.typeName,
  });
}

final List<CakeType> cakeTypeList = <CakeType>[
  CakeType(typeName: "Kids", leadingTypeIcon: Icons.child_care,), //0
  CakeType(typeName: "Chocolate", leadingTypeIcon: Icons.cake ), //1
  CakeType(typeName: "Vanilla", leadingTypeIcon: Icons.icecream,), //2
  CakeType(typeName: "Pinata", leadingTypeIcon: Icons.star,), //3
  CakeType(typeName: "Forest", leadingTypeIcon: Icons.park, ), //4
  CakeType(typeName: "Strawberry", leadingTypeIcon: Icons.favorite,), //5
  CakeType(typeName: "Cup Cakes", leadingTypeIcon: Icons.local_cafe_outlined,), //6
];

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

// Cake Categories

class CakeCategoriesCard extends StatelessWidget{
  const CakeCategoriesCard({super.key, required this.CatName, required this.imagePath});
  final String CatName;
  final String imagePath;

  @override
  Widget build(BuildContext context){
    return Card(
      elevation: 4,
      color: AppColors.background1,
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: EdgeInsets.all(0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Background image
            Positioned.fill(
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            // Overlayed text
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
              // color: Colors.black.withOpacity(0.2), // Optional background for contrast
              //  decoration: BoxDecoration(
              //    color: Colors.black.withOpacity(0.2), // Stronger contrast
              //    borderRadius: BorderRadius.vertical(
              //      top: Radius.circular(8), // Rounded top only
              //    ),
              //  ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.5),
                    Colors.transparent,
                  ],
                ),
              ),
              child: Text(
                CatName,
                // style: const TextStyle(
                //   color: Colors.white,
                //   fontWeight: FontWeight.bold,
                //   fontSize: 14,
                // ),
                style: const TextStyle(
                  color: AppColors.back,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  shadows: [
                    Shadow(
                      blurRadius: 4,
                      color: Colors.black,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),

                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        // child: SizedBox(
        //   height: 100,
        //   width: 100,
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       ClipRRect(
        //         borderRadius: BorderRadius.circular(12),
        //         child: Image.asset(
        //           imagePath,
        //           width: 100,
        //           height: 100,
        //           fit: BoxFit.scaleDown,
        //         ),
        //       ),
        //       Column(
        //         children: [
        //           Text(CatName),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}

class CatNames{
  final String CatName;
  final String imagePath;

  CatNames({
    required this.CatName,
    required this.imagePath,
  });
}

final List<CatNames> catNamesList = [
  CatNames(CatName: "Birthday", imagePath: 'assets/pink_cake.jpg'),
  CatNames(CatName: "Wedding", imagePath: 'assets/pink_cake.jpg'),
  CatNames(CatName: "Festival", imagePath: 'assets/pink_cake.jpg'),
  CatNames(CatName: "Anniversary", imagePath: 'assets/pink_cake.jpg'),
  CatNames(CatName: "Kids", imagePath: 'assets/pink_cake.jpg'),
];

