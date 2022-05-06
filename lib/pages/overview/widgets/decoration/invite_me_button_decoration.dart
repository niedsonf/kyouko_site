import 'package:flutter/material.dart';
import 'package:kyouko_site/constants/style.dart';

BoxDecoration inviteMeDecoration() => BoxDecoration(
      color: orange,
      gradient: LinearGradient(
          colors: [orange, primary],
          begin: Alignment.bottomCenter,
          end: Alignment.topRight),
      boxShadow: [
        BoxShadow(
          color: darkOrange,
          offset: Offset(-6, -6),
        ),
      
      ],
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(30),
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(10),
      ),
    );
