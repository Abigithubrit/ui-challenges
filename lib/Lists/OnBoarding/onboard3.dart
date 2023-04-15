import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:onboard/Homepage/home.dart';
import 'package:onboard/widgets/largetext.dart';
import 'package:onboard/widgets/next.dart';
import 'package:onboard/widgets/smalltext.dart';
class Onboard2 extends StatefulWidget {
   

  @override
  State<Onboard2> createState() => _Onboard2State();
}

class _Onboard2State extends State<Onboard2> {
List images=[
    ['images/a.jpg','Lorem epsum Donor App \nis the finest app \nfor Colors beauty'],
    ['images/b.jpg','Lorem epsum Donor App \nis the finest app \nfor Colors beauty'],
    ['images/c.jpg','Lorem epsum Donor App \nis the finest app \nfor Colors beauty'],
  


   ];  
   int _index=0;
   SwiperController _controller=SwiperController();
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         Swiper(
          loop: false,
          index: _index,
          onIndexChanged: (index){
            setState(() {
              _index =index;
            });
          },
          controller: _controller,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Stack(
                   children:[
                    Container(
                    height: MediaQuery.of(context).size.height,
                    child: Image.asset(images[index][0],fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height,),
                   ),
                             Positioned(
                              top: MediaQuery.of(context).size.height/2,
                              left: MediaQuery.of(context).size.width/8,
                             child: Text(images[index][1],
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white,
                            fontSize: 20),),
                             )
                 
                ]),
      
                 

                  
                ],
              ),
              
            );
          },
          autoplay: false,
        
          itemCount: images.length,
          scrollDirection: Axis.horizontal,
          pagination:SwiperPagination(alignment: Alignment.bottomCenter,
          builder: DotSwiperPaginationBuilder(
            activeColor: Colors.red,
            activeSize: 15
          )),
          control: const SwiperControl()
          ),
          
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: ElevatedButton(onPressed: (){
                next(context, Homepage());
              },
               child: AppText(size: 20,text: 'Skip',)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: IconButton(onPressed: (){
                if(_index!=2)
                _controller.next();
                else Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),));
              },
               icon: Icon(_index==2? Icons.check:Icons.arrow_forward,
               color: Colors.white,))
            ),
          ),
        ],
      ),
    );
  }
}