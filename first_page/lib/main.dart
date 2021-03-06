import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'signup.dart';
import 'top_screen.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

String username='';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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

  TextEditingController user=new TextEditingController();
  TextEditingController pass=new TextEditingController();
  String response = "NULL";

  Future<List> _login() async {

    var datauser = jsonEncode({
      "username": user.text,
      "password": pass.text,
    });
    var url = "http://192.168.0.109/my_store/login.php" + datauser;
    var result = await http.post(url);
    setState(() {
      this.response = result.body;
    });
    print(response);
    /*if(datauser.length==0){
      setState(() {
        response="Login Fail";
      });
    }else{
      if(datauser[0]['level']=='admin'){
        Navigator.pushReplacementNamed(context, '/top_screen');
      }else if(datauser[0]['level']=='member'){
        Navigator.pushReplacementNamed(context, '/signup');
      }

      setState(() {
        username= datauser[0]['username'];
      });

    }*/

  }

  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student Placement Activity')
      ),
       body: Form(
          key: formkey,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: <Widget>[
                TextFormField(
                    controller: user,
                    decoration: InputDecoration(labelText: 'Enrollment No'),
                    validator: (value){
                      if(value.isEmpty){
                        return 'Enrollment No should be not empty';
                      }
                      return null;                    },
                    ),
                    TextFormField(
                    controller: pass,
                    decoration: InputDecoration(labelText: 'password'),
                    validator: (value){
                      if(value.isEmpty){
                        return 'password No should be not empty';
                      }
                      return null;                    },
                    ),
                     SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  onPressed: () {
                    if (formkey.currentState.validate()) {
                      //Navigator.push(context,
                        //  MaterialPageRoute(builder: (context) => My_topscreen()),);
                      _login();
                    }
                  },
                  child: Text('login'),
                  textColor: Colors.white,
                  color: Colors.blueAccent,
                  shape: StadiumBorder(),
                ),
                 RaisedButton(
                  onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MySignup()),);
                      
                    
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

