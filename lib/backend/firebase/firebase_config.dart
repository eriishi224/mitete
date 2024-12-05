import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBjBwNXFyqSQP_5J8WL9-dki0fIwm7bAdY",
            authDomain: "mitete-vbgftj.firebaseapp.com",
            projectId: "mitete-vbgftj",
            storageBucket: "mitete-vbgftj.appspot.com",
            messagingSenderId: "420715426911",
            appId: "1:420715426911:web:5ab3d207e484ce9bb817ea"));
  } else {
    await Firebase.initializeApp();
  }
}
