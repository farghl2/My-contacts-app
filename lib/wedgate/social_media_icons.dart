
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../start.dart';





class SocialMediaIcon extends StatelessWidget {
  final String socialMediaImg; 
  final String socialMediaUrl;
  
  const SocialMediaIcon({
    Key? key,
     required this.socialMediaImg,
     required this.socialMediaUrl
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 30,
                  backgroundImage: AssetImage('assets/$socialMediaImg'),
                
                ),
                onTap:() {
                  // Navigator.push(
                  //   context,MaterialPageRoute(
                  //     builder: (context){
                  //      return SocialStart(socialMediaUrl: socialMediaUrl);
                  //      },

                  //     ),
                
                  // );

                  showModalBottomSheet(context: context, 
                  builder: 
                  (context){
                    return ElevatedButton(
                      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.deepOrange)),
                      onPressed: (){
                        launchUrl(Uri.parse(socialMediaUrl), mode: LaunchMode.externalApplication);

                    }, 
                    child:Text('start $socialMediaImg '));
                  });
                  
                  

                }

          ),
          
            
          
        );
       
    
  }
}