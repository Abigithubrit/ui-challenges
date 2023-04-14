import 'dart:math';

import 'package:app/utils/apptext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Smartbox extends StatelessWidget {
final String name;
final String icon;
final bool poweron;
void Function(bool) onchange;

   Smartbox({super.key,
  required this.onchange,
   required this.name,
    required this.icon, 
    required this.poweron});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: poweron? Colors.black:Colors.grey.shade300
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 45,bottom: 20,left: 5,right: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(icon,
              height: 60,
              color: poweron?Colors.white:Colors.grey.shade700,),
              Row(
                children: [
                  Expanded(child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child:AppText(size: 13,
                     text: name,color: poweron?Colors.white:Colors.grey.shade700,),
                     )),
                     Transform.rotate(
                      angle: 0,
                      child: CupertinoSwitch(
                        value: poweron,
                         onChanged: onchange),)
                ],
              )
            ],
          ),),
      ),
    );
  }
}