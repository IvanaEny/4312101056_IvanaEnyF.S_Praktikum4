// FORM GLOBALKEY

// import 'package:flutter/material.dart';
// void main() => runApp(const MyApp());
// class MyApp extends StatelessWidget {
//  const MyApp({super.key});
//  @override
//  Widget build(BuildContext context) {
//  const appTitle = 'Form Validation Demo';
//  return MaterialApp(
//  title: appTitle,
//  home: Scaffold(
//  appBar: AppBar(
//  title: const Text(appTitle),
//  ),
//  body: const MyCustomForm(),
//  ),
//  );
//  }
// }

// class MyCustomForm extends StatefulWidget {
//  const MyCustomForm({super.key});
//  @override
//  MyCustomFormState createState() {
//  return MyCustomFormState();
//  }
// }

// class MyCustomFormState extends State<MyCustomForm> {

//  final _formKey = GlobalKey<FormState>();
//  @override
//  Widget build(BuildContext context) {

//  return Form(
//  key: _formKey,
//  child: Column(
//  crossAxisAlignment: CrossAxisAlignment.start,
//  children: [
//  TextFormField(

//  validator: (value) {
//  if (value == null || value.isEmpty) {
//  return 'Please enter some text';
//  }
//  return null;
//  },
//  ),
//  Padding(
//  padding: const EdgeInsets.symmetric(vertical: 16.0),
//  child: ElevatedButton(
//  onPressed: () {

//  if (_formKey.currentState!.validate()) {

//  ScaffoldMessenger.of(context).showSnackBar(
//  const SnackBar(content: Text('Processing Data')),
//  );
//  }
//  },
//  child: const Text('Submit'),
//  ),
//  ),
//  ],
//  ),
//  );
//  }
// }

// INK WELL

import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("InkWell"),
        ),
        body: Center(
          child: Ink(
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(24),
            ),
            child: InkWell(
              borderRadius: new BorderRadius.circular(24),
              onTap: () => setState(() {}),
              child: Container(
                width: 100.0,
                height: 100.0,
                alignment: Alignment.center,
                child: Text(
                  'InkWell',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
