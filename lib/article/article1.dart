import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class Article1 extends StatelessWidget {
  const Article1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [Image.asset('images/a.jfif',
              fit: BoxFit.fill,
              height: 300,
              width: double.infinity,),
              Positioned(
                bottom: 20,
                left: 20,
                child: Row(
                  children: [
                    Icon(Icons.telegram),
                    SizedBox(width: 5,),
                    ApText(size: 20, text: 'Beauty Picture')
                  ],
                ))
          ]),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                 
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ApText(size: 20, text: 'Oct 30,2019'),
                  IconButton(onPressed: (){},
                   icon: Icon(Icons.share))
                  ],),
                  SizedBox(height: 10,),
                  AppText(size: 20, text: 'Article on News Report'),
                  Divider(),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.favorite_outline),
                      SizedBox(width: 5,),
                      ApText(size: 20, text: '200K'),
                      SizedBox(width: 10,),
                      Icon(Icons.message),
                      SizedBox(width: 5,),
                      ApText(size: 20, text: '3k')
                    ],
                  ),
                  SizedBox(height: 10,),
                  ApText(size: 18, text: 'Microsoft and our third-party vendors use cookies to store and access information such as unique IDs to deliver, maintain and improve our services and ads. If you agree, MSN and Microsoft Bing will personalise the content and ads that you see. You can select ‘I Accept’ to consent to these uses or click on ‘Manage preferences’ to review your options and exercise your right to object to Legitimate Interest where used.  You can change your selection under at the bottom of this page.'),
                  SizedBox(height: 20,)
                  
                  

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}