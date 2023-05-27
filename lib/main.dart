import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text("Ideapad"),
        ),
        body: Ideapad(),
      ),
    ),
  );
}

class Ideapad extends StatefulWidget {
  const Ideapad({Key? key}) : super(key: key);

  @override
  State<Ideapad> createState() => _IdeapadState();
}

class _IdeapadState extends State<Ideapad> {
  int leftpicage = 1;
  int reightage = 7;

  void randMe() {
    setState(() {
      leftpicage = Random().nextInt(7) + 1;
      reightage = Random().nextInt(7) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 220),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      TextButton(
                          onPressed: randMe,
                          child: Image.asset("images/image_$leftpicage.png")),
                    ],
                  ),
                ),
                Text(
                  "VS",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                ),
                Expanded(
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: randMe,
                        child: Image.asset("images/image_$reightage.png"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "YOU",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.yellowAccent),
                ),
                Text(
                  "suatem",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.yellowAccent),
                ),
              ],
            ),
            Expanded(
              child: GestureDetector(
                  onTap: randMe,
                  child: Container(
                    color: Colors.indigo,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
