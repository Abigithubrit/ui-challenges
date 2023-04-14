import 'package:app/Lists/OnBoarding/homepage.dart';
import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
class Onboard2 extends StatefulWidget {
 Onboard2({Key? key}) : super(key: key);
   

  @override
  State<Onboard2> createState() => _Onboard2State();
}

class _Onboard2State extends State<Onboard2> {
List images=[
    ['images/ui1.jfif','The Right Address For Shopping Anyday','Welcome'],
    ['images/ui1.jfif','Start by creating an account','Awesome App'],
    ['images/ad.jfif','Flutter is cross platform Awesome App','Flutter App'],



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
                children: [
                 
                  Stack(
                    children:[ Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: Image.asset(images[index][0],height:MediaQuery.of(context).size.height*0.5,fit: BoxFit.fill,
                        width: double.infinity,),
                        
                      ),
                      
                      
                    ),
                 
                   
                ]),
                SizedBox(height:20),
                 Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: Positioned(
                      left: 70,
                      bottom: 70,
                      child: Center(
                        child: AppText(
                          textAlign: TextAlign.start,
                          size: 30,text: images[index][1],color: Colors.black,),
                      )),
                 )
                ],
              )
            );
          },
          autoplay: false,
        
          itemCount: images.length,
          scrollDirection: Axis.horizontal,
          pagination:SwiperPagination(alignment: Alignment.bottomCenter,
          builder: DotSwiperPaginationBuilder(
            activeColor: Colors.red,
          color: Colors.black,
            activeSize: 15
          )),
          control: const SwiperControl()
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: FlatButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) {
                  return Homepage();
                },));
              },
               child: AppText(size: 20,text: 'Skip',)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: (){
if(_index!=2)
                _controller.next();
                else Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Homepage();
                  }));
                },
                child: AppText(size: 20,text: _index==2?'Start':'next',))
            ),
          ),
        ],
      ),
    );
  }
}