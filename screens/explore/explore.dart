import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class explorescreen extends StatefulWidget {
  const explorescreen({super.key});

  @override
  State<explorescreen> createState() => _explorescreenState();
}

class _explorescreenState extends State<explorescreen> {
  late VideoPlayerController _controller;

   @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
     var myheight= MediaQuery.of(context).size.height;
     var mywidth= MediaQuery.of(context).size.width;
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          Icon(Icons.search),
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.more_vert),
        ),
       ],
        title: Row(
          children: [
            Text('Shorts', style: TextStyle(fontWeight: FontWeight.bold),),
            
          ],
        ),
        //leading: Icon(Icons.lock),
      ),
        body: Container(
          height: myheight,
          width: mywidth,
          child:
           PageView.builder(
            scrollDirection: Axis.vertical,
             // itemCount: colors.length
              itemBuilder: (context, index)
             {
              return   Stack(
             
              children: [
                Container(
                height: myheight,
                width: mywidth,
                child: _controller.value.isInitialized
                    ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
           
                      )
           
                    : Container(),
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    setState(() {
                _controller.value.isPlaying
                    ? _controller.pause()
                    : _controller.play();
              });
                  },
                  child: Container(
                    height: 80,width: 80,
                    child: Icon( _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,),
                  ),
                ),
              ),
             
              Container(
                height: myheight,
                width: mywidth,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: myheight/1.5,
                            width: mywidth/1.3,
                            //color: Colors.blue,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CircleAvatar(radius: 20,backgroundColor: Colors.pink,),
                                    ),
                                    Text('username', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 30,
                                        width: 90,
                                        child: Center(child: Text('Subscribe', style:TextStyle(fontWeight: FontWeight.bold))),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(40),
                                          color: Colors.white
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Container(
                                        height: 30,
                                        width: mywidth/1.7,
                                       // color: Colors.pink,
                                        child: Text('caption', style: TextStyle(color: Colors.white),)),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 30,
                                        width: mywidth/2,
                                      
                                        child: Row(
                                          children: [
                                            Icon(Icons.music_note, color:Colors.white),
                                            Text('name of the audio', style: TextStyle(color: Colors.white),)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            
                          
                          ),
                      
                          Container(
                          
                            height: myheight/1.5,
                            width: 70,
                            //color: Colors.red,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20, bottom: 8),
                                  child: Icon(Icons.thumb_up,color: Colors.white,size: 30),
                                ),
                                Text('12k', style: TextStyle(color: Colors.white),),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20, bottom: 8),
                                  child: Icon(Icons.thumb_down,color: Colors.white,size: 30),
                                ),
                                Text('1k', style: TextStyle(color: Colors.white),),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20, bottom: 8),
                                  child: Icon(Icons.comment,color: Colors.white,size: 30),
                                ),
                                Text('12k',  style: TextStyle(color: Colors.white)),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20, bottom: 8),
                                  child: Icon(Icons.send,color: Colors.white,size: 30),
                                ),
                                Text('12k',  style: TextStyle(color: Colors.white)),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20, bottom: 8),
                                  child: Icon(Icons.sync,color: Colors.white, size: 30),
                                ),
                                Text('Remix',  style: TextStyle(color: Colors.white)),
                                Padding(
                                  padding: const EdgeInsets.only(top:10,bottom: 10),
                                  child: Container(
                                    height: 40,width: 40,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(image: AssetImage('assets/steezy.png'))),
                                  ),
                                )
                              ],
                            ),
                          )
                      
                        ],
                      ),
                    ],
                  ),
             
              )
              ]
                       );
             }
            
           ),
        ),
    );
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
 
