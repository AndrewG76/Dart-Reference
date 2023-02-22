import 'package:flutter/material.dart';

class MyThirdPage extends StatefulWidget {
  const MyThirdPage({super.key, required this.title});

  final String title;

  @override
  State<MyThirdPage> createState() => _MyThirdPageState();
}

class _MyThirdPageState extends State<MyThirdPage> {
  bool _lightSwitch = false;

  void _changeSwitchOnOrOff(){
    setState((){
      if(_lightSwitch == false) {
        _lightSwitch = true;
      }
      else if(_lightSwitch == true) {
        _lightSwitch = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Status of the button on screen 3',
            ),
            Text(
              '$_lightSwitch',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeSwitchOnOrOff,
        tooltip: 'Switch state to on or off', //This is the little highlighted bit of information that shows up when you hover over it.
        child: const Icon(Icons.lightbulb_circle),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
