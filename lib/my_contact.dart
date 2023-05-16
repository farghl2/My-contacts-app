// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:my_contacts/wedgate/social_grid.dart';
import 'package:url_launcher/url_launcher.dart';


// ignore: must_be_immutable
class MyContact extends StatelessWidget {
  MyContact({super.key});
   Map<String, String>socialMedia ={
    'facebook.png':'https://www.facebook.com/islam.farghl',
    'github.png':'https://github.com/farghl2',
    'instagram.png':'https://www.instagram.com/islammohammed11/',
    'twitter.png':'https://twitter.com/?lang=en',
    'youtube.png':'https://www.youtube.com/',
    'whatsapp.jpg':'https://wa.me/+201122882154'
    } ;
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 7, 30),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            // backgroundColor:Colors.red,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/islam.jpg'),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Islam Mohammed',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
          
                  // mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      '+201122882154',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    IconButton(
              icon: const Icon(
          Icons.phone,
          size: 30,
          color: Colors.grey,
              ),
              onPressed: (() {
                launchUrl(Uri.parse('tel:+201122882154'));
              }),
          )
                  ]),
                  const SizedBox(
                    height: 20,
                  ),
          
                  SocialGrid(socialMedia: socialMedia)
                //  const SocialMediaIcon(socialMedia: 'facebook.png'),
                
            ],
          ),
        ),
      ),
      
      
    );
  }
}


