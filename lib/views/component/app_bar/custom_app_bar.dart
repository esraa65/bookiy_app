import 'package:booklyapp/core/app_router.dart';
import 'package:booklyapp/core/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logo,
            width: 100,
            alignment: Alignment.center,
          ),
          IconButton(
              onPressed: () {
                context.push(AppRouter.searchview);
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20,
              )),
        ],
      ),
    );
  }
}
