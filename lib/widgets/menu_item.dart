import 'package:flutter/material.dart';
import 'package:kyouko_site/constants/controllers.dart';
import 'package:kyouko_site/constants/style.dart';
import 'package:get/get.dart';
import 'package:kyouko_site/widgets/custom_text.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function() onTap;
  const SideMenuItem({Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return InkWell(
        onTap: onTap,
        onHover: (value) {
          value ? menuController.onHover(itemName) : menuController.onHover('');
        },
        child: Obx(() => Container(
              color: menuController.isHovering(itemName)
                  ? grey.withOpacity(.1)
                  : Colors.transparent,
              child: Row(
                children: [
                  Visibility(
                    visible: menuController.isHovering(itemName) ||
                        menuController.isActive(itemName),
                    child: Container(width: 6, height: 40, color: primary),
                    maintainAnimation: true,
                    maintainSize: true,
                    maintainState: true,
                  ),
                  Padding(
                      padding: EdgeInsets.all(16),
                      child: menuController.returnIconFor(itemName)),
                  if (menuController.isActive(itemName))
                    Flexible(
                        child: CustomText(
                            text: itemName,
                            color: primary,
                            size: 22,
                            weight: FontWeight.bold))
                  else
                    Flexible(
                        child: CustomText(
                            text: itemName,
                            color: menuController.isHovering(itemName)
                                ? darkOrange
                                : light,
                            size: 20,
                            weight: FontWeight.bold))
                ],
              ),
            )));
  }
}
