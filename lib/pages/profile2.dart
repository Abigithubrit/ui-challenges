import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class Profile2 extends StatelessWidget {
  const Profile2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: 
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children:[ 
                    Image.asset('images/a.jfif',height: 300,
                  fit: BoxFit.fitWidth,
                  width: double.maxFinite,),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: IconButton(onPressed: (){},
                     icon: Icon(Icons.arrow_back_ios))),
                     SizedBox(height: 30,),
                     
                  ]
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Name',
                          labelText: 'Name',
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Profession',
                          hintText: 'Profession',
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextField(
                        decoration: InputDecoration(
                          hintText: '03/03/2000',
                          labelText: 'Date of Birth'
                        ),
                      ),
                      SizedBox(height: 10,),
                      AppText(size: 30, text: 'Interest'),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.red[300],
                                borderRadius: BorderRadius.circular(20)
                              ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                              
                              child: Center(
                                child: ApText(size: 15,
                                 text: 'Technology'),
                              ),
                            ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[500],
                                  borderRadius: BorderRadius.circular(20)
                                ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                                
                                child: Center(
                                  child: ApText(size:18,
                                   text: 'Coding'),
                                ),
                              ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.red[300],
                                borderRadius: BorderRadius.circular(20)
                              ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                              
                              child: Center(
                                child: ApText(size: 18,
                                 text: 'Tutoring'),
                              ),
                            ),
                            ),
                          ),
                          
                        ],
                      ),SizedBox(height: 10,),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[500],
                                borderRadius: BorderRadius.circular(20)
                              ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                              
                              child: Center(
                                child: ApText(size: 15,
                                 text: 'Video making'),
                              ),
                            ),
                            ),
                          ),
                          
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.red[300],
                                borderRadius: BorderRadius.circular(20)
                              ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                              
                              child: Center(
                                child: ApText(size: 20,
                                 text: 'Gaming'),
                              ),
                            ),
                            ),
                          ),
                          
                        ],
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red,
                            
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(child: AppText(size: 30,text: "Continue",)),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            
          )
        
      ),
    );
  }
}