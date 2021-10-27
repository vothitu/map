// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Text _$TextFromJson(Map<String, dynamic> json) {
  return _Text.fromJson(json);
}

/// @nodoc
class _$TextTearOff {
  const _$TextTearOff();

  _Text call(
      {String? text, double? distance, String? accurrency, String? turn}) {
    return _Text(
      text: text,
      distance: distance,
      accurrency: accurrency,
      turn: turn,
    );
  }

  Text fromJson(Map<String, Object> json) {
    return Text.fromJson(json);
  }
}

/// @nodoc
const $Text = _$TextTearOff();

/// @nodoc
mixin _$Text {
  String? get text => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  String? get accurrency => throw _privateConstructorUsedError;
  String? get turn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextCopyWith<Text> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextCopyWith<$Res> {
  factory $TextCopyWith(Text value, $Res Function(Text) then) =
      _$TextCopyWithImpl<$Res>;
  $Res call({String? text, double? distance, String? accurrency, String? turn});
}

/// @nodoc
class _$TextCopyWithImpl<$Res> implements $TextCopyWith<$Res> {
  _$TextCopyWithImpl(this._value, this._then);

  final Text _value;
  // ignore: unused_field
  final $Res Function(Text) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? distance = freezed,
    Object? accurrency = freezed,
    Object? turn = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      accurrency: accurrency == freezed
          ? _value.accurrency
          : accurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      turn: turn == freezed
          ? _value.turn
          : turn // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TextCopyWith<$Res> implements $TextCopyWith<$Res> {
  factory _$TextCopyWith(_Text value, $Res Function(_Text) then) =
      __$TextCopyWithImpl<$Res>;
  @override
  $Res call({String? text, double? distance, String? accurrency, String? turn});
}

/// @nodoc
class __$TextCopyWithImpl<$Res> extends _$TextCopyWithImpl<$Res>
    implements _$TextCopyWith<$Res> {
  __$TextCopyWithImpl(_Text _value, $Res Function(_Text) _then)
      : super(_value, (v) => _then(v as _Text));

  @override
  _Text get _value => super._value as _Text;

  @override
  $Res call({
    Object? text = freezed,
    Object? distance = freezed,
    Object? accurrency = freezed,
    Object? turn = freezed,
  }) {
    return _then(_Text(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      accurrency: accurrency == freezed
          ? _value.accurrency
          : accurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      turn: turn == freezed
          ? _value.turn
          : turn // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Text implements _Text {
  _$_Text({this.text, this.distance, this.accurrency, this.turn});

  factory _$_Text.fromJson(Map<String, dynamic> json) =>
      _$_$_TextFromJson(json);

  @override
  final String? text;
  @override
  final double? distance;
  @override
  final String? accurrency;
  @override
  final String? turn;

  @override
  String toString() {
    return 'Text(text: $text, distance: $distance, accurrency: $accurrency, turn: $turn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Text &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)) &&
            (identical(other.accurrency, accurrency) ||
                const DeepCollectionEquality()
                    .equals(other.accurrency, accurrency)) &&
            (identical(other.turn, turn) ||
                const DeepCollectionEquality().equals(other.turn, turn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(distance) ^
      const DeepCollectionEquality().hash(accurrency) ^
      const DeepCollectionEquality().hash(turn);

  @JsonKey(ignore: true)
  @override
  _$TextCopyWith<_Text> get copyWith =>
      __$TextCopyWithImpl<_Text>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TextToJson(this);
  }
}

abstract class _Text implements Text {
  factory _Text(
      {String? text,
      double? distance,
      String? accurrency,
      String? turn}) = _$_Text;

  factory _Text.fromJson(Map<String, dynamic> json) = _$_Text.fromJson;

  @override
  String? get text => throw _privateConstructorUsedError;
  @override
  double? get distance => throw _privateConstructorUsedError;
  @override
  String? get accurrency => throw _privateConstructorUsedError;
  @override
  String? get turn => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TextCopyWith<_Text> get copyWith => throw _privateConstructorUsedError;
}
