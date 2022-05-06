import 'package:flutter/material.dart';
import 'package:kyouko_site/pages/overview/widgets/custom_overview_button.dart';
import 'package:kyouko_site/pages/overview/widgets/invite_me_button.dart';
import 'package:kyouko_site/pages/overview/widgets/overview_large_card.dart';
import 'package:kyouko_site/pages/overview/widgets/overview_large_card_list.dart';
import 'package:kyouko_site/widgets/custom_text.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [InviteMeButton()],
          ),
          SizedBox(width: _width / 32),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [OverviewLargeCardList(), Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomOverviewButton(onTap: (){}),
                CustomOverviewButton(onTap: (){})
              ],
            )],
          )
        ],
      ),
    );
  }
}
