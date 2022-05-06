import 'package:flutter/material.dart';
import 'package:kyouko_site/widgets/custom_text.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: CustomText(
                text: 'Page not found', size: 22, weight: FontWeight.bold)));
  }
}