import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class Profile1 extends StatelessWidget {
List photos=[
  ['images/a.jfif'],
  ['images/b.jfif'],
  ['images/c.jfif'],
  ['images/a.jfif'],
  ['images/b.jfif'],
  ['images/c.jfif'],
  ['images/d.jfif'],
  ['images/e.jfif'],
  ['images/f.jfif'],
];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Container(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: Image.asset('images/j.jfif',
          fit: BoxFit.cover,height: 300,)),
          Positioned(
            top: 250,
            child: Container(
 width: MediaQuery.of(context).size.width,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                  
                ),
                color: Colors.white
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    AppText(size: 25, text: 'Anamika Johnson'),
                    ApText(size: 20, text: 'Freelancer'),
                    SizedBox(height: 10,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                      children: [
                        ApText(size: 16, text: 'Projects'),
                        AppText(size: 20, text: '1190')
                      ],
                      ),
                      Column(
                      children: [
                        ApText(size: 16, text: 'Projects'),
                        AppText(size: 20, text: '1190')
                      ],
                      ),
                      Column(
                      children: [
                        ApText(size: 16, text: 'Projects'),
                        AppText(size: 20, text: '1190')
                      ],
                      ),
                    ],),
                    SizedBox(height: 20,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                          child: AppText(size: 18, text: 'View Profile'),
                        ),
                      ),
                      Container(


                        decoration: BoxDecoration(
                          color: Colors.blue[900],
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 5),
                          child: ApText(size: 18, text: 'Message',color: Colors.white,),
                        ),
                      )
                    ],),
                    SizedBox(height: 0,),
                    Container(
                      height: MediaQuery.of(context).size.height*0.3,

                      child: GridView.builder(
                        itemCount: photos.length,
                        scrollDirection: Axis.vertical,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                       itemBuilder: (context,i){
                        return Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                          
                            color: Colors.blue,
                            child: Image.asset(photos[i][0],fit: BoxFit.fill,),
                          ),
                          
                        );
                       }),
                    )
                  ],
                ),
              )
            ))
        ],
      ),
    ),
   ); 
  }
}