import 'package:flutter/material.dart';

Container searchbox ({
  Color ? mycolor,
  String mylabel = '',
  String search_image = '',
})
{
  return Container( 
    height: 60,
    width: 500,
    child: Column(
      children: [
        Container(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(Icons.access_time_outlined, size: 28,),
              ),
              Container(
                height: 31,
                width: 240,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(mylabel,style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                height: 35,
                width: 100,
                child: Row(
                  children: [
                 Container(
                  height:35,
                  width: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(search_image),
                      fit: BoxFit.cover)
                  ),
                 ),
                 Transform.rotate(angle: 200,
                 child:Icon(Icons.arrow_upward_outlined) ,)
                  ],
                ),
              )
            ],
          ),
        )
      ],
    )
  );
}