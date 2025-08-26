import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterLink extends StatefulWidget {
  final String text;
  final String url;

  const FooterLink({Key? key, required this.text, required this.url})
    : super(key: key);

  @override
  _FooterLinkState createState() => _FooterLinkState();
}

class _FooterLinkState extends State<FooterLink> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: () => _launchUrl(widget.url),
        child: Text(
          widget.text,
          style: TextStyle(
            color: isHovered ? Color(0xFF4A9EFF) : Colors.grey[400],
            fontSize: 14,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }

  void _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
