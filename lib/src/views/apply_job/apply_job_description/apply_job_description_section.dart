import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ApplyJobDescriptionSection extends StatelessWidget {
  const ApplyJobDescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 20 , top: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text('Job Description' , style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold ,),)
            ),
            Text('Your role as the UI Designer is to use interactive components on various platforms (web, desktop and mobile). This will include producing high-fidelity mock-ups, iconography, UI illustrations/graphics, and other graphic elements. As the UI Designer, you will be supporting the wider design team with the internal Design System, tying together the visual language. You will with other UI and UX Designers, Product Managers, and Engineering teams in a highly customer-focused agile environment to help define the vision of the products.', 
              textAlign: TextAlign.justify,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text('Skill Required' , style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
            ),
            SizedBox(height: 10,),
            Text('Your role as the UI Designer is to use interactive components on various platforms (web, desktop and mobile). This will include producing high-fidelity mock-ups, iconography, UI illustrations/graphics, and other graphic elements. As the UI Designer, you will be supporting the wider design team with the internal Design System, tying together the visual language. You will with other UI and UX Designers, Product Managers, and Engineering teams in a highly customer-focused agile environment to help define the vision of the products.',
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}