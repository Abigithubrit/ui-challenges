import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class Food1 extends StatelessWidget {
 Food1({Key? key}) : super(key: key);
List image=[
['images/a.jfif'],
['images/b.jfif'],

['images/c.jfif'],

['images/i.jfif'],
['images/j.jfif'],
['images/a.jfif'],
['images/d.jfif'],
['images/a.jfif'],



];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Stack(
              children: [Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  )
                ),
              ),
               Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30,),
                    AppText(size: 35, text: 'Good Morning \nEveryone',
                    color: Colors.white,),
                    SizedBox(height: 40,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30,right: 8),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search..',
                            border: InputBorder.none,
                            suffixIcon: IconButton(onPressed: (){},
                            icon: Icon(Icons.search),)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.5,
                        child: GridView.builder(
                          itemCount: image.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
                          itemBuilder: (context,i){
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
decoration: BoxDecoration(
  
), 
child: ClipRRect(
  borderRadius: BorderRadius.circular(20),
  child: Image.asset(image[i][0],
  fit: BoxFit.cover,),),                             ),
                            );
                          }),
                      ),
                    )

                  ],
                ),
              ),
            ),
          ),
          ]),
         

          ],
        ),
      ),
    );
  }
}