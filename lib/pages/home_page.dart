import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:second_app/util/emoticon_face.dart';
import 'package:second_app/util/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Message',
            icon: Icon(Icons.message),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  // greetings
                  Row(
                    //in Row mainAxis is usually horizontal and viceversa
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Hi Martin
                      Column(
                        // in Column crossAxis is usually horizontal and viceversa
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Martin!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            // to space between first Text and Second text
                            height: 8,
                          ),
                          Text(
                            '12 Oct 2022',
                            style: TextStyle(color: Colors.blue[200]),
                          ),
                        ],
                      ),

                      // Notification
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),

                  // search bar
                  SizedBox(
                    // to space between greetings and Search bar
                    height: 25,
                  ),

                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          SizedBox(
                            // to space between search icon and Search text
                            width: 5,
                          ),
                          Text(
                            'Search',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),

                  // How do you feel emojis

                  SizedBox(
                    // to space between greetings and Search bar
                    height: 30,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel??',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),

                  SizedBox(
                    // to space between greetings and Search bar
                    height: 20,
                  ),

                  // 4 different faces

                  Row(
                    children: [
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😥',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Badly',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😉',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Fine',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😇',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Well',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😁',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Excellent',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25.0),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    children: [
                      // exercise heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Exercises',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              )),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      // List of exercises
                      SizedBox(
                        height: 20,
                      ),

                      Expanded(
                        child: ListView(
                          children: [
                            ExerciseTile(
                              icon: Icons.favorite,
                              exerciseName: 'Speaking Skills',
                              numberOfExercise: 16,
                              color: Colors.orange,
                            ),
                            ExerciseTile(
                              icon: Icons.person,
                              exerciseName: 'Reading Skills',
                              numberOfExercise: 8,
                              color: Colors.green,
                            ),
                            ExerciseTile(
                              icon: Icons.star,
                              exerciseName: 'Writing Skills',
                              numberOfExercise: 20,
                              color: Colors.pink,
                            ),
                          ],
                        ),
                      )



                    




                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
