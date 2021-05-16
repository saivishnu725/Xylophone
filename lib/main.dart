import 'package:flutter/material.dart';
import 'package:audioplayer/audioplayer.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xylophone',
      home: XyloPhone(),
    ),
  );
}

String link =
    'https://raw.githubusercontent.com/londonappbrewery/Xylophone-Flutter-Completed/master/assets';

class XyloPhone extends StatefulWidget {
  @override
  _XyloPhoneState createState() => _XyloPhoneState();
}

class _XyloPhoneState extends State<XyloPhone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('XyloPhone')),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //          1
            Expanded(
                child: FlatButton(
              onPressed: () => playSound('$link/note1.wav'),
              color: Colors.red,
              child: Container(),
            )),
            // Expanded(
            //   child: TextButton(
            //     onPressed: () => playSound('$link/note1.wav'),
            //     child: Container(
            //       color: Colors.red,
            //     ),
            //   ),
            // ),
            //          2
            Expanded(
              child: FlatButton(
                color: Colors.orange,
                onPressed: () => playSound('$link/note2.wav'),
                child: Container(),
              ),
            ),
            //          3
            Expanded(
              child: FlatButton(
                color: Colors.yellow,
                onPressed: () => playSound('$link/note3.wav'),
                child: Container(),
              ),
            ),
            //          4
            Expanded(
              child: FlatButton(
                color: Colors.green,
                onPressed: () => playSound('$link/note4.wav'),
                child: Container(),
              ),
            ),
            //          5
            Expanded(
              child: FlatButton(
                color: Colors.teal,
                onPressed: () => playSound('$link/note5.wav'),
                child: Container(),
              ),
            ),
            //        6
            Expanded(
              child: FlatButton(
                color: Colors.blue,
                onPressed: () => playSound('$link/note6.wav'),
                child: Container(),
              ),
            ),
            //        7
            Expanded(
              child: FlatButton(
                color: Colors.purple,
                onPressed: () => playSound('$link/note7.wav'),
                child: Container(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void playSound(String url) {
  final audioPlayer = AudioPlayer();
  audioPlayer.play(
    url,
  );
}
