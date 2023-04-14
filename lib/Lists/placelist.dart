import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class Placelist extends StatelessWidget {
  Placelist({Key? key}) : super(key: key);
List details=[
  ['images/p.jfif','City Of Tower','City','Italy','4.9'],
   ['images/p1.jfif','London Streets','Streets of the day','London','4.9'],
    ['images/f.jfif','Resort River','River Dale','Chicgo,US','4.9'],
     ['images/p3.jfif','City Of Tower','City','Italy','4.9'],
      ['images/p4.jfif','Fotball Stadium Rio','Stadium','Brazil','4.9'],
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('PlaceList1'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){},
           icon: Icon(Icons.mobile_friendly_rounded))
        ],
      ),
    body: Container(
      height: double.infinity,
      width:double.infinity,
      child: ListView.builder(
        itemCount: details.length,
        itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
          child: Container(
            width: double.infinity,
            height: 170,
decoration: BoxDecoration(
              color: Colors.white,
borderRadius: BorderRadius.circular(20)
),            child: Row(
  children: [
ClipRRect(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(
      20
    ),
    bottomLeft: Radius.circular(20)
  ),
  child:   Image.asset(details[index][0],
  height: double.infinity,
  fit: BoxFit.fill,
  
  width: 170,),
),Padding(
  padding: const EdgeInsets.all(14.0),
  child:   Column(crossAxisAlignment: CrossAxisAlignment.start,
  
    children: [
  SizedBox(height: 5,),
  
      AppText(size: 24, text: details[index][1]),
      ApText(size: 18, text: details[index][2]),
      ApText(size: 18, text: details[index][3]),
      SizedBox(
        height: 10,

      ),
      Row(
        children: [
          Icon(Icons.star,color: Colors.red,),
          Icon(Icons.star,color: Colors.red,),
          Icon(Icons.star,color: Colors.red,),
          Icon(Icons.star,color: Colors.red,),
          Icon(Icons.star,color: Colors.red,),
        ],
      ),
      Row(
        children: [
          ApText(size: 18, text: details[index][4]+'/90 Ratings'),

        ],
      )
  
    ],
  
  ),
)
  ],
)
          ),
          
        );
      },),
    ),
    );
  }
}