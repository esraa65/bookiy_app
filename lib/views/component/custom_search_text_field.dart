import 'package:booklyapp/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: white),
              borderRadius: BorderRadius.circular(20)),
          focusedBorder:OutlineInputBorder(
              borderSide: const BorderSide(color: white),
              borderRadius: BorderRadius.circular(20)) ,
          hintText: 'Search',
          suffixIcon: IconButton(
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,color: white,
            ),
            onPressed: () {},
          )),
    );
  }
}
