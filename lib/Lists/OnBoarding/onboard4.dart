import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
class Onboard4 extends StatefulWidget {
   

  @override
  State<Onboard4> createState() => _Onboard4State();
}

class _Onboard4State extends State<Onboard4> {
List images=[
    ['images/a.jfif','Lorem epsum Donor App \nis the finest app \nfor colors beauty \n meaningful app'],
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
              color: Colors.white,
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
                  left: 10,
                  right: 10,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0,vertical: 15),
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(children: [
                      
                          SizedBox(height: 30,),
                          ApText(
                            textAlign: TextAlign.center,
                            size: 30, text: images[index][1],color: Colors.white,),
                            SizedBox(height:20),
                            ClipOval(
                              
                              child: Image.asset(images[index][0],
                              height: 250,
                              fit: BoxFit.fill,
                              
                              width: MediaQuery.of(context).size.width-100,),
                            )
                        ],
                        ),
                      )
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
            color: Colors.blue,
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