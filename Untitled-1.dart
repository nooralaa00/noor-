import 'package:flutter/material.dart';

Widget defaultTextFormField({
  required  String? Function(String?)? validator,
  required void Function(String) onChanged,
  required void Function() ontad,
   IconData? icon,
  required String label,
  IconData? suffixIcon,
   bool? obscureText,
  required TextEditingController control ,
  required TextInputType Type,
}) => Container(
  
  child: TextFormField(
   onTap: ontad,
    keyboardType: Type,
    //controller: control,
    //onChanged: onChanged,
    //validator: validator,
    decoration: InputDecoration(
      enabledBorder:OutlineInputBorder(
        borderSide: BorderSide(
  
          color: Colors.grey.withOpacity(0.3),
  
        ),
        borderRadius: BorderRadius.circular(12),
      ), 
      
      border: OutlineInputBorder(
        borderSide: BorderSide(
  
          color: Colors.grey.withOpacity(0.3),
  
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      prefixIcon: Icon(
        icon,
      ),
      label: Text(
        label,
      ),
      suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
    ),
    obscureText: false,
  
  
  ),
);