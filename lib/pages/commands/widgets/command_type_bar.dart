import 'package:flutter/material.dart';
import 'package:kyouko_site/constants/style.dart';
import 'package:kyouko_site/widgets/custom_text.dart';

class TypeBar extends StatelessWidget {
  final String commandType;
  const TypeBar({Key? key, required this.commandType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 6,
      backgroundColor: primary,
      automaticallyImplyLeading: false,
      pinned: true,
      title: CustomText(text: commandType, size: 22, color: dark),
    );
  }
}
