import 'package:chat_ui/models/user_model.dart';
import 'package:flutter/material.dart';

class FavouriteContacts extends StatelessWidget {
  const FavouriteContacts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Favourite Contacts",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  color: Colors.blueGrey,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                ),
                iconSize: 30,
                color: Colors.blueGrey,
              ),
            ],
          ),
        ),
        Container(
          height: 120,
          color: Colors.blueGrey,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Text(favorites[index].name!);
            },
            itemCount: favorites.length,
          ),
        ),
      ],
    );
  }
}
