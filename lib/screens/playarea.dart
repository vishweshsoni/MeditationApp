import 'dart:async';

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class PlayArea extends StatefulWidget {
  @override
  _PlayAreaState createState() => _PlayAreaState();
}

class _PlayAreaState extends State<PlayArea> {
  bool playing = false;
  AudioCache audioCache;
  AudioPlayer audioPlayer;
  AudioPlayerState _audioPlayerState;
  Duration  _duration;
  Duration _position;
  StreamSubscription _durationSubscription;
  StreamSubscription _positionSubscription;


  @override
  void initState() {
    // TODO: implement initState
    initPlayer();
    super.initState();
  }

  initPlayer() async {
    audioPlayer = AudioPlayer();
    audioCache = AudioCache(fixedPlayer: audioPlayer);


    _durationSubscription = audioPlayer.onDurationChanged.listen((d){
       setState(() {
          this._duration = d;

       });
    });
    _positionSubscription= audioPlayer.onAudioPositionChanged.listen((p){
        setState(() {
          this._position=p;
        });
    });



  }

  Widget slider() {
    return Slider(
        value:(_position!=null)?_position.inSeconds.toDouble()
            : 0.0,
        activeColor: Colors.white,

        /* position.inSeconds.toDouble(),*/
        min: 0.0,
        max: 100,
//        max: duration.inSeconds.toDouble(),
        onChanged: (double value) {
          setState(() {

            value = value;
          });
        });
  }

  play() async {
    audioCache.play('tune.mp3');

    _durationSubscription = audioPlayer.onDurationChanged.listen((d){
      setState(() {
        this._duration = d;

      });
    });
    _positionSubscription= audioPlayer.onAudioPositionChanged.listen((p){
      setState(() {
        this._position=p;
      });
    });
    print(_duration.toString().split('.').first);
    print(_position.toString().split('.').first);

  }

  pause() async {
    audioPlayer.pause();
  }

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
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Image(
                              image: AssetImage('images/like.png'),
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: this.playing
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
                            onPressed: () async {
                              if (!this.playing) {
                                await play();
                                setState(() {
                                  this.playing = true;
                                });
                              } else if (this.playing) {
                                await pause();
                                setState(() {
                                  this.playing = false;
                                });
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
                      slider()
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

  @override
  void dispose() {
    // TODO: implement dispose
    audioPlayer.stop();
    super.dispose();
  }
}
