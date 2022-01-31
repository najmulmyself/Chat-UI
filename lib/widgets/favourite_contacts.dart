import 'package:chat_ui/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

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
          child: ListView.builder(
            padding: EdgeInsets.only(left: 10),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(favorites[index].imageUrl!),
                    ),
                    SizedBox(height: 6),
                    Text(
                      favorites[index].name!,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.blueGrey),
                    ),
                  ],
                ),
              );
            },
            itemCount: favorites.length,
          ),
        ),
      ],
    );
  }
}
