import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rewise_neet/common/models/app_user.dart';

final firebaseAuthProvider = Provider.autoDispose<FirebaseAuthApi>((ref) {
  return FirebaseAuthApi();
});

class FirebaseAuthApi {
  // Firebase Auth instance
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<AppUser> signInWithGoogle() async {
    try {
      // Initialize Google Sign-In
      final GoogleSignIn googleSignIn = GoogleSignIn.instance;
      await googleSignIn.initialize(
        serverClientId:
            "457694757498-705s851fhtf99hemm258inhrp34j8c7o.apps.googleusercontent.com",
      );

      final GoogleSignInAccount googleUser = await googleSignIn.authenticate();

      final GoogleSignInAuthentication googleAuth = googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
      );

      final UserCredential userCredential = await _firebaseAuth
          .signInWithCredential(credential);

      final user = userCredential.user;

      if (user == null) {
        throw Exception('Google Sign-In failed');
      }

      return AppUser(
        uid: user.uid,
        email: user.email ?? '',
        name: user.displayName ?? '',
        mobile: user.phoneNumber ?? '',
      );
    } catch (e) {
      // TODO: Handle error
      throw Exception('Google Sign-In failed');
    }
  }

  Future<void> deleteAccount() async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        throw Exception('No user is currently signed in');
      }

      await user.delete();
      await signOut();
    } catch (e) {
      throw Exception('Failed to delete user');
    }
  }

  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      throw Exception('Failed to sign out');
    }
  }
}
