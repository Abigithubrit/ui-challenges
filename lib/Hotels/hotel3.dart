import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class Hotels3 extends StatelessWidget {
  const Hotels3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset('images/a.jfif',height: 300,
            fit: BoxFit.fill,
            width: double.infinity,),
          Container(
            height: MediaQuery.of(context).size.height,
            margin:EdgeInsets.only(top:0),
            child: SingleChildScrollView(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 170,),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    AppText(size: 25, text: 'Deluxe Hotel',color: Colors.white,),
                  AppText(size: 25, text: 'Chicago',color: Colors.white,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ApText(size: 20, text: '8.4/8.5 reviews'),
                        ),
                      ),
                      Icon(Icons.favorite_border,color: Colors.red,)
                    ],
                  ),
               ] ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                  height: MediaQuery.of(context).size.height-140,
                  color: Colors.white,
                  child: ListView(
                    children: [Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(children: [
                                  Icon(Icons.star,color: Colors.pink.shade900,),
                                  Icon(Icons.star,color: Colors.pink.shade900,),
                                  Icon(Icons.star,color: Colors.pink.shade900,),
                                  Icon(Icons.star,color: Colors.pink.shade900,),
                                  Icon(Icons.star,color: Colors.pink.shade900,),
                                ],),
                                Row(
                                  children: [
                                    Icon(Icons.place),
                                    ApText(size: 18, text: '8 km to go')
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: [
                                ApText(size: 20, text: 'Rs 3000',color: Colors.pink.shade900,),
                                ApText(size: 18, text: '/per night',color: Colors.pink.shade900,),
                  
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 20,),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.pink.shade900,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child:  Center(child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ApText(size: 25, text: 'Book Now',
                            color: Colors.white,),
                          ))               
                         ),
                         SizedBox(height: 20,),
                         AppText(size: 25, text: 'DESCRIPTION'),
                         SizedBox(height: 10,),
                         ApText(size: 18, text: 'Clothing is something we all should wear in order to fit in to society. The act of wearing clothing is a choice in some indigenous societies while in a more modern culture you could find yourself …Clothing is something we all should wear in order to fit in to society. The act of wearing clothing is a choice in some indigenous societies while in a more modern culture you could find yourselfClothing is something we all should wear in order to fit in to society. The act of wearing clothing is a choice in some indigenous societies while in a more modern culture you could find yourself … …Clothing is something we all should wear in order to fit in to society. The act of wearing clothing is a choice in some indigenous societies while in a more modern culture you could find yourself …Clothing is something we all should wear in order to fit in to society. The act of wearing clothing is a choice in some indigenous societies while in a more modern culture you could find yourself …Clothing is something we all should wear in order to fit in to society. The act of wearing clothing is a choice in some indigenous societies while in a more modern culture you could find yourself …')
                      ],
                    ),
              ]),
                )
            
              ],),
            ),
            
          )
          ],
        ),
      
      ),
    );
  }
}