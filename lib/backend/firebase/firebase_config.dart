import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD5a7zU1wrGn-axyQadVVg6wyAYvdnmPrI",
            authDomain: "deliveree-d38bb.firebaseapp.com",
            projectId: "deliveree-d38bb",
            storageBucket: "deliveree-d38bb.appspot.com",
            messagingSenderId: "444524590318",
            appId: "1:444524590318:web:b6a1361c20c38e032a6fff",
            measurementId: "G-FJXXF42VQM"));
  } else {
    await Firebase.initializeApp();
  }
}
