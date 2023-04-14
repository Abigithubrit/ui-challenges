import "package:flutter/material.dart";
class ApText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  final textAlign;

  

  ApText({super.key, 
  required this.size,
  this.textAlign,
  required this.text, this.color=Colors.black87});@override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(color:color,
    fontSize: size,
    fontWeight: FontWeight.w300,
    
    
  
    ),
    textAlign:textAlign,
  );
    
  }
}