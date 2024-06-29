import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AutdioButtonWidget extends StatefulWidget {
  const AutdioButtonWidget({Key? key}) : super(key: key);

  @override
  State<AutdioButtonWidget> createState() => _AutdioButtonWidgetState();
}

class _AutdioButtonWidgetState extends State<AutdioButtonWidget> {
  final audioPlayer = AudioPlayer();


  @override
  Widget build(BuildContext context) {
    final double Height = MediaQuery.of(context).size.height;
final double Width = MediaQuery.of(context).size.width;

    return  Scaffold(
      body: Center(child: Container(
        width: Width * .2,
        height: Height * .1,
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

