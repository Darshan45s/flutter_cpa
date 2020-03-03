import 'package:flutter/material.dart';
import 'main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: MySignup(),
    );
  }
}
class MySignup extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MySignup> {
   final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign Up')
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
                        return 'Name should be not empty';
                      }
                      return null;                    },
                    ),
                     TextFormField(
                    decoration: InputDecoration(labelText: 'Email id'),
                    validator: (value){
                      if(value.isEmpty){
                        return 'Email_id should be not empty';
                      }
                      return null;                    },
                    ),
                     TextFormField(
                    decoration: InputDecoration(labelText: 'password'),
                    validator: (value){
                      if(value.isEmpty){
                        return 'password  should be not empty';
                      }
                      return null;                    },
                    ),
                     SizedBox(
                  height: 20,
                ),
                
                 RaisedButton(
                  onPressed: () {
                    if (formkey.currentState.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyHomePage()),);
                      
                    }
                  },
                  child: Text('Sign Up'),
                  textColor: Colors.white,
                  color: Colors.blueAccent,
                  shape: StadiumBorder(),
                )
              ]
           ) ),)
      
    );
  }
}

