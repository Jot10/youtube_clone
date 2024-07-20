import 'package:flutter/material.dart';


class YouTubeVideoWidget extends StatelessWidget {
  final String videoTitle;
  final String videoThumbnailUrl;
  final String channelName;
  final String viewsCount;

  const YouTubeVideoWidget({
    Key? key,
    required this.videoTitle,
    required this.videoThumbnailUrl,
    required this.channelName,
    required this.viewsCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,width: 130,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
               height: 60,width: 100,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), 
              image: DecorationImage(image: AssetImage(videoThumbnailUrl),fit: BoxFit.fill)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(height: 50,width: 90,
                      child: Text(
                        videoTitle,
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)
                      ),
                    ),
                     Icon(
                      Icons.more_vert,)
                  ],
                ),
                
                Row(
                  children: [
                    Text(
                      channelName,
                      style: TextStyle(
                       
                        fontSize: 14,
                      ),
                    ),
                    
                  ],
                ),
                SizedBox(height: 8),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}