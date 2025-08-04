import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        GoRouter.of(context).push(AppRouter.ksearchView);
        
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(0),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: const Icon(
        color: Colors.white,
        FontAwesomeIcons.magnifyingGlass,
        shadows: [Shadow(color: Colors.blueAccent, offset: Offset(0, 0))],
        size: 25,
      ),
    );
  }
}
