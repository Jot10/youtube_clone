import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:youtube_1/const/style.dart';
import 'package:youtube_1/custom/settingscont.dart';
import 'package:youtube_1/pages/homepage/youtubevideos.dart';


// ignore: must_be_immutable
class HomePageVideos extends StatelessWidget {
  HomePageVideos({
    super.key,
    required this.preview_image,
    required this.video_title,
    required this.account_profile_picture,
    required this.Account_name,
    required this.views,
    required this.time,
    required this.vtime,
    });
  String preview_image ="";
  String video_title ="";
  String account_profile_picture ="";
  String Account_name="";
  String views="";
  String time="";
  String vtime="";

  @override
  Widget build(BuildContext context) {
    var mywidth= MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => youtubeVideos(),));
      },
      child: Container(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 200, width: mywidth,
                                child: Image(image: AssetImage(preview_image), fit: BoxFit.fill,),),
                                Positioned(left: 320,top: 170,
                                  child: Container(
                                    height: 20,width: 60,child: Center(
                                    child: Text(vtime, style: TextStyle(color: Colors.white),)),
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
                                    color: Colors.black.withOpacity(0.8)),
                                  ),
                                )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  foregroundImage: AssetImage(account_profile_picture,),
                                ),
                                SizedBox(
                                  width: 288,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(video_title,style: textStyleW700),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(Account_name,style: TextStyle(color: Colors.grey)),
                                            SizedBox(width: 5,),
                                            Container(height: 2,width: 2,color: Colors.grey,),
                                            SizedBox(width: 5,),
                                            Text(views,style: TextStyle(color: Colors.grey)),
                                            SizedBox(width: 5,),
                                            Container(height: 2,width: 2,color: Colors.grey,),
                                            SizedBox(width: 5,),
                                            Text(time,style: TextStyle(color: Colors.grey)),
                      
                                            
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  ),
                                  IconButton(onPressed: (){
                                    showModalBottomSheet(context: context,
                backgroundColor: Colors.white,
                showDragHandle: true,
                isScrollControlled: true,
                 builder: (context) {
                  return Wrap(
                    children: [
                      settingscontainer(text: 'Play next in queue',iconData: Icons.queue_play_next,),
                      settingscontainer(text: 'Save to Watch later',iconData: Icons.access_time,),
                      settingscontainer(text: 'Save to playlist', iconData: Icons.bookmark_outline,),
                      settingscontainer(text: 'Share', iconData: Icons.share,),
                      settingscontainer(text: 'Not interested', iconData: Icons.block,),
                      settingscontainer(text: "Don't recommend channel", iconData: Icons.person_add_disabled_outlined,),
                      settingscontainer(text: 'Report', iconData: Icons.flag_outlined,)
                    ],
                  );
                },);
                                  }, icon: Icon(Icons.more_vert,size:25,))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
    );
  }
}