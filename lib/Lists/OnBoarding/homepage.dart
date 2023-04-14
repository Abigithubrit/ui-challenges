import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class Homepage extends StatelessWidget {
List arrival=[
  ['images/a.jfif','Armani Suit','300'],
  ['images/cl2.jfif','Armani Suit','200'],
];
List collection=[
  ['images/a.jfif','Summer'],
  ['images/a.jfif','Winter'],
  ['images/a.jfif','Rainy'],
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    IconButton(onPressed: (){},
                     icon: Icon(Icons.search))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(size: 25, text: 'New Arrival'),
                    ApText(size: 20, text: 'See All',color: Colors.blue,)
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 266,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context,i){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 240,
                        width:180,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(arrival[i][0],fit: BoxFit.fill,
                              height: 180,
                              width: double.infinity,),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AppText(size: 17, text: arrival[i][1]),
                                      AppText(size: 20, text: '\$'+arrival[i][2])
                                    ],

                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Icon(Icons.favorite,color: Colors.white,),
                                    ),
                                  )
                                ],
                              ),
                            ),
                           
                          ],
                        ),
                      ),
                    );
                  }),
              ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(size: 25, text: 'Collection'),
                    ApText(size: 20, text: 'See All',color: Colors.blue,)
                  ],
                ),
              ),
              Expanded(child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: collection.length,
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    width: 170,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          child: Image.asset(collection[index][0],fit: BoxFit.fill,
                          height: 170,
                          width: double.infinity,),
                        ),
                        SizedBox(height: 10,),
                        ApText(size: 20, text: collection[index][1]),
                      
                      ],
                    ),
                  ),
                );
              },)),
              SizedBox(height: 10,)
            ],
          ),
        ),
      ),
    );
  }
}