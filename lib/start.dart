
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialStart extends StatelessWidget {
  final String socialMediaUrl;

  SocialStart({
    super.key,
    required this.socialMediaUrl
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 7, 30),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body:Center(
        child: ElevatedButton(
          style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.deepOrange)),
          onPressed: (){
            launchUrl(Uri.parse(socialMediaUrl), mode: LaunchMode.externalApplication);

        }, 
        child:Text('social media data !')),
      ),
    );
  }
}