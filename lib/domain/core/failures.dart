import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.emptyChannelTitle({
    required T failedValue,
  }) = EmptyChannelTitle<T>;
}
