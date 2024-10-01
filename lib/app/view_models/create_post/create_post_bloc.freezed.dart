// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreatePostEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> pickedImages) pickImages,
    required TResult Function(String text) isValidPost,
    required TResult Function(PostPrivacy postPrivacy) togglePostPrivacy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> pickedImages)? pickImages,
    TResult? Function(String text)? isValidPost,
    TResult? Function(PostPrivacy postPrivacy)? togglePostPrivacy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> pickedImages)? pickImages,
    TResult Function(String text)? isValidPost,
    TResult Function(PostPrivacy postPrivacy)? togglePostPrivacy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickImages value) pickImages,
    required TResult Function(IsValidPost value) isValidPost,
    required TResult Function(TogglePostPrivacy value) togglePostPrivacy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickImages value)? pickImages,
    TResult? Function(IsValidPost value)? isValidPost,
    TResult? Function(TogglePostPrivacy value)? togglePostPrivacy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickImages value)? pickImages,
    TResult Function(IsValidPost value)? isValidPost,
    TResult Function(TogglePostPrivacy value)? togglePostPrivacy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostEventCopyWith<$Res> {
  factory $CreatePostEventCopyWith(
          CreatePostEvent value, $Res Function(CreatePostEvent) then) =
      _$CreatePostEventCopyWithImpl<$Res, CreatePostEvent>;
}

/// @nodoc
class _$CreatePostEventCopyWithImpl<$Res, $Val extends CreatePostEvent>
    implements $CreatePostEventCopyWith<$Res> {
  _$CreatePostEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PickImagesImplCopyWith<$Res> {
  factory _$$PickImagesImplCopyWith(
          _$PickImagesImpl value, $Res Function(_$PickImagesImpl) then) =
      __$$PickImagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> pickedImages});
}

/// @nodoc
class __$$PickImagesImplCopyWithImpl<$Res>
    extends _$CreatePostEventCopyWithImpl<$Res, _$PickImagesImpl>
    implements _$$PickImagesImplCopyWith<$Res> {
  __$$PickImagesImplCopyWithImpl(
      _$PickImagesImpl _value, $Res Function(_$PickImagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickedImages = null,
  }) {
    return _then(_$PickImagesImpl(
      pickedImages: null == pickedImages
          ? _value._pickedImages
          : pickedImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$PickImagesImpl implements PickImages {
  const _$PickImagesImpl({required final List<String> pickedImages})
      : _pickedImages = pickedImages;

  final List<String> _pickedImages;
  @override
  List<String> get pickedImages {
    if (_pickedImages is EqualUnmodifiableListView) return _pickedImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pickedImages);
  }

  @override
  String toString() {
    return 'CreatePostEvent.pickImages(pickedImages: $pickedImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickImagesImpl &&
            const DeepCollectionEquality()
                .equals(other._pickedImages, _pickedImages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_pickedImages));

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PickImagesImplCopyWith<_$PickImagesImpl> get copyWith =>
      __$$PickImagesImplCopyWithImpl<_$PickImagesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> pickedImages) pickImages,
    required TResult Function(String text) isValidPost,
    required TResult Function(PostPrivacy postPrivacy) togglePostPrivacy,
  }) {
    return pickImages(pickedImages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> pickedImages)? pickImages,
    TResult? Function(String text)? isValidPost,
    TResult? Function(PostPrivacy postPrivacy)? togglePostPrivacy,
  }) {
    return pickImages?.call(pickedImages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> pickedImages)? pickImages,
    TResult Function(String text)? isValidPost,
    TResult Function(PostPrivacy postPrivacy)? togglePostPrivacy,
    required TResult orElse(),
  }) {
    if (pickImages != null) {
      return pickImages(pickedImages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickImages value) pickImages,
    required TResult Function(IsValidPost value) isValidPost,
    required TResult Function(TogglePostPrivacy value) togglePostPrivacy,
  }) {
    return pickImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickImages value)? pickImages,
    TResult? Function(IsValidPost value)? isValidPost,
    TResult? Function(TogglePostPrivacy value)? togglePostPrivacy,
  }) {
    return pickImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickImages value)? pickImages,
    TResult Function(IsValidPost value)? isValidPost,
    TResult Function(TogglePostPrivacy value)? togglePostPrivacy,
    required TResult orElse(),
  }) {
    if (pickImages != null) {
      return pickImages(this);
    }
    return orElse();
  }
}

abstract class PickImages implements CreatePostEvent {
  const factory PickImages({required final List<String> pickedImages}) =
      _$PickImagesImpl;

  List<String> get pickedImages;

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PickImagesImplCopyWith<_$PickImagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsValidPostImplCopyWith<$Res> {
  factory _$$IsValidPostImplCopyWith(
          _$IsValidPostImpl value, $Res Function(_$IsValidPostImpl) then) =
      __$$IsValidPostImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$IsValidPostImplCopyWithImpl<$Res>
    extends _$CreatePostEventCopyWithImpl<$Res, _$IsValidPostImpl>
    implements _$$IsValidPostImplCopyWith<$Res> {
  __$$IsValidPostImplCopyWithImpl(
      _$IsValidPostImpl _value, $Res Function(_$IsValidPostImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$IsValidPostImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IsValidPostImpl implements IsValidPost {
  const _$IsValidPostImpl({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'CreatePostEvent.isValidPost(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsValidPostImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IsValidPostImplCopyWith<_$IsValidPostImpl> get copyWith =>
      __$$IsValidPostImplCopyWithImpl<_$IsValidPostImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> pickedImages) pickImages,
    required TResult Function(String text) isValidPost,
    required TResult Function(PostPrivacy postPrivacy) togglePostPrivacy,
  }) {
    return isValidPost(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> pickedImages)? pickImages,
    TResult? Function(String text)? isValidPost,
    TResult? Function(PostPrivacy postPrivacy)? togglePostPrivacy,
  }) {
    return isValidPost?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> pickedImages)? pickImages,
    TResult Function(String text)? isValidPost,
    TResult Function(PostPrivacy postPrivacy)? togglePostPrivacy,
    required TResult orElse(),
  }) {
    if (isValidPost != null) {
      return isValidPost(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickImages value) pickImages,
    required TResult Function(IsValidPost value) isValidPost,
    required TResult Function(TogglePostPrivacy value) togglePostPrivacy,
  }) {
    return isValidPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickImages value)? pickImages,
    TResult? Function(IsValidPost value)? isValidPost,
    TResult? Function(TogglePostPrivacy value)? togglePostPrivacy,
  }) {
    return isValidPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickImages value)? pickImages,
    TResult Function(IsValidPost value)? isValidPost,
    TResult Function(TogglePostPrivacy value)? togglePostPrivacy,
    required TResult orElse(),
  }) {
    if (isValidPost != null) {
      return isValidPost(this);
    }
    return orElse();
  }
}

abstract class IsValidPost implements CreatePostEvent {
  const factory IsValidPost({required final String text}) = _$IsValidPostImpl;

  String get text;

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IsValidPostImplCopyWith<_$IsValidPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TogglePostPrivacyImplCopyWith<$Res> {
  factory _$$TogglePostPrivacyImplCopyWith(_$TogglePostPrivacyImpl value,
          $Res Function(_$TogglePostPrivacyImpl) then) =
      __$$TogglePostPrivacyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PostPrivacy postPrivacy});
}

/// @nodoc
class __$$TogglePostPrivacyImplCopyWithImpl<$Res>
    extends _$CreatePostEventCopyWithImpl<$Res, _$TogglePostPrivacyImpl>
    implements _$$TogglePostPrivacyImplCopyWith<$Res> {
  __$$TogglePostPrivacyImplCopyWithImpl(_$TogglePostPrivacyImpl _value,
      $Res Function(_$TogglePostPrivacyImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postPrivacy = null,
  }) {
    return _then(_$TogglePostPrivacyImpl(
      postPrivacy: null == postPrivacy
          ? _value.postPrivacy
          : postPrivacy // ignore: cast_nullable_to_non_nullable
              as PostPrivacy,
    ));
  }
}

/// @nodoc

class _$TogglePostPrivacyImpl implements TogglePostPrivacy {
  const _$TogglePostPrivacyImpl({required this.postPrivacy});

  @override
  final PostPrivacy postPrivacy;

  @override
  String toString() {
    return 'CreatePostEvent.togglePostPrivacy(postPrivacy: $postPrivacy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TogglePostPrivacyImpl &&
            (identical(other.postPrivacy, postPrivacy) ||
                other.postPrivacy == postPrivacy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postPrivacy);

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TogglePostPrivacyImplCopyWith<_$TogglePostPrivacyImpl> get copyWith =>
      __$$TogglePostPrivacyImplCopyWithImpl<_$TogglePostPrivacyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> pickedImages) pickImages,
    required TResult Function(String text) isValidPost,
    required TResult Function(PostPrivacy postPrivacy) togglePostPrivacy,
  }) {
    return togglePostPrivacy(postPrivacy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> pickedImages)? pickImages,
    TResult? Function(String text)? isValidPost,
    TResult? Function(PostPrivacy postPrivacy)? togglePostPrivacy,
  }) {
    return togglePostPrivacy?.call(postPrivacy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> pickedImages)? pickImages,
    TResult Function(String text)? isValidPost,
    TResult Function(PostPrivacy postPrivacy)? togglePostPrivacy,
    required TResult orElse(),
  }) {
    if (togglePostPrivacy != null) {
      return togglePostPrivacy(postPrivacy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickImages value) pickImages,
    required TResult Function(IsValidPost value) isValidPost,
    required TResult Function(TogglePostPrivacy value) togglePostPrivacy,
  }) {
    return togglePostPrivacy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickImages value)? pickImages,
    TResult? Function(IsValidPost value)? isValidPost,
    TResult? Function(TogglePostPrivacy value)? togglePostPrivacy,
  }) {
    return togglePostPrivacy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickImages value)? pickImages,
    TResult Function(IsValidPost value)? isValidPost,
    TResult Function(TogglePostPrivacy value)? togglePostPrivacy,
    required TResult orElse(),
  }) {
    if (togglePostPrivacy != null) {
      return togglePostPrivacy(this);
    }
    return orElse();
  }
}

abstract class TogglePostPrivacy implements CreatePostEvent {
  const factory TogglePostPrivacy({required final PostPrivacy postPrivacy}) =
      _$TogglePostPrivacyImpl;

  PostPrivacy get postPrivacy;

  /// Create a copy of CreatePostEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TogglePostPrivacyImplCopyWith<_$TogglePostPrivacyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreatePostState {
  RequestStatus get status => throw _privateConstructorUsedError;
  List<String> get pickedImages => throw _privateConstructorUsedError;
  bool get isValidPost => throw _privateConstructorUsedError;
  PostPrivacy get postPrivacy => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestStatus status, List<String> pickedImages,
            bool isValidPost, PostPrivacy postPrivacy)
        createPostState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestStatus status, List<String> pickedImages,
            bool isValidPost, PostPrivacy postPrivacy)?
        createPostState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestStatus status, List<String> pickedImages,
            bool isValidPost, PostPrivacy postPrivacy)?
        createPostState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePostState value) createPostState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePostState value)? createPostState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePostState value)? createPostState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CreatePostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreatePostStateCopyWith<CreatePostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostStateCopyWith<$Res> {
  factory $CreatePostStateCopyWith(
          CreatePostState value, $Res Function(CreatePostState) then) =
      _$CreatePostStateCopyWithImpl<$Res, CreatePostState>;
  @useResult
  $Res call(
      {RequestStatus status,
      List<String> pickedImages,
      bool isValidPost,
      PostPrivacy postPrivacy});
}

/// @nodoc
class _$CreatePostStateCopyWithImpl<$Res, $Val extends CreatePostState>
    implements $CreatePostStateCopyWith<$Res> {
  _$CreatePostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreatePostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? pickedImages = null,
    Object? isValidPost = null,
    Object? postPrivacy = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      pickedImages: null == pickedImages
          ? _value.pickedImages
          : pickedImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isValidPost: null == isValidPost
          ? _value.isValidPost
          : isValidPost // ignore: cast_nullable_to_non_nullable
              as bool,
      postPrivacy: null == postPrivacy
          ? _value.postPrivacy
          : postPrivacy // ignore: cast_nullable_to_non_nullable
              as PostPrivacy,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePostStateImplCopyWith<$Res>
    implements $CreatePostStateCopyWith<$Res> {
  factory _$$CreatePostStateImplCopyWith(_$CreatePostStateImpl value,
          $Res Function(_$CreatePostStateImpl) then) =
      __$$CreatePostStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestStatus status,
      List<String> pickedImages,
      bool isValidPost,
      PostPrivacy postPrivacy});
}

/// @nodoc
class __$$CreatePostStateImplCopyWithImpl<$Res>
    extends _$CreatePostStateCopyWithImpl<$Res, _$CreatePostStateImpl>
    implements _$$CreatePostStateImplCopyWith<$Res> {
  __$$CreatePostStateImplCopyWithImpl(
      _$CreatePostStateImpl _value, $Res Function(_$CreatePostStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatePostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? pickedImages = null,
    Object? isValidPost = null,
    Object? postPrivacy = null,
  }) {
    return _then(_$CreatePostStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      pickedImages: null == pickedImages
          ? _value._pickedImages
          : pickedImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isValidPost: null == isValidPost
          ? _value.isValidPost
          : isValidPost // ignore: cast_nullable_to_non_nullable
              as bool,
      postPrivacy: null == postPrivacy
          ? _value.postPrivacy
          : postPrivacy // ignore: cast_nullable_to_non_nullable
              as PostPrivacy,
    ));
  }
}

/// @nodoc

class _$CreatePostStateImpl implements _CreatePostState {
  const _$CreatePostStateImpl(
      {this.status = const InitialRequestStatus(),
      final List<String> pickedImages = const <String>[],
      this.isValidPost = false,
      this.postPrivacy = PostPrivacy.public})
      : _pickedImages = pickedImages;

  @override
  @JsonKey()
  final RequestStatus status;
  final List<String> _pickedImages;
  @override
  @JsonKey()
  List<String> get pickedImages {
    if (_pickedImages is EqualUnmodifiableListView) return _pickedImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pickedImages);
  }

  @override
  @JsonKey()
  final bool isValidPost;
  @override
  @JsonKey()
  final PostPrivacy postPrivacy;

  @override
  String toString() {
    return 'CreatePostState.createPostState(status: $status, pickedImages: $pickedImages, isValidPost: $isValidPost, postPrivacy: $postPrivacy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePostStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._pickedImages, _pickedImages) &&
            (identical(other.isValidPost, isValidPost) ||
                other.isValidPost == isValidPost) &&
            (identical(other.postPrivacy, postPrivacy) ||
                other.postPrivacy == postPrivacy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_pickedImages),
      isValidPost,
      postPrivacy);

  /// Create a copy of CreatePostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePostStateImplCopyWith<_$CreatePostStateImpl> get copyWith =>
      __$$CreatePostStateImplCopyWithImpl<_$CreatePostStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestStatus status, List<String> pickedImages,
            bool isValidPost, PostPrivacy postPrivacy)
        createPostState,
  }) {
    return createPostState(status, pickedImages, isValidPost, postPrivacy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestStatus status, List<String> pickedImages,
            bool isValidPost, PostPrivacy postPrivacy)?
        createPostState,
  }) {
    return createPostState?.call(
        status, pickedImages, isValidPost, postPrivacy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestStatus status, List<String> pickedImages,
            bool isValidPost, PostPrivacy postPrivacy)?
        createPostState,
    required TResult orElse(),
  }) {
    if (createPostState != null) {
      return createPostState(status, pickedImages, isValidPost, postPrivacy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatePostState value) createPostState,
  }) {
    return createPostState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatePostState value)? createPostState,
  }) {
    return createPostState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatePostState value)? createPostState,
    required TResult orElse(),
  }) {
    if (createPostState != null) {
      return createPostState(this);
    }
    return orElse();
  }
}

abstract class _CreatePostState implements CreatePostState {
  const factory _CreatePostState(
      {final RequestStatus status,
      final List<String> pickedImages,
      final bool isValidPost,
      final PostPrivacy postPrivacy}) = _$CreatePostStateImpl;

  @override
  RequestStatus get status;
  @override
  List<String> get pickedImages;
  @override
  bool get isValidPost;
  @override
  PostPrivacy get postPrivacy;

  /// Create a copy of CreatePostState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatePostStateImplCopyWith<_$CreatePostStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
