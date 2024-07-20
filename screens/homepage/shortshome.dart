
import 'package:flutter/material.dart';



class homeshorts extends StatefulWidget {
  const homeshorts({super.key});

  @override
  State<homeshorts> createState() => _homeshortsState();
}

class _homeshortsState extends State<homeshorts> {

  @override
  Widget build(BuildContext context) {
     var myheight= MediaQuery.of(context).size.height;
     var mywidth= MediaQuery.of(context).size.width;
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Icon(Icons.search),
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.more_vert),
        ),
       ],
       leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon:Icon(Icons.arrow_back_ios), color: Colors.white,),
        title: Row(
          children: [
            Text('Shorts', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
            
          ],
        ),
        //leading: Icon(Icons.lock),
      ),
        body: Container(
          height: myheight,
          width: mywidth,
          color: Colors.black,
           
             
              child: Container(
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
              
           ),
    );
  }
  
}
 
