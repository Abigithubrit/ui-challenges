import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class Grid extends StatelessWidget {
   Grid({Key? key}) : super(key: key);
List items=[
  ['images/d.jfif'],
  ['images/e.jfif'],
  ['images/d.jfif'],
  ['images/f.jfif'],
  ['images/g.jfif'],
  ['images/h.jfif'],
  ['images/i.jfif'],
  ['images/j.jfif'],

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: ApText(size: 30, text: 'Grid View',color: Colors.white,),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu,size: 30,),
        ),
      ),
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage('images/d.jfif',),fit: BoxFit.cover)
                  ),child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ApText(size: 35, text: 'LifeStyle Forest',color: Colors.white,),
                        SizedBox(height: 20,),
                        Container(
                          width: MediaQuery.of(context).size.width*0.65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Center(child: ApText(size: 25, text: 'Visit Now')),
                          ),
                        ),
                        SizedBox(height: 20,)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Expanded(child: Container(
                  child: GridView.builder(
                    itemCount: items.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                     itemBuilder: (context,i){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(items[i][0],fit: BoxFit.cover,)),
                        ),
                      );
                     }),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}