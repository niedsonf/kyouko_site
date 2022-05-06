import 'package:flutter/material.dart';
import 'package:kyouko_site/pages/about/about.dart';
import 'package:kyouko_site/pages/commands/commands.dart';
import 'package:kyouko_site/pages/overview/overview.dart';
import 'package:kyouko_site/routing/routes.dart';


Route<dynamic> generateRoute(RouteSettings settings) {
  switch(settings.name){
    case OverViewPageRoute:
      return _getPageRoute(OverViewPage());
    case CommandsPageRoute:
      return _getPageRoute(CommandsPage());
    case AboutPageRoute:
      return _getPageRoute(AboutPage());
    default: 
      return _getPageRoute(OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
