import 'package:flutter/material.dart';

class settingscontainer extends StatelessWidget {
  final IconData? iconData;
  final String text;

  const settingscontainer({Key? key, this.iconData, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
     var myheight= MediaQuery.of(context).size.height;
    var mywidth= MediaQuery.of(context).size.width;
    return Container(
     height: myheight/15,width: mywidth,
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (iconData != null)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                iconData,
              ),
            ),
          
          Text(
            text,
          ),
        ],
      ),
    );
  }
}