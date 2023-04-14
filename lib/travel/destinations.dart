import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class Destination extends StatelessWidget {
  final String path;
final String city;
final String country;

   Destination({super.key, 
  required this.path,
  required this.city, required this.country});
  List details=[
    ['images/n4.jfif','Mt.Everest Base Camp','9','11','300'],
    ['images/n5.jfif','Mt.Everest Base Camp','9','11','300'],
    ['images/n6.jfif','Mt.Everest Base Camp','9','11','300']

      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                children: [Image.asset(path,
                height: 300,
                fit: BoxFit.fill,
                width: double.infinity,),
                Positioned(
              bottom: 10,
              left: 10,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(size: 35, text: city,color: Colors.white,),
                  Row(
                    children: [
                      Icon(Icons.place,color: Colors.grey.shade900,),
                       ApText(size: 25, text: country,color: Colors.grey.shade900,),
                    ],
                  ),
                ],
              )),
             SizedBox(
              height: 300,

             ),
             
          ]),
            ),
            Expanded(
              child: Container(
                color: Colors.grey.shade400,
                child: ListView.builder(
                  itemCount: details.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context,i){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                      child: Container(
                        height: 170,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(details[i][0],
                              fit: BoxFit.fill,
                              height: double.infinity,
                              width: 100,)),
                          ),
                          SizedBox(width: 2,),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 25,),
                              AppText(size: 15, text:details[i][1]),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                    ApText(size: 12, text: 'Sight seeing mountain view'),
                              Row(
                                children: [
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Icon(Icons.star,color: Colors.yellow,),
                                  Icon(Icons.star,color: Colors.yellow,),
                                ],
                              ),
                             
                                  ],),
                                  SizedBox(width: 1,),
                                   Column(
                                children: [
                                  ApText(size: 12, text: '\$'+details[i][4]),
                                  ApText(size: 10, text: 'per tax')
                                ],
                              )
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 7),
                                      child: ApText(size: 15, text: details[i][2]+':00 am'),
                                    ),
                                  ),
                                  SizedBox(width: 20,),
                                  Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 7),
                                      child: ApText(size: 15, text: details[i][3]+':00 am'),
                                    ),
                                  ),
                                  
                                ],
                              )
                            ],
                          )
                        ],
                        ),
                      ),
                    );
                  }),
              ))
            
          ],
        ),
      ),
    );
  }
}