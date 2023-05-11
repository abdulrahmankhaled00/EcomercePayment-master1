import 'package:flutter/material.dart';

typedef Validator = String? Function(String?);

class Utiles_FormWidget extends StatelessWidget {
  String hinttext;

  TextEditingController? controller;
  TextInputType? textInputType;
  Validator? validator;
  bool scure = false;
  Utiles_FormWidget(this.hinttext,
      {this.validator, this.textInputType, this.controller,this.scure=false});



  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hinttext,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
      obscureText: scure,
      controller: controller,
      validator: validator,
      keyboardType: textInputType,
    );
  }
}
