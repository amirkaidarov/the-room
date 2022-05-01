import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_calling_app/domain/auth/i_auth_repository.dart';
import 'package:flutter_calling_app/infrastructure/auth/auth_helper.dart';

import '../../domain/auth/app_user.dart';
import '../../domain/auth/auth_failure.dart';

class AuthRepository implements IAuthRepository {
  final FirebaseAuth firebaseAuth;

  AuthRepository({required this.firebaseAuth});

  @override
  Future<Option<AppUser>> getSignedInUser() {
    final firebaseUser = firebaseAuth.currentUser;
    if (firebaseUser != null) {
      return Future.value(optionOf(firebaseUser.toDomain()));
    } else {
      return Future.value(none());
    }
  }

  @override
  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInAnonymously() async {
    try {
      await firebaseAuth.signInAnonymously();
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }
}
