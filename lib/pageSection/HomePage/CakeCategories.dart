//CakeCategories.dart
import 'package:flutter/material.dart';
import 'package:homemade_cakes_app/recourse/AppColors.dart';


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
