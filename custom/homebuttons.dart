import 'package:flutter/material.dart';

class homeButton extends StatelessWidget {
  const homeButton({super.key, required this.topics});
  final String topics;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
                             
                             height: 50,
                             width: 70,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(8),
                               color: Color.fromARGB(255, 232, 230, 230),
                             ),
                             child: Center(child: Text(topics)),
                            ),
    );
  }
}