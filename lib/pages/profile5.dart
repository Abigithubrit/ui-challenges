import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class Profile5 extends StatelessWidget {
  const Profile5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: Colors.grey.shade300,
    body: ListView(children: [
        
         Image.asset('images/a.jfif',fit: BoxFit.fill,
         width: double.infinity,
         height: 300,),
         SizedBox(height: 10,),

         Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                                            borderRadius: BorderRadius.circular(10),

                    ),
                    child:Padding(
                      padding: const EdgeInsets.only(right:8),
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(height: 40,),

                          ApText(size: 20,
                         text: '  Jenifer Nepal'),
                         SizedBox(height: 10,),
                        ApText(size: 20, text: 'Product Designer'),
                        ApText(size: 20, text: 'Kathmandu,Nepal'),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                AppText(size: 20, text: '200'),
                                ApText(size: 22, text: 'Likes')
                              ],
                            ),
                             Column(
                              children: [
                                AppText(size: 20, text: '2008'),
                                ApText(size: 22, text: 'Comments')
                              ],
                            ),
                             Column(
                              children: [
                                AppText(size: 20, text: '450'),
                                ApText(size: 22, text: 'Favourites')
                              ],
                            ),
                        
                          ],
                        )
                         ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 20,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('images/a.jfif',height: 100,)),
                  ),)
          ]),
            ),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
  child:   Container(
  
    width: double.infinity,
  
    decoration: BoxDecoration(
  
      borderRadius: BorderRadius.circular(10),
  
      color: Colors.white
  
    ),
  
    child: Column(
  
      crossAxisAlignment: CrossAxisAlignment.start,
  
      children: [
  SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ApText(size: 30, text: 'Useful Information'),
        ),
        Divider(color: Colors.black,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Icon(Icons.email,size: 50,color: Colors.grey.shade600,),
              SizedBox(width: 30,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ApText(size: 30, text: 'Email'),
                  ApText(size: 15, text: 'nepali@gmail.com')
                ],
              )
            ],
          ),
        ),SizedBox(height: 10,),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Icon(Icons.phone,size: 50,color: Colors.grey.shade600,),
              SizedBox(width: 30,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ApText(size: 30, text: 'Phone'),
                  ApText(size: 15, text: '+9779810039871')
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 10,),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Icon(Icons.web,size: 50,color: Colors.grey.shade600,),
              SizedBox(width: 30,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ApText(size: 30, text: 'Website'),
                  ApText(size: 15, text: 'https/butterfly.com')
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 10,),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.person,size: 50,color: Colors.grey.shade600,),
              SizedBox(width: 30,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ApText(size: 30, text: 'About'),
                  Container(
                    width: 170,
                    child: ApText(
                      textAlign: TextAlign.justify,
                      size: 15, text: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking'))
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 10,),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Icon(Icons.join_full,size: 50,color: Colors.grey.shade600,),
              SizedBox(width: 30,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ApText(size: 30, text: 'Joined Date'),
                  ApText(size: 15, text: '1st January,2022')
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 10,)
        
  
      ],
  
    ),
  
  ),
) ,
          
          ],
         )
        
        
      ],
      ),
   ); 
  }
}