import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class Settings3 extends StatelessWidget {
  const Settings3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              AppText(size: 30, text:'ACCOUNT'),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                    children: [CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/a.jfif'),
                      ),
                      SizedBox(width: 20,),
                      ApText(size: 20, text: 'Abishek Deshar')
                      ]
                    ),
                    Divider(),
                    SwitchListTile(value: true,
                    title: ApText(size: 20, text:'Private Account'),
                     onChanged: (val){}),

                  ],
                ),
              ),
               SizedBox(height: 20,),
               Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
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
               SizedBox(height: 20,),
               Container(
                decoration: BoxDecoration(
                  color: Colors.white,borderRadius: BorderRadius.circular(10)
                ),
                child: ListTile(
                  leading: Icon((Icons.logout)),
                  title: ApText(size: 20, text: 'LogOut'),
                ),
               )
             
            ],
          ),
        ),
      ),
    );
  }
}