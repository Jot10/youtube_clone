import 'package:flutter/material.dart';
import 'package:youtube_1/const/style.dart';
import 'package:youtube_1/custom/box.dart';
import 'package:youtube_1/custom/settingscont.dart';

class SubscribeList extends StatefulWidget {
  const SubscribeList({super.key});

  @override
  State<SubscribeList> createState() => _SubscribeListState();
}

class _SubscribeListState extends State<SubscribeList> {
   int initialindex = 0;
     void bottomNavbar (index){
      setState(() {
        initialindex= index;
      });
     }
     final List<Widget>screens = [
   
  ];
  
  @override
  Widget build(BuildContext context) {
  var myheight = MediaQuery.of(context).size.height;
   var mywidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios)),
        title: Text('All subscriptions', style: textStyleW700),
        actions: [
          IconButton(onPressed: () {
                showModalBottomSheet(context: context,
                backgroundColor: Colors.white,
                showDragHandle: true,
                isScrollControlled: true,
                 builder: (context) {
                  return Wrap(
                    children: [
                      Container(
                        height: 40,width: mywidth,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Select a device', style: textStyleW700.copyWith(fontSize: 20),),
                        ),
                      
                      ),
                      settingscontainer(text: 'AirPlay & Bluetooth Devices',iconData: Icons.tv,),
                      settingscontainer(text: 'Link with TV code',iconData: Icons.connected_tv_outlined,),
                      settingscontainer(text: 'Learn More', iconData: Icons.report,)
                    ],
                  );
                },);
              }, icon:Icon(Icons.cast)),
          IconButton(onPressed: (){}, icon:Icon(Icons.search)),
          IconButton(onPressed: (){}, icon:Icon(Icons.more_vert)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
          Container(
            height: 40,
            width: 380,
            child: Column(
              children: [
                PopupMenuButton(
              color:Colors.white ,
              elevation: 20,
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text('Most relevant'),
                    ),
                    Icon(Icons.keyboard_arrow_down_outlined)
                  ],
                ),     
              ),
              itemBuilder:(context) => [
                PopupMenuItem(child: Text('Most relevant'),),
                PopupMenuItem(child: Text('New activity'),),
                PopupMenuItem(child: Text('New A-z'),),
              ],),
              ],
            ),
          ),
          Container(
            height: myheight/1.15,
            width: mywidth,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                mybox(mylabel: 'Tam Kaur'),
                mybox(mylabel: 'Fit Tuber'),
                mybox(mylabel: 'DevTown'),
                mybox(mylabel: 'HYBE LABELS'),
                mybox(mylabel: 'Korean Jream'),
                mybox(mylabel: 'Ruli Khuli Janta Productions'),
                mybox(mylabel: 'STEEZY'),
                mybox(mylabel: 'Code With Harry'),
                mybox(mylabel: 'emi wong'),
                mybox(mylabel: 'NROUND'),
                mybox(mylabel: 'Video Surgeons'),
                mybox(mylabel: 'KaranveerMatharu'),
                mybox(mylabel: 'Praise Varghese'),
                
              ],
            ),
          )
          ],
        ),
      ),
     
    );
  }
}