import 'package:flutter/material.dart';

class SkillCard extends StatelessWidget {
  final String title;
  final String level;
  const SkillCard({required this.title, required this.level});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey.shade100,
      margin: EdgeInsets.only(bottom: 16),
      elevation: 4,
      child: ListTile(
        contentPadding: EdgeInsets.all(16),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(level),
      ),
    );
  }
}