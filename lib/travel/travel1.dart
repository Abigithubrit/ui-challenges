import 'package:app/utils/SmallText.dart';
import 'package:app/utils/apptext.dart';
import 'package:flutter/material.dart';
class Travel1 extends StatefulWidget {
  const Travel1({Key? key}) : super(key: key);

  @override
  State<Travel1> createState() => _Travel1State();
}

class _Travel1State extends State<Travel1> {
  List <String> location=['Kathmandu','Pokhara','Lalitpur'];
  var selected=0;
  bool isselected =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: SingleChildScrollView(
        child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.place),
                    PopupMenuButton(
                      onSelected: (dynamic index){
                        setState(() {
                          selected=index;
                        });
                      },
                      child: Row(
                        children: [
                          Text(location[selected],style: TextStyle(fontSize: 25),),
                          Icon(Icons.arrow_drop_down,size: 45,)
                          ],
                      ),
                      itemBuilder: (BuildContext context)=>
                      <PopupMenuItem<int>>[
                        PopupMenuItem(
                          child: Text(location[0]),
                          value: 0,),
                          PopupMenuItem(
                          child: Text(location[1]),
                          value: 1,),
                          PopupMenuItem(
                          child: Text(location[2]),
                          value: 2,),
                      ])
                  ],
                ),
                Icon(Icons.settings)
              ],
            ),
          ),
          ApText(
            textAlign: TextAlign.center,
            size: 45, text: 'Where do you want to go?'),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25,
          vertical: 5),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: IconButton(onPressed: (){},
                   icon: Icon(Icons.search)),
                   hintText: 'Kathmandu',
                  
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                setState(() {
                  isselected=true;
                },);
              },child: Choice(
                icon: Icons.flight_land,
                text: "Flights",
                isselected: isselected,
              ),
            ),
            SizedBox(width:50,),
             InkWell(
              onTap: (){
                setState(() {
                  isselected=false;
                },);
              },child: Choice(
                icon: Icons.hotel,
                text: "Hotel",
                isselected: !isselected,
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ApText(size: 20, text: 'Currently Watched Items'),
            ApText(size: 20, text: 'View All',color: Colors.white,)
            ],
          ),
        ),
        City(),
        ],
        ),
      ),
    );
  }
}
class Choice extends StatefulWidget {

final bool isselected;
final IconData icon;
final String text;

  const Choice({super.key, required this.isselected, required this.icon, required this.text});
  @override
  State<Choice> createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: widget.isselected?BoxDecoration(
        color: Colors.blue.shade600,
        borderRadius: BorderRadius.circular(15)):BoxDecoration(
        color: Colors.blue.shade200,
        borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Row(
            children: [
              Icon(widget.icon,size: 20,),
              SizedBox(width: 10,),
              Text(widget.text)
            ],
          ),
        ),
      
    );
  }
}
class City extends StatelessWidget {
   City({Key? key}) : super(key: key);
List city=[
  ['images/p3.jfif','Kathmandu'],
    ['images/p4.jfif','Pokhara'],
   ['images/t1.jfif','Lalitpur'],
   ['images/p1.jfif','Bhaktapur'],


];
  @override
  Widget build(BuildContext context) {
return Container(
 
 height: 240,
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: city.length,
    itemBuilder: (context, index) {
    return Stack(
      children: [Padding(padding:EdgeInsets.all(10),
      child: Container(
        width: 200,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(city[index][0],
          height: 240,
          fit:BoxFit.cover,)
          ),
          
          ),
          ),
          Positioned(
            
            bottom: 25,
            left: 18,
            child:Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [AppText(
              
                size: 20, text: city[index][1],color: Colors.white.withOpacity(1),),
                ApText(size: 20, text: '03 Mar',color: Colors.white,)
                ],
            )),
            Positioned(
              top: 25,
              right: 20,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(8)
                ),
                child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 2),
                  child: ApText(size: 20, text: '10%',),
                ),
              ))
    ]);
  },),
);
  }
}