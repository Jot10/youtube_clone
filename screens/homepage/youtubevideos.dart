import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_1/const/style.dart';
import 'package:youtube_1/custom/buttons.dart';
import 'package:youtube_1/custom/homepagevideos.dart';
import 'package:youtube_1/custom/subsshorts.dart';

class youtubeVideos extends StatefulWidget {
  const youtubeVideos({super.key});

  @override
  State<youtubeVideos> createState() => _youtubeVideosState();
}

class _youtubeVideosState extends State<youtubeVideos> {
  @override
  Widget build(BuildContext context) {
    var myheight= MediaQuery.of(context).size.height;
    var mywidth= MediaQuery.of(context).size.width;


    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [Container(height: myheight/3,width: mywidth,color: Colors.black,),
            Positioned(
              top: 20,left: 20,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.keyboard_arrow_down_outlined, color: Colors.white,))),
               Positioned(
              top: 20,left: 240,
              child: Icon(Icons.toggle_off, color: Colors.white,)),
               Positioned(
              top: 20,left: 280,
              child: Icon(Icons.cast, color: Colors.white,)),
               Positioned(
              top: 20,left: 320,
              child: Icon(Icons.closed_caption_outlined, color: Colors.white,)),
               Positioned(
              top: 20,left: 360,
              child: Icon(Icons.settings_outlined, color: Colors.white,)),
          
               Positioned(
              top: 130,left: 110,
              child: Row(
                children: [
                  Icon(Icons.skip_previous, color: Colors.white,),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Icon(Icons.play_arrow, color: Colors.white,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Icon(Icons.skip_next, color: Colors.white,),
                  ),
                ],
              )),
          
               Positioned(
              top: 220,left: 370,
              child: Icon(Icons.fullscreen, color: Colors.white,)),
              Positioned(
                top: 248,left: 2,
                child: Row(
                  children: [
                    CircleAvatar(radius: 6,backgroundColor: Colors.red,),
                  ],
                ))
          
          
          
            ]
            ),
            Container(height:522,width: mywidth,
            child: SingleChildScrollView(
              child: Column(
                children: [Container(
                  height: myheight/9,width: mywidth,
                  child: Row(
                    children: [Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: 60,width: 60,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.amber),),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 17),
                          child: Container(height: 20,width: 200,child: Text('Advertisement'),),
                        ),
                        Container(height: 20,width: 200,child: Row(
                          children: [
                            Text('Sponsored'),
                            SizedBox(width: 5,),
                            Text('.',style: TextStyle(color: Colors.grey),),
                            SizedBox(width: 5,),
                            Text('4.6',style: TextStyle(color: Colors.grey),),
                            
                           Icon(Icons.star, color: Colors.grey,size: 17,),
                            SizedBox(width: 5,),
                            Text('FREE',style: TextStyle(color: Colors.grey),),
                            SizedBox(width: 5,)
                          ],
                        ),)
                      ],
                    ),
                    CircleAvatar(radius: 15,backgroundColor: Color.fromARGB(255, 232, 230, 230),child: Icon(Icons.keyboard_arrow_down_outlined),),
                    SizedBox(width: 15,),
                    Container(height: 40,width: 70,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue),
                    child: Center(child: Text('Install', style: textStyleW700.copyWith(color: Colors.white),)),)
                    ],
                  ),
                ),
                Divider(height: 5,thickness: 2,color: Colors.grey,),
                Container(height: myheight/12, width: mywidth,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('video title', style: textStyleW700.copyWith(fontSize: 20),),
                ),),
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('1200 views', style: TextStyle(color: Colors.grey),),
                  ),
                  SizedBox(width: 10,),
                  Text('6 weeks ago',style: TextStyle(color: Colors.grey),),
                  SizedBox(width: 20,),
                  Text('more',style: textStyleW700,)
                ],),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CircleAvatar(radius: 17,backgroundColor:Color.fromARGB(255, 232, 230, 230),),
                      ),
                      SizedBox(width: 10,),
                      Text('Channel Name', style: textStyleW700,),
                      SizedBox(width: 10,),
                      Text('4k', style: TextStyle(color: Colors.grey),)
                    ],),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(height: 30,width: 100,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black),
                                            child: Center(child: Text('Subscribe', style: textStyleW700.copyWith(color: Colors.white),)),),
                      )

                  ],
                ),
                SizedBox(height: 10,),

                Container(height: 30,width: mywidth,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 10,),
                    buttons(text: '220', iconData: Icons.thumb_up_outlined,),
                    SizedBox(width: 10,),
                    buttons(text: 'Share', iconData: Icons.share,),
                    SizedBox(width: 10,),
                    buttons(text: 'Download', iconData: Icons.download,),
                    SizedBox(width: 10,),
                    buttons(text: 'Clip', iconData: Icons.cut_outlined,),
                    SizedBox(width: 10,),
                    buttons(text: 'Save', iconData: Icons.bookmark_outline,),
                    SizedBox(width: 10,),
                  ],
                  ),),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: myheight/9,width: mywidth,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color:Color.fromARGB(255, 232, 230, 230)),
                      child: Column(
                        children: [
                          Container(width: mywidth,height: 40,child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Comments',style: textStyleW700.copyWith(fontSize: 16), ),
                              ),
                              Text('26', style: TextStyle(color: const Color.fromARGB(255, 60, 60, 60)),)
                            ],
                          ),),
                          Row(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(radius: 14,backgroundColor: Colors.blue,),
                            ),
                            Text('Keep it up bro')
                          ],)
                        ],
                      ),
                    ),
                  ),
                   HomePageVideos(
                    Account_name: "Marcus Ng",
                    views: "145k views",
                    time: "4 years ago",
                    account_profile_picture: "assets/image.jpg",
                    video_title: "Flutter Chat UI Tutorial |from Scratch",
                    preview_image: "assets/flutter.jpg" ,
                    vtime: "20:20",
                    ),
                    HomePageVideos(
                      preview_image: "assets/ringsariana.jpg",
                      video_title: "7 rings | Ariana Grande Music Video", 
                      account_profile_picture: "assets/ariana.jpg", 
                      Account_name: "Ariana Grande", 
                      views: "2.9M views", 
                      time: "6 years ago",
                      vtime: "04:30",),

                      Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.explore),
                ), Text('Shorts',style: textStyleW700.copyWith(fontSize: 20),)
              ],
            ),

          ),
                      Container(
                                        height: 280,
                                        child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10),
                                              child: youtube_shorts(
                                                shorts_description: 'Best of Best of luck Nikki',
                                                shorts_preview: 'assets/nikki.jpg',
                                                shorts_views:'180 views'),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10),
                                              child: youtube_shorts(
                                                shorts_description: "dune 2 the movie",
                                                shorts_preview: 'assets/pic 1.jpeg',
                                                shorts_views:'286 views'),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10),
                                              child: youtube_shorts(
                                                shorts_description: "Trailer of Dune-2",
                                                shorts_preview: 'assets/Dune2+Web.jpg',
                                                shorts_views:'360 views'),
                                                
                                            ),
                                          
                                          ],
                                        ),
                                        
                                      ),
                                      SizedBox(height: 30,),

                                       HomePageVideos(
                        preview_image: "assets/tamvideo.jpg", 
                        video_title: "My go to Glam Makeup", 
                        account_profile_picture: "assets/tam.jpg", 
                        Account_name: "Tam Kaur", 
                        views: "20M views", 
                        time: "6 month ago",
                        vtime: "7:23",
                        ),

                         HomePageVideos(
                        preview_image: "assets/gajendravideo.jpg", 
                        video_title: "Group Theory", 
                        account_profile_picture: "assets/gajendra.jpg", 
                        Account_name: "Dr.Gajendra Purohit", 
                        views: "2k views", 
                        time: "6 weeks",
                        vtime: "30:23",
                        ),
                ],
              ),
            ),)
        ],
      ),

    );
  }
}