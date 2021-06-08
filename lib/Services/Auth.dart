import 'package:bookzy/Model/User.dart';
import 'package:firebase_auth/firebase_auth.dart';


class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create a user object based on a var user
   _userFromFirebaseUser (var user){
    return user != null? ThisUser(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<User> get user{
    return _auth.authStateChanges().map((_userFromFirebaseUser(user)));
  }

  // Sign in Anonymously
  Future SignInAnonymously() async {
    try{
      var result = await _auth.signInAnonymously();
      var user = result.user;
      return _userFromFirebaseUser(user);
    }catch(e){
      print(e.toString());
      return null;
    }
  }
  // Sign in with email and password

  //Register with email and password

  //Sign out

}