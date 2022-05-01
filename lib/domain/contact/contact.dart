import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';

@freezed
abstract class Contact implements _$Contact {
  const Contact._();

  const factory Contact({
    required String title,
    required String number,
  }) = _Contact;

  factory Contact.toDomain(String title, String number) => Contact(
        title: title,
        number: number,
      );
}
