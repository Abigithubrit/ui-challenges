import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class Login3 extends StatelessWidget {
  const Login3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.orange[900],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                height: 90,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('images/a.jfif',height: 90,)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ApText(size: 35, text: 'Login',color: Colors.white,),
                  SizedBox(height: 10,),
                  ApText(size: 25, text: 'Welcome Back',color: Colors.white,),
               
                ],
              ),
            ),
            Expanded(
              
              child: Container(
                padding: EdgeInsets.all(30),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  )
                ),
                child: SingleChildScrollView(
                  child: Column(
                children: [
                  SizedBox(height: 70,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(10),
                  ),
                    child: Column(
                      children: [
                        
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email or phone number'
                            ),
                          ),
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password'
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                SizedBox(height: 10,),
                ApText(size: 20, text: 'Forget Password?'),
                SizedBox(height: 30,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.orange.shade900,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 10),
                    child: ApText(size: 20, text: 'Login',color: Colors.white,),
                  ),
                ),
                SizedBox(height: 50,),
                ApText(size: 20, text: 'Continue with Social media'),
                SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Container(
                        decoration:BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          child: Center(
                            child: ApText(size: 15,
                             text: 'Facebook',color: Colors.white,),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        decoration:BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                          child: ApText(size: 15,
                           text: 'Google',color: Colors.white,),
                        ),
                      ),
                    ),
                    
                  ],
                )
                ],
                  ),
                ),
              ))
          ],
        ),
      ),
    );
  }
}