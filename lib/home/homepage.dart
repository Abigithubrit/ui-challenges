import 'package:app/home/smartbox.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  List devices=[
    ['Smart Light','images/light-bulb.png',true],
    ['Smart AC','images/air-conditioner.png',true],
    ['Smart TV','images/smart-tv.png',true],
    ['Smart Fan','images/fan.png',true],
  ];
void powerswitch(bool value,int i){
  setState(() {
    devices[i][2]=value;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.symmetric(
              horizontal: 40,vertical: 25
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('images/menu.png',
                height: 45,
                ),
                Icon(Icons.person,size: 45,),

                
              ],
            ),

            ),
            SizedBox(height: 20,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(size: 25, text: 'Welcome Home'),
                AppText(size: 50, text: 'Abishek Deshar')
              ],
            ),),
            SizedBox(height: 25,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(size: 25, text: 'Smart Devices'),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),),
            Expanded(child: GridView.builder(
              itemCount: devices.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1/1.3,
                crossAxisCount: 2),
               itemBuilder: (context,i){
                return Smartbox(onchange: (value)=>powerswitch(value, i),
                 name: devices[i][0],
                  icon: devices[i][1],
                   poweron: devices[i][2]);
               }))
          ],
        )),
    );
  }
}                                                                        