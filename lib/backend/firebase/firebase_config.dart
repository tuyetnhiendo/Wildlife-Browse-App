import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBDlWcpChHnwEUZpnDNX5LfXpLH6NxlC34",
            authDomain: "bwrac-b4189.firebaseapp.com",
            projectId: "bwrac-b4189",
            storageBucket: "bwrac-b4189.appspot.com",
            messagingSenderId: "832047121429",
            appId: "1:832047121429:web:67aea568ba225af96bfa1c",
            measurementId: "G-YMDDGC2V84"));
  } else {
    await Firebase.initializeApp();
  }
}
