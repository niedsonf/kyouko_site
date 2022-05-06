import 'package:flutter/material.dart';
import 'package:kyouko_site/constants/style.dart';
import 'package:kyouko_site/helpers/local_navigator.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return localNavigator();
  }
}
