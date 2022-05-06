import 'package:flutter/material.dart';
import 'package:kyouko_site/pages/overview/widgets/overview_large_card.dart';

class OverviewLargeCardList extends StatelessWidget {
  const OverviewLargeCardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        OverviewLargeCard(title: 'Online in servers:', value: '8'),
        SizedBox(width: _width / 64),
        OverviewLargeCard(title: 'Commands for use:', value: '27'),
        SizedBox(width: _width / 64),
        OverviewLargeCard(title: "Mom's personal ranking", value: '1º')
      ],
    );
  }
}
