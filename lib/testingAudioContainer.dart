import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AutdioButtonWidget extends StatefulWidget {
  AutdioButtonWidget({Key? key, required this.Width, required this.Height, required this.left,  required this.top}) : super(key: key);

  double Width;
  double Height;
  double top;
  double left;


  @override
  State<AutdioButtonWidget> createState() => _AutdioButtonWidgetState();
}

class _AutdioButtonWidgetState extends State<AutdioButtonWidget> {
  final audioPlayer = AudioPlayer();


  @override
  Widget build(BuildContext context) {


    return  Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * .172,
          height: MediaQuery.of(context).size.height * .075,
        color: Colors.purple,
        child: TextButton(
          onPressed: () async{
            await audioPlayer.play(AssetSource("audios/demo2.mp3"));
          }, child: Text("."),
        ),
      )
        ,),
    );
  }
}

