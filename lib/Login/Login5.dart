import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class Login5 extends StatelessWidget {
  const Login5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Center(child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('images/logo1.jfif',
              height: 200,width: 200,fit: BoxFit.fill,))),
            SizedBox(height: 50,),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Column(
                  children: [
                    AppText(size: 25, text: 'Hello'),
                    ApText(size: 25, text:'Sign in your account'),
                    SizedBox(height: 20,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter address',
                        labelText: 'Enter address',
                        border: OutlineInputBorder()
                      ),
                    ),
                    SizedBox(height: 10,),
                     TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter Password',
                        labelText: 'password',
                        border: OutlineInputBorder()
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ApText(size: 20, text: 'Forget your Password?')
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 15),
                        child: ApText(size: 20, text: 'Login',color: Colors.white,),
                      ),
                    ),
                    SizedBox(height: 10,),
                    AppText(size: 20, text: 'Or Login using Social Media'),
SizedBox(height: 10,),
Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
  Icon(Icons.facebook,color: Colors.blue,),
  Icon(Icons.install_desktop,color: Colors.blue,)
],)
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ApText(size: 15, text: "Don't have an account? "),
              ApText(size: 15, text: 'Register Now',color: Colors.red,)
              ],
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}