import 'package:flutter/material.dart';

class SimlarBooksListView extends StatelessWidget {
  const SimlarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 170,
      height: MediaQuery.of(context).size.height * .17,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            width: 120,
            margin: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
            clipBehavior: Clip.antiAlias,
            child: Image.asset('assets/images/test2.png', fit: BoxFit.cover),
          );
        },
      ),
    );
  }
}
