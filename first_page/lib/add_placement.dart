import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADD Placement'),
      ),
      body: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(children: <Widget>[
            TextFormField(
                decoration: InputDecoration(labelText: 'Company Name'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'company name should be not Empty';
                  }
                  return null;
                }),
            TextFormField(
                decoration: InputDecoration(labelText: 'Reqiremant'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Reqiremant should be not Empty';
                  }
                  return null;
                }),
            TextFormField(
                decoration: InputDecoration(labelText: 'Critaria'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Critaria should be not Empty';
                  }
                  return null;
                }),
            TextFormField(
                decoration: InputDecoration(labelText: 'BOND period'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'BOND period should be not Empty';
                  }
                  return null;
                }),
            TextFormField(
                decoration: InputDecoration(labelText: 'Salary package'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Salary package should be not Empty';
                  }
                  return null;
                }),

                
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                if (formkey.currentState.validate()) {}
              },
              child: Text('ADD'),
              textColor: Colors.white,
              color: Colors.blueAccent,
            )
          ]),
        ),
      ),
    );
  }
}
