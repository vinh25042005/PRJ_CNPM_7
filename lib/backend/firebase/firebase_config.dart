import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDWPPkvua3hcxdTrRgUnT23ZnucngUaqOs",
            authDomain: "myapp-e0ce3.firebaseapp.com",
            projectId: "myapp-e0ce3",
            storageBucket: "myapp-e0ce3.firebasestorage.app",
            messagingSenderId: "533195333642",
            appId: "1:533195333642:web:ceaada2aa53085c16e3ff3"));
  } else {
    await Firebase.initializeApp();
  }
}
