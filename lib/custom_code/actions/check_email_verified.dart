// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';

Future<bool> checkEmailVerified() async {
  User? user = FirebaseAuth.instance.currentUser;

  if (user != null) {
    await user.reload(); // Refresh trạng thái của user
    return user.emailVerified;
  }
  return false;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
