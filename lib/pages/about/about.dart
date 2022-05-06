import 'package:flutter/material.dart';
import 'package:kyouko_site/widgets/custom_text.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(text: 'About'),
    );
  }
}