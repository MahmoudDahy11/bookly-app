import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: .6,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Colors.red,
        ),
        clipBehavior: Clip.antiAlias,
        child: Image.asset('assets/images/test2.png', fit: BoxFit.fill),
      ),
    );
  }
}
