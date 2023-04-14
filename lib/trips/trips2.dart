import 'package:app/utils/SmallText.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
class Trips2 extends StatelessWidget {
   Trips2({Key? key}) : super(key: key);
List images=[
 ['images/n5.jfif','Himalayas and Mountains in Nepsl'],
 ['images/n2.jfif','Himalayas and Mountains'],
 ['images/n3.jfif','Tibetan Monastery of The Monk'],
 ['images/n4.jfif','Pokhara Valley,Phewa Lake Mountain View'],


];
List image=[
  ['images/a.jfif'],
  ['images/p1.jfif'],
  ['images/p3.jfif'],
  ['images/p4.jfif'],

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade900,
      body: SingleChildScrollView(
child: Padding(
  padding: const EdgeInsets.all(18.0),
  child:   Column(
children: [
  SizedBox(height: 20,),
  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconButton(onPressed: (){},
       icon: Icon(Icons.menu,color: Colors.white,)),
       IconButton(onPressed: (){},
       icon: Icon(Icons.search,color: Colors.white,)),
    ],
  ),
   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      ApText(size: 30, text: 'Trending',color: Colors.white,),
       IconButton(onPressed: (){},
       icon: Icon(Icons.more_horiz,color: Colors.white,)),
    ],
  ),
  SizedBox(height: 10,),
  Row(
    children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
          child: ApText(size: 20, text: 'Animated',color: Colors.white,),
        ),
      ),
      SizedBox(width: 20,),
      ApText(size: 20, text: '18+ stories',color: Colors.blue,),
      
    ],
  ),
  SizedBox(height: 10,),
   Container(
    height: 270,
    width: double.infinity,
     child: Swiper(
      scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    children:[ Image.asset(
                      images[index][0],
                      fit: BoxFit.fill,
                      height: 270,
                    ),
                   Container(
                    margin: EdgeInsets.only(left: 10,right: 20,top:150),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ApText(size: 20, text: images[index][1],color: Colors.white,),
                        SizedBox(height: 5,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ApText(size: 20, text:'Read Later'),
                          ),
                        )
                      ],
                    ),
                   ) 
]),
                ),
              );
            },
             layout: SwiperLayout.STACK,
            autoplay: false,
            itemCount: images.length,
            itemWidth: 300,
          ),
   ),
   SizedBox(height: 20,),
   Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
  ApText(size: 30, text: 'Favourite',color: Colors.white,),
  Icon(Icons.favorite,color: Colors.white,)
],
   ),
   SizedBox(height: 10,),
   Row(
    children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
          child: ApText(size: 20, text: 'Latest',color: Colors.white,),
        ),
      ),
      SizedBox(width: 20,),
      ApText(size: 20, text: '18+ stories',color: Colors.blue,),
    ],
   ),
   Container(
    height: 300,
    width: double.infinity,
  
    child: ListView.builder(
      itemCount: image.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context,i){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 
          300,
          height: 400,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(image[i][0],fit: BoxFit.fill,
              height: 400,),
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