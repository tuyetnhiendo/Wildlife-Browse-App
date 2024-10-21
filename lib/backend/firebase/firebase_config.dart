import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDceng7CaJKaIkvT-06EKoq1TaSEkCyWMM",
            authDomain: "wildlifebrowseapp-d862a.firebaseapp.com",
            projectId: "wildlifebrowseapp-d862a",
            storageBucket: "wildlifebrowseapp-d862a.appspot.com",
            messagingSenderId: "640970951740",
            appId: "1:640970951740:web:92ec0bda22edf0d0054739"));
  } else {
    await Firebase.initializeApp();
  }
}
