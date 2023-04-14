import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class Login2 extends StatelessWidget {
  const Login2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [ClipRRect(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(360)
              ),
              child: Image.asset('images/a.jfif',
              width: double.infinity,
              height: 400,fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 200,
              left: MediaQuery.of(context).size.width/2,
              child: AppText(size: 35, 
              text: 'Login',color: Colors.white,))
         ] ),
         SizedBox(height: 20,),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 40),
           child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Email or Phone number',
                            border: InputBorder.none
                          ),
                        ),
                      ),
                      Divider(),
                        Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                            border: InputBorder.none
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: AppText(size: 25, text: 'Login',color: Colors.white,),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Center(child: ApText(size: 20, text: 'Forget Password?',color: Colors.purple,)),
            SizedBox(height: 20,)
            ],
           ),
         )
        ],
      ),
    );
  }
}