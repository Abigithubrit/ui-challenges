import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
class Onboard3 extends StatefulWidget {
   

  @override
  State<Onboard3> createState() => _Onboard3State();
}

class _Onboard3State extends State<Onboard3> {
List images=[
    ['images/a.jfif','Lorem epsum Donor App \nis the finest app \nfor Colors beauty'],
    ['images/ad.jfif','Lorem epsum Donor App \nis the finest app \nfor Colors beauty'],
    ['images/ae.jfif','Lorem epsum Donor App \nis the finest app \nfor Colors beauty'],
  


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
              color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Stack(
                   children:[ Container(
                    height: MediaQuery.of(context).size.height,
                    child: Image.asset('images/f.jfif',fit: BoxFit.contain,
                    height: 300,),
                   ),
                   Positioned(
                  top: 20,
                  left: 50,
                  right: 50,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      child: Stack(
                        children:[ ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(images[index][0],height: MediaQuery.of(context).size.height*0.8,fit: BoxFit.fill,
                          width: double.infinity,),
                        ),
                        Positioned(
                          bottom: 50,
                          left: 50,
                          child: Center(
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                             ApText(size: 25, color:Colors.blue,text: images[index][1])
                             
                              ],
                            ),
                          ),
                        )
                   ]),
                    ),
                  )),
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
              child: FlatButton(onPressed: (){},
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
                else Navigator.pop(context);
              },
               icon: Icon(_index==2? Icons.check:Icons.arrow_forward))
            ),
          ),
        ],
      ),
    );
  }
}