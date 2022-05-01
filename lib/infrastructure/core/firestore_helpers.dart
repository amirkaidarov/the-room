import 'package:cloud_firestore/cloud_firestore.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  Future<CollectionReference<Map<String, dynamic>>> roomsCollection() async {
    return FirebaseFirestore.instance.collection('rooms');
  }
  Future<CollectionReference<Map<String, dynamic>>> moodsCollection() async {
    return FirebaseFirestore.instance.collection('moods');
  }
  Future<CollectionReference<Map<String, dynamic>>> contactsCollection() async {
    return FirebaseFirestore.instance.collection('contacts');
  }
}
