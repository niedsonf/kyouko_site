import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:kyouko_site/constants/style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kyouko_site/controllers/menu_controller.dart';
import 'package:kyouko_site/controllers/navigation_controller.dart';
import 'package:get/get.dart';
import 'package:kyouko_site/layout.dart';
import 'package:kyouko_site/pages/404/error_page.dart';
import 'package:kyouko_site/routing/routes.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(const KyoukoSite());
}

class KyoukoSite extends StatelessWidget {
  const KyoukoSite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RootRoute,
        unknownRoute: GetPage(name: '/not-found', page: () => ErrorPage()),
        getPages: [GetPage(name: RootRoute, page: () => SiteLayout())],
        defaultTransition: Transition.fadeIn,
        title: "Kyouko Bot",
        theme: ThemeData(
            scaffoldBackgroundColor: Color(0xFF161514),
            textTheme: GoogleFonts.mulishTextTheme()));
  }
}
