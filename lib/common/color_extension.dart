import 'package:flutter/material.dart';

class TColor {
  static Color get primary => const Color(0xFF8E97FD);
  static Color get secondary => const Color(0xFF3F414E);
  static Color get tertiary => const Color(0xFFEBEAEC);
  static Color get sleep => const Color(0xff03174C);
  static Color get sleepText => const Color(0xffE6E7F2);

  static Color get primaryText => const Color(0xFF3F414E);
  static Color get primaryTextW => const Color(0xFFF6F1FB);
  static Color get secondaryText => const Color(0xFFA1A4B2);
  static Color get txtBG => const Color(0xFFF2F3F7);
}

extension AppContext on BuildContext {
  Size get size => MediaQuery.sizeOf(this);
  double get height => size.height;
  double get width => size.width;

  Future push(Widget widget) async {
    return await Navigator.push(
        this, MaterialPageRoute(builder: (context) => widget));
  }

  void pop() {
    return Navigator.pop(this);
  }
}

extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
