import 'package:flutter/material.dart';

//T = text, black = color, B = bold, number = fontSize

TextStyle Tblack = TextStyle(color: Colors.black);
TextStyle Tblack13B =
    TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold);
TextStyle Twhite10 = TextStyle(color: Colors.white, fontSize: 10);

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
