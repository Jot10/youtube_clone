import 'package:flutter/material.dart';
import 'package:youtube_1/const/style.dart';
//import 'package:youtube_1/const/style.dart';
import 'package:youtube_1/custom/buttons.dart';
import 'package:youtube_1/custom/playlist.dart';
import 'package:youtube_1/custom/settingscont.dart';
import 'package:youtube_1/custom/video.dart';
import 'package:youtube_1/pages/homepage/notifications.dart';
import 'package:youtube_1/pages/homepage/search.dart';
import 'package:youtube_1/pages/profile/settings.dart';
//import 'package:youtube_1/custom/video.dart';



class profilescreen extends StatelessWidget {
  const profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    var myheight= MediaQuery.of(context).size.height;
    var mywidth= MediaQuery.of(context).size.width;
    List title=['youtube clone', 'best dialouges', 'basics of makeup', 'detachment', 'Ikigai'];
    List title2=['dance', 'Books', 'Nround', 'May', 'workout'];
    
    List historyimage=['assets/flutter.jpg','assets/Dune2+Web.jpg','assets/tamvideo.jpg','assets/tam.jpg','assets/image.jpg'];
    List playlistimage=['assets/steezy1.jpg','assets/image.jpg','assets/hybe.png','assets/quazi.jpg','assets/emivideo.jpg'];
    List name1=['marcus ng','actwithme','Tam Kaur','Tam Kaur','booksforu'];
    return Scaffold(
     body: NestedScrollView(headerSliverBuilder: (context, innerBoxIsScrolled) {
      return[
         SliverAppBar(actions: [
          InkWell(
            onTap: () {
                showModalBottomSheet(context: context,
                backgroundColor: Colors.white,
                showDragHandle: true,
                isScrollControlled: true,
                 builder: (context) {
                  return Wrap(
                    children: [
                      Container(
                        height: 40,width: mywidth,
                        child: Text('Select a device', style: textStyleW700.copyWith(fontSize: 20),),
                      
                      ),
                      settingscontainer(text: 'AirPlay & Bluetooth Devices',iconData: Icons.tv,),
                      settingscontainer(text: 'Link with TV code',iconData: Icons.connected_tv_outlined,),
                      settingscontainer(text: 'Learn More', iconData: Icons.report,)
                    ],
                  );
                },);
              },
            child: Icon(Icons.cast)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
               onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => NotificationScreen(),) );
                  },
              child: Icon(Icons.notifications_outlined)),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) => Search(),));
            },
            icon:const Icon(Icons.search)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Settings(),));
              },
              child: Icon(Icons.settings_outlined)),
          ),
          
        ],)
      ];
     }, body:SingleChildScrollView(
       child: Column(
        children: [
          Container(
            height: myheight/7,width: mywidth,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(radius: 40,backgroundColor: Colors.amber,
                  child: Text('K',style: textStyleW700.copyWith(fontSize: 30,color: Colors.white),),),
                ),
                Container(
                  height: myheight/13,width: mywidth/2,
                  child: Column(children: [
                    Container(
                      height: myheight/25,width: mywidth/2,
                      child: Text('Username', style: textStyleW700),),
                    Row(children: [
                      Text('Userid'), Text('. View channel >')
                    ],)
                  ],),
                )
              ],
            ),
          ),
          Container(
            height: myheight/25,width: mywidth,
            child:ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 10,),
                 buttons(
                iconData: Icons.person
                ,text: 'Switch accounts'),
                SizedBox(width: 10,),
               buttons(
                iconData: Icons.face
                ,text: 'Google account'),
                SizedBox(width: 10,),
       
               buttons(
                iconData: Icons.person
                ,text: 'turn on Incognito'),
                SizedBox(width: 10,),],)
          ),
          Container(height: myheight/18,width: mywidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('History', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height: 26,width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),border: Border.all(color: Colors.black,width: 1)
              ),
              child: Center(child: Text('View all')),),
            )
          ],),),
       
          Container(height: myheight/4.7,width: mywidth,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: name1.length,
            itemBuilder: (context, index) {
            return 
             Row(
               children: [
                //Container(height: 150,width: 200,),
                YouTubeVideoWidget(videoTitle: title[index], videoThumbnailUrl: historyimage[index], channelName:name1[index], viewsCount: '12'),
                 SizedBox(width: 10,)
               ],
             )
             ;
          },),
          ),
       
          Container(height: myheight/18,width: mywidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Playlists', style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height: 26,width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),border: Border.all(color: Colors.black,width: 1)
              ),
              child: Center(child: Text('View all')),),
            )
          ],),),
       
          Container(height: myheight/4.4,width: mywidth,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: title2.length,
            itemBuilder: (context, index) {
            return 
             Row(
               children: [
                // Container(height: 150,width: 200,),
                playlist(videoTitle: title2[index], videoThumbnailUrl: playlistimage[index], channelName: 'Private', viewsCount: '12'),
                // YouTubeVideoWidget(videoTitle: '1stvideo', videoThumbnailUrl: 'assets/pic 1.jpeg', channelName: 'fdds', viewsCount: '12'),
                 SizedBox(width: 10,)
               ],
             )
             
             ;
          },),
          ),
      settingscontainer(text: 'Your videos', iconData:Icons.video_collection,),
      settingscontainer(text: 'Downloads', iconData: Icons.download_outlined,),
      Divider(height: 5,color: Colors.grey,),
      settingscontainer(text: 'Your movie', iconData: Icons.movie,),
      settingscontainer(text: 'Get YouTube Premium', iconData: Icons.video_collection ,),
      Divider(height: 5,color: Colors.grey,),
      settingscontainer(text: 'Time watched', iconData:Icons.bar_chart_outlined ,),
      settingscontainer(text: 'Help & feedback', iconData:Icons.question_mark_outlined ,),
      
        ],
       ),
     ))
     
    );
  }
}