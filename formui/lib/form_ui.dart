import 'package:flutter/material.dart';
import 'package:formui/portfolio_drawer.dart';
import 'package:formui/projectCard.dart';
import 'package:formui/section_title.dart';
import 'package:formui/skill_card.dart';

class PortfolioDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text('Nikunj Shukla Portfolio',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30), // Adjust the radius for curvature
          ),
        ),
        backgroundColor: Colors.blueGrey.shade700,
      ),
      drawer: PortfolioDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Text(
                  'Welcome to My Portfolio',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              Text(
                'Hello, I am Nikunj Shukla, a Flutter Developer. Here you can find my work, skills, and projects.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 40),

              SectionTitle(title: 'Skills'),
              SkillCard(title: 'Flutter Development', level: 'Advanced'),
              SkillCard(title: 'Dart Programming', level: 'Advanced'),
              SkillCard(title: 'Firebase', level: 'Intermediate'),
              SizedBox(height: 40),


              SectionTitle(title: 'Projects'),
              ProjectCard(title: 'E-commerce App', description: 'A full-featured e-commerce app built with Flutter.'),
              ProjectCard(title: 'Portfolio Website', description: 'My personal portfolio website to showcase my work.'),
            ],
          ),
        ),
      ),
    );
  }
}


