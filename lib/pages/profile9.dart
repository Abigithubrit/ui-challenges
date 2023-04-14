import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class Profile9 extends StatelessWidget {
  const Profile9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.chat,color: Colors.grey.shade600,),
                  SizedBox(width: 20,),
                  Icon(Icons.more_vert_outlined,color: Colors.grey.shade600,),
                 ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 60,child: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage('images/ac.jfif'),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
AppText(size: 20, text: ' Marina Nepal'),
ApText(size: 16, text: ' Flutter Developer'),
SizedBox(height: 3,),
Row(crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Icon(Icons.place),SizedBox(width: 5,),
  ApText(size: 15, text: 'Kathmandu,Nepal')
],)
                    ],
                  )
                ],
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ApText(size:16, text: 'Over 2+ years of coding ecperience in dart programming Language.Recently developrd mobuile application and website based on GUI'),
              ),
              AppText(size: 30, text: 'Experience'),
              Divider(),
              ListTile(
                leading: Icon(Icons.circle,color: Colors.grey.shade600,size: 20,),
                title: AppText(size: 20, text: 'Cloud Factory'),
                subtitle: ApText(size: 16, text:'Flutter Developer (2016-2017)'),
              ),
              ListTile(
                leading: Icon(Icons.circle,color: Colors.grey.shade600,size: 20,),
                title: AppText(size: 20, text: 'Soft Tech Pvt.Ltd'),
                subtitle: ApText(size: 16, text:'Flutter Developer (2016-2017)'),
              ),
              ListTile(
                leading: Icon(Icons.circle,color: Colors.grey.shade600,size: 20,),
                title: AppText(size: 20, text: 'Microsoft Pvt.Ltd'),
                subtitle: ApText(size: 16, text:'Flutter Developer (2016-2017)'),
              ),
              ListTile(
                leading: Icon(Icons.circle,color: Colors.grey.shade600,size: 20,),
                title: AppText(size: 20, text: 'Technology Group .Ltd'),
                subtitle: ApText(size: 16, text:'Flutter Developer (2016-2017)'),
              ),
              SizedBox(height: 10,),
              AppText(size: 30, text:'Education'),
              Divider(),
              ListTile(
                leading: Icon(Icons.circle,color: Colors.grey.shade600,size: 20,),
                title: AppText(size: 20, text: 'Tribhuwan University,Nepal'),
                subtitle: ApText(size: 16, text:'Bsc.Compter Science And informmation technology(2018-2023)'),
              ),
              ListTile(
                leading: Icon(Icons.circle,color: Colors.grey.shade600,size: 20,),
                title: AppText(size: 20, text: 'Bajrabarahi High School'),
                subtitle: ApText(size: 16, text:'+2 Level(2016-2018)'),
              ),
              ListTile(
                leading: Icon(Icons.circle,color: Colors.grey.shade600,size: 20,),
                title: AppText(size: 20, text: 'Nepal Board'),
                subtitle: ApText(size: 16, text:'SlC (2016)'),
              ),
              SizedBox(height: 10,),
              AppText(size: 30, text:'Contact'),
              Divider(),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Icon(Icons.email),
                  SizedBox(width: 20,),
                  ApText(size: 18, text: 'nepalmarina@gmail.com')
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Icon(Icons.phone),
                  SizedBox(width: 20,),
                  ApText(size: 18, text: '+977-9823784689')
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Icon(Icons.facebook,color: Colors.blue,),
 SizedBox(width: 20,),

                  Icon(Icons.youtube_searched_for,color: Colors.blue,), 
                   SizedBox(width: 20,),
                  Icon(Icons.local_airport,color: Colors.blue,),                 
                ],
              ),
             
              
            ],
          ),
        ),
      ),
    );
  }
}