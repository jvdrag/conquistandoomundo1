import 'package:firebase_auth/firebase_auth.dart';

class AuthServiceCadasto {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<String> getUserCurrentID() async {
    return await firebaseAuth.currentUser!.uid;
  }

  Future<User?> registerUser(String email, String password) async {
    try {
      UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      print(e);
      //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.message.toString()),backgroundColor: Colors.red));
    } catch (e) {
      print(e);
    }
  }
}
