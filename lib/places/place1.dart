import 'package:app/places/place1details.dart';
import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class Place1 extends StatelessWidget {
  Place1({Key? key}) : super(key: key);
List place=[
  ['images/p1.jfif','Los Angeles','100','Los Angeles City of lights famous all over the world due to lights.Most beautiful and cheapest place to visit '],


];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(size: 20, text: 'Helena Lopez,'),
                        ApText(size: 15, text:'Where do you wanna go?')
                      ],
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('images/a.jfif'),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search,color: Colors.blue,),
                    hintText: 'Find Destination'
                  ),
                ),
              ),
              Container(
                height: 800,
                child: ListView.builder(
                  itemCount: place.length,
                  itemBuilder: (context,i){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return Place1details(
                                  image: place[i][0],
                                  history: place[i][3],
                                );
                              },));
                            },
                            child: Container(
                              height: 250,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(place[i][0],fit: BoxFit.fill,width: double.infinity,)),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 10,
                          child: Container(
                            width: 260,
                            color: Colors.black54,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText(size: 25, text: place[i][1],color: Colors.white,),
                                ApText(size: 20, text: place[i][2]+'places worth to visit',color: Colors.white,)
                                ],
                              ),
                            ),
                          )),
                        Positioned(
                          top: 20,
                          right: 20,
                          child: Icon(Icons.favorite_border,color: Colors.white,size: 30,))
            ]),
                    );
                  }),
              )
            ],
          ),
        )),
    );
  }
}