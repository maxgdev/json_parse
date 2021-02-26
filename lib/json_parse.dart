import 'package:flutter/material.dart';
import './user_model.dart';

class JsonParser extends StatefulWidget {
  @override
  _JsonParserState createState() => _JsonParserState();
}

class _JsonParserState extends State<JsonParser> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Json Parser"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Json Parser',
            ),

          ],
        ),
      ),

    );
  }
}