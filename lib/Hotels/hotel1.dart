import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class Hotels1 extends StatelessWidget {
   Hotels1({Key? key}) : super(key: key);
List image=[
['images/p1.jfif','Hotel Royal palace','A four start hotel in Kathmandu','1000'],
['images/p3.jfif','Hotel Maurisius','A five start hotel in Kathmandu','2000'],
['images/p4.jfif','Hotel Maurisius','A five start hotel in Kathmandu','3000'],
['images/t3.jfif','Hotel Maurisius','A five start hotel in Kathmandu','4000']


];
List images=[
['images/n1.jfif','Hotel Royal palace','A four start hotel in Kathmandu','1000'],
['images/n2.jfif','Hotel Maurisius','A five start hotel in Kathmandu','2000'],
['images/p4.jfif','Hotel Maurisius','A five start hotel in Kathmandu','3000'],
['images/t3.jfif','Hotel Maurisius','A five start hotel in Kathmandu','4000'],
['images/t2.jfif','Hotel Maurisius','A five start hotel in Kathmandu','4000'],



];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search),
          label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person),
          label: 'Profile'),
        ],
      ),
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ApText(size: 20, text: 'Hello @bishek'),
                    AppText(size: 15, text:'Find your favourite hotel')
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('images/a.jfif',height: 70,width: 70,))
              ],
            ),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for Hotel',
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search)
                ),
              ),
            ),
            SizedBox(height: 25,),
            AppText(size: 25, text: 'Popular Hotel'),
            Container(
              height: 300,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: image.length,
                itemBuilder: (context,i){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)
                            ),
                            child: Image.asset(image[i][0],fit: BoxFit.cover,
                            height: 150,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ApText(size: 20, text: image[i][1]),
                                ApText(size: 15, text:image[i][2],color: Colors.grey.shade700,),
                                SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ApText(size: 15, text: 'Rs '+image[i][3]+' / night'),
                                    Row(
                                      children: [
                                        ApText(size: 20, text: '4.5'),
                                        SizedBox(width: 4,),
                                        Icon(Icons.star,size: 24,)
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
            ),
            SizedBox(height:10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(size: 20, text: 'Hotel packages'),
                ApText(size: 20, text: 'View all')
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: ListView.builder(
                itemCount: images.length,
                itemBuilder: (context,i){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10
                        )
                      ),
                      height: 140,
                      width: double.infinity,
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(images[i][0],
                            width: 120,
                            height: double.infinity,
                            fit: BoxFit.cover,),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 20,),
                                ApText(size: 15, text:images[i][1]),
                                ApText(size: 10, text: images[i][2],color: Colors.grey.shade600,),
                                
                                SizedBox(height:10),
                                ApText(size: 20, text: 'Rs '+images[i][3]+' / night',color: Colors.blue,),
                                SizedBox(height: 5,),
                                Row(children: [
                                  Icon(Icons.phone,color: Colors.blue,),
                                  Icon(Icons.wifi,color: Colors.blue,),
                                  Icon(Icons.local_drink,color: Colors.blue,),
                                  Icon(Icons.factory,color: Colors.blue,),
                                ],)
                              ],)
                        ],
                      ),
                    ),
                  );
                }),
            )
            
          ],
        ),
      ),
    );
  }
}