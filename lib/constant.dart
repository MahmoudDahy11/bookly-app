import 'package:flutter/material.dart';

const kprimaryColor = Color(0XFF100B20);
const kTranstionDuration = Duration(microseconds: 250);
const kFontFamily = 'PlayfairDisplay';



  void showSnakBar(BuildContext context, {required String message}) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }