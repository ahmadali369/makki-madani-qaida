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
    "audios/demo2.mp3",
    "audios/demo.mp3",
    "audios/demo2.mp3",
    "audios/demo.mp3",
    "audios/demo2.mp3",
    "audios/demo.mp3",
    "audios/demo2.mp3",
    "audios/demo.mp3",
    "audios/demo2.mp3",


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

          /// jeem

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

          /// khaa

          AudioButtonWidget(
            buttonState: _buttonStates[6],
            audio: _audios[0],
            top: 0.515,
            left: 0.602,
            width: .172,
            heigt: .075,
          ),

          /// daal

          AudioButtonWidget(
            buttonState: _buttonStates[7],
            audio: _audios[1],
            top: 0.515,
            left: 0.414,
            width: .172,
            heigt: .075,
          ),

          /// zaal

          AudioButtonWidget(
            buttonState: _buttonStates[8],
            audio: _audios[0],
            top: 0.515,
            left: 0.226,
            width: .172,
            heigt: .075,
          ),

          /// raa

          AudioButtonWidget(
            buttonState: _buttonStates[9],
            audio: _audios[1],
            top: 0.515,
            left: 0.038,
            width: .172,
            heigt: .075,
          ),


          /// ------------------------------------------------------------------------------------------ row 3
          ///
          /// zaa

          AudioButtonWidget(
            buttonState: _buttonStates[10],
            audio: _audios[0],
            top: 0.603,
            left: 0.790,
            width: .172,
            heigt: .075,
          ),

          /// seen
          AudioButtonWidget(
            buttonState: _buttonStates[11],
            audio: _audios[1],
            top: 0.603,
            left: 0.602,

            width: .172,
            heigt: .075,
          ),
          /// sheen

          AudioButtonWidget(
            buttonState: _buttonStates[12],
            audio: _audios[0],
            top: 0.603,
            left: 0.414,

            width: .172,
            heigt: .075,
          ),
          /// suad
          AudioButtonWidget(
            buttonState: _buttonStates[13],
            audio: _audios[1],
            top: 0.603,
            left: 0.226,
            width: .172,
            heigt: .075,
          ),
          /// duad
          AudioButtonWidget(
            buttonState: _buttonStates[14],
            audio: _audios[0],
            top: 0.603,
            left: 0.038,

            width: .172,
            heigt: .075,
          ),
          ///
          ///
          /// ------------------------------------------------------------------------------------------ row 4
          ///
          /// ttaa
          AudioButtonWidget(
            buttonState: _buttonStates[15],
            audio: _audios[1],
            top: 0.691,
            left: 0.790,
            width: .172,
            heigt: .075,
          ),
          /// zuaa

          AudioButtonWidget(
            buttonState: _buttonStates[16],
            audio: _audios[0],
            top: 0.691,
            left: 0.602,

            width: .172,
            heigt: .075,
          ),


          /// aain
          AudioButtonWidget(
            buttonState: _buttonStates[17],
            audio: _audios[1],
            top: 0.691,
            left: 0.414,
            width: .172,
            heigt: .075,
          ),
          /// gaain
          AudioButtonWidget(
            buttonState: _buttonStates[18],
            audio: _audios[0],
            top: 0.691,
            left: 0.226,
            width: .172,
            heigt: .075,
          ),
          /// faa
          AudioButtonWidget(
            buttonState: _buttonStates[19],
            audio: _audios[1],
            top: 0.691,
            left: 0.038,
            width: .172,
            heigt: .075,
          ),
          ///
          ///
          /// ------------------------------------------------------------------------------------------ row 5
          ///
          /// Qaaf

          AudioButtonWidget(
            buttonState: _buttonStates[20],
            audio: _audios[0],
            top: 0.779,
            left: 0.790,
            width: .172,
            heigt: .075,
          ),
          /// kaaf
          AudioButtonWidget(
            buttonState: _buttonStates[21],
            audio: _audios[1],
            top: 0.779,
            left: 0.602,
            width: .172,
            heigt: .075,
          ),
          /// laam
          AudioButtonWidget(
            buttonState: _buttonStates[22],
            audio: _audios[1],
            top: 0.779,
            left: 0.414,
            width: .172,
            heigt: .075,
          ),
          /// meem
          AudioButtonWidget(
            buttonState: _buttonStates[23],
            audio: _audios[1],
            top: 0.779,
            left: 0.226,
            width: .172,
            heigt: .075,
          ),
          /// noon

          AudioButtonWidget(
            buttonState: _buttonStates[24],
            audio: _audios[1],
            top: 0.779,
            left: 0.038,
            width: .172,
            heigt: .075,
          ),
          ///
          /// ------------------------------------------------------------------------------------------ row 6

          /// waw

          AudioButtonWidget(
            buttonState: _buttonStates[25],
            audio: _audios[0],
            top: 0.867,
            left: 0.699,
            width: .172,
            heigt: .075,
          ),

          /// haa
          AudioButtonWidget(
            buttonState: _buttonStates[26],
            audio: _audios[1],
            top: 0.867,
            left: 0.509,
            width: .172,
            heigt: .075,
          ),

          /// hamza
          AudioButtonWidget(
            buttonState: _buttonStates[27],
            audio: _audios[0],
            top: 0.867,
            left: 0.320,
            width: .172,
            heigt: .075,
          ),

          /// yaa

          AudioButtonWidget(
            buttonState: _buttonStates[28],
            audio: _audios[1],
            top: 0.867,
            left: 0.130,
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
