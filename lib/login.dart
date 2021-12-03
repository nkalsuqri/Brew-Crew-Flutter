import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final formkey = GlobalKey<FormState>();
  String? _email;
  String? _password;
  void validateAndSave() {
    final form = formkey.currentState;
    if (form!.validate()) {
      print('form is  valid');
    } else {
      print('form is invalid');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Container(
          padding: EdgeInsets.all(16),
          child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: 'email'),
                    validator: (value) =>
                        value!.isEmpty ? 'email cant be empaty' : null,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'password'),
                    validator: (value) =>
                        value!.isEmpty ? 'email cant be empaty' : null,
                    obscureText: true,
                  ),
                  RaisedButton(
                    onPressed: validateAndSave,
                    child: Text(
                      'login',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ))),
    );
  }
}
