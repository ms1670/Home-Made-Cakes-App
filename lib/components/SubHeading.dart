import 'package:flutter/material.dart';
import 'package:homemade_cakes_app/recourse/AppColors.dart';


class SubHeading extends StatelessWidget{
  const SubHeading({super.key, required this.SubHeadingText});
  final String SubHeadingText;

  @override
  Widget build(BuildContext context){
    return Text(
      SubHeadingText,
      style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
    );
  }
}
