import 'dart:math';
import 'package:flutter/material.dart';

// ignore: public_member_api_docs
class ColorsScreen extends StatefulWidget {
  @override
  State<ColorsScreen> createState() => _ColorsScreenState();
}

class _ColorsScreenState extends State<ColorsScreen> {
  Color contcolor = Colors.blueAccent;
  double borderradius = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          final Random random = Random();
          final Color rdcolor = Color.fromRGBO(
            random.nextInt(255),
            random.nextInt(255),
            random.nextInt(255),
            1,
          );
          setState(() {
            contcolor = rdcolor;
          });
        },
        child: Container(
          alignment: Alignment.center,
          color: contcolor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(borderradius),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Hey there",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
