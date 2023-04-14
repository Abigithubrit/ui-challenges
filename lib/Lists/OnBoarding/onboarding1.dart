import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
class Onboard1 extends StatefulWidget {
 Onboard1({Key? key}) : super(key: key);
   

  @override
  State<Onboard1> createState() => _Onboard1State();
}

class _Onboard1State extends State<Onboard1> {
List images=[
    ['images/a.jfif','Welcome to boarding Screen \nThis is an Awesome App','Welcome'],
    ['images/ae.jfif','Welcome to This AppScreen\nThis is an Awesome App','Awesome App'],
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
              color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(size: 40, text: images[index][2],color: Colors.white,),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ApText(textAlign: TextAlign.center,
                    
                    
                    size: 30, text: images[index][1],color: Colors.white,),
                  ),
                  SizedBox(height: 20,),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(images[index][0],height: 300,fit: BoxFit.fill,
                        width: double.infinity,),
                      ),
                    ),
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