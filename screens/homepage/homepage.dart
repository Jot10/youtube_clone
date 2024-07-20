import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:youtube_1/const/color.dart';
//import 'package:youtube_1/const/color.dart';
import 'package:youtube_1/const/style.dart';
import 'package:youtube_1/custom/communityposts.dart';
import 'package:youtube_1/custom/comunitypost.dart';
import 'package:youtube_1/custom/homebuttons.dart';
import 'package:youtube_1/custom/homepagevideos.dart';
import 'package:youtube_1/custom/settingscont.dart';
import 'package:youtube_1/custom/subsshorts.dart';
import 'package:youtube_1/pages/homepage/notifications.dart';
import 'package:youtube_1/pages/homepage/search.dart';
import 'package:youtube_1/pages/homepage/shortshome.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List videoCategories =[
    "Flutter",
    "Coding",
    "Funny",
    "Dramedy",
    "Music",
    "Live",
    "Mixes",
    "Dramedy",
    "Music",
    "Live",
  ];

  List previewimage=['assets/flutter.jpg','assets/amusicvideo.jpg','assets/diljit.jpg'];
  List channelimage=['assets/pic 1.jpeg','assets/ariana.jpg','assets/image.jpg'];
  List title=['Flutter Chat Ui Tutorial','7 Rings|Ariana Grande Music Video','Diljit mashup|no ads'];
  List account=['Marcus Ng','Ariana Grande','Royal audios'];
  List view=['145k views','2.9M views','220M views'];
  List time=['4 years ago', '6 years ago','6 months ago'];
  @override
  Widget build(BuildContext context) {
    var mywidth= MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            leadingWidth: 110,
            leading:const  Padding(
              padding:  EdgeInsets.all(4.0),
              child: Image(
                  image: AssetImage("assets/youtubeimage1.jpg")),
            ),
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
                      settingscontainer(text: 'Learn More', iconData: Icons.report,),
                      
                    ],
                  );
                },);
              }, icon: const Icon(Icons.cast)),
              IconButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => NotificationScreen(),) );
                  }, icon:const Icon(Icons.notifications_outlined)),
              IconButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Search(),));
              }, icon: const Icon(Icons.search)),
             
            ],
          ),
          SliverList(delegate: SliverChildListDelegate(
            [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 50,
                   
                      child:ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(height: 50,width: 40,decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),color: buttoncolor,
                            ),
                            child: Builder(
                              builder: (context) =>
                                 IconButton(
                                   onPressed: () => Scaffold.of(context).openDrawer(),
                                   icon: Icon(Icons.explore_outlined))
                              
                            ),),
                          ),

                          homeButton(topics: 'Flutter'),
                          homeButton(topics: 'Music'),
                          homeButton(topics: 'Thoughts'),
                          homeButton(topics: 'Comedy'),
                          homeButton(topics: 'Trailers'),
                          homeButton(topics: 'K-pop'),
                          homeButton(topics: 'Live')
                        ],
                      )
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
                      Container(height: 600,
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => homeshorts(),));
                              },
                              child: Container(
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
                                                    SizedBox(width: 10,),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left: 10),
                                                      child: youtube_shorts(
                                                        shorts_description: "dune 2 the movie",
                                                        shorts_preview: 'assets/pic 1.jpeg',
                                                        shorts_views:'286 views'),
                                                    ),
                                                    
                                                  
                                                  ],
                                                ),
                                                
                                              ),
                            ),
                                            SizedBox(height: 10,),
                                              Container(
                                              height: 280,
                                              child: ListView(
                                                scrollDirection: Axis.horizontal,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10),
                                                    child: youtube_shorts(
                                                      shorts_description: 'Wath the magic of disney',
                                                      shorts_preview: 'assets/disney.jpg',
                                                      shorts_views:'780 views'),
                                                  ),
                                                  SizedBox(width: 10,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10),
                                                    child: youtube_shorts(
                                                      shorts_description: "We are erroding the birds",
                                                      shorts_preview: 'assets/image.jpg',
                                                      shorts_views:'286 views'),
                                                  ),
                                                  
                                                
                                                ],
                                              ),
                                              
                                            ),
                          ],
                        ),
                      ),

                      HomePageVideos(
                        preview_image: "assets/diljit.jpg", 
                        video_title: "Lover by Diljit Dosanjh", 
                        account_profile_picture: "assets/pic 1.jpeg", 
                        Account_name: "Royal audios", 
                        views: "220M views", 
                        time: "6 month ago",
                        vtime: "56:23",
                        ),

                         communityPostscroll(posttime: '4 hours ago', post: 'Download the latest workbooks for calculus', 
                         creatorname: 'Dr. Gajendra Purohit', creatorimage: 'assets/gajendra.jpg', postimage1: 'assets/maths 1.jpg', postimage2:'assets/maths2.jpg'),
                HomePageVideos(
                        preview_image: "assets/fittuber.jpg", 
                        video_title: "why is a healthy Lifestyle important", 
                        account_profile_picture: "assets/fit tuber.jpg", 
                        Account_name: "Fit Tuber", 
                        views: "120M views", 
                        time: "1 month ago",
                        vtime: "10:23",
                        ),
                        HomePageVideos(
                        preview_image: "assets/images.jpg", 
                        video_title: "Reality of Theaters", 
                        account_profile_picture: "assets/pic 1.jpeg", 
                        Account_name: "learn new", 
                        views: "22k views", 
                        time: "6 month ago",
                        vtime: "5:23",
                        ),
                        communityPost(posttime: '6 hours ago', post: 'Vamily Vlog aa raha hai raat 8 baje, stay tuned', creatorname: 'Rimorav vlogs', 
                        postimage:'assets/rimoravpost.jpg', creatorimage: 'assets/ri.jpg'),

                        HomePageVideos(
                        preview_image: "assets/steezy1.jpg", 
                        video_title: "groves to try at a party", 
                        account_profile_picture: "assets/steezy.png", 
                        Account_name: "Steezy Stidios", 
                        views: "20M views", 
                        time: "6 month ago",
                        vtime: "10:23",
                        ),
                        HomePageVideos(
                        preview_image: "assets/fittuber 2.jpg", 
                        video_title: "quick dinner Ideads that save time", 
                        account_profile_picture: "assets/fit tuber.jpg", 
                        Account_name: "Fit Tuber", 
                        views: "22k views", 
                        time: "6 month ago",
                        vtime: "9:23",
                        ),
                        HomePageVideos(
                        preview_image: "assets/nikki.jpg", 
                        video_title: "Best of luck Nikki |episode 60", 
                        account_profile_picture: "assets/disney.jpg", 
                        Account_name: "Disney", 
                        views: "10M views", 
                        time: "6 month ago",
                        vtime: "24:23",
                        ),
                        HomePageVideos(
                        preview_image: "assets/download (2).jpg", 
                        video_title: "Simple way to add music to videos", 
                        account_profile_picture: "assets/pic 1.jpeg", 
                        Account_name: "tech new", 
                        views: "220k views", 
                        time: "6 month ago",
                        vtime: "7:23",
                        ),
                        HomePageVideos(
                        preview_image: "assets/diljit.jpg", 
                        video_title: "Lover by Diljit Dosanjh", 
                        account_profile_picture: "assets/pic 1.jpeg", 
                        Account_name: "Royal audios", 
                        views: "220M views", 
                        time: "6 month ago",
                        vtime: "56:23",
                        ),
                        HomePageVideos(
                        preview_image: "assets/diljit.jpg", 
                        video_title: "Lover by Diljit Dosanjh", 
                        account_profile_picture: "assets/pic 1.jpeg", 
                        Account_name: "Royal audios", 
                        views: "220M views", 
                        time: "6 month ago",
                        vtime: "56:23",
                        ),
                        
                   
                  ],
                ),
              ),
            ]
          )
           )
          ],
        ),
      )
    );
  }
}