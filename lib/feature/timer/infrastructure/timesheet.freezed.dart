// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timesheet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrentTimeSheet {
  Timer? get timer => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentTimeSheetCopyWith<CurrentTimeSheet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentTimeSheetCopyWith<$Res> {
  factory $CurrentTimeSheetCopyWith(
          CurrentTimeSheet value, $Res Function(CurrentTimeSheet) then) =
      _$CurrentTimeSheetCopyWithImpl<$Res, CurrentTimeSheet>;
  @useResult
  $Res call({Timer? timer, Duration duration, bool isPlaying});
}

/// @nodoc
class _$CurrentTimeSheetCopyWithImpl<$Res, $Val extends CurrentTimeSheet>
    implements $CurrentTimeSheetCopyWith<$Res> {
  _$CurrentTimeSheetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timer = freezed,
    Object? duration = null,
    Object? isPlaying = null,
  }) {
    return _then(_value.copyWith(
      timer: freezed == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as Timer?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentTimeSheetImplCopyWith<$Res>
    implements $CurrentTimeSheetCopyWith<$Res> {
  factory _$$CurrentTimeSheetImplCopyWith(_$CurrentTimeSheetImpl value,
          $Res Function(_$CurrentTimeSheetImpl) then) =
      __$$CurrentTimeSheetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Timer? timer, Duration duration, bool isPlaying});
}

/// @nodoc
class __$$CurrentTimeSheetImplCopyWithImpl<$Res>
    extends _$CurrentTimeSheetCopyWithImpl<$Res, _$CurrentTimeSheetImpl>
    implements _$$CurrentTimeSheetImplCopyWith<$Res> {
  __$$CurrentTimeSheetImplCopyWithImpl(_$CurrentTimeSheetImpl _value,
      $Res Function(_$CurrentTimeSheetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timer = freezed,
    Object? duration = null,
    Object? isPlaying = null,
  }) {
    return _then(_$CurrentTimeSheetImpl(
      timer: freezed == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as Timer?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CurrentTimeSheetImpl implements _CurrentTimeSheet {
  const _$CurrentTimeSheetImpl(
      {this.timer,
      this.duration = const Duration(seconds: 0),
      this.isPlaying = false});

  @override
  final Timer? timer;
  @override
  @JsonKey()
  final Duration duration;
  @override
  @JsonKey()
  final bool isPlaying;

  @override
  String toString() {
    return 'CurrentTimeSheet(timer: $timer, duration: $duration, isPlaying: $isPlaying)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentTimeSheetImpl &&
            (identical(other.timer, timer) || other.timer == timer) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timer, duration, isPlaying);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentTimeSheetImplCopyWith<_$CurrentTimeSheetImpl> get copyWith =>
      __$$CurrentTimeSheetImplCopyWithImpl<_$CurrentTimeSheetImpl>(
          this, _$identity);
}

abstract class _CurrentTimeSheet implements CurrentTimeSheet {
  const factory _CurrentTimeSheet(
      {final Timer? timer,
      final Duration duration,
      final bool isPlaying}) = _$CurrentTimeSheetImpl;

  @override
  Timer? get timer;
  @override
  Duration get duration;
  @override
  bool get isPlaying;
  @override
  @JsonKey(ignore: true)
  _$$CurrentTimeSheetImplCopyWith<_$CurrentTimeSheetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TimeSheet {
  DateTime get dateTime => throw _privateConstructorUsedError;
  Uint8List? get image => throw _privateConstructorUsedError;
  Uint8List? get headShotImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimeSheetCopyWith<TimeSheet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSheetCopyWith<$Res> {
  factory $TimeSheetCopyWith(TimeSheet value, $Res Function(TimeSheet) then) =
      _$TimeSheetCopyWithImpl<$Res, TimeSheet>;
  @useResult
  $Res call({DateTime dateTime, Uint8List? image, Uint8List? headShotImage});
}

/// @nodoc
class _$TimeSheetCopyWithImpl<$Res, $Val extends TimeSheet>
    implements $TimeSheetCopyWith<$Res> {
  _$TimeSheetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? image = freezed,
    Object? headShotImage = freezed,
  }) {
    return _then(_value.copyWith(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      headShotImage: freezed == headShotImage
          ? _value.headShotImage
          : headShotImage // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeSheetImplCopyWith<$Res>
    implements $TimeSheetCopyWith<$Res> {
  factory _$$TimeSheetImplCopyWith(
          _$TimeSheetImpl value, $Res Function(_$TimeSheetImpl) then) =
      __$$TimeSheetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime dateTime, Uint8List? image, Uint8List? headShotImage});
}

/// @nodoc
class __$$TimeSheetImplCopyWithImpl<$Res>
    extends _$TimeSheetCopyWithImpl<$Res, _$TimeSheetImpl>
    implements _$$TimeSheetImplCopyWith<$Res> {
  __$$TimeSheetImplCopyWithImpl(
      _$TimeSheetImpl _value, $Res Function(_$TimeSheetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? image = freezed,
    Object? headShotImage = freezed,
  }) {
    return _then(_$TimeSheetImpl(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      headShotImage: freezed == headShotImage
          ? _value.headShotImage
          : headShotImage // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$TimeSheetImpl implements _TimeSheet {
  const _$TimeSheetImpl(
      {required this.dateTime, this.image, this.headShotImage});

  @override
  final DateTime dateTime;
  @override
  final Uint8List? image;
  @override
  final Uint8List? headShotImage;

  @override
  String toString() {
    return 'TimeSheet(dateTime: $dateTime, image: $image, headShotImage: $headShotImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeSheetImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.headShotImage, headShotImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      dateTime,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(headShotImage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeSheetImplCopyWith<_$TimeSheetImpl> get copyWith =>
      __$$TimeSheetImplCopyWithImpl<_$TimeSheetImpl>(this, _$identity);
}

abstract class _TimeSheet implements TimeSheet {
  const factory _TimeSheet(
      {required final DateTime dateTime,
      final Uint8List? image,
      final Uint8List? headShotImage}) = _$TimeSheetImpl;

  @override
  DateTime get dateTime;
  @override
  Uint8List? get image;
  @override
  Uint8List? get headShotImage;
  @override
  @JsonKey(ignore: true)
  _$$TimeSheetImplCopyWith<_$TimeSheetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
