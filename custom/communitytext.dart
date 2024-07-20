import 'package:flutter/material.dart';
import 'package:youtube_1/const/style.dart';
import 'package:youtube_1/custom/settingscont.dart';

class communityText extends StatelessWidget {
  final String posttime;
  final String post;
  final String creatorname;
    final String creatorimage;
  const communityText({super.key, required this.posttime, required this.post, required this.creatorname, required this.creatorimage,});

  @override
  Widget build(BuildContext context) {
       var mywidth= MediaQuery.of(context).size.width;
    var myheight= MediaQuery.of(context).size.height;
    return Container(height: 380,
    width: mywidth,
    child: Column(children: [
       Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 50,width: mywidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(backgroundImage: AssetImage(creatorimage),),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 6),
                      child: Column(
                        children: [
                          Container(height: 20,width: 200,
                          child: Text(creatorname, style: textStyleW700.copyWith(fontSize: 15),),),
                          Container(height: 20,width: 200,
                          child: Text(posttime, style: textstylegrey,),),
                                      
                        ],
                      ),
                    ),
                
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                  onPressed: () {
                    showModalBottomSheet(context: context,
                     backgroundColor: Colors.white,
                  showDragHandle: true,
                  isScrollControlled: true,
                     builder: (context) {
                       return Wrap(
                        children: [settingscontainer(text: 'Report', iconData: Icons.flag_outlined,)],
                       );
                     },);
                  },
                  icon:Icon(Icons.more_vert)),
                )
              ],
            ),),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(constraints: BoxConstraints(maxHeight: double.infinity),width: mywidth,
            child: Text(post, style: TextStyle(fontSize: 18),),),

          ),
           Container(height: 50,width: mywidth,child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.thumb_up_outlined),
                ),Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Icon(Icons.thumb_down_outlined),
                )
              ],),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.comment_outlined),
              ),
             
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
    ],),);
  }
}