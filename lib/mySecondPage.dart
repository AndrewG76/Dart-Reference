import 'package:flutter/material.dart';
import 'myThirdPage.dart';

class MySecondPage extends StatefulWidget {
  const MySecondPage({super.key, required this.title});

  final String title;

  @override
  State<MySecondPage> createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  bool _lightSwitch = false;

  void _changeSwitchOnOrOff(){
    setState((){
      if(_lightSwitch == false) {
        _lightSwitch = true;
      }
      else if(_lightSwitch == true) {
        _lightSwitch = false;
      }
      print('the current state of the light switch is now $_lightSwitch');
    });
  }

  void _moveToNextPage(){ //USE THIS DUDE TO PULL UP TO THE NEXT PAGE YURRRR
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyThirdPage(title: 'My Page No. 3')),
    );
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
              'Status of the button on screen 2',
            ),
            Text(
              '$_lightSwitch',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            onPressed: _changeSwitchOnOrOff,
            tooltip: 'Switch state to on or off', //This is the little highlighted bit of information that shows up when you hover over it.
            child: const Icon(Icons.lightbulb_circle),
          ),

          FloatingActionButton(
            onPressed: _moveToNextPage,
            tooltip: 'Next Page', //This is the little highlighted bit of information that shows up when you hover over it.
            child: const Icon(Icons.arrow_right),
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
