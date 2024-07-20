import 'package:flutter/material.dart';
import 'package:youtube_1/const/style.dart';
import 'package:youtube_1/custom/settings.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.cancel_outlined)),
        title: Text('Settings', style: textStyleW700.copyWith(fontSize: 20),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Containersettings(text: 'Purchases and memberships'),
            Containersettings(text: 'Account'),
            Containersettings(text: 'General'),
            Containersettings(text: 'Autoplay'),
            Containersettings(text: 'Try experimental new features'),
            Containersettings(text: 'Video quality preferences'),
            Containersettings(text: 'Notifications'),
            Containersettings(text: 'Connected apps'),
            Containersettings(text: 'Manage all history'),
            Containersettings(text: 'Your data in YouTube'),
            Containersettings(text: 'Privacy'),
            Containersettings(text: 'Offline'),
            Containersettings(text: 'Uploads'),
            Containersettings(text: 'Live chat'),
            Containersettings(text: 'About'),
            
          ],
        ),
      ),
    );
  }
}