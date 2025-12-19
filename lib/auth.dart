import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<UserCredential> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final cred = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      // debug
      // ignore: avoid_print
      print('Auth: signIn success uid=${cred.user?.uid} email=${cred.user?.email}');
      return cred;
    } catch (e) {
      // debug
      // ignore: avoid_print
      print('Auth: signIn error: $e');
      rethrow;
    }
  }

  Future<UserCredential> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final cred = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      // debug
      // ignore: avoid_print
      print('Auth: createUser success uid=${cred.user?.uid} email=${cred.user?.email}');
      return cred;
    } catch (e) {
      // debug
      // ignore: avoid_print
      print('Auth: createUser error: $e');
      rethrow;
    }
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
    // ignore: avoid_print
    print('Auth: signOut');
  }
}
