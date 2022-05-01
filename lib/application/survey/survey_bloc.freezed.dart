// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SurveyEventTearOff {
  const _$SurveyEventTearOff();

  _Started started() {
    return const _Started();
  }

  _AnswerChanged answerChanged(double moodValue) {
    return _AnswerChanged(
      moodValue,
    );
  }

  _AnswerSent answerSent(double moodValue) {
    return _AnswerSent(
      moodValue,
    );
  }
}

/// @nodoc
const $SurveyEvent = _$SurveyEventTearOff();

/// @nodoc
mixin _$SurveyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double moodValue) answerChanged,
    required TResult Function(double moodValue) answerSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double moodValue)? answerChanged,
    TResult Function(double moodValue)? answerSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double moodValue)? answerChanged,
    TResult Function(double moodValue)? answerSent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AnswerChanged value) answerChanged,
    required TResult Function(_AnswerSent value) answerSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AnswerChanged value)? answerChanged,
    TResult Function(_AnswerSent value)? answerSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AnswerChanged value)? answerChanged,
    TResult Function(_AnswerSent value)? answerSent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyEventCopyWith<$Res> {
  factory $SurveyEventCopyWith(
          SurveyEvent value, $Res Function(SurveyEvent) then) =
      _$SurveyEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SurveyEventCopyWithImpl<$Res> implements $SurveyEventCopyWith<$Res> {
  _$SurveyEventCopyWithImpl(this._value, this._then);

  final SurveyEvent _value;
  // ignore: unused_field
  final $Res Function(SurveyEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$SurveyEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'SurveyEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double moodValue) answerChanged,
    required TResult Function(double moodValue) answerSent,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double moodValue)? answerChanged,
    TResult Function(double moodValue)? answerSent,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double moodValue)? answerChanged,
    TResult Function(double moodValue)? answerSent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AnswerChanged value) answerChanged,
    required TResult Function(_AnswerSent value) answerSent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AnswerChanged value)? answerChanged,
    TResult Function(_AnswerSent value)? answerSent,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AnswerChanged value)? answerChanged,
    TResult Function(_AnswerSent value)? answerSent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SurveyEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$AnswerChangedCopyWith<$Res> {
  factory _$AnswerChangedCopyWith(
          _AnswerChanged value, $Res Function(_AnswerChanged) then) =
      __$AnswerChangedCopyWithImpl<$Res>;
  $Res call({double moodValue});
}

/// @nodoc
class __$AnswerChangedCopyWithImpl<$Res> extends _$SurveyEventCopyWithImpl<$Res>
    implements _$AnswerChangedCopyWith<$Res> {
  __$AnswerChangedCopyWithImpl(
      _AnswerChanged _value, $Res Function(_AnswerChanged) _then)
      : super(_value, (v) => _then(v as _AnswerChanged));

  @override
  _AnswerChanged get _value => super._value as _AnswerChanged;

  @override
  $Res call({
    Object? moodValue = freezed,
  }) {
    return _then(_AnswerChanged(
      moodValue == freezed
          ? _value.moodValue
          : moodValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_AnswerChanged implements _AnswerChanged {
  const _$_AnswerChanged(this.moodValue);

  @override
  final double moodValue;

  @override
  String toString() {
    return 'SurveyEvent.answerChanged(moodValue: $moodValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnswerChanged &&
            const DeepCollectionEquality().equals(other.moodValue, moodValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(moodValue));

  @JsonKey(ignore: true)
  @override
  _$AnswerChangedCopyWith<_AnswerChanged> get copyWith =>
      __$AnswerChangedCopyWithImpl<_AnswerChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double moodValue) answerChanged,
    required TResult Function(double moodValue) answerSent,
  }) {
    return answerChanged(moodValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double moodValue)? answerChanged,
    TResult Function(double moodValue)? answerSent,
  }) {
    return answerChanged?.call(moodValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double moodValue)? answerChanged,
    TResult Function(double moodValue)? answerSent,
    required TResult orElse(),
  }) {
    if (answerChanged != null) {
      return answerChanged(moodValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AnswerChanged value) answerChanged,
    required TResult Function(_AnswerSent value) answerSent,
  }) {
    return answerChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AnswerChanged value)? answerChanged,
    TResult Function(_AnswerSent value)? answerSent,
  }) {
    return answerChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AnswerChanged value)? answerChanged,
    TResult Function(_AnswerSent value)? answerSent,
    required TResult orElse(),
  }) {
    if (answerChanged != null) {
      return answerChanged(this);
    }
    return orElse();
  }
}

abstract class _AnswerChanged implements SurveyEvent {
  const factory _AnswerChanged(double moodValue) = _$_AnswerChanged;

  double get moodValue;
  @JsonKey(ignore: true)
  _$AnswerChangedCopyWith<_AnswerChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AnswerSentCopyWith<$Res> {
  factory _$AnswerSentCopyWith(
          _AnswerSent value, $Res Function(_AnswerSent) then) =
      __$AnswerSentCopyWithImpl<$Res>;
  $Res call({double moodValue});
}

/// @nodoc
class __$AnswerSentCopyWithImpl<$Res> extends _$SurveyEventCopyWithImpl<$Res>
    implements _$AnswerSentCopyWith<$Res> {
  __$AnswerSentCopyWithImpl(
      _AnswerSent _value, $Res Function(_AnswerSent) _then)
      : super(_value, (v) => _then(v as _AnswerSent));

  @override
  _AnswerSent get _value => super._value as _AnswerSent;

  @override
  $Res call({
    Object? moodValue = freezed,
  }) {
    return _then(_AnswerSent(
      moodValue == freezed
          ? _value.moodValue
          : moodValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_AnswerSent implements _AnswerSent {
  const _$_AnswerSent(this.moodValue);

  @override
  final double moodValue;

  @override
  String toString() {
    return 'SurveyEvent.answerSent(moodValue: $moodValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnswerSent &&
            const DeepCollectionEquality().equals(other.moodValue, moodValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(moodValue));

  @JsonKey(ignore: true)
  @override
  _$AnswerSentCopyWith<_AnswerSent> get copyWith =>
      __$AnswerSentCopyWithImpl<_AnswerSent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double moodValue) answerChanged,
    required TResult Function(double moodValue) answerSent,
  }) {
    return answerSent(moodValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double moodValue)? answerChanged,
    TResult Function(double moodValue)? answerSent,
  }) {
    return answerSent?.call(moodValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double moodValue)? answerChanged,
    TResult Function(double moodValue)? answerSent,
    required TResult orElse(),
  }) {
    if (answerSent != null) {
      return answerSent(moodValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AnswerChanged value) answerChanged,
    required TResult Function(_AnswerSent value) answerSent,
  }) {
    return answerSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AnswerChanged value)? answerChanged,
    TResult Function(_AnswerSent value)? answerSent,
  }) {
    return answerSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AnswerChanged value)? answerChanged,
    TResult Function(_AnswerSent value)? answerSent,
    required TResult orElse(),
  }) {
    if (answerSent != null) {
      return answerSent(this);
    }
    return orElse();
  }
}

abstract class _AnswerSent implements SurveyEvent {
  const factory _AnswerSent(double moodValue) = _$_AnswerSent;

  double get moodValue;
  @JsonKey(ignore: true)
  _$AnswerSentCopyWith<_AnswerSent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SurveyStateTearOff {
  const _$SurveyStateTearOff();

  _SurveyState call({required double moodValue, required bool isSubmitting}) {
    return _SurveyState(
      moodValue: moodValue,
      isSubmitting: isSubmitting,
    );
  }
}

/// @nodoc
const $SurveyState = _$SurveyStateTearOff();

/// @nodoc
mixin _$SurveyState {
  double get moodValue => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SurveyStateCopyWith<SurveyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyStateCopyWith<$Res> {
  factory $SurveyStateCopyWith(
          SurveyState value, $Res Function(SurveyState) then) =
      _$SurveyStateCopyWithImpl<$Res>;
  $Res call({double moodValue, bool isSubmitting});
}

/// @nodoc
class _$SurveyStateCopyWithImpl<$Res> implements $SurveyStateCopyWith<$Res> {
  _$SurveyStateCopyWithImpl(this._value, this._then);

  final SurveyState _value;
  // ignore: unused_field
  final $Res Function(SurveyState) _then;

  @override
  $Res call({
    Object? moodValue = freezed,
    Object? isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      moodValue: moodValue == freezed
          ? _value.moodValue
          : moodValue // ignore: cast_nullable_to_non_nullable
              as double,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SurveyStateCopyWith<$Res>
    implements $SurveyStateCopyWith<$Res> {
  factory _$SurveyStateCopyWith(
          _SurveyState value, $Res Function(_SurveyState) then) =
      __$SurveyStateCopyWithImpl<$Res>;
  @override
  $Res call({double moodValue, bool isSubmitting});
}

/// @nodoc
class __$SurveyStateCopyWithImpl<$Res> extends _$SurveyStateCopyWithImpl<$Res>
    implements _$SurveyStateCopyWith<$Res> {
  __$SurveyStateCopyWithImpl(
      _SurveyState _value, $Res Function(_SurveyState) _then)
      : super(_value, (v) => _then(v as _SurveyState));

  @override
  _SurveyState get _value => super._value as _SurveyState;

  @override
  $Res call({
    Object? moodValue = freezed,
    Object? isSubmitting = freezed,
  }) {
    return _then(_SurveyState(
      moodValue: moodValue == freezed
          ? _value.moodValue
          : moodValue // ignore: cast_nullable_to_non_nullable
              as double,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SurveyState implements _SurveyState {
  const _$_SurveyState({required this.moodValue, required this.isSubmitting});

  @override
  final double moodValue;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'SurveyState(moodValue: $moodValue, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurveyState &&
            const DeepCollectionEquality().equals(other.moodValue, moodValue) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(moodValue),
      const DeepCollectionEquality().hash(isSubmitting));

  @JsonKey(ignore: true)
  @override
  _$SurveyStateCopyWith<_SurveyState> get copyWith =>
      __$SurveyStateCopyWithImpl<_SurveyState>(this, _$identity);
}

abstract class _SurveyState implements SurveyState {
  const factory _SurveyState(
      {required double moodValue, required bool isSubmitting}) = _$_SurveyState;

  @override
  double get moodValue;
  @override
  bool get isSubmitting;
  @override
  @JsonKey(ignore: true)
  _$SurveyStateCopyWith<_SurveyState> get copyWith =>
      throw _privateConstructorUsedError;
}
