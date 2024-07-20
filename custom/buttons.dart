import 'package:flutter/material.dart';

class buttons extends StatelessWidget {
  final String text;
  final IconData? iconData;
  const buttons({super.key, required this.text, this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 30,width: 160,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),
              color: Color.fromARGB(255, 232, 230, 230),),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                if(iconData!=null)
                  Icon(iconData),
                    if(iconData!=null)
                  SizedBox(width: 6,),
                  Text(text)  
              ],),
            );
  }
}