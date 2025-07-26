import 'package:flutter/material.dart';
import 'package:homemade_cakes_app/recourse/AppColors.dart';
import 'package:homemade_cakes_app/pageSection/HomePage/CakeTypeSort.dart';

// Popular Cakes section

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
