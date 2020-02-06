import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Bond Market',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: Home()
    );
  }
}

class Home extends StatelessWidget {

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bond Market'),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
            key: formKey,
            child: Column(children: <Widget>[
              TextFormField(
                decoration: InputDecoration(hintText: 'Name'),
                validator: (value) {
                  if (value.trim().isEmpty) {
                    return 'Name required';
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'AADHAR '),
                validator: (value) {
                  if (value.trim().isEmpty) {
                    return 'AADHAR required';
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'PAN Number'),
                validator: (value) {
                  if (value.trim().isEmpty) {
                    return 'PAN required';
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'Date of Birth'),
                validator: (value) {
                  if (value.trim().isEmpty) {
                    return 'Date of birth required';
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'Email ID'),
                validator: (value) {
                  if (value.trim().isEmpty) {
                    return 'Email required';
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'Mobile No.'),
                validator: (value) {
                  if (value.trim().isEmpty) {
                    return 'Mobile no. required';
                  }
                },
              ),
              RaisedButton(
                onPressed: () {
                  if (formKey.currentState.validate()) {
                    print('The form is valid');
                  }
                },
                child: Text('Submit'),
              ),
            ]
            )),
      ),
    );
  }
}