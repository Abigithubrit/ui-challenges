import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class Profile7 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Ink(
                  height: 300,
                  decoration: BoxDecoration(
color: Colors.red                  ),
                ),
                Positioned(
                  top: 60,
                  left: MediaQuery.of(context).size.width/2,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('images/ae.jfif'),
                      ),
                      SizedBox(height: 15,),
                      AppText(size: 30, text: 'Jenifer Lohani',color: Colors.white,),
                     SizedBox(height: 5,),
                      ApText(size: 20, text: 'Kathmandu,Nepal',color: Colors.white,)
                    ],
                  )),
                Positioned(
                  top: 10,
                  right: 30,
                  child:Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.settings,size: 30,color: Colors.white,),
                    ),
                  ),),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: double.infinity,
                    decoration:BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(12)

                    ),
                    margin: EdgeInsets.only(top: 260),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Expanded(
                            child: Column(
                              children: [
                                ApText(size: 20, text: 'Photos'),
                             
                                AppText(size: 23, text: '9000')
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              ApText(size: 20, text: 'Followers'),
                           
                              AppText(size: 23, text: '90000')
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Expanded(
                            child: Column(
                              children: [
                                ApText(size: 20, text: 'Following'),
                             
                                AppText(size: 23, text: '300')
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                )
              ],
            ),
           
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               ApText(size: 25, text: 'User Information'),
               Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,
                  top: 20,
                  right: 10),
                  child: Column(
                    children: [
                 ...ListTile.divideTiles(
                  color: Colors.grey,
                  tiles: [
                      
                      ListTile(
                        leading: Icon(Icons.my_location,size:50),
                        title: Text('Location'),
                        subtitle: Text('Lalitpur',),
                      ),
                      ListTile(
                        leading: Icon(Icons.email,size: 50,),
                        title: Text('Email'),
                        subtitle: Text('lohanijenifer@gmail.com'),
                      ),
                      ListTile(
                        leading: Icon(Icons.phone,size: 50,),
                        title: Text('Phone'),
                        subtitle: Text('+9779807653448'),
                      ),
                      ListTile(
                        leading: Icon(Icons.person,size: 50,),
                        title:Text('About Me'),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: Text('She is considered China’s first big supermodel and has broken down many barriers for Asian models. Wen is the first Chinese model to be part of a Victoria’s Secret fashion show'),
                        ),
                      ),
                     
                      
                    ],
                  ),
                    ]
                ),
               )
              ),
              SizedBox(height: 10,),
              ],
              ),
            )
             ],
        ),
      )
    );
  }
}