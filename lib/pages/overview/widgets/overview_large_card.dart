import 'package:flutter/material.dart';
import 'package:kyouko_site/constants/style.dart';

class OverviewLargeCard extends StatefulWidget {
  final String title;
  final String value;
  const OverviewLargeCard({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  State<OverviewLargeCard> createState() => _OverviewLargeCardState();
}

class _OverviewLargeCardState extends State<OverviewLargeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: dark.withOpacity(.8),
          blurRadius: 1,
        ),
      ], borderRadius: BorderRadius.circular(30), color: dark.withOpacity(.8)),
      width: 260,
      height: 150,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(width: 20, color: primary),
            Expanded(child: Container()),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(widget.title,
                    softWrap: true,
                    maxLines: 2,
                    style: TextStyle(fontSize: 18, color: light)),
                Text(widget.value,
                    softWrap: true,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: light)),
              ],
            ),
            Expanded(child: Container()),
            Container(width: 20, color: primary)
          ],
        ),
      ),
    );
  }
}
