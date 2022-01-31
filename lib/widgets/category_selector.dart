import 'package:flutter/material.dart';

class Category_selector extends StatelessWidget {
  // const Category_selector({
  //   Key? key,
  // }) : super(key: key);

  int selectedIndex = 0;
  List categories = ['Messages', 'Online', 'Group', 'Requests'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Colors.blue,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32),
            child: Text(categories[index]),
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
