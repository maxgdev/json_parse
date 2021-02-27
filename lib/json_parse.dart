import 'package:flutter/material.dart';
import './user_model.dart';
import './services.dart';

class JsonParser extends StatefulWidget {
  @override
  _JsonParserState createState() => _JsonParserState();
}

class _JsonParserState extends State<JsonParser> {
  List<User> _users;
  bool _loading;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loading = true;
    HttpService.getUsers().then((users) {
      setState(() {
        _users = users;
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Json Parser"),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: _users == null ? 0 : _users.length,
            itemBuilder: (context, index) {
              User user = _users[index];
              return ListTile(
                title:Text(user.name),
                subtitle: Text(user.email),);
            }),
      ),
    );
  }
}
