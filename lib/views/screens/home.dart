import 'package:booklyapp/views/component/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Scaffold(
        body:
        Column(
          children: [
            CustomAppBar(),
          ],
        ),
      ),
    );
  }
}
