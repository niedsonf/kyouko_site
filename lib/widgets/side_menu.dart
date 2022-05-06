import 'package:flutter/material.dart';
import 'package:kyouko_site/constants/controllers.dart';
import 'package:kyouko_site/constants/style.dart';
import 'package:kyouko_site/helpers/responsiveness.dart';
import 'package:kyouko_site/routing/routes.dart';
import 'package:kyouko_site/widgets/menu_item.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    List<SideMenuItem> getMenuItems() => sideMenuItems
        .map((item) => SideMenuItem(
            itemName: item.name,
            onTap: () {
              if (!menuController.isActive(item.name)) {
                menuController.changeActiveItemTo(item.name);
                if (!ResponsiveWidget.isLargeScreen(context)) {
                  Get.back();
                }
                navigationController.navigatoTo(item.route);
              }
            }))
        .toList();

    return Container(
      color: dark.withOpacity(.9),
      child: ListView(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Divider(color: secondary),
              SizedBox(width: 30),
              Column(
                children: [...getMenuItems()],
              )
            ],
          )
        ],
      ),
    );
  }
}
