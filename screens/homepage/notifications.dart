import 'package:flutter/material.dart';
import 'package:youtube_1/const/style.dart';
import 'package:youtube_1/custom/settingscont.dart';



class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mywidth= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios)),
        title: Text("Notifications",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
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
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: false,
            leadingWidth: 300,
            leading: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black
                    ),
                    child: Center(child: Text("All",style: TextStyle(color: Colors.white,fontSize: 12),))
                  ),
                ),
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 232, 230, 230)
                  ),
                  child: Center(child: Text("Mentions",style: TextStyle(fontSize: 12),))
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 232, 230, 230)
                    ),
                    child: Center(child: Text("Your channel",style: TextStyle(fontSize: 12),))
                  ),
                ),

              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Row(
                
                  children: [
                    SizedBox(width:5,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Imporant",style: textStyleW700,),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 8),
                        child: Container(
                          height: 80,
                          width: 190,
                          
                          child: Text("KaranveerMatharu uploaded: Yesterday|Official Audio",),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0,left: 4),
                        child: Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image: AssetImage("assets/image.jpg"),fit: BoxFit.fill)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top :8.0,left:4),
                        child: Icon(Icons.more_vert,),
                      )
                    ],
                  ),
                ),

                Row(
                
                  children: [
                    SizedBox(width:5,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Today",style: textStyleW700,),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 8),
                        child: Container(
                          height: 80,
                          width: 190,
                          
                          child: Text("New subscriber: DARK ROMIYO",),
                        ),
                      ),
                     SizedBox(width: 103,),
                      Padding(
                        padding: const EdgeInsets.only(top :8.0,left:4),
                        child: Icon(Icons.more_vert,),
                      )
                    ],
                  ),
                ),

                Row(
                
                  children: [
                    SizedBox(width:5,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("This Week",style: textStyleW700,),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 8),
                        child: Container(
                          height: 80,
                          width: 190,
                          
                          child: Text("Fit Tuber uploaded: 7 foods you are eating wrong.",),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0,left: 4),
                        child: Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image: AssetImage("assets/pic 1.jpeg"),fit: BoxFit.fill)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top :8.0,left:4),
                        child: Icon(Icons.more_vert,),
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 8),
                        child: Container(
                          height: 80,
                          width: 190,
                          
                          child: Text("STEEZY uploaded: groves you can try at a party",),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0,left: 4),
                        child: Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image: AssetImage("assets/image.jpg"),fit: BoxFit.fill)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top :8.0,left:4),
                        child: Icon(Icons.more_vert,),
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 8),
                        child: Container(
                          height: 80,
                          width: 190,
                          
                          child: Text("NROUND uploaded: the black mamba challenge and office tour",),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0,left: 4),
                        child: Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image: AssetImage("assets/pic 1.jpeg"),fit: BoxFit.fill)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top :8.0,left:4),
                        child: Icon(Icons.more_vert,),
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 8),
                        child: Container(
                          height: 80,
                          width: 190,
                          
                          child: Text("Video Surgeons : Latest Short Movie",),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0,left: 4),
                        child: Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image: AssetImage("assets/image.jpg"),fit: BoxFit.fill)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top :8.0,left:4),
                        child: Icon(Icons.more_vert,),
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 8),
                        child: Container(
                          height: 80,
                          width: 190,
                          
                          child: Text("KaranveerMatharu uploaded: Yesterday|Official Audio",),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0,left: 4),
                        child: Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image: AssetImage("assets/image.jpg"),fit: BoxFit.fill)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top :8.0,left:4),
                        child: Icon(Icons.more_vert,),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 8),
                        child: Container(
                          height: 80,
                          width: 190,
                          
                          child: Text("New subscriber: hybe lite",),
                        ),
                      ),
                     SizedBox(width: 103,),
                      Padding(
                        padding: const EdgeInsets.only(top :8.0,left:4),
                        child: Icon(Icons.more_vert,),
                      )
                    ],
                  ),
                ),

                
                
                
                
              ]
            ))
        ],
      ),
      
    );
  }
}