import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class RightReferralFirebaseUser {
  RightReferralFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

RightReferralFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<RightReferralFirebaseUser> rightReferralFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<RightReferralFirebaseUser>(
            (user) => currentUser = RightReferralFirebaseUser(user));
