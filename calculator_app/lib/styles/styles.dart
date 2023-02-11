import 'package:flutter/material.dart';

class S {
  static _Colors get colors => _Colors();
  static _TextStyles get textStyles => _TextStyles();
  static _ButtonStyles get buttonStyles => _ButtonStyles();
}

class _Colors {
  final transparent = Colors.transparent;
  final black = Colors.black;
  final black87 = Colors.black87;
  final gray = Colors.grey;
  final white = Colors.white;
  final primary = Color.fromARGB(255, 99, 101, 241);
}

class _TextStyles {
  final calcButton = TextStyle(fontSize: 20, color: S.colors.gray);
  final f10Regular = TextStyle(
    fontSize: 10,
    color: S.colors.black,
  );
  final f10Medium = TextStyle(fontSize: 10, color: S.colors.white);
  final f12SemiBold = TextStyle(
      fontSize: 12, fontWeight: FontWeight.w700, color: S.colors.primary);
}

class _ButtonStyles {
  final calcButton = TextButton.styleFrom(padding: const EdgeInsets.all(20));
}
