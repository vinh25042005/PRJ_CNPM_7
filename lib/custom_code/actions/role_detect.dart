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

Future<String> roleDetect() async {
  final user = FirebaseAuth.instance.currentUser;
  if (user == null) return 'unknown';

  // Kiểm tra trong bảng teachers
  final teacherDoc = await FirebaseFirestore.instance
      .collection('teachers')
      .doc(user.uid)
      .get();
  if (teacherDoc.exists) return 'teacher';

  // Kiểm tra trong bảng students
  final studentDoc = await FirebaseFirestore.instance
      .collection('students')
      .doc(user.uid)
      .get();
  if (studentDoc.exists) return 'student';

  return 'unknown';
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
