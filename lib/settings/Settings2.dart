import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class Settings2 extends StatelessWidget {
  const Settings2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/a.jfif'),
                    ),

                  ),
                  SizedBox(width: 20,),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(size: 20, text:'Jane Lopez',color: Colors.white,),
                      ApText(size: 16, text: 'Nepal',color: Colors.grey,)
                    ],
                  )
                ],
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: AppText(size: 20, text: 'Languages',color: Colors.white,),
                  ),onTap: (){},
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                  subtitle: ApText(size: 17,text: 'English US',color: Colors.white,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: AppText(size: 20, text: 'Profile Settings',color: Colors.white,),
                  ),
                  onTap: (){},
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                  subtitle: ApText(size: 17,text: 'Jane Lopez',color: Colors.white,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SwitchListTile(
                  title: AppText(size: 20, text: 'Email Notifications',color: Colors.white,),
                  subtitle: ApText(size: 17, text: 'On',color: Colors.white,),
                  value: true,
                 onChanged: (val){})
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SwitchListTile(
                 
                  title: AppText(size: 20, text: 'Push Notifications',color: Colors.white,),
                  subtitle: ApText(size: 17, text: 'On',color: Colors.white,),
                  value:true,
                 onChanged: (val){})
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                title: AppText(size: 20, text: 'LogOut',color: Colors.white,),
                onTap: (){},
              ),)
            ],
          ),
        ),
      ),
    );
  }
}