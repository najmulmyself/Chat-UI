import 'package:flutter/material.dart';

import 'widgets/category_selector.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            size: 28,
            color: Colors.white,
          ),
        ),
        title: Center(
          child: Text(
            "Chats",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 28,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Category_selector(),
        ],
      ),
    );
  }
}
