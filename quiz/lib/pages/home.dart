import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Set mainAxisSize
          children: [
            Stack(
              children: [
                Container(
                  height: 220,
                  padding: EdgeInsets.only(left: 20, top: 50),
                  decoration: BoxDecoration(
                    color: Color(0xFF2a2b31),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          "images/profile.jpg",
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 30),
                      Padding(
                        padding: const EdgeInsets.only(top: 13),
                        child: Text(
                          "Subarna Bhattarai",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: EdgeInsets.only(top: 130, left: 18, right: 18),
                  child: Row(
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          "images/quiz.jpg",
                          width: 150,
                          height: 150,
                        ),
                      ),
                      SizedBox(width: 40),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: 
                        [Text(
                          "Play &\n Win",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Play Quiz by guessing\n the image",
                          style: TextStyle(
                            color: Color(0xFFa4a4),
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ]
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
