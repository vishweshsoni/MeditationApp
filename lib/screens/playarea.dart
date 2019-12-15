import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class PlayArea extends StatefulWidget {
  @override
  _PlayAreaState createState() => _PlayAreaState();
}

class _PlayAreaState extends State<PlayArea> {
  Duration duration = Duration();
  Duration position = Duration();
  bool playing = false;
  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  @override
  void initState() {
    // TODO: implement initState
    initPlayer();
    super.initState();
  }

  void initPlayer() {
    advancedPlayer = AudioPlayer();
    audioCache = AudioCache(fixedPlayer: advancedPlayer);
    advancedPlayer.durationHandler = (d) => setState(() {
          duration = d;
        });
    advancedPlayer.durationHandler = (p) => setState(() {
          position = p;
        });
  }

  String localfilePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/bg.png'), fit: BoxFit.fill)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width / 6.5,
                ),
                Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Text(
                      "Mental Training",
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    )),
                Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 6.5, top: 20.0),
                  child: IconButton(
                    icon: Icon(
                      Icons.clear,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 90),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Image(
                        image: AssetImage('images/like.png'),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: playing
                          ? Icon(
                              Icons.pause_circle_outline,
                              color: Colors.white,
                              size: 35.0,
                            )
                          : Icon(
                              Icons.play_circle_outline,
                              color: Colors.white,
                              size: 35.0,
                            ),
                      onPressed: () {
                        if (!this.playing) {
                          setState(() {
                            this.playing = true;
                            audioCache.play('tune.mp3');
                          });
                        } else if (this.playing) {
                          setState(() {
                            this.playing = false;
                          });
                          advancedPlayer.pause();
                        }
                      },
                    ),
                    IconButton(
                      icon: Image(
                        image: AssetImage('images/settings.png'),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}
