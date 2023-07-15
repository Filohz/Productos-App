import 'package:flutter/material.dart';

class InputsDecorations {
  static InputDecoration authInputDecorations(
      {required String labelText, required String hintText, IconData? icon}) {
    return InputDecoration(
      enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.purple)),
      focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.purple)),
      hintText: hintText,
      labelText: labelText,
      labelStyle: const TextStyle(color: Colors.grey),
      prefixIcon: Icon(icon, color: Colors.purple),
    );
  }
}
