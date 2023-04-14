import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
class Trip1 extends StatelessWidget {
Trip1({Key? key}) : super(key: key);
List image=[
  'images/n1.jfif',
   'images/n2.jfif',
   'images/n3.jfif',
  'images/n4.jfif',
  'images/n5.jfif',
  'images/n6.jfif',
  'images/n7.jfif',
  'images/n8.jfif',
  'images/n9.jfif',
  'images/a.jfif',
   
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Container(
        child: Stack(
          children: [
            Image.asset('images/n4.jfif',height: 300,
            fit: BoxFit.fill,width: double.infinity,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 110,),
                    Center(child: ApText(size: 45, text: 'Discover Nepal',color: Colors.white)),
                    Center(child: ApText(size: 25, text: 'Heaven is myth,Nepal is real.',color: Colors.white,)),
              SizedBox(height: 30,),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                  
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ApText(size: 25, text: 'TOP RATED'),
                    ApText(size: 20, text: 'Sort by price'),
                    SizedBox(height: 20,),
                    Container(
                      height: 200,
                      width: double.infinity,
                      child: Swiper(
                          itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    image[index],
                    fit: BoxFit.fill,
                    
                    height: 10,
                  ),
                );
                          },
                          autoplay: false,
                          itemCount: image.length,
                          scrollDirection: Axis.horizontal,
                          pagination: const SwiperPagination(alignment: Alignment.bottomCenter),
                          control: const SwiperControl(),
                        ),
                    ),
                    SizedBox(height: 20,)
                  ],),
                ),
              ),
              SizedBox(height: 30,),
              ApText(size: 24, text: 'Frequently Searched'),
              SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(8),
              child: Wrap(
                spacing: 5,
                runSpacing: 5,
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.center,
                  children: [
                    
                Chip(label: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ApText(size: 20,text: 'POKHARA',),
                ),
                backgroundColor: Colors.red,),   
                  Chip(label: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ApText(size: 20,text: 'EVEREXT BASE CAMP',),
                ),
                backgroundColor: Colors.green,), 
                  Chip(label: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ApText(size: 20,text: 'LUMBINI',),
                ),
                backgroundColor: Colors.green,), 
                  Chip(label: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ApText(size: 20,text: 'ANNAPURNA',),
                ),
                backgroundColor: Colors.green,), 
                  Chip(label: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ApText(size: 20,text: 'KATHMANDU',),
                ),
                backgroundColor: Colors.green,), 
                  Chip(label: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ApText(size: 20,text: '10+',),
                ),
                backgroundColor: Colors.green,), 
                

                    
                  ],
                ),
            ),
            SizedBox(height: 10,)
                  ],
                ),
              ),
            )
          ],
        ),
        
      ),
    );
  }
}