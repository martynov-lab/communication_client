import 'package:communication_client/feature/auth/domain/auth_repository.dart';
import 'package:communication_client/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:injectable/injectable.dart';
//import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:firebase_auth/firebase_auth.dart';

@Injectable(as: AuthRepository)
@dev
class FirebaseAuthRepository implements AuthRepository {
  late final FirebaseAuth _firebaseAuth;

  FirebaseAuthRepository(FirebaseAuth? firebaseAuth)
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  @override
  Future<UserEntity> getProfile() async {
    try {
      User? userFromFirebase = _firebaseAuth.currentUser;

      userFromFirebase = _firebaseAuth.currentUser;
      final user = UserEntity(
        userId: userFromFirebase?.uid ?? '',
        userName: userFromFirebase?.displayName ?? '',
        firstname: userFromFirebase?.displayName,
        email: userFromFirebase?.email,
        avatarUrl: userFromFirebase?.photoURL,
        phoneNumber: userFromFirebase?.phoneNumber ?? '',
        surname: '',
      );
      return user;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> refrechToken({String? refreshToken}) async {
    try {
      print('RefreshToken: $refreshToken');
      _firebaseAuth.tenantId = refreshToken;

      User? userFromFirebase = _firebaseAuth.currentUser;

      userFromFirebase = _firebaseAuth.currentUser;
      final user = UserEntity(
        userId: userFromFirebase?.uid ?? '',
        userName: userFromFirebase?.displayName ?? '',
        firstname: userFromFirebase?.displayName,
        email: userFromFirebase?.email,
        avatarUrl: userFromFirebase?.photoURL,
        phoneNumber: userFromFirebase?.phoneNumber ?? '',
        surname: '',
      );

      return user;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> signIn({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = UserEntity(
        userId: userCredential.user?.uid ?? '',
        userName: userCredential.user?.displayName ?? '',
        firstname: userCredential.user?.displayName,
        email: userCredential.user?.email,
        avatarUrl: userCredential.user?.photoURL,
        phoneNumber: userCredential.user?.phoneNumber ?? '',
        surname: '',
      );
      return user;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> signUp({
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = UserEntity(
        userId: userCredential.user?.uid ?? '',
        userName: userCredential.user?.displayName ?? '',
        firstname: userCredential.user?.displayName,
        email: userCredential.user?.email,
        avatarUrl: userCredential.user?.photoURL,
        phoneNumber: userCredential.user?.phoneNumber ?? '',
        surname: '',
      );
      return user;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<String> updatePassword(
      {required String oldPassword, required String newPassword}) async {
    try {
      // final Response response = await api.updatePassword(
      //     newPassword: newPassword, oldPassword: oldPassword);
      return 'response.data["message"]';
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> updateUser({String? username, String? email}) async {
    try {
      User? userFromFirebase = _firebaseAuth.currentUser;
      await userFromFirebase?.updateDisplayName(username);
      await userFromFirebase?.updateEmail(email ?? "");

      userFromFirebase = _firebaseAuth.currentUser;
      final user = UserEntity(
        userId: userFromFirebase?.uid ?? '',
        userName: userFromFirebase?.displayName ?? '',
        firstname: userFromFirebase?.displayName,
        email: userFromFirebase?.email,
        avatarUrl: userFromFirebase?.photoURL,
        phoneNumber: userFromFirebase?.phoneNumber ?? '',
        surname: '',
      );
      return user;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> logout() async {
    try {
      await _firebaseAuth.signOut();
    } catch (_) {
      rethrow;
    }
  }
}