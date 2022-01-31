import 'package:flutter/material.dart';

class Category_selector extends StatefulWidget {
  @override
  State<Category_selector> createState() => _Category_selectorState();
}

class _Category_selectorState extends State<Category_selector> {
  int selectedIndex = 0;
  List categories = ['Messages', 'Online', 'Group', 'Requests'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
              child: Text(
                categories[index],
                style: TextStyle(
                    fontSize: 22,
                    letterSpacing: 1.2,
                    color:
                        index == selectedIndex ? Colors.white : Colors.white60,
                    fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
