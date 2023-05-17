import 'package:flutter/material.dart';
import 'package:my_contacts/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIcon extends StatelessWidget {
  final String socialMediaImg;
  final String socialMediaUrl;

  const SocialMediaIcon(
      {Key? key, required this.socialMediaImg, required this.socialMediaUrl})
      : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return Consumer<MyProvider>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.all(15),
        child: InkWell(
          child: Material(
            child: Image(image: AssetImage('assets/$socialMediaImg')),
            borderRadius: BorderRadius.circular(100),
            clipBehavior: Clip.antiAlias,
          ),
          onTap: () {
            value.setPlatform( socialMediaImg);
            value.setUrl( socialMediaUrl);
            value.notifyListeners();
            launchUrl(Uri.parse(socialMediaUrl),
                mode: LaunchMode.externalApplication);
          },
        ),
      ),
    );
  }
}
