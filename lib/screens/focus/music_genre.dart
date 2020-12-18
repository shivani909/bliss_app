import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:soothe_app/animations/ScaleRoute.dart';
import 'package:soothe_app/screens/focus/forest_screen.dart';
import 'package:soothe_app/screens/focus/ocean_sound.dart';
import 'package:soothe_app/screens/focus/rain_audio.dart';

class Music extends StatefulWidget {
  @override
  _MusicState createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
              child: Stack(children: [
        Positioned(
            top: 0.0,
            child: Image.asset(
              "assets/dorel-gnatiuc-rlXgUH7Sh_I-unsplash.jpg",
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            )),
        Positioned(
          top: 30.0,
          left: 163.0,
          child: Container(
              alignment: Alignment.topCenter,
              child: Text(
                "Focus",
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 30,
                    color: Colors.black,
                    letterSpacing: 1.0),
              )),
        ),
        Positioned(
          top: 100.0,
          left: 30.0,
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, ScaleRoute(page: Forest()));
            },
            child: Container(
              width: 350,
              height: 200,
              alignment: Alignment.center,
              child: Text(
                "Forest",
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 30,
                    color: Colors.white,
                    letterSpacing: 1.0),
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [new BoxShadow(
            color: Colors.grey,
            blurRadius: 2.0,
          ),
          ],
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                        "assets/andrew-coelho-aL7SA1ASVdQ-unsplash.jpg"),
                  ),
                  color: Colors.white.withOpacity(0.0)),
            ),
          ),
        ),
        Positioned(
            top: 20.0,
            bottom: 30.0,
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white54),
            )),
        Positioned(
          top: 330.0,
          left: 30.0,
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, ScaleRoute(page: Rain()));
            },
            child: Container(
              width: 350,
              height: 200,
              alignment: Alignment.center,
              child: Text(
                "Rain",
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 30,
                    color: Colors.white,
                    letterSpacing: 1.0),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [new BoxShadow(
            color: Colors.grey,
            blurRadius: 2.0,
          ),
          ],
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                      "assets/mitchell-griest-MbG0QHEfqqQ-unsplash.jpg"),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 560.0,
          left: 30.0,
          
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, ScaleRoute(page: Ocean()));
            },
            child: Container(
              width: 350,
              height: 200,
          
              
              child: Padding(
                padding: EdgeInsets.fromLTRB(130, 65, 50, 50),
                              child: Text(
                  "Ocean",
                  style: TextStyle(
                    
                      fontFamily: 'OpenSans',
                      fontSize: 30,
                      color: Colors.white,
                      letterSpacing: 1.0),
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [new BoxShadow(
            color: Colors.grey,
            blurRadius: 2.0,
          ),
          ],
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                      "assets/nathan-anderson-_lG0y1pdooU-unsplash (1).jpg"),
                ),
              ),
            ),
          ),
        ),
      
      ]))),
    );
  }
}
