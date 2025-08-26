import 'package:flutter/material.dart';

class ProjectCard extends StatefulWidget {
  final String title;
  final String description;
  final String date;

  const ProjectCard({
    Key? key,
    required this.title,
    required this.description,
    required this.date,
  }) : super(key: key);

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0xFF1A1A1A),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isHovered ? Color(0xFF4A9EFF) : Colors.transparent,
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                height: 1.3,
              ),
            ),
            SizedBox(height: 8),
            Text(
              widget.description,
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 14,
                height: 1.4,
              ),
            ),
            SizedBox(height: 12),
            Text(
              widget.date,
              style: TextStyle(color: Colors.grey[600], fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
