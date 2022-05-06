import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:kyouko_site/constants/style.dart';
import 'package:kyouko_site/pages/overview/widgets/decoration/invite_me_button_decoration.dart';
import 'dart:math' as math;

class InviteMeButton extends StatefulWidget {
  const InviteMeButton({Key? key}) : super(key: key);

  @override
  State<InviteMeButton> createState() => _InviteMeButtonState();
}

class _InviteMeButtonState extends State<InviteMeButton> {
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

    return Expanded(
      child: InkWell(
        onTap: () {},
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
        splashColor: Colors.transparent,
        child: AnimatedContainer(
          curve: Curves.easeIn,
          transform: transform,
          duration: Duration(seconds: 1),
          clipBehavior: Clip.hardEdge,
          width: 200,
          decoration: isHovered
              ? inviteMeDecoration().copyWith(boxShadow: [])
              : inviteMeDecoration(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(child: Container()),
              Transform.rotate(
                  angle: -math.pi / 11,
                  child: Text('INVITE\nME!',
                      textAlign: TextAlign.end,
                      softWrap: false,
                      style: TextStyle(
                          overflow: TextOverflow.clip,
                          letterSpacing: 3,
                          fontSize: 45,
                          color: light,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                                color: dark.withOpacity(.6),
                                offset: Offset(8, 8),
                                blurRadius: 1)
                          ]))),
              Expanded(child: Container()),
              Image.asset(
                'assets/img/kyouko_joinha.png',
                fit: BoxFit.fitWidth,
              )
            ],
          ),
        ),
      ),
    );
  }
}
