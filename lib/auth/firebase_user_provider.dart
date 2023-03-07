import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class WisdomFirebaseUser {
  WisdomFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

WisdomFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<WisdomFirebaseUser> wisdomFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<WisdomFirebaseUser>(
      (user) {
        currentUser = WisdomFirebaseUser(user);
        return currentUser!;
      },
    );
