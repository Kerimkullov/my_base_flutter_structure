// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_bar_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BottomBarState {
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomBarStateCopyWith<BottomBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomBarStateCopyWith<$Res> {
  factory $BottomBarStateCopyWith(
          BottomBarState value, $Res Function(BottomBarState) then) =
      _$BottomBarStateCopyWithImpl<$Res, BottomBarState>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$BottomBarStateCopyWithImpl<$Res, $Val extends BottomBarState>
    implements $BottomBarStateCopyWith<$Res> {
  _$BottomBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BottomBarStateCopyWith<$Res>
    implements $BottomBarStateCopyWith<$Res> {
  factory _$$_BottomBarStateCopyWith(
          _$_BottomBarState value, $Res Function(_$_BottomBarState) then) =
      __$$_BottomBarStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_BottomBarStateCopyWithImpl<$Res>
    extends _$BottomBarStateCopyWithImpl<$Res, _$_BottomBarState>
    implements _$$_BottomBarStateCopyWith<$Res> {
  __$$_BottomBarStateCopyWithImpl(
      _$_BottomBarState _value, $Res Function(_$_BottomBarState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_BottomBarState(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BottomBarState implements _BottomBarState {
  _$_BottomBarState({this.index = 0});

  @override
  @JsonKey()
  final int index;

  @override
  String toString() {
    return 'BottomBarState(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BottomBarState &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BottomBarStateCopyWith<_$_BottomBarState> get copyWith =>
      __$$_BottomBarStateCopyWithImpl<_$_BottomBarState>(this, _$identity);
}

abstract class _BottomBarState implements BottomBarState {
  factory _BottomBarState({final int index}) = _$_BottomBarState;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_BottomBarStateCopyWith<_$_BottomBarState> get copyWith =>
      throw _privateConstructorUsedError;
}
