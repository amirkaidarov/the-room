import 'package:dartz/dartz.dart';

import 'contact.dart';

abstract class IContactRepository {
  Stream<Either<Unit, List<Contact>>> watchAll();
}
