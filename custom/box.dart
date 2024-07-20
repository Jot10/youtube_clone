import 'package:flutter/material.dart';

Container mybox ({
  Color ? mycolor,
  String mylabel = '',
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
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  child: Icon(Icons.person),
                  radius: 22,
                ),
              ),
              Container(
                height: 30,
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: Text(mylabel,style: TextStyle(fontSize: 18),),
                ),
              ),
              Container(
                height: 35,
                width: 65,
                child: Row(
                  children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.notifications_off_outlined),
                  ),
                  Icon(Icons.keyboard_arrow_down_outlined)
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 222, 219, 219)),
              )
            ],
          ),
        )
      ],
    )
  );
}