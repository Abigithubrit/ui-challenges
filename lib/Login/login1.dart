import 'package:app/utils/SmallText.dart';
import 'package:flutter/material.dart';
class Login1 extends StatelessWidget {
  const Login1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 270,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(80)
                      )
                    ),
                   
                  ),
                  Positioned(
                    top: 70,
                    left: MediaQuery.of(context).size.width/2,
                    child: Image.asset('images/a.jfif',
                    height: 100,width: 100,
                  
                    )),
                    Positioned(
                    bottom:15,
                    right: 15,
                      child: ApText(size: 25,
                       text: 'Login',color: Colors.white,)),
               
                ],
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
        
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.email,color: Colors.red,),
                          hintText: 'Enter your email'
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
        
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            
                            prefixIcon: Icon(Icons.lock,color: Colors.grey,),
                          hintText: 'Password'
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ApText(size: 20, text: 'Forget Password?')
                    ],),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        width: double.infinity,
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ApText(size: 20,text: 'Login',),
                        )),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ApText(size: 20, text: 'Dont have an account ? '),
                        ApText(size: 20, text: 'SignUp',color: Colors.red,)
                      ],)
                  ],
                 ),
              )
        
            ],
          ),
        ),
      ),
      
    );
  }
}