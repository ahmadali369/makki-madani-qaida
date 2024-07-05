import 'package:flutter/material.dart';
import 'package:makki_madani_qaida/testingAudioContainer.dart';
import 'package:makki_madani_qaida/testingPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),

      // home: AutdioButtonWidget(),

      // home: ButtonTriggerExample(),


    );
  }
}



/// =============================================================



class ButtonTriggerExample extends StatefulWidget {
  @override
  _ButtonTriggerExampleState createState() => _ButtonTriggerExampleState();
}

class _ButtonTriggerExampleState extends State<ButtonTriggerExample> {
  final List<String> _buttonTexts = ['Button 1', 'Button 2', 'Button 3'];
  late List<bool> _buttonStates;

  @override
  void initState() {
    super.initState();
    _buttonStates = List<bool>.filled(_buttonTexts.length, false);
  }

  void _triggerButton(int index) {
    setState(() {
      _buttonStates[index] = !_buttonStates[index];
    });
  }

  Future<void> _triggerButtonsSequentially() async {
    for (int i = 0; i < _buttonTexts.length; i++) {
      _triggerButton(i);
      if (i > 0) {
        _triggerButton(i - 1); // Reset the previous button
      }
      await Future.delayed(Duration(seconds: 1));

    }
    // Reset the last button after the loop ends
    _triggerButton(_buttonTexts.length - 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Button Trigger Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_buttonTexts.length, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ElevatedButton(
                    onPressed: () => _triggerButton(index),
                    style: ElevatedButton.styleFrom(
                      primary: _buttonStates[index] ? Colors.green : Colors.blue,
                    ),
                    child: Text(_buttonTexts[index]),
                  ),
                );
              }),


            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _triggerButtonsSequentially,
              child: Text('Trigger All Buttons'),
            ),
          ],
        ),
      ),
    );
  }
}





