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
        title: Text('Rgistration Form'),
      ),
      body: Form(
          key: formkey,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: <Widget>[
                TextFormField(
                    decoration: InputDecoration(labelText: 'Enrollment No'),
                    validator: (value){
                      if(value.isEmpty){
                        return 'Enrollment No should be not empty';
                      }
                      return null;                    },
                    ),
                     TextFormField(
                    decoration: InputDecoration(labelText: 'Name'),
                    validator: (value){
                      if(value.isEmpty){
                        return 'Name No should be not empty';
                      }
                      return null;                    },
                    ),
                     TextFormField(
                    decoration: InputDecoration(labelText: 'Email'),
                    validator: (value){
                      if(value.isEmpty){
                        return 'Email No should be not empty';
                      }
                      return null;                    },
                    ),
                     TextFormField(
                    decoration: InputDecoration(labelText: 'Branch'),
                    validator: (value){
                      if(value.isEmpty){
                        return 'Branch No should be not empty';
                      }
                      return null;                    },
                    ),
                     TextFormField(
                    decoration: InputDecoration(labelText: 'CPI'),
                    validator: (value){
                      if(value.isEmpty){
                        return 'CPI No should be not empty';
                      }
                      return null;                    },
                    ),
                     TextFormField(
                    decoration: InputDecoration(labelText: 'Contact No'),
                    validator: (value){
                      if(value.isEmpty){
                        return 'Contact No should be not empty';
                      }
                      return null;                    },
                    ),
                    
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  onPressed: () {
                    if (formkey.currentState.validate()) {
                      
                    }
                  },
                  child: Text('Submit'),
                  textColor: Colors.white,
                  color: Colors.blueAccent,
                )
              ],
            ),
          )),
    );
  }
}
