import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC_QeISQq5vLJdAJY2DQh5XKN-U2Om4E7I",
            authDomain: "cnpm-ngnovs.firebaseapp.com",
            projectId: "cnpm-ngnovs",
            storageBucket: "cnpm-ngnovs.firebasestorage.app",
            messagingSenderId: "1033480191898",
            appId: "1:1033480191898:web:09bf43d33ea758c2678423"));
  } else {
    await Firebase.initializeApp();
  }
}
