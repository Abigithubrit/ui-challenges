import 'package:app/utils/SmallText.dart';
import 'package:flutter/material.dart';
class Temples extends StatelessWidget {
List temples=[
  ['images/f.jfif','Pashupatinath'],
  ['images/f.jfif','Pashupatinath'],
  ['images/g.jfif','Pashupatinath'],
  ['images/h.jfif','Pashupatinath'],
  ['images/a.jfif','Pashupatinath'],
  ['images/a.jfif','Pashupatinath'],
];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height-220,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: temples.length,
        itemBuilder: (context,i){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 120,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(temples[i][0],height: 100,
                    width: double.infinity,
                    fit: BoxFit.fill,),
                  ),
                  SizedBox(height: 5,),
                  ApText(size: 18, text: temples[i][1])
                ],
              ),
            ),
          );
        })
    );
  }
}