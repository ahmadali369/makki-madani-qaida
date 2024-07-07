import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<bool> _buttonStates;
  late List<String> _audios = [
    "audios/demo2.mp3",
    "audios/demo.mp3",
    "audios/demo2.mp3",
    "audios/demo.mp3",
    "audios/demo2.mp3",
    "audios/demo.mp3",
    "audios/demo2.mp3",
    "audios/demo.mp3",
    "audios/demo2.mp3",
    "audios/demo.mp3",
    "audios/demo2.mp3",
    "audios/demo.mp3",
    "audios/demo2.mp3",
    "audios/demo.mp3",
    "audios/demo2.mp3",
    "audios/demo.mp3",
    "audios/demo2.mp3",
    "audios/demo.mp3",
    "audios/demo2.mp3",
    "audios/demo.mp3",
  ];

  final audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _buttonStates = List<bool>.filled(29, false);
  }

  void _triggerButton(int index) {
    setState(() {
      _buttonStates[index] = !_buttonStates[index];
    });
  }

  void _triggerButtonManullay(int index) async {
    _triggerButton(index);
    await audioPlayer.play(AssetSource(_audios[index]));

    /// duartion
    Future<Duration?> nullableFutureDuration = audioPlayer.getDuration();
    Duration? nullableDuration = await nullableFutureDuration;
    if (nullableDuration == null) {
      throw Exception('Nullable duration is null');
    }
    await Future.delayed(nullableDuration);

    _triggerButton(index);
  }

  Future<void> _triggerButtonsSequentially() async {
    for (int i = 0; i < _buttonStates.length; i++) {
      _triggerButton(i);
      if (i > 0) {
        _triggerButton(i - 1); // Reset the previous button
      }

      await audioPlayer.play(AssetSource(_audios[i]));

      /// duartion
      Future<Duration?> nullableFutureDuration = audioPlayer.getDuration();
      Duration? nullableDuration = await nullableFutureDuration;
      if (nullableDuration == null) {
        throw Exception('Nullable duration is null');
      }
      await Future.delayed(nullableDuration);

      ///
    }
    // Reset the last button after the loop ends
    _triggerButton(_buttonStates.length - 1);
  }

  @override
  Widget build(BuildContext context) {
    final double Height = MediaQuery.of(context).size.height;
    final double Width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // Background image

          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/images/img (10).jpg',
              fit: BoxFit.fill,
            ),
          ),

          /// -------------------------------------------------------------------------------------- row 1   188

          /// alif

          AudioButtonWidget(
            buttonState: _buttonStates[0],
            audio: _audios[0],
            top: 0.427,
            left: 0.790,
            width: .172,
            heigt: .075,
          ),

          /// baa
          AudioButtonWidget(
            buttonState: _buttonStates[1],
            audio: _audios[1],
            top: 0.427,
            left: 0.602,
            width: .172,
            heigt: .075,
          ),

          /// taa

          AudioButtonWidget(
            buttonState: _buttonStates[2],
            audio: _audios[0],
            top: 0.427,
            left: 0.414,
            width: .172,
            heigt: .075,
          ),

          /// saa

          AudioButtonWidget(
            buttonState: _buttonStates[3],
            audio: _audios[1],
            top: 0.427,
            left: 0.226,
            width: .172,
            heigt: .075,
          ),

          /// saa

          AudioButtonWidget(
            buttonState: _buttonStates[4],
            audio: _audios[0],
            top: 0.427,
            left: 0.038,
            width: .172,
            heigt: .075,
          ),

          /// ------------------------------------------------------------------------------------------ row 2

          /// haa

          AudioButtonWidget(
            buttonState: _buttonStates[5],
            audio: _audios[1],
            top: 0.515,
            left: 0.790,
            width: .172,
            heigt: .075,
          ),

          // Add more Positioned containers as needed.
        ],
      ),
      floatingActionButton: TextButton(
        onPressed: _triggerButtonsSequentially,
        child: Icon(
          Icons.play_arrow,
        ),
      ),
    );
  }
}

class AudioButtonWidget extends StatefulWidget {
  AudioButtonWidget(
      {super.key,
      required this.buttonState,
      required this.audio,
      required this.left,
      required this.top,
      required this.width,
      required this.heigt});

  double left;
  double top;
  double width;
  double heigt;

  bool buttonState;
  String audio;

  @override
  State<AudioButtonWidget> createState() => _AudioButtonWidgetState();
}

class _AudioButtonWidgetState extends State<AudioButtonWidget> {
  final audioPlayer = AudioPlayer();
  bool buttonLocalState = false;

  void _triggerButton(bool state) {
    setState(() {
      state = !state;
      buttonLocalState = !buttonLocalState;
    });
  }

  void _triggerButtonManullay(bool state, String audio) async {
    _triggerButton(state);
    await audioPlayer.play(AssetSource(audio));

    /// duartion
    Future<Duration?> nullableFutureDuration = audioPlayer.getDuration();
    Duration? nullableDuration = await nullableFutureDuration;
    if (nullableDuration == null) {
      throw Exception('Nullable duration is null');
    }
    await Future.delayed(nullableDuration);

    _triggerButton(state);
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: MediaQuery.of(context).size.width *
          widget.left, // Adjust the left position as needed.
      top: MediaQuery.of(context).size.height *
          widget.top, // Adjust the top position as needed.

      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(5),
        ),

        width: MediaQuery.of(context).size.width * widget.width,
        height: MediaQuery.of(context).size.height * widget.heigt,
        clipBehavior: Clip.antiAlias,

        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shadowColor: Colors.transparent,
            primary: (widget.buttonState || buttonLocalState)
                ? Color(0xbbB3E6E1)
                : Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(0.0), // Optional: Set border radius
            ),
          ),
          onPressed: () async {
            _triggerButtonManullay(widget.buttonState, widget.audio);
          },
          child: SizedBox(),
        ),
        // Change the color as needed.
      ),
    );
  }
}
