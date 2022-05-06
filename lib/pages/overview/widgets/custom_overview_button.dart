import 'package:flutter/material.dart';
import 'package:kyouko_site/constants/style.dart';
import 'dart:math' as math;

import 'package:kyouko_site/pages/overview/widgets/decoration/invite_me_button_decoration.dart';
import 'package:kyouko_site/widgets/custom_text.dart';

//ads
//apresentação/categoria
//patreon
class CustomOverviewButton extends StatefulWidget {
  final Function() onTap;
  const CustomOverviewButton({Key? key, required this.onTap}) : super(key: key);

  @override
  State<CustomOverviewButton> createState() => _CustomOverviewButtonState();
}

class _CustomOverviewButtonState extends State<CustomOverviewButton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hovered = Matrix4.identity()..translate(-6, -6, 0);
    final transform = isHovered ? hovered : Matrix4.identity();
    void onEntered(bool isHovered) {
      setState(() {
        this.isHovered = isHovered;
      });
    }

    return InkWell(
      onTap: widget.onTap,
      onHover: (value) {
        if (value) {
          onEntered(true);
        } else {
          onEntered(false);
        }
      },
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: AnimatedContainer(
          curve: Curves.easeIn,
          transform: transform,
          duration: Duration(seconds: 1),
          clipBehavior: Clip.hardEdge,
          width: 200,
          decoration: isHovered
              ? inviteMeDecoration().copyWith(boxShadow: [])
              : inviteMeDecoration(),
          child: CustomText(text: 'Teste')),
    );
  }
}
