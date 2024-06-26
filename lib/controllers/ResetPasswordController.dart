import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Reset {
  Future PasswordReset(context, String email) async {
    try {
      await FirebaseAuth.instance
        .sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(e.message.toString()),
          );
        }
      );
    }
  }
}