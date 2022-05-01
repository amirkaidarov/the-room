import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import '../../domain/contact/contact.dart';
import '../../domain/contact/i_contact_repository.dart';

import '../core/firestore_helpers.dart';

const appId = '8f1b43e3e3aa4f95910a6fbf5a001148';

class ContactRepository implements IContactRepository {
  final FirebaseFirestore firestore;

  ContactRepository({required this.firestore});

  @override
  Stream<Either<Unit, List<Contact>>> watchAll() async* {
    final contactsCollection = await firestore.contactsCollection();
    try {
      yield* contactsCollection
          .orderBy(
            'title',
          )
          .snapshots()
          .map(
            (snapshot) => right(
              snapshot.docs
                  .map(
                    (doc) => Contact.toDomain(
                      doc['title'],
                      doc['number'],
                    ),
                  )
                  .toList(),
            ),
          );
    } catch (exception) {}
  }
}
