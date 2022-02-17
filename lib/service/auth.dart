import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:workflow/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user objected based on firebase user

  UserData? _userFromFirebaseUser(User user1) {
    return user1 != null ? UserData(uid: user1.uid) : null;
  }

  // auth change user steam

  Stream<User?> get userstatus {
    return _auth.authStateChanges.((User user1) => _userFromFirebaseUser(user1));
  }

// sign in anon

  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user1 = result.user;
      return _userFromFirebaseUser(user1!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

//sign in with email and pass

// register with email and password

// sign out
}
