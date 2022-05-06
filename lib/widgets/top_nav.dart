import 'package:flutter/material.dart';
import 'package:kyouko_site/constants/controllers.dart';
import 'package:kyouko_site/constants/style.dart';
import 'package:kyouko_site/helpers/responsiveness.dart';
import 'package:kyouko_site/widgets/custom_text.dart';
import 'package:kyouko_site/widgets/menu_item.dart';

AppBar topNav(BuildContext context, GlobalKey<ScaffoldState> scaffoldKey) =>
    AppBar(
      toolbarHeight: 80,
      elevation: 1,
      backgroundColor: dark,
      leading: !ResponsiveWidget.isLargeScreen(context)
          ? IconButton(
              onPressed: () {
                scaffoldKey.currentState!.openDrawer();
              },
              icon: Icon(Icons.menu_open_rounded, color: grey))
          : Row(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Image.asset('assets/icons/discord.png', width: 40))
              ],
            ),
      title: Row(
        children: [
          CustomText(
              text: 'Kyouko Bot',
              size: 22,
              color: light,
              weight: FontWeight.bold),
          Expanded(child: Container()),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications, color: grey)),
          SizedBox(width: 20),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.settings, color: grey)),
          SizedBox(width: 20)
        ],
      ),
    );
