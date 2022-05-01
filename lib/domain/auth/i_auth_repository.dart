import 'package:dartz/dartz.dart';

import 'auth_failure.dart';
import 'app_user.dart';

abstract class IAuthRepository {
  Future<Option<AppUser>> getSignedInUser();
  Future<void> signOut();
  Future<Either<AuthFailure, Unit>> signInAnonymously();
}
