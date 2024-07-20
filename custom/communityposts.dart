import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:youtube_1/const/style.dart';
import 'package:youtube_1/custom/settingscont.dart';

class communityPostscroll extends StatelessWidget {
  final String posttime;
  final String post;
  final String creatorname;
  final String postimage1;
   final String postimage2;
  final String creatorimage;
  const communityPostscroll({super.key, required this.posttime, required this.post, required this.creatorname, required this.creatorimage, required this.postimage1, required this.postimage2});

  @override
  Widget build(BuildContext context) {
       var mywidth= MediaQuery.of(context).size.width;
    var myheight= MediaQuery.of(context).size.height;
    return Container(height: 670,
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

          Container(height: 350,width: mywidth,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Container(
                    height: 330,width: 350,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                    child: Image.asset(postimage1)),
                    Positioned(top: 10,left: 300,
                      child: Container(height: 20,width: 40,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.black.withOpacity(0.6)),
                      child: Center(child: Text('1/2',style: TextStyle(color: Colors.white),),),),
                    )
                  ],
                ),
              ),

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Stack(
                  children: [
                    Container(
                    height: 330,width: 350,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                    child: Image.asset(postimage2)),
 Positioned(top: 10,left: 300,
                      child: Container(height: 20,width: 40,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.black.withOpacity(0.6)),
                      child: Center(child: Text('2/2',style: TextStyle(color: Colors.white),),),),
                    )
                  ],
                               ),
               ),
              
              ]),),

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
                            Container(
                              height: 20,width: 300,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: const Color.fromARGB(255, 183, 182, 182)),
                              child: Text('   Add comment'))
                          ],)
                        ],
                      ),
                    ),
                  ),
    ],),);
  }
}