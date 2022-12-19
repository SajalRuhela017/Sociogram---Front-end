import 'package:flutter/material.dart';
import 'package:sociogram/util/bubble_stories.dart';

class UserAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle,
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //Posts...
                      Column(
                        children: [
                          Text('12',
                              style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                          Text('Posts'),
                        ],
                      ),

                      //Followers...
                      Column(
                        children: [
                          Text('6493',
                              style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                          Text('Followers'),
                        ],
                      ),

                      //Following...
                      Column(
                        children: [
                          Text('76',
                              style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                          Text('Following'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sajal Ruhela',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Text(
                    'I am a Competitive Programmer and Android Developer :)',
                  ),
                ),
                Text(
                  'Github',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(child: Text('Edit Profile')),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(child: Text('Add Posts')),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(child: Text('Story Highlights')),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Stories...
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Row(
              children: [
                BubbleStories(text: 'Trip'),
                BubbleStories(text: 'Car'),
                BubbleStories(text: 'College'),
                BubbleStories(text: 'Home'),
              ],
            ),
          ),
        ],
      )
    );
  }
}