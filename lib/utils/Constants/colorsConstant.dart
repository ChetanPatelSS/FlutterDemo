import 'dart:ui';
import 'package:flutter/material.dart';

class ColorsConstant {
  static Color gray600 = fromHex('#828282');

  static Color lightBlue60033 = fromHex('#33009ee0');

  static Color teal90019 = fromHex('#190e3651');

  static Color gray90099 = fromHex('#9919171b');

  static Color gray900 = fromHex('#19171b');

  static Color lightBlue60001 = fromHex('#179dd9');

  static Color lightBlue60026 = fromHex('#26009ee0');

  static Color lightBlue600 = fromHex('#009ee0');

  static Color lightBlue6001901 = fromHex('#19009ee0');

  static Color teal9000c = fromHex('#0c0e3651');

  static Color red400 = fromHex('#d75059');

  static Color lightBlue60019 = fromHex('#19179dd9');

  static Color gray300 = fromHex('#e0e0e0');

  static Color gray50 = fromHex('#f9fcfe');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color lightBlue6000c = fromHex('#0c009ee0');

  static Color blueGray900 = fromHex('#333333');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
