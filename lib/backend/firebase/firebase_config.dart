import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDuRgwUGV64e5VBGRpUVZ-KMvaeHpeb8a0",
            authDomain: "wisdom-quiz-app.firebaseapp.com",
            projectId: "wisdom-quiz-app",
            storageBucket: "wisdom-quiz-app.appspot.com",
            messagingSenderId: "1062076287247",
            appId: "1:1062076287247:web:7f323dab67eb56eccb167a"));
  } else {
    await Firebase.initializeApp();
  }
}
