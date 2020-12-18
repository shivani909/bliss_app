import 'package:flutter/material.dart';
import 'package:soothe_app/animations/ScaleRoute.dart';
import 'package:soothe_app/screens/focus/music_genre.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      brightness: Brightness.light,
    ),
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned(
                top: 0,
                child: Image.asset(
                  "assets/diego-ph-5LOhydOtTKU-unsplash.jpg",
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                )),
            Positioned(
              top: 115,
              left: 150,
              child: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  "Bliss",
                  style: TextStyle(
                      fontFamily: 'Loremipsum',
                      color: Colors.white,
                      fontSize: 45),
                ),
              ),
            ),
            Positioned(
              top: 180,
              left: 60,
              child: Text(
                "Start your Spirtual Journey",
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
            Positioned(
              bottom: 200,
              left: 60,
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [new BoxShadow(
            color: Colors.grey,
            blurRadius: 1.0,
          ),
          ],
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    
                    image: AssetImage("assets/ezgif-4-c9e548ef9ed4.gif"),
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 100,
                left: 140,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context, ScaleRoute(page: Music()));
                  },
                  textColor: Colors.black,
                  padding: const EdgeInsets.all(0.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  child: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xB3FFFFFF),
                            Color(0xB3FFFFFF),
                            Color(0xB3FFFFFF),
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: const Text('Get Started',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 20,
                        )),
                  ),
                ))
          ],
        ),
        
      ),
    );
  }
}
