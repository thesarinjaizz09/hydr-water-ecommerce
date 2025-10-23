import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInController with ChangeNotifier {
  final GoogleSignIn _googleSignIn = GoogleSignIn.instance;
  GoogleSignInAccount? googleAccount;
  late GoogleSignInAuthentication? auth;

  Future<void> login() async {
    try {
      // Initialize Google Sign-In
      await _googleSignIn.initialize();

      // Authenticate the user
      googleAccount = await _googleSignIn.authenticate();

      // Obtain authentication details
      auth = await googleAccount!.authentication;

      notifyListeners();
    } catch (e) {
      print('Error during Google Sign-In: $e');
    }
  }
}
