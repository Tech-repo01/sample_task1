import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ShowHideWidget extends StatefulWidget {
  const ShowHideWidget({Key? key}) : super(key: key);

  @override
  State<ShowHideWidget> createState() => _ShowHideWidgetState();
}

class _ShowHideWidgetState extends State<ShowHideWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Center(
            child: ElevatedButton(
               // ignore: prefer_const_constructors
               style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all(Colors.cyan),
             ),
              onPressed: (){

            }, 
            child: const Text(
              "Show Dialog",
              style: TextStyle(color: Colors.black,fontSize: 20.0),
              )
              ),
          ),
        )
        ),
    );
  }
}