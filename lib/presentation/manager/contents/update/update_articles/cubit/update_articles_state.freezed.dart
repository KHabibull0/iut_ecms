// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_articles_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateArticlesBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get uploadFileLoading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;

  /// Create a copy of UpdateArticlesBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateArticlesBuildableCopyWith<UpdateArticlesBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateArticlesBuildableCopyWith<$Res> {
  factory $UpdateArticlesBuildableCopyWith(UpdateArticlesBuildable value,
          $Res Function(UpdateArticlesBuildable) then) =
      _$UpdateArticlesBuildableCopyWithImpl<$Res, UpdateArticlesBuildable>;
  @useResult
  $Res call({bool loading, bool uploadFileLoading, bool error});
}

/// @nodoc
class _$UpdateArticlesBuildableCopyWithImpl<$Res,
        $Val extends UpdateArticlesBuildable>
    implements $UpdateArticlesBuildableCopyWith<$Res> {
  _$UpdateArticlesBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateArticlesBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? uploadFileLoading = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadFileLoading: null == uploadFileLoading
          ? _value.uploadFileLoading
          : uploadFileLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateArticlesBuildableImplCopyWith<$Res>
    implements $UpdateArticlesBuildableCopyWith<$Res> {
  factory _$$UpdateArticlesBuildableImplCopyWith(
          _$UpdateArticlesBuildableImpl value,
          $Res Function(_$UpdateArticlesBuildableImpl) then) =
      __$$UpdateArticlesBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, bool uploadFileLoading, bool error});
}

/// @nodoc
class __$$UpdateArticlesBuildableImplCopyWithImpl<$Res>
    extends _$UpdateArticlesBuildableCopyWithImpl<$Res,
        _$UpdateArticlesBuildableImpl>
    implements _$$UpdateArticlesBuildableImplCopyWith<$Res> {
  __$$UpdateArticlesBuildableImplCopyWithImpl(
      _$UpdateArticlesBuildableImpl _value,
      $Res Function(_$UpdateArticlesBuildableImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateArticlesBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? uploadFileLoading = null,
    Object? error = null,
  }) {
    return _then(_$UpdateArticlesBuildableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadFileLoading: null == uploadFileLoading
          ? _value.uploadFileLoading
          : uploadFileLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateArticlesBuildableImpl implements _UpdateArticlesBuildable {
  const _$UpdateArticlesBuildableImpl(
      {this.loading = false,
      this.uploadFileLoading = false,
      this.error = false});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool uploadFileLoading;
  @override
  @JsonKey()
  final bool error;

  @override
  String toString() {
    return 'UpdateArticlesBuildable(loading: $loading, uploadFileLoading: $uploadFileLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArticlesBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.uploadFileLoading, uploadFileLoading) ||
                other.uploadFileLoading == uploadFileLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, loading, uploadFileLoading, error);

  /// Create a copy of UpdateArticlesBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateArticlesBuildableImplCopyWith<_$UpdateArticlesBuildableImpl>
      get copyWith => __$$UpdateArticlesBuildableImplCopyWithImpl<
          _$UpdateArticlesBuildableImpl>(this, _$identity);
}

abstract class _UpdateArticlesBuildable implements UpdateArticlesBuildable {
  const factory _UpdateArticlesBuildable(
      {final bool loading,
      final bool uploadFileLoading,
      final bool error}) = _$UpdateArticlesBuildableImpl;

  @override
  bool get loading;
  @override
  bool get uploadFileLoading;
  @override
  bool get error;

  /// Create a copy of UpdateArticlesBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateArticlesBuildableImplCopyWith<_$UpdateArticlesBuildableImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateArticlesListenable {}

/// @nodoc
abstract class $UpdateArticlesListenableCopyWith<$Res> {
  factory $UpdateArticlesListenableCopyWith(UpdateArticlesListenable value,
          $Res Function(UpdateArticlesListenable) then) =
      _$UpdateArticlesListenableCopyWithImpl<$Res, UpdateArticlesListenable>;
}

/// @nodoc
class _$UpdateArticlesListenableCopyWithImpl<$Res,
        $Val extends UpdateArticlesListenable>
    implements $UpdateArticlesListenableCopyWith<$Res> {
  _$UpdateArticlesListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateArticlesListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateArticlesListenableImplCopyWith<$Res> {
  factory _$$UpdateArticlesListenableImplCopyWith(
          _$UpdateArticlesListenableImpl value,
          $Res Function(_$UpdateArticlesListenableImpl) then) =
      __$$UpdateArticlesListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateArticlesListenableImplCopyWithImpl<$Res>
    extends _$UpdateArticlesListenableCopyWithImpl<$Res,
        _$UpdateArticlesListenableImpl>
    implements _$$UpdateArticlesListenableImplCopyWith<$Res> {
  __$$UpdateArticlesListenableImplCopyWithImpl(
      _$UpdateArticlesListenableImpl _value,
      $Res Function(_$UpdateArticlesListenableImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateArticlesListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateArticlesListenableImpl implements _UpdateArticlesListenable {
  const _$UpdateArticlesListenableImpl();

  @override
  String toString() {
    return 'UpdateArticlesListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateArticlesListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _UpdateArticlesListenable implements UpdateArticlesListenable {
  const factory _UpdateArticlesListenable() = _$UpdateArticlesListenableImpl;
}
