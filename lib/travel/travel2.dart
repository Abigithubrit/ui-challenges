import 'package:app/travel/destinations.dart';
import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Travel2 extends StatefulWidget {
  const Travel2({Key? key}) : super(key: key);

  @override
  State<Travel2> createState() => _Travel2State();
}

class _Travel2State extends State<Travel2> {
  List image=[
    ['images/p1.jfif','Venice','Italy','Visit Venice for an amazing experienxe and moments'],
    ['images/p3.jfif','Paris','France','Visit Paris for an amazing experienxe and moments'],
    ['images/p4.jfif','Paris','France','Visit Paris for an amazing experienxe and moments'],

  ];
  List images=[
    ['images/n1.jfif','0','1000'],
    ['images/n2.jfif','1','2000'],

    ['images/n3.jfif','2','3000'],

  ];
   int _selectedindex=0;
  List<IconData> _icons=[
    FontAwesomeIcons.plane,
    FontAwesomeIcons.biking,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.bed,
    
  ];
  Widget _buildIcon(int index){
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedindex=index;
        });
      },
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(35)
        ),
        child: Icon(_icons[index],size: 25,
        color: _selectedindex==index?Colors.black:Colors.blue,),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              AppText(size: 30, text: 'What would you like to find?'),
SizedBox(height: 10,),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
   children: _icons.asMap().entries.map(
              (MapEntry map)=>_buildIcon(map.key),
              ).toList()
),
SizedBox(height: 20,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    AppText(size: 20, text: 'Top Destinations'),
    ApText(size: 20, text: 'See All',color: Colors.blue,)
  ],),
  Container(
    height: 290,
    width: double.infinity,
    child: ListView.builder(
      itemCount: image.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context,i){
        return Padding(
          
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(
                builder: (context) {
                  return Destination(
                    path: image[i][0],
                    city: image[i][1],
                    country: image[i][2],
                  );
                },));
            },
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
          
                      child: Stack(
                        children: [Image.asset(image[i][0],fit: BoxFit.fill,
                        width: double.infinity,
                        height: 150,),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: Column(

                            
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(size: 25, text: image[i][1],color: Colors.white,),
                            Row(
                              children: [
                                Icon(Icons.place,color: Colors.white,),
                                AppText(size: 20, text: image[i][2],color: Colors.white,),
                              ],
                            )
          
                            ],
                          ))
                ]),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: ApText(size: 25, text: '3 activities'),
                  ),
                  SizedBox(height: 2,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: ApText(size: 18, text: image[1][3],color: Colors.grey,),
                  )
                ],
              ),
            ),
          ),
        );
      }),
  ),
  SizedBox(height: 10,),
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Column(
    children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        AppText(size: 25, text:'Exclusive Hotels'),
        ApText(size: 20, text: 'See All',color: Colors.blue,)
        ],
      )
    ],
  ),
),
SizedBox(height: 8,),
Container(
  height: 330,
  width: double.infinity,
  child: ListView.builder(
    itemCount: images.length,
    scrollDirection: Axis.horizontal,
    itemBuilder: (context,i){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(images[i][0],
                height: 200,
                fit: BoxFit.fill,
                width: double.infinity,),
              ),
              SizedBox(height: 10,),
              AppText(size: 25, text: 'Hotel '+images[i][1]),
              SizedBox(height: 2,),
              ApText(size: 20, text: '60 Arande Grand Street'),
              SizedBox(height: 10,),
              AppText(size: 25, text: '\$ '+images[i][2]+'/night')
            ],
          ),
        ),
      );
    }),
)

            ],
          ),
        ),

      ),
    );
  }
}