//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:youtube_1/custom/searchcustom.dart';


class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
  var myheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
            },
          child: Icon(Icons.arrow_back_ios)),
        title: Container(
          height: 35,
          width: 300,
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child:TextField(decoration: InputDecoration(hintText: 'Search for YouTube',),)
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 213, 210, 210)
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 7.0),
            child: Container(
               height: 38,
            width: 38,
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Icon(Icons.mic)
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Color.fromARGB(255, 213, 210, 210)
            ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: myheight/1.05,
          width: 500,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              searchbox(mylabel: 'latest punjabi movies', search_image: ''),
              searchbox(mylabel: 'latest fashion trends', search_image: ''),
              searchbox(mylabel: 'Dune Part-2 Movie', search_image: ''),
              searchbox(mylabel: 'lifeStyle', search_image: ''),
              searchbox(mylabel: 'YouTube Clone', search_image: ''),
              searchbox(mylabel: 'best of luck nikki', search_image: ''),
              searchbox(mylabel: 'leasy to make unch Recipies', search_image: ''),
             
            ],
          ),
        ),
      ),
    );
  }
}