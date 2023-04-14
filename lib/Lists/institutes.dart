import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class Institutes extends StatelessWidget {
Institutes({Key? key}) : super(key: key);
List schools=[
  ['images/a.jfif',' WorldLink University','Kathmandu Nepal','Bachelors and masters'],
  ['images/p.jfif',' Oxford University','Kathmandu Nepal','Bachelors and masters'],
  ['images/p1.jfif',' WorldLink University','Kathmandu Nepal','Bachelors and masters'],
  ['images/p3.jfif',' WorldLink University','Kathmandu Nepal','Bachelors and masters'],



];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Stack(
              children: [Container(
                height: 120,
                width:double.infinity,
                decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
               bottomRight: Radius.circular(50),
            )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 50,right: 50),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu),
                      AppText(size: 25, text: 'Institutes'),
                      Icon(Icons.filter_list)
                    ],
                  ),
                ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                    children: [
                      Icon(Icons.search),

                    ],
                  ),),
                  Container(
                    height: 300,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                hintText: 'Search University',border: InputBorder.none
                              ),
                            ),
                          ),
                        ),
                         SizedBox(height: 10,),
                  
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Container(
                      height: MediaQuery.of(context).size.height-170,
                      child: ListView.builder(
                        itemCount: schools.length,
                        itemBuilder: (context,i){
                          return Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                          child: Container(
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white
                            ),
                            child: Row(
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(left: 0,bottom: 30,top: 10),
                                  child: CircleAvatar(
                                    radius: 60,foregroundColor: Colors.red,
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: CircleAvatar(
                                        radius: 50,
                                        backgroundImage: AssetImage(schools[i][0]),
                                      ),
                                    ),
                                  ),
                                ),SizedBox(width: 0,),
                                Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 20,),
                                    AppText(size: 20, text: schools[i][1]),
                                    SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Icon(Icons.place,color: Colors.red,),
                                        SizedBox(width: 4,),
                                        ApText(size: 16, text: schools[i][2])
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.school,color: Colors.red,),
                                         SizedBox(width: 4,),
                                        ApText(size: 16, text: schools[i][3])
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )
                          ),
                          );
                        })
                    ),
                  )
                 
                  ]
            )
          ],
        ),
      ),
    );
  }
}