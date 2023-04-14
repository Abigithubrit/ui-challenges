import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class Profile6 extends StatelessWidget {
  const Profile6({Key? key}) : super(key: key);

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
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/e.jfif'),fit: BoxFit.fill)
                  ),
                ),
                Positioned(
                  top: 150,
                  right: 10,
                  child:Container(
                    decoration: BoxDecoration(
                      color:  Colors.white,
                      shape: BoxShape.circle
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.edit),
                    ),
                  ),),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 160),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 55,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 52,
                          backgroundImage: AssetImage('images/a.jfif'),
                        ),
                      ),
                      AppText(size: 30, text: 'Jennifer Lohani'),
                      ApText(size: 20, text: 'Flutter Developer')
                    ],
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