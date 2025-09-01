import 'package:flutter/material.dart';
import 'package:homemade_cakes_app/recourse/AppColors.dart';

class SectionBgColor extends StatelessWidget {
  const SectionBgColor({super.key, required this.SectionBg});
  final Color SectionBg;

  @override
  Widget build(BuildContext context){
    return Card(
      color: SectionBg,
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        width: double.infinity,
      ),
    );
  }

}