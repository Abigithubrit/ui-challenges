import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class Settings1 extends StatelessWidget {
  const Settings1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: Text('Settings',style: TextStyle(color: Colors.black),),
        centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.sunny,color: Colors.black,),
        )
      ],
      ),
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.pink[500],
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('images/ae.jfif'),
                            ),SizedBox(width: 20,),
                            AppText(size: 20, text: 'Jenifer Doe')
                          ],
                        ),
                        IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.white,))
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                       ...ListTile.divideTiles(
                        color: Colors.grey,
                        tiles: [
                          ListTile(
                            leading: Icon(Icons.lock_outline,color: Colors.pink,),
                            
                            title: AppText(size: 20, text: 'Change \nPassword'),
                            trailing:Icon(Icons.arrow_forward_ios)
                          ),
                          SizedBox(height: 10,),
                           ListTile(
                            leading: Icon(Icons.language,color: Colors.pink,),
                            
                            title: AppText(size: 20, text: 'Change \nLanguage'),
                            trailing:Icon(Icons.arrow_forward_ios)
                          ),SizedBox(height: 1,),
                           ListTile(
                            leading: Icon(Icons.place,color: Colors.pink,),
                            
                            title: AppText(size: 20, text: 'Change \nLocation'),
                            trailing:Icon(Icons.arrow_forward_ios)
                          ),
                        ])
                      ],
                    ),
                  ),
                  
                ),
              ),
              SizedBox(height: 20,),
             AppText(size: 25, text: 'Notification Settings',color: Colors.blue,),
             SwitchListTile(value: true,
             title: ApText(size: 20, text:'Received Notifications'),
             activeColor: Colors.red,
              onChanged: (val){}),
              SizedBox(height: 10,),
             SwitchListTile(value: true,
             title: ApText(size: 20, text:'Received Newsletter'),
             activeColor: Colors.red,
              onChanged: (val){}),
              SizedBox(height: 10,),
             SwitchListTile(value: true,
             title: ApText(size: 20, text:'Received App Updates'),
             activeColor: Colors.red,
              onChanged: (val){}),
              SizedBox(height: 10,),
             SwitchListTile(value:false,
             title: ApText(size: 20, text:'Received Offer Notifications'),
             activeColor: Colors.red,
              onChanged: (val){}),
              
              

            ],
          ),
        ),
        
      ),
    );
  }
}