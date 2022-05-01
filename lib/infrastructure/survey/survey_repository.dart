import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

import '../../domain/survey/i_survey_repository.dart';
import '../core/firestore_helpers.dart';

const appId = '8f1b43e3e3aa4f95910a6fbf5a001148';

class SurveyRepository implements ISurveyRepository {
  final FirebaseFirestore firestore;

  SurveyRepository({required this.firestore});

  @override
  Future<void> update(double moodValue) async {
    try {
      final moodsCollection = await firestore.moodsCollection();

      final data = await moodsCollection.doc('YCd2rpoo5rHGc31aYZKn').get().then(
            (snapshot) => snapshot.data(),
          );

      await moodsCollection.doc('YCd2rpoo5rHGc31aYZKn').set(
        {
          'average': (data!['average']*data['number_of_responses']! + moodValue) /
              (data['number_of_responses']! + 1),
          'number_of_responses': data['number_of_responses']! + 1,
        },
      );
    } on PlatformException catch (e) {}
  }
}
