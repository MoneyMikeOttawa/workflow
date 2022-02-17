import 'package:flutter/material.dart';
import 'package:workflow/service/auth.dart';
import 'package:firebase_core/firebase_core.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  //auth object
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        elevation: 0.0,
        title: Text('WorkFlow Sign In'),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          child: ElevatedButton(
            child: Text('Sign in Anon'),
            onPressed: () async {
              dynamic result = await _auth.signInAnon();
              if (result == null) {
                print('Error Sign In');
              } else {
                print('sign in approved');
                print(result.uid);
              }
            },
          )),
    );
  }
}
