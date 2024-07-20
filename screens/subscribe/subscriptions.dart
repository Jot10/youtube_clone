import 'package:flutter/material.dart';
//import 'package:youtube_1/const/color.dart';
import 'package:youtube_1/const/style.dart';
import 'package:youtube_1/custom/community.dart';
import 'package:youtube_1/custom/communitytext.dart';
import 'package:youtube_1/custom/comunitypost.dart';
import 'package:youtube_1/custom/homepagevideos.dart';
import 'package:youtube_1/custom/searchcustom.dart';
import 'package:youtube_1/custom/settingscont.dart';
import 'package:youtube_1/custom/subsshorts.dart';
import 'package:youtube_1/pages/homepage/notifications.dart';
import 'package:youtube_1/pages/homepage/search.dart';
import 'package:youtube_1/pages/subs/all.dart';


class Subscriptions extends StatefulWidget {
  const Subscriptions({super.key});

  @override
  State<Subscriptions> createState() => _SubscriptionsState();
}

class _SubscriptionsState extends State<Subscriptions> {
  
  List videoCategories =[
    "All",
    "Today",
    "Videos",
    "Shorts",
    "Live",
    "Posts",
    "Continue Watchimg",
    "Unwatched",
    "Settings",
  ];
  List creators=['Tam Kaur', 'Fit Tuber','DevTown','HYBE LABELS','STEEZY','emi wong'];
  List creatorimages=['assets/pic 1.jpeg','assets/image.jpg','assets/Dune2+Web.jpg','assets/pic 1.jpeg','assets/image.jpg','assets/Dune2+Web.jpg'];
  @override
  Widget build(BuildContext context) {
    var myheight= MediaQuery.of(context).size.height;
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
                      settingscontainer(text: 'Learn More', iconData: Icons.report,)
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
              Column(
                children: [
                       Row(
                    children: [
                      Container(
                      height: myheight/7,
                      width: mywidth/1.12,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder:(context, index) {
                          return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child:  CircleAvatar(
                                       backgroundImage: AssetImage(creatorimages[index]),
                                  radius: 30,
                                    ),
                                  ),
                            ), 
                            Container(
                             child: Text(creators[index])
                            )
                          ],
                          );
                        },),
                      ),
                      GestureDetector(
                        child: Container(
                          height:myheight/7,
                          width: mywidth/10,
                          //color: Colors.amber,
                          child:Padding(
                            padding: const EdgeInsets.only(top: 40,left: 10),
                            child: Text('All', style: TextStyle(color: Colors.blue, fontSize: 12, fontWeight: FontWeight.bold),),
                          ) ,
                        ),
                             onTap:() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SubscribeList(),));
                        },
                      )
                    ],
                  ),

                  Container(
                    height: 50,
                 
                    child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                         width: 60,
                         child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromARGB(255, 232, 230, 230),
                          ),
                          child: Center(child: Text(videoCategories[index],style: textStyleW700)),
                         ),
                            
                          
                        ),
                      );
                    }
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
                                      SizedBox(height: 20,),
                                      Divider(height: 5,color: Colors.grey,),

                      community(creatorname: 'Brenda Blanco', posttime: '3 hours ago', 
                      post: "How do you feel right now? I'm Curious to know if a certain pattern I'm noticing is true or is it just my imagination.",
                       option1: 'Happy and Optimistic', option2: 'Stressed or Anxious', 
                       option3: 'Curious and Excited', option4: 'Sad or Depressed', option5: 'Other',
                        votes:'32 votes',
                        creatorimage: 'assets/brenda.jpg',),
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
                        preview_image: "assets/tamvideo.jpg", 
                        video_title: "My go to Glam Makeup", 
                        account_profile_picture: "assets/tam.jpg", 
                        Account_name: "Tam Kaur", 
                        views: "20M views", 
                        time: "6 month ago",
                        vtime: "7:23",
                        ),
                         HomePageVideos(
                        preview_image: "assets/friendsv.jpg", 
                        video_title: "FRI(ENDS)'Official Music video|V", 
                        account_profile_picture: "assets/hybe.png", 
                        Account_name: "HYBE LABELS", 
                        views: "620M views", 
                        time: "2 Days ago",
                        vtime: "04:56",
                        ),
                        communityPost(posttime: '12 hours ago',
                         post: 'Hello Friends! "5 best Chips in Indian market (at Rs 20& above)" will be live this friday',
                        creatorname: 'Fit Tuber',
                        postimage: 'assets/fittuber.jpg',
                        creatorimage: '',),
                        Divider(height: 5, color: Colors.grey,),

                        communityText(posttime: '12 hours ago', post: 'If you want to learn about bussiness and learn new ways to establish your ideas, you have landed on the right place. click on the link in my channel to learn more.',
                        creatorname: 'Quazi Johar',
                        creatorimage: 'assets/quazi.jpg',),
                        Divider(height: 6, color: Colors.grey,),
                         HomePageVideos(
                        preview_image: "assets/gajendravideo.jpg", 
                        video_title: "Group Theory", 
                        account_profile_picture: "assets/gajendra.jpg", 
                        Account_name: "Dr.Gajendra Purohit", 
                        views: "2k views", 
                        time: "6 weeks",
                        vtime: "30:23",
                        ),
                        HomePageVideos(
                        preview_image: "assets/emivideo.jpg", 
                        video_title: "Fix Posture in 10 minutes", 
                        account_profile_picture: "assets/pic 1.jpeg", 
                        Account_name: "emi wong", 
                        views: "220M views", 
                        time: "6 month ago",
                        vtime: "10:23",
                        ),
                        HomePageVideos(
                        preview_image: "assets/amusicvideo.jpg", 
                        video_title: "7 Rings|Official Music Video", 
                        account_profile_picture: "assets/ariana.jpg", 
                        Account_name: "Ariana Grande", 
                        views: "220M views", 
                        time: "4 years ago",
                        vtime: "04:30",
                        ),
                      
                 
                ],
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