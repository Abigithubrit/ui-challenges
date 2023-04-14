import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class Settings4 extends StatelessWidget {
  const Settings4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              ApText(size: 25, text: 'Settings'),
              SizedBox(height: 20,),
              Row(
                children: [
                  Icon(Icons.person,color: Colors.blue,),
                  SizedBox(width: 10,),
                  AppText(size: 20, text: 'Account'),
                 

                ],
              ),
               Divider(),
                
                  ListTile(
                    title: ApText(size: 20,text: 'Change Password',),
                    trailing: Icon(Icons.arrow_forward_ios),
                   onTap: (){},
                  ),
                  ListTile(
                    title: ApText(size: 20,text: 'Content Settings',),
                    trailing: Icon(Icons.arrow_forward_ios),
                   onTap: (){},
                  ),
                  ListTile(
                    title: ApText(size: 20,text: 'Social Media',),
                    trailing: Icon(Icons.arrow_forward_ios),
                   onTap: (){},
                  ),
                  ListTile(
                    title: ApText(size: 20,text: 'Language',),
                    trailing: Icon(Icons.arrow_forward_ios),
                   onTap: (){},
                  ),
                  ListTile(
                    title: ApText(size: 20,text: 'Privacy Policy',),
                    trailing: Icon(Icons.arrow_forward_ios),
                   onTap: (){},
                  ),
                  SizedBox(height: 20,),
                  Row(
                children: [
                  Icon(Icons.person,color: Colors.blue,),
                  SizedBox(width: 10,),
                  AppText(size: 20, text: 'Notifications'),
                 

                ],
              ),
              Divider(),
              SwitchListTile(value:false,
             title: ApText(size: 20, text:'Account Status'),
             activeColor: Colors.red,
              onChanged: (val){}),
              SwitchListTile(value:true,
             title: ApText(size: 20, text:'New Update'),
             activeColor: Colors.red,
              onChanged: (val){}),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20)
                  ),
                
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                    child: AppText(size: 20, text: 'Logout'),
                  ),
                ),
              )
                 
            ],
          ),
        ),
      ),
    );
  }
}