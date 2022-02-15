import 'package:flutter/material.dart';
import 'package:workflow/screens/auth/signin.dart';
import 'package:firebase_core/firebase_core.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return Container(
      child: SignIn(),
    );
  }
}
