import 'package:flutter/material.dart';
import 'package:kyouko_site/helpers/responsiveness.dart';
import 'package:kyouko_site/widgets/large_screen.dart';
import 'package:kyouko_site/widgets/side_menu.dart';
import 'package:kyouko_site/widgets/small_screen.dart';
import 'package:kyouko_site/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNav(context, scaffoldKey),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: ResponsiveWidget(
          smallScreen: SmallScreen(), largeScreen: LargeScreen()),
    );
  }
}
