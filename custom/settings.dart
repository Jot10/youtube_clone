import 'package:flutter/material.dart';

class Containersettings extends StatelessWidget {
  final String text;
  const Containersettings({super.key, required this.text, });

  @override
  Widget build(BuildContext context) {
     var mywidth= MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 20,),
      child: Container(
        height:48,width: mywidth,
        child: Text(text)),
    );
  }
}