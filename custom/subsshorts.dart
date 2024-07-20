import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:youtube_1/const/style.dart';

Container youtube_shorts ({
required String shorts_preview,
required String shorts_description,
required String shorts_views
}){
  return Container(
    height: 280,
    width: 170,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 280,
                                    width: 170,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.black,
                                      image: DecorationImage(image: AssetImage(shorts_preview), fit: BoxFit.fill)
                                    ),
                                    
                                  ),
                                  Positioned(
                                    top: 10,left: 145,
                                    child: Icon(Icons.more_vert, color: Colors.white,)),
                                  Positioned(
                                    top: 220,
left: 8,                                    child: SizedBox(
                                      width: 140,
                                      child: Text(shorts_description,style: textStyleW700.copyWith(color: Colors.white,fontSize: 17),)),
                                  ),
                                   Positioned(
                                    top: 250,
left: 8,                                    child: SizedBox(
                                      width: 140,
                                      child: Text(shorts_views,style: textStyleW700.copyWith(color: Colors.white,fontSize: 17),)),
                                  )
                                ],
                              ),
                            );
}