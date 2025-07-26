import 'package:flutter/material.dart';
import 'package:homemade_cakes_app/recourse/AppColors.dart';

//Cake Type sort


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
