import 'package:flutter/cupertino.dart';
import 'package:lib_theme/default_theme.dart';
import 'package:rich_input/rich_input.dart';

final _style = TextStyle(color: primaryColor);

extension RichInputControllerExtension on RichInputController {
  void insertAtBlock(String? name, String data) {
    insertBlock(RichBlock(text: "@$name ", data: data, style: _style));
  }

  void insertChannelBlock(String? name, String data) {
    insertBlock(RichBlock(text: "#$name ", data: data, style: _style));
  }

  void insertCusEmo(String name, TextStyle style) {
    insertBlock(RichBlock(text: name, data: name, style: style));
  }
}
