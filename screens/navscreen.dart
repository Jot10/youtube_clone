import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:youtube_1/pages/add/add.dart';
import 'package:youtube_1/pages/explore/explore.dart';
import 'package:youtube_1/pages/homepage/homepage.dart';
import 'package:youtube_1/pages/profile/profile.dart';
import 'package:youtube_1/pages/subs/subscriptions.dart';



class bottomnavigation extends StatefulWidget {
  const bottomnavigation({super.key});

  @override
  State<bottomnavigation> createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<bottomnavigation> {
  File? _image;
  final _picker= ImagePicker();
  Future _cameraimage() async{
    final XFile? pickedimage=
    await _picker.pickImage(source: ImageSource.camera);
    if (pickedimage!=null){
      _image=File(pickedimage.path);
    }

  }
  int selectedindex=0;
    void navigateBottomNavBar(int index){
      setState(() {
        selectedindex=index;
      });
    }
  @override
  Widget build(BuildContext context) {
    
    final List <Widget> screens=[
   Home(),
   explorescreen(),
   addscreen(),
   Subscriptions(),
   profilescreen(),
   
    ];
    return Scaffold(
      body: screens[selectedindex],
     bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedindex,
      selectedFontSize: 10,
      unselectedFontSize: 10,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      selectedLabelStyle: TextStyle(color: Colors.black),
      unselectedLabelStyle: TextStyle(color: Colors.black),
      onTap: navigateBottomNavBar,
      items: [
        BottomNavigationBarItem(
        icon: Icon(Icons.home_outlined),
        activeIcon: Icon(Icons.home_filled),
        label: 'Home',),

        BottomNavigationBarItem(
        icon: Icon(Icons.explore_outlined),
        activeIcon: Icon(Icons.explore),
        label: 'Shorts',),

        BottomNavigationBarItem(
        icon: IconButton(onPressed: () {
          _cameraimage();
        }, 
        icon: Icon(Icons.add_circle_outline_rounded, size: 37,)),
        activeIcon: Icon(Icons.add_circle),
        label: ''),

        BottomNavigationBarItem(
        icon: Icon(Icons.subscriptions_outlined),
        activeIcon: Icon(Icons.subscriptions),
        label: 'Subscription',),

        BottomNavigationBarItem(
        icon: Icon(Icons.person_outline_rounded),
        activeIcon: Icon(Icons.person),
        label: 'You',)
      ],),
    );
  }
}