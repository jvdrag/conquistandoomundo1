
import 'package:firebase_auth/firebase_auth.dart';

class AuthServiceLogIn{
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<String> getUserCurrentID() async{
    return await firebaseAuth.currentUser!.uid;
  }

  Future<User?> loginUser (String email, String password) async {
    try {
      UserCredential userCredential = await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return userCredential.user;
    } on FirebaseAuthException catch(e){
      // ScaffoldMessenger.of(context).showSnackBar(snackBar)
    } catch (e) {

    }
  }
}

