import 'package:booklyapp/core/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorMessage extends StatelessWidget {
  const CustomErrorMessage({Key? key, required this.errormessage})
      : super(key: key);
  final String errormessage;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      errormessage,
      style: Styles.textStyle18,
          textAlign: TextAlign.center,
    ));
  }
}
