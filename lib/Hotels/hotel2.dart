import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class Hotels2 extends StatelessWidget {
 Hotels2({Key? key}) : super(key: key);
List image=[
  ['images/t1.jfif','Awesome room near Kathmandu','230','5000'],
  ['images/t2.jfif','Awesome room near Kathmandu','230','5000']
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: ListView(
          children: [
           Container(
            height: 270,
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                   Padding(
                     padding: const EdgeInsets.all(0),
                     child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                IconButton(onPressed: (){},
                 icon: Icon(Icons.menu,color: Colors.white,)),
                 Icon(Icons.favorite_border,color: Colors.white,)
                ],
              ),
                   ),
                   SizedBox(height: 20,),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 29,vertical: 1),
                     child: Column(
                       children: [
                         ApText(size: 35, text: 'Type your Location',color: Colors.white,),
                         SizedBox(height:15,),
                         Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.search),
                                hintText: 'Kathmandu,Nepal'
                              ),
                            ),
                          ),
                         )
                       ],
                     ),
                   ),

                ],
                
              ),
            ),
           ),
           Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 25,),
                        Icon(Icons.hotel,color: Colors.white,),
                        ApText(size: 20, text: 'Hotel')
                      ],
                    ),
                  ),
                )),
                Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 25,),
                        Icon(Icons.restaurant,color: Colors.white,),
                        ApText(size: 18, text: 'Restaurant')
                      ],
                    ),
                  ),
                )),
                Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 25,),
                        Icon(Icons.dinner_dining_sharp,color: Colors.white,),
                        ApText(size: 20, text: 'Cafe')
                      ],
                    ),
                  ),
                )),
            ],
           ),
           SizedBox(height: 10,),
           Container(
            height: MediaQuery.of(context).size.height/2,
            child: ListView.builder(
              itemCount: image.length,
              itemBuilder: (context,i){
                return Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    height: 330,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          child: Stack(
                            children: [Image.asset(image[i][0],height: 180,
                            fit: BoxFit.fill,
                            width: double.infinity,),
                            Positioned(
                              top: 20,

                              right: 20,
                              child: ApText(size: 20, text: '10% off',color: Colors.white,))
                      ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(size: 20, text: image[i][1]),
                              SizedBox(height: 10,),
                              ApText(size: 20, text: 'Bouddha,Kathmandu'),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(children: [
                                    Icon(Icons.star,color: Colors.red,),
                                  Icon(Icons.star,color: Colors.red,),
                                  Icon(Icons.star,color: Colors.red,),
                                  Icon(Icons.star,color: Colors.red,),
                                  Icon(Icons.star,color: Colors.red,),
                                  SizedBox(width: 20,),
                                  ApText(size: 12, text: '('+image[i][2] +' reviews)'),
                                  ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      AppText(size: 12, text:'Rs '+ image[i][3])
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
           )
          ],
        ),
      ),
    );
  }
}