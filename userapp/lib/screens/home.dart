// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 203, 203),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
            child: Container(
              height: hei * 0.1,
              width: wid * 1.0,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 226, 130, 130),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Padding(
                padding: const EdgeInsets.only(
                    right: 20, left: 20, top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ImageIcon(
                      AssetImage("images/logobgremoved.png"),
                      size: 30,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("images/pic.jpg"),
                      radius: 33,
                    )
                  ],
                ),
              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: GridView.count(
                  crossAxisCount: 1,
              
                  children: List.generate(
                    10,
                    (index) {
                      return Container(
                        color: Colors.blue,
                        margin: const EdgeInsets.all(10),
                        child: Center(
                          child: Text(
                            'Item $index',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      );
                    },
                  )),
            ),
          )
        ],
      )),
    );
  }
}
