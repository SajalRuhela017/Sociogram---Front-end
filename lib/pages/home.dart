import 'package:flutter/material.dart';
import 'package:sociogram/util/user_post.dart';

import '../util/bubble_stories.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'Ramesh',
    'Suresh',
    'Pravesh',
    'Kundan',
    'Chandan'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Sociogram',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            )
          ],
        )),
      body: Column(
        children: [
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
               return BubbleStories(text: people[index]);
              }),
          ),
          UserPosts(),
        ],
      ),
    );
  }
}