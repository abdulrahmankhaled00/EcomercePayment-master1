import 'package:flutter/material.dart';

class Utiles_Labelwidget extends StatelessWidget {
  String label;
  Utiles_Labelwidget({required this.label});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(label,style: TextStyle(fontWeight: FontWeight.w500,color:Colors.white),),
    );
  }
}
