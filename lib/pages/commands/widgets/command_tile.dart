import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kyouko_site/constants/style.dart';
import 'package:kyouko_site/widgets/custom_text.dart';

class CommandTile extends StatefulWidget {
  final String title;
  final String description;
  final String example;
  final Color? topColor;
  final Function() onTap;
  const CommandTile(
      {Key? key,
      required this.title,
      required this.description,
      required this.example,
      required this.onTap,
      this.topColor})
      : super(key: key);

  @override
  State<CommandTile> createState() => _CommandTileState();
}

class _CommandTileState extends State<CommandTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.onTap,
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    color: dark,
                    blurRadius: 3,
                    spreadRadius: 1),
              ]),
          child: ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            child: Column(
              children: [
                Container(color: widget.topColor ?? dark, height: 20),
                Expanded(child: Container()),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                        text: '${widget.title}\n',
                        style: TextStyle(
                          fontSize: 18,
                          color: dark,
                        )),
                    TextSpan(
                        text: '${widget.description}\n',
                        style: TextStyle(
                          fontSize: 16,
                          color: dark,
                        )),
                    TextSpan(
                        text: widget.example,
                        style: TextStyle(
                          fontSize: 12,
                          color: dark,
                        )),
                  ]),
                ),
                Expanded(child: Container()),
              ],
            ),
          ),
        ));
  }
}
