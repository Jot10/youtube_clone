import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverAppBar(
      floating: true,
            leadingWidth: 120.0,
            leading: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset('assets/youtube.jpeg'),
            ),
            actions: [
              IconButton(onPressed: (){}, icon:Icon(Icons.cast)),
              IconButton(onPressed: (){}, icon:Icon(Icons.notifications_outlined)),
              IconButton(onPressed: (){}, icon:Icon(Icons.search)),
              Container(height: 40, width: 20,)
              ],
          );
  }
}