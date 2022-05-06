import 'package:flutter/material.dart';
import 'package:kyouko_site/constants/controllers.dart';
import 'package:kyouko_site/routing/router.dart';
import 'package:kyouko_site/routing/routes.dart';

Navigator localNavigator() => Navigator(
  key: navigationController.navigationKey,
  initialRoute: OverViewPageRoute,
  onGenerateRoute: generateRoute,
);
