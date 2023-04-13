import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_drive/utils.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  GoogleSignIn googleSignIn = GoogleSignIn();
  Rx<User?> user = Rx<User?>(FirebaseAuth.instance.currentUser);

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    user.bindStream(firebaseAuth.authStateChanges());
  }

  login() async {
    log("button pressed");

    /* -------------------------- Starts Signin Process ------------------------- */

    GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    if (googleUser != null) {
      /* ----------------------------- Retrives Tokens ---------------------------- */

      GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      /* ---------------- Stores token into credential for firebase --------------- */

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      /* ----------------------------- SignedIn to App ---------------------------- */

      UserCredential userCredential =
          await firebaseAuth.signInWithCredential(credential);

      User? user = userCredential.user!;

      /* ------------------------ Sending Data to Firebase ------------------------ */

      userCollection.doc(user.uid).set({
        "username": user.displayName,
        "profilepic": user.photoURL,
        "email": user.email,
        "uid": user.uid,
        "usercreated": DateTime.now(),
      });

      /* ---------------------------- Confirmation Log ---------------------------- */

      log("User Signed In");
    }
  }
}
