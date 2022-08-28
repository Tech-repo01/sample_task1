import 'package:flutter/material.dart';

//void main() => runApp(ShowHideContent());

class ShowHideContent extends StatefulWidget {
  const ShowHideContent({Key? key}) : super(key: key);

  static  String _title = 'Flutter Code Sample';

  @override
  State<ShowHideContent> createState() => _ShowHideContentState();
}

class _ShowHideContentState extends State<ShowHideContent> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ShowHideContent._title,
      home: Scaffold(
        appBar: AppBar(title:  Text(ShowHideContent._title)),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

enum SingingCharacter { lafayette, jefferson }

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Lafayette'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.lafayette,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Thomas Jefferson'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.jefferson,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        // -------------------------
        _character == SingingCharacter.jefferson
            ? const ListTile(
                title: Text('Something goes here!'),
              )
            : Container(),
        // ----------------------
      ],
    );
  }
}