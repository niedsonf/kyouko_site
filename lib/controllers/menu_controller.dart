import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:kyouko_site/constants/style.dart';
import 'package:kyouko_site/routing/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();

  var activeItem = OverViewPageDisplayName.obs;
  var hoverItem = ''.obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) {
      hoverItem.value = itemName;
    }
  }

  isActive(String itemName) => activeItem.value == itemName;
  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case OverViewPageDisplayName:
        return _customIcon(Icons.star_border_rounded, itemName);
      case CommandsPageDisplayName:
        return _customIcon(Icons.library_books_rounded, itemName);
      case AboutPageDisplayName:
        return _customIcon(Icons.info_sharp, itemName);
      default:
        return _customIcon(Icons.star_border_rounded, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) {
      return Icon(icon, size: 22, color: primary);
    }
    return Icon(icon, size: 20, color: isHovering(itemName) ? orange : light);
  }
}
