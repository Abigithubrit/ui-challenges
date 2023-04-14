import 'package:app/places/place1temples.dart';
import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class Place1details extends StatelessWidget {
final String image;
final String history;

  const Place1details({super.key,
  required this.history,
   required this.image});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(image,height: 200,width: double.infinity,
          fit: BoxFit.fill,),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 5),
            child: ListView(
              children:[ Padding(
                padding: const EdgeInsets.only(left: 80,right: 10),
                child: Container(
                  margin: EdgeInsets.only(top: 130),
                  height:196,
            decoration: BoxDecoration(
                    color: Colors.blue,
            borderRadius: BorderRadius.circular(10)
            ),              child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.arrow_back),
                            AppText(size: 20, text: 'Los Angeles'),
                            Icon(Icons.star_border)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AppText(size: 15, text: history),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
             Padding(
               padding: const EdgeInsets.only(right: 30),
               child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ApText(size: 20, text: 'Places to visit'),
                  ApText(size: 20, text: 'See All',color: Colors.red.shade400,)
                ],
               ),
             ),
             SizedBox(height: 10,),
             Temples()

        ]),
          ),
       
        ],
      ),
         
    );
  }
}