import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class Language extends StatelessWidget {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('images/a.jfif'),
                  ),
                  SizedBox(width: 30,),
                  AppText(size: 35, text: 'Lindsey Linda')
                ],
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search)
                  ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 250,
                width: double.infinity,
                
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width:MediaQuery.of(context).size.width-60,
                        decoration: BoxDecoration(
                          color: Colors.green[400],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),

                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ApText(size: 20, text: '20 Point'),
                                Icon(Icons.map_outlined,)
                              ],
                             ) ,
                             SizedBox(height: 30,),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ApText(size: 25, text: 'Learning English \nVerb',color: Colors.white,),
                                ApText(size:20, text: 'Level1',color: Colors.white,)
                              ],
                             ),
                             SizedBox(height: 30,),
                             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ApText(size: 20, text: '30 minute'),
                                Column(
                                  children: [
                                    ApText(size: 20, text: 'Date'),
                                    ApText(size: 20, text: '2021')
                                  ],
                                )
                              ],
                             ),

                            ],
                          ),
                        ),
                      ),
                    );
                  
                },),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(size: 20, text: 'Recommended Courses'),
                  ApText(size: 20, text: 'View all')
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 250,
                width: double.infinity,
                
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 250,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('images/a.jfif',
                              height: 150,
                              width: double.infinity,
                              fit: BoxFit.fill,),
                            ),
                            SizedBox(height: 10,),
                            ApText(size: 20, text: 'Learn'+'\nLanguages')
                            ],
                          ),
                        ),
                      )
                    );
                  
                },),
              ),
              SizedBox(height: 20,),
              AppText(size: 25, text: '  Instructors'),
              Container(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        child: Stack(
                          children: [Image.asset('images/j.jfif',
                          fit: BoxFit.fill,
                          height: double.infinity,),
                          Positioned(
                            bottom: 10,
                            left: 30,
                            child: Column(
                              children: [
                                ApText(size: 20, text: 'Alex Mourin',color: Colors.white,),
                                ApText(size: 20, text: 'Visual Designer',color: Colors.white,)
                              ],
                            ))
            ]),
                      ),
                    );
                  },
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}