import 'package:flutter/material.dart';
import 'package:my_contacts/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIcon extends StatefulWidget {
  final String socialMediaImg;
  final String socialMediaUrl;

  const SocialMediaIcon(
      {Key? key, required this.socialMediaImg, required this.socialMediaUrl})
      : super(key: key);

  @override
  State<SocialMediaIcon> createState() => _SocialMediaIconState();
}

class _SocialMediaIconState extends State<SocialMediaIcon> {
  // double? radius = 80;
  @override
  Widget build(BuildContext context) {
    return Consumer<MyProvider>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.all(15),
        child: InkWell(
          child: Material(
            child: Image(image: AssetImage('assets/${widget.socialMediaImg}')),
            borderRadius: BorderRadius.circular(100),
            clipBehavior: Clip.antiAlias,
          ),
          onTap: () {
            value.myPlatform = widget.socialMediaImg;
            value.myUrl = widget.socialMediaUrl;
            value.notifyListeners();
            launchUrl(Uri.parse(widget.socialMediaUrl),
                mode: LaunchMode.externalApplication);
          },
        ),
      ),
    );
  }
}
