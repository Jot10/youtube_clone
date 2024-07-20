import 'package:flutter/material.dart';
import 'package:youtube_1/const/style.dart';

// ignore: must_be_immutable
class Shortshome extends StatelessWidget {
  final String shortsimage1;
  final String shortsimage2;
  final String shortsimage3;
  final String shortsimage4;
  const Shortshome({super.key, required this.shortsimage1, required this.shortsimage2, required this.shortsimage3, required this.shortsimage4});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650,
      child: Column(
        children: [
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
            height:280,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(height: 280, width: 180, 
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage(shortsimage1), fit: BoxFit.fill)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 250,left: 10),
                  child: Text('Caption',style: textStyleW700.copyWith(color: Colors.white),),
                ),
                ),
                Container(height: 280, width: 180, 
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage(shortsimage2), fit: BoxFit.fill)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 250,left: 10),
                  child: Text('Caption',style: textStyleW700.copyWith(color: Colors.white),),
                ),
                ),
                
              ],
            ),
          ),
SizedBox(height: 10,), 
Container(
            height:280,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(height: 280, width: 180, 
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage(shortsimage3), fit: BoxFit.fill)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 250,left: 10),
                  child: Text('Caption',style: textStyleW700.copyWith(color: Colors.white),),
                ),
                ),
                Container(height: 280, width: 180, 
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage(shortsimage4), fit: BoxFit.fill)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 250,left: 10),
                  child: Text('Caption',style: textStyleW700.copyWith(color: Colors.white),),
                ),
                ),
                
              ],
            ),
          ),
          

        ],
      ),
    );
  }
}