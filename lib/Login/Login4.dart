import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';

import '../utils/SmallText.dart';
class Login4 extends StatelessWidget {
  const Login4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                Container(
              color: Colors.red,
              height: 300,
                    ),
                    
                    ],
                    ),
            ),
        
          ),
          Container(
            margin: EdgeInsets.only(top: 70,left: 50,right: 50),
            child:SingleChildScrollView(
              child: Column(
                children: [
                  ApText(size: 40, text: 'Welcome',color: Colors.white,),
                SizedBox(height: 5,),
                  ApText(size: 20, text: 'Flutter Login Screen',color: Colors.white,),
                SizedBox(height: 50,),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        ApText(size: 30, text:'Log In',color: Colors.red,),
                        SizedBox(height: 20,),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Username'
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Enter Password'
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(child: ApText(size: 25, text: 'SUBMIT',color: Colors.white,)),
                          ),
                        ),
                        SizedBox(height: 10,),
                        AppText(size: 25, text: 'Forget Password?',color: Colors.red,),
                      SizedBox(height: 20,)
                      ],
                    ),
                  ),
                )
                ],
              ),
            ),
          )
          
        ],
      ),
    
      
    );
  }
}