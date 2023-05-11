import 'package:flutter/material.dart';

typedef Onpressd=VoidCallback?;
class Utiles_Elvatb extends StatelessWidget {
Onpressd onpressd;
String text;
Utiles_Elvatb({required this.onpressd,required this.text});
  Widget build(BuildContext context) {
    return ElevatedButton
      (
      style: ElevatedButton.styleFrom(fixedSize: Size(161, 23),
        backgroundColor: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
      ),
        onPressed: onpressd,
        child: Text(text,style: TextStyle(fontWeight: FontWeight.w600,color: Theme.of(context).primaryColor)),);
  }
}
