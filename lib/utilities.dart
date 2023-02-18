import 'dart:js';

import 'package:flutter/material.dart';

//T = text, black = color, B = bold, number = fontSize

TextStyle tblack = const TextStyle(color: Colors.black);

TextStyle tblack13B = TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold);

TextStyle twhite10 = TextStyle(color: Colors.white, fontSize: 10);

Color nude = Color(0xffddcec0);
Color beige = Color(0xffe8ddd4);

MouseRegion widgetHover(String string, style, hoverBehaviour, exitBehaviour) {
  return MouseRegion(
    onHover: hoverBehaviour,
    onExit: exitBehaviour,
    child: Text(
      string,
      style: style,
    ),
  );
}

MouseRegion iconHoverBehaviour(hoverBehaviour, exitBehaviour, icon, size) {
  return MouseRegion(
      onHover: hoverBehaviour,
      onExit: exitBehaviour,
      child: Icon(
        icon,
        color: Colors.black,
        size: size,
      ));
}
