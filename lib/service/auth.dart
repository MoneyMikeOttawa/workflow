import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:workflow/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user objected based on firebase user

  UserData _userFromFirebaseUser (User user){}

  UserData _userFromFirebaseUser(FirebaseUser user1) {
    return user != null? User()



  }

  // sign in anon

  Future signInAnon() async {
    Firebase.initializeApp();
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user1 = result.user;
      return user1;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign in with email and pass

  // register with email and password

  // sign out

}
