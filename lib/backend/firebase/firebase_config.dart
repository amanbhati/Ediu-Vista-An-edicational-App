import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCOtxZeQoN8vLb68Y9rU71RBZso2jvED20",
            authDomain: "blackboard-83f6c.firebaseapp.com",
            projectId: "blackboard-83f6c",
            storageBucket: "blackboard-83f6c.appspot.com",
            messagingSenderId: "310618155604",
            appId: "1:310618155604:web:1fed27c825b5e9a060dbc1",
            measurementId: "G-RFFP8G5FL8"));
  } else {
    await Firebase.initializeApp();
  }
}
