import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:workflow/screens/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  Firebase.initializeApp();
  return runApp(
    MaterialApp(
      home: Wrapper(),
    ),
  );
}

class WorkFlowHome extends StatefulWidget {
  const WorkFlowHome({Key? key}) : super(key: key);

  @override
  _WorkFlowHomeState createState() => _WorkFlowHomeState();
}

class _WorkFlowHomeState extends State<WorkFlowHome> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
