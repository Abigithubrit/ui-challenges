import 'package:app/utils/SmallText.dart';
import 'package:flutter/material.dart';
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('images/back.jfif',height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,),
         Padding(
           padding: const EdgeInsets.all(18.0),
           child: SingleChildScrollView(
             child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100,),
                ApText(size: 30, text: 'Welcome Back'),
                ApText(size: 20, text: 'Sign in to continue'),
                SizedBox(height: 30,),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Username'
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.grey.shade600)
                  ),
                ),
                SizedBox(height: 50,),
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ApText(size: 20, text:'Forget Password?',color: Colors.white,),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  
                  child: ElevatedButton(
                    
                    onPressed: (){},
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: ApText(size:20,text: 'Sign In',),
                   )),
                ),
                SizedBox(height: 10,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ApText(size: 20, text: "Don't have an account? "),
                    ApText(size: 20, text: 'SignUp',color: Colors.red,)
                  ],
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