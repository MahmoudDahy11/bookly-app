import 'package:bookly_app/Futures/home/presentation/views/widget/card_item.dart';
import 'package:flutter/material.dart';

class FutureListViewItem extends StatelessWidget {
  const FutureListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CardItem(),
          );
        },
      ),
    );
  }
}
