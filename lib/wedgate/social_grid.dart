

import 'package:flutter/material.dart';
import 'package:my_contacts/wedgate/social_media_icons.dart';

class SocialGrid extends StatelessWidget {
  const SocialGrid({
    super.key,
    required this.socialMedia,
  });

  final Map<String, String> socialMedia;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: socialMedia.length,
      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3)
       , itemBuilder: (context, index) {
              
          return  SocialMediaIcon(socialMediaImg: socialMedia.keys.toList()[index], socialMediaUrl:socialMedia.values.toList()[index] ,);
       },
       shrinkWrap: true,
       physics: const NeverScrollableScrollPhysics(),
       padding: const EdgeInsets.all(20),
       
       );
  }
}

