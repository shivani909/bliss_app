import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


class Forest extends StatefulWidget {
  @override
  _ForestState createState() => _ForestState();
}

class _ForestState extends State<Forest> {
  bool playing = false; //at the begining we are not playing any song
  IconData playBtn = Icons.play_circle_fill_rounded;

  AudioPlayer _player;
  AudioCache cache;

  Duration position = new Duration();
  Duration musicLength = new Duration();

  // custom Slider

  Widget slider() {
    return Container(
      width: 300.0,
      child: Slider.adaptive(
          activeColor: Colors.purple[800],
          inactiveColor: Colors.white,
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }
  //let's create the seek function that will allow us to go to a certain position
  // of the music

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }

  //Now lets initialize our player
  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    cache = AudioCache(fixedPlayer: _player);

    //now let's handle the audioplayer time
    //this function will allow you to get the music duration
    _player.durationHandler = (d) {
      setState(() {
        musicLength = d;
      });
    };
    _player.positionHandler = (p) {
      setState(() {
        position = p;
      });
    };
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
            child: Image.asset(
              'assets/evgeni-evgeniev-LPKk3wtkC-g-unsplash.jpg',
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          ),
          Positioned(
            top: 100.0,
            left: 90.0,
            child: Container(
              alignment: Alignment.topCenter,
              child: Text(
                "Deep Into Forest",
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 30,
                    color: Colors.white,
                    letterSpacing: 1.0),
              ),
            ),
          ),
          Positioned(
            top: 150.0,
            left: 100.0,
            child: Container(
              alignment: Alignment.topCenter,
              child: Text(
                "Intro to Mental Focus",
                style: TextStyle(
                  fontFamily: 'OpenSans-Light',
                  fontSize: 18,
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
            ),
          ),
          Positioned(
            top: 270.0,
            left: 50.0,
            child: Container(
              alignment: Alignment.topCenter,
              child: Text(
                "PRODUCER",
                style: TextStyle(
                  fontFamily: 'OpenSans-Light',
                  fontSize: 15,
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
            ),
          ),
          Positioned(
            top: 295.0,
            left: 40.0,
            child: Container(
              alignment: Alignment.topCenter,
              child: Text(
                "James Gilbert",
                style: TextStyle(
                  fontFamily: 'OpenSans-Bold',
                  fontSize: 15,
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
            ),
          ),
          Positioned(
            top: 270.0,
            left: 265.0,
            child: Container(
              alignment: Alignment.topCenter,
              child: Text(
                "BEATS",
                style: TextStyle(
                  fontFamily: 'OpenSans-Light',
                  fontSize: 15,
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
            ),
          ),
          Positioned(
            top: 295.0,
            left: 240.0,
            child: Container(
              alignment: Alignment.topCenter,
              child: Text(
                "LeBron James",
                style: TextStyle(
                  fontFamily: 'OpenSans-Bold',
                  fontSize: 15,
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
            ),
          ),
          Positioned(
              top: 600.0,
              left: -42.0,
              child: Container(
                width: 500.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        iconSize: 45.0,
                        color: Colors.white,
                        icon: Icon(Icons.skip_previous),
                        onPressed: () {}),
                    IconButton(
                      iconSize: 70.0,
                      onPressed: () {
                        if (!playing) {
                          cache.play("forest.m4a");
                          setState(() {
                            playBtn = Icons.pause_circle_filled_rounded;
                            playing = true;
                          });
                        } else {
                          _player.pause();
                          setState(() {
                            playBtn = Icons.play_circle_fill_rounded;
                            playing = false;
                          });
                        }
                      },
                      icon: Icon(
                        playBtn,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                       iconSize: 45.0,
                        color: Colors.white,
                      icon:Icon(Icons.skip_next_sharp), onPressed: (){})
                  ],
                ),
              )),
          Positioned(
            top: 690.0,
            right: -40.0,
            child: Container(
              width: 500.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "${position.inMinutes}:${position.inSeconds.remainder(60)}",
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                  slider(),
                  Text(
                    "${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

      
   