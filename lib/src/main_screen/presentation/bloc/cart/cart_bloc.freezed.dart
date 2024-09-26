// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool addSuccess) addItemSuccess,
    required TResult Function(bool addSuccess) removeItemSuccess,
    required TResult Function(List<CartItemModel> items, double totalPrice)
        loaded,
    required TResult Function(double totalPrice) totalPrice,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool addSuccess)? addItemSuccess,
    TResult? Function(bool addSuccess)? removeItemSuccess,
    TResult? Function(List<CartItemModel> items, double totalPrice)? loaded,
    TResult? Function(double totalPrice)? totalPrice,
    TResult? Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool addSuccess)? addItemSuccess,
    TResult Function(bool addSuccess)? removeItemSuccess,
    TResult Function(List<CartItemModel> items, double totalPrice)? loaded,
    TResult Function(double totalPrice)? totalPrice,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddItemSuccess value) addItemSuccess,
    required TResult Function(_RemoveItemSuccess value) removeItemSuccess,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_TotalPrice value) totalPrice,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddItemSuccess value)? addItemSuccess,
    TResult? Function(_RemoveItemSuccess value)? removeItemSuccess,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_TotalPrice value)? totalPrice,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddItemSuccess value)? addItemSuccess,
    TResult Function(_RemoveItemSuccess value)? removeItemSuccess,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_TotalPrice value)? totalPrice,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CartState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool addSuccess) addItemSuccess,
    required TResult Function(bool addSuccess) removeItemSuccess,
    required TResult Function(List<CartItemModel> items, double totalPrice)
        loaded,
    required TResult Function(double totalPrice) totalPrice,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool addSuccess)? addItemSuccess,
    TResult? Function(bool addSuccess)? removeItemSuccess,
    TResult? Function(List<CartItemModel> items, double totalPrice)? loaded,
    TResult? Function(double totalPrice)? totalPrice,
    TResult? Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool addSuccess)? addItemSuccess,
    TResult Function(bool addSuccess)? removeItemSuccess,
    TResult Function(List<CartItemModel> items, double totalPrice)? loaded,
    TResult Function(double totalPrice)? totalPrice,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddItemSuccess value) addItemSuccess,
    required TResult Function(_RemoveItemSuccess value) removeItemSuccess,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_TotalPrice value) totalPrice,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddItemSuccess value)? addItemSuccess,
    TResult? Function(_RemoveItemSuccess value)? removeItemSuccess,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_TotalPrice value)? totalPrice,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddItemSuccess value)? addItemSuccess,
    TResult Function(_RemoveItemSuccess value)? removeItemSuccess,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_TotalPrice value)? totalPrice,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CartState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool addSuccess) addItemSuccess,
    required TResult Function(bool addSuccess) removeItemSuccess,
    required TResult Function(List<CartItemModel> items, double totalPrice)
        loaded,
    required TResult Function(double totalPrice) totalPrice,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool addSuccess)? addItemSuccess,
    TResult? Function(bool addSuccess)? removeItemSuccess,
    TResult? Function(List<CartItemModel> items, double totalPrice)? loaded,
    TResult? Function(double totalPrice)? totalPrice,
    TResult? Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool addSuccess)? addItemSuccess,
    TResult Function(bool addSuccess)? removeItemSuccess,
    TResult Function(List<CartItemModel> items, double totalPrice)? loaded,
    TResult Function(double totalPrice)? totalPrice,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddItemSuccess value) addItemSuccess,
    required TResult Function(_RemoveItemSuccess value) removeItemSuccess,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_TotalPrice value) totalPrice,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddItemSuccess value)? addItemSuccess,
    TResult? Function(_RemoveItemSuccess value)? removeItemSuccess,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_TotalPrice value)? totalPrice,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddItemSuccess value)? addItemSuccess,
    TResult Function(_RemoveItemSuccess value)? removeItemSuccess,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_TotalPrice value)? totalPrice,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CartState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$AddItemSuccessImplCopyWith<$Res> {
  factory _$$AddItemSuccessImplCopyWith(_$AddItemSuccessImpl value,
          $Res Function(_$AddItemSuccessImpl) then) =
      __$$AddItemSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool addSuccess});
}

/// @nodoc
class __$$AddItemSuccessImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$AddItemSuccessImpl>
    implements _$$AddItemSuccessImplCopyWith<$Res> {
  __$$AddItemSuccessImplCopyWithImpl(
      _$AddItemSuccessImpl _value, $Res Function(_$AddItemSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addSuccess = null,
  }) {
    return _then(_$AddItemSuccessImpl(
      null == addSuccess
          ? _value.addSuccess
          : addSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AddItemSuccessImpl implements _AddItemSuccess {
  const _$AddItemSuccessImpl(this.addSuccess);

  @override
  final bool addSuccess;

  @override
  String toString() {
    return 'CartState.addItemSuccess(addSuccess: $addSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddItemSuccessImpl &&
            (identical(other.addSuccess, addSuccess) ||
                other.addSuccess == addSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddItemSuccessImplCopyWith<_$AddItemSuccessImpl> get copyWith =>
      __$$AddItemSuccessImplCopyWithImpl<_$AddItemSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool addSuccess) addItemSuccess,
    required TResult Function(bool addSuccess) removeItemSuccess,
    required TResult Function(List<CartItemModel> items, double totalPrice)
        loaded,
    required TResult Function(double totalPrice) totalPrice,
    required TResult Function(Failure failure) error,
  }) {
    return addItemSuccess(addSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool addSuccess)? addItemSuccess,
    TResult? Function(bool addSuccess)? removeItemSuccess,
    TResult? Function(List<CartItemModel> items, double totalPrice)? loaded,
    TResult? Function(double totalPrice)? totalPrice,
    TResult? Function(Failure failure)? error,
  }) {
    return addItemSuccess?.call(addSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool addSuccess)? addItemSuccess,
    TResult Function(bool addSuccess)? removeItemSuccess,
    TResult Function(List<CartItemModel> items, double totalPrice)? loaded,
    TResult Function(double totalPrice)? totalPrice,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (addItemSuccess != null) {
      return addItemSuccess(addSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddItemSuccess value) addItemSuccess,
    required TResult Function(_RemoveItemSuccess value) removeItemSuccess,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_TotalPrice value) totalPrice,
    required TResult Function(_Error value) error,
  }) {
    return addItemSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddItemSuccess value)? addItemSuccess,
    TResult? Function(_RemoveItemSuccess value)? removeItemSuccess,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_TotalPrice value)? totalPrice,
    TResult? Function(_Error value)? error,
  }) {
    return addItemSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddItemSuccess value)? addItemSuccess,
    TResult Function(_RemoveItemSuccess value)? removeItemSuccess,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_TotalPrice value)? totalPrice,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (addItemSuccess != null) {
      return addItemSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddItemSuccess implements CartState {
  const factory _AddItemSuccess(final bool addSuccess) = _$AddItemSuccessImpl;

  bool get addSuccess;
  @JsonKey(ignore: true)
  _$$AddItemSuccessImplCopyWith<_$AddItemSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveItemSuccessImplCopyWith<$Res> {
  factory _$$RemoveItemSuccessImplCopyWith(_$RemoveItemSuccessImpl value,
          $Res Function(_$RemoveItemSuccessImpl) then) =
      __$$RemoveItemSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool addSuccess});
}

/// @nodoc
class __$$RemoveItemSuccessImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$RemoveItemSuccessImpl>
    implements _$$RemoveItemSuccessImplCopyWith<$Res> {
  __$$RemoveItemSuccessImplCopyWithImpl(_$RemoveItemSuccessImpl _value,
      $Res Function(_$RemoveItemSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addSuccess = null,
  }) {
    return _then(_$RemoveItemSuccessImpl(
      null == addSuccess
          ? _value.addSuccess
          : addSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RemoveItemSuccessImpl implements _RemoveItemSuccess {
  const _$RemoveItemSuccessImpl(this.addSuccess);

  @override
  final bool addSuccess;

  @override
  String toString() {
    return 'CartState.removeItemSuccess(addSuccess: $addSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveItemSuccessImpl &&
            (identical(other.addSuccess, addSuccess) ||
                other.addSuccess == addSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveItemSuccessImplCopyWith<_$RemoveItemSuccessImpl> get copyWith =>
      __$$RemoveItemSuccessImplCopyWithImpl<_$RemoveItemSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool addSuccess) addItemSuccess,
    required TResult Function(bool addSuccess) removeItemSuccess,
    required TResult Function(List<CartItemModel> items, double totalPrice)
        loaded,
    required TResult Function(double totalPrice) totalPrice,
    required TResult Function(Failure failure) error,
  }) {
    return removeItemSuccess(addSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool addSuccess)? addItemSuccess,
    TResult? Function(bool addSuccess)? removeItemSuccess,
    TResult? Function(List<CartItemModel> items, double totalPrice)? loaded,
    TResult? Function(double totalPrice)? totalPrice,
    TResult? Function(Failure failure)? error,
  }) {
    return removeItemSuccess?.call(addSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool addSuccess)? addItemSuccess,
    TResult Function(bool addSuccess)? removeItemSuccess,
    TResult Function(List<CartItemModel> items, double totalPrice)? loaded,
    TResult Function(double totalPrice)? totalPrice,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (removeItemSuccess != null) {
      return removeItemSuccess(addSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddItemSuccess value) addItemSuccess,
    required TResult Function(_RemoveItemSuccess value) removeItemSuccess,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_TotalPrice value) totalPrice,
    required TResult Function(_Error value) error,
  }) {
    return removeItemSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddItemSuccess value)? addItemSuccess,
    TResult? Function(_RemoveItemSuccess value)? removeItemSuccess,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_TotalPrice value)? totalPrice,
    TResult? Function(_Error value)? error,
  }) {
    return removeItemSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddItemSuccess value)? addItemSuccess,
    TResult Function(_RemoveItemSuccess value)? removeItemSuccess,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_TotalPrice value)? totalPrice,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (removeItemSuccess != null) {
      return removeItemSuccess(this);
    }
    return orElse();
  }
}

abstract class _RemoveItemSuccess implements CartState {
  const factory _RemoveItemSuccess(final bool addSuccess) =
      _$RemoveItemSuccessImpl;

  bool get addSuccess;
  @JsonKey(ignore: true)
  _$$RemoveItemSuccessImplCopyWith<_$RemoveItemSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CartItemModel> items, double totalPrice});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? totalPrice = null,
  }) {
    return _then(_$LoadedImpl(
      null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItemModel>,
      null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<CartItemModel> items, this.totalPrice)
      : _items = items;

  final List<CartItemModel> _items;
  @override
  List<CartItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final double totalPrice;

  @override
  String toString() {
    return 'CartState.loaded(items: $items, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), totalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool addSuccess) addItemSuccess,
    required TResult Function(bool addSuccess) removeItemSuccess,
    required TResult Function(List<CartItemModel> items, double totalPrice)
        loaded,
    required TResult Function(double totalPrice) totalPrice,
    required TResult Function(Failure failure) error,
  }) {
    return loaded(items, this.totalPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool addSuccess)? addItemSuccess,
    TResult? Function(bool addSuccess)? removeItemSuccess,
    TResult? Function(List<CartItemModel> items, double totalPrice)? loaded,
    TResult? Function(double totalPrice)? totalPrice,
    TResult? Function(Failure failure)? error,
  }) {
    return loaded?.call(items, this.totalPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool addSuccess)? addItemSuccess,
    TResult Function(bool addSuccess)? removeItemSuccess,
    TResult Function(List<CartItemModel> items, double totalPrice)? loaded,
    TResult Function(double totalPrice)? totalPrice,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(items, this.totalPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddItemSuccess value) addItemSuccess,
    required TResult Function(_RemoveItemSuccess value) removeItemSuccess,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_TotalPrice value) totalPrice,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddItemSuccess value)? addItemSuccess,
    TResult? Function(_RemoveItemSuccess value)? removeItemSuccess,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_TotalPrice value)? totalPrice,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddItemSuccess value)? addItemSuccess,
    TResult Function(_RemoveItemSuccess value)? removeItemSuccess,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_TotalPrice value)? totalPrice,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CartState {
  const factory _Loaded(
      final List<CartItemModel> items, final double totalPrice) = _$LoadedImpl;

  List<CartItemModel> get items;
  double get totalPrice;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TotalPriceImplCopyWith<$Res> {
  factory _$$TotalPriceImplCopyWith(
          _$TotalPriceImpl value, $Res Function(_$TotalPriceImpl) then) =
      __$$TotalPriceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double totalPrice});
}

/// @nodoc
class __$$TotalPriceImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$TotalPriceImpl>
    implements _$$TotalPriceImplCopyWith<$Res> {
  __$$TotalPriceImplCopyWithImpl(
      _$TotalPriceImpl _value, $Res Function(_$TotalPriceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPrice = null,
  }) {
    return _then(_$TotalPriceImpl(
      null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$TotalPriceImpl implements _TotalPrice {
  const _$TotalPriceImpl(this.totalPrice);

  @override
  final double totalPrice;

  @override
  String toString() {
    return 'CartState.totalPrice(totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalPriceImpl &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TotalPriceImplCopyWith<_$TotalPriceImpl> get copyWith =>
      __$$TotalPriceImplCopyWithImpl<_$TotalPriceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool addSuccess) addItemSuccess,
    required TResult Function(bool addSuccess) removeItemSuccess,
    required TResult Function(List<CartItemModel> items, double totalPrice)
        loaded,
    required TResult Function(double totalPrice) totalPrice,
    required TResult Function(Failure failure) error,
  }) {
    return totalPrice(this.totalPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool addSuccess)? addItemSuccess,
    TResult? Function(bool addSuccess)? removeItemSuccess,
    TResult? Function(List<CartItemModel> items, double totalPrice)? loaded,
    TResult? Function(double totalPrice)? totalPrice,
    TResult? Function(Failure failure)? error,
  }) {
    return totalPrice?.call(this.totalPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool addSuccess)? addItemSuccess,
    TResult Function(bool addSuccess)? removeItemSuccess,
    TResult Function(List<CartItemModel> items, double totalPrice)? loaded,
    TResult Function(double totalPrice)? totalPrice,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (totalPrice != null) {
      return totalPrice(this.totalPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddItemSuccess value) addItemSuccess,
    required TResult Function(_RemoveItemSuccess value) removeItemSuccess,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_TotalPrice value) totalPrice,
    required TResult Function(_Error value) error,
  }) {
    return totalPrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddItemSuccess value)? addItemSuccess,
    TResult? Function(_RemoveItemSuccess value)? removeItemSuccess,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_TotalPrice value)? totalPrice,
    TResult? Function(_Error value)? error,
  }) {
    return totalPrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddItemSuccess value)? addItemSuccess,
    TResult Function(_RemoveItemSuccess value)? removeItemSuccess,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_TotalPrice value)? totalPrice,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (totalPrice != null) {
      return totalPrice(this);
    }
    return orElse();
  }
}

abstract class _TotalPrice implements CartState {
  const factory _TotalPrice(final double totalPrice) = _$TotalPriceImpl;

  double get totalPrice;
  @JsonKey(ignore: true)
  _$$TotalPriceImplCopyWith<_$TotalPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ErrorImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'CartState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool addSuccess) addItemSuccess,
    required TResult Function(bool addSuccess) removeItemSuccess,
    required TResult Function(List<CartItemModel> items, double totalPrice)
        loaded,
    required TResult Function(double totalPrice) totalPrice,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool addSuccess)? addItemSuccess,
    TResult? Function(bool addSuccess)? removeItemSuccess,
    TResult? Function(List<CartItemModel> items, double totalPrice)? loaded,
    TResult? Function(double totalPrice)? totalPrice,
    TResult? Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool addSuccess)? addItemSuccess,
    TResult Function(bool addSuccess)? removeItemSuccess,
    TResult Function(List<CartItemModel> items, double totalPrice)? loaded,
    TResult Function(double totalPrice)? totalPrice,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AddItemSuccess value) addItemSuccess,
    required TResult Function(_RemoveItemSuccess value) removeItemSuccess,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_TotalPrice value) totalPrice,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AddItemSuccess value)? addItemSuccess,
    TResult? Function(_RemoveItemSuccess value)? removeItemSuccess,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_TotalPrice value)? totalPrice,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AddItemSuccess value)? addItemSuccess,
    TResult Function(_RemoveItemSuccess value)? removeItemSuccess,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_TotalPrice value)? totalPrice,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CartState {
  const factory _Error(final Failure failure) = _$ErrorImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCartItems,
    required TResult Function(ProductModel product, int quantity) addToCart,
    required TResult Function(ProductModel product, int newQuantity)
        updateCartItemQuantity,
    required TResult Function(ProductModel product) removeFromCart,
    required TResult Function() calculateTotalPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCartItems,
    TResult? Function(ProductModel product, int quantity)? addToCart,
    TResult? Function(ProductModel product, int newQuantity)?
        updateCartItemQuantity,
    TResult? Function(ProductModel product)? removeFromCart,
    TResult? Function()? calculateTotalPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCartItems,
    TResult Function(ProductModel product, int quantity)? addToCart,
    TResult Function(ProductModel product, int newQuantity)?
        updateCartItemQuantity,
    TResult Function(ProductModel product)? removeFromCart,
    TResult Function()? calculateTotalPrice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCartItems value) loadCartItems,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_UpdateCartItemQuantity value)
        updateCartItemQuantity,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_CalculateTotalPrice value) calculateTotalPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCartItems value)? loadCartItems,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_UpdateCartItemQuantity value)? updateCartItemQuantity,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_CalculateTotalPrice value)? calculateTotalPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCartItems value)? loadCartItems,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_UpdateCartItemQuantity value)? updateCartItemQuantity,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_CalculateTotalPrice value)? calculateTotalPrice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadCartItemsImplCopyWith<$Res> {
  factory _$$LoadCartItemsImplCopyWith(
          _$LoadCartItemsImpl value, $Res Function(_$LoadCartItemsImpl) then) =
      __$$LoadCartItemsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCartItemsImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$LoadCartItemsImpl>
    implements _$$LoadCartItemsImplCopyWith<$Res> {
  __$$LoadCartItemsImplCopyWithImpl(
      _$LoadCartItemsImpl _value, $Res Function(_$LoadCartItemsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadCartItemsImpl implements _LoadCartItems {
  const _$LoadCartItemsImpl();

  @override
  String toString() {
    return 'CartEvent.loadCartItems()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadCartItemsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCartItems,
    required TResult Function(ProductModel product, int quantity) addToCart,
    required TResult Function(ProductModel product, int newQuantity)
        updateCartItemQuantity,
    required TResult Function(ProductModel product) removeFromCart,
    required TResult Function() calculateTotalPrice,
  }) {
    return loadCartItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCartItems,
    TResult? Function(ProductModel product, int quantity)? addToCart,
    TResult? Function(ProductModel product, int newQuantity)?
        updateCartItemQuantity,
    TResult? Function(ProductModel product)? removeFromCart,
    TResult? Function()? calculateTotalPrice,
  }) {
    return loadCartItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCartItems,
    TResult Function(ProductModel product, int quantity)? addToCart,
    TResult Function(ProductModel product, int newQuantity)?
        updateCartItemQuantity,
    TResult Function(ProductModel product)? removeFromCart,
    TResult Function()? calculateTotalPrice,
    required TResult orElse(),
  }) {
    if (loadCartItems != null) {
      return loadCartItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCartItems value) loadCartItems,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_UpdateCartItemQuantity value)
        updateCartItemQuantity,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_CalculateTotalPrice value) calculateTotalPrice,
  }) {
    return loadCartItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCartItems value)? loadCartItems,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_UpdateCartItemQuantity value)? updateCartItemQuantity,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_CalculateTotalPrice value)? calculateTotalPrice,
  }) {
    return loadCartItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCartItems value)? loadCartItems,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_UpdateCartItemQuantity value)? updateCartItemQuantity,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_CalculateTotalPrice value)? calculateTotalPrice,
    required TResult orElse(),
  }) {
    if (loadCartItems != null) {
      return loadCartItems(this);
    }
    return orElse();
  }
}

abstract class _LoadCartItems implements CartEvent {
  const factory _LoadCartItems() = _$LoadCartItemsImpl;
}

/// @nodoc
abstract class _$$AddToCartImplCopyWith<$Res> {
  factory _$$AddToCartImplCopyWith(
          _$AddToCartImpl value, $Res Function(_$AddToCartImpl) then) =
      __$$AddToCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product, int quantity});
}

/// @nodoc
class __$$AddToCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddToCartImpl>
    implements _$$AddToCartImplCopyWith<$Res> {
  __$$AddToCartImplCopyWithImpl(
      _$AddToCartImpl _value, $Res Function(_$AddToCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
  }) {
    return _then(_$AddToCartImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddToCartImpl implements _AddToCart {
  const _$AddToCartImpl(this.product, this.quantity);

  @override
  final ProductModel product;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartEvent.addToCart(product: $product, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      __$$AddToCartImplCopyWithImpl<_$AddToCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCartItems,
    required TResult Function(ProductModel product, int quantity) addToCart,
    required TResult Function(ProductModel product, int newQuantity)
        updateCartItemQuantity,
    required TResult Function(ProductModel product) removeFromCart,
    required TResult Function() calculateTotalPrice,
  }) {
    return addToCart(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCartItems,
    TResult? Function(ProductModel product, int quantity)? addToCart,
    TResult? Function(ProductModel product, int newQuantity)?
        updateCartItemQuantity,
    TResult? Function(ProductModel product)? removeFromCart,
    TResult? Function()? calculateTotalPrice,
  }) {
    return addToCart?.call(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCartItems,
    TResult Function(ProductModel product, int quantity)? addToCart,
    TResult Function(ProductModel product, int newQuantity)?
        updateCartItemQuantity,
    TResult Function(ProductModel product)? removeFromCart,
    TResult Function()? calculateTotalPrice,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(product, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCartItems value) loadCartItems,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_UpdateCartItemQuantity value)
        updateCartItemQuantity,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_CalculateTotalPrice value) calculateTotalPrice,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCartItems value)? loadCartItems,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_UpdateCartItemQuantity value)? updateCartItemQuantity,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_CalculateTotalPrice value)? calculateTotalPrice,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCartItems value)? loadCartItems,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_UpdateCartItemQuantity value)? updateCartItemQuantity,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_CalculateTotalPrice value)? calculateTotalPrice,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class _AddToCart implements CartEvent {
  const factory _AddToCart(final ProductModel product, final int quantity) =
      _$AddToCartImpl;

  ProductModel get product;
  int get quantity;
  @JsonKey(ignore: true)
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCartItemQuantityImplCopyWith<$Res> {
  factory _$$UpdateCartItemQuantityImplCopyWith(
          _$UpdateCartItemQuantityImpl value,
          $Res Function(_$UpdateCartItemQuantityImpl) then) =
      __$$UpdateCartItemQuantityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product, int newQuantity});
}

/// @nodoc
class __$$UpdateCartItemQuantityImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$UpdateCartItemQuantityImpl>
    implements _$$UpdateCartItemQuantityImplCopyWith<$Res> {
  __$$UpdateCartItemQuantityImplCopyWithImpl(
      _$UpdateCartItemQuantityImpl _value,
      $Res Function(_$UpdateCartItemQuantityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? newQuantity = null,
  }) {
    return _then(_$UpdateCartItemQuantityImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      null == newQuantity
          ? _value.newQuantity
          : newQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateCartItemQuantityImpl implements _UpdateCartItemQuantity {
  const _$UpdateCartItemQuantityImpl(this.product, this.newQuantity);

  @override
  final ProductModel product;
  @override
  final int newQuantity;

  @override
  String toString() {
    return 'CartEvent.updateCartItemQuantity(product: $product, newQuantity: $newQuantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCartItemQuantityImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.newQuantity, newQuantity) ||
                other.newQuantity == newQuantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, newQuantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCartItemQuantityImplCopyWith<_$UpdateCartItemQuantityImpl>
      get copyWith => __$$UpdateCartItemQuantityImplCopyWithImpl<
          _$UpdateCartItemQuantityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCartItems,
    required TResult Function(ProductModel product, int quantity) addToCart,
    required TResult Function(ProductModel product, int newQuantity)
        updateCartItemQuantity,
    required TResult Function(ProductModel product) removeFromCart,
    required TResult Function() calculateTotalPrice,
  }) {
    return updateCartItemQuantity(product, newQuantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCartItems,
    TResult? Function(ProductModel product, int quantity)? addToCart,
    TResult? Function(ProductModel product, int newQuantity)?
        updateCartItemQuantity,
    TResult? Function(ProductModel product)? removeFromCart,
    TResult? Function()? calculateTotalPrice,
  }) {
    return updateCartItemQuantity?.call(product, newQuantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCartItems,
    TResult Function(ProductModel product, int quantity)? addToCart,
    TResult Function(ProductModel product, int newQuantity)?
        updateCartItemQuantity,
    TResult Function(ProductModel product)? removeFromCart,
    TResult Function()? calculateTotalPrice,
    required TResult orElse(),
  }) {
    if (updateCartItemQuantity != null) {
      return updateCartItemQuantity(product, newQuantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCartItems value) loadCartItems,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_UpdateCartItemQuantity value)
        updateCartItemQuantity,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_CalculateTotalPrice value) calculateTotalPrice,
  }) {
    return updateCartItemQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCartItems value)? loadCartItems,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_UpdateCartItemQuantity value)? updateCartItemQuantity,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_CalculateTotalPrice value)? calculateTotalPrice,
  }) {
    return updateCartItemQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCartItems value)? loadCartItems,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_UpdateCartItemQuantity value)? updateCartItemQuantity,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_CalculateTotalPrice value)? calculateTotalPrice,
    required TResult orElse(),
  }) {
    if (updateCartItemQuantity != null) {
      return updateCartItemQuantity(this);
    }
    return orElse();
  }
}

abstract class _UpdateCartItemQuantity implements CartEvent {
  const factory _UpdateCartItemQuantity(
          final ProductModel product, final int newQuantity) =
      _$UpdateCartItemQuantityImpl;

  ProductModel get product;
  int get newQuantity;
  @JsonKey(ignore: true)
  _$$UpdateCartItemQuantityImplCopyWith<_$UpdateCartItemQuantityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFromCartImplCopyWith<$Res> {
  factory _$$RemoveFromCartImplCopyWith(_$RemoveFromCartImpl value,
          $Res Function(_$RemoveFromCartImpl) then) =
      __$$RemoveFromCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product});
}

/// @nodoc
class __$$RemoveFromCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$RemoveFromCartImpl>
    implements _$$RemoveFromCartImplCopyWith<$Res> {
  __$$RemoveFromCartImplCopyWithImpl(
      _$RemoveFromCartImpl _value, $Res Function(_$RemoveFromCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$RemoveFromCartImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc

class _$RemoveFromCartImpl implements _RemoveFromCart {
  const _$RemoveFromCartImpl(this.product);

  @override
  final ProductModel product;

  @override
  String toString() {
    return 'CartEvent.removeFromCart(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFromCartImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFromCartImplCopyWith<_$RemoveFromCartImpl> get copyWith =>
      __$$RemoveFromCartImplCopyWithImpl<_$RemoveFromCartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCartItems,
    required TResult Function(ProductModel product, int quantity) addToCart,
    required TResult Function(ProductModel product, int newQuantity)
        updateCartItemQuantity,
    required TResult Function(ProductModel product) removeFromCart,
    required TResult Function() calculateTotalPrice,
  }) {
    return removeFromCart(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCartItems,
    TResult? Function(ProductModel product, int quantity)? addToCart,
    TResult? Function(ProductModel product, int newQuantity)?
        updateCartItemQuantity,
    TResult? Function(ProductModel product)? removeFromCart,
    TResult? Function()? calculateTotalPrice,
  }) {
    return removeFromCart?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCartItems,
    TResult Function(ProductModel product, int quantity)? addToCart,
    TResult Function(ProductModel product, int newQuantity)?
        updateCartItemQuantity,
    TResult Function(ProductModel product)? removeFromCart,
    TResult Function()? calculateTotalPrice,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCartItems value) loadCartItems,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_UpdateCartItemQuantity value)
        updateCartItemQuantity,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_CalculateTotalPrice value) calculateTotalPrice,
  }) {
    return removeFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCartItems value)? loadCartItems,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_UpdateCartItemQuantity value)? updateCartItemQuantity,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_CalculateTotalPrice value)? calculateTotalPrice,
  }) {
    return removeFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCartItems value)? loadCartItems,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_UpdateCartItemQuantity value)? updateCartItemQuantity,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_CalculateTotalPrice value)? calculateTotalPrice,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromCart implements CartEvent {
  const factory _RemoveFromCart(final ProductModel product) =
      _$RemoveFromCartImpl;

  ProductModel get product;
  @JsonKey(ignore: true)
  _$$RemoveFromCartImplCopyWith<_$RemoveFromCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CalculateTotalPriceImplCopyWith<$Res> {
  factory _$$CalculateTotalPriceImplCopyWith(_$CalculateTotalPriceImpl value,
          $Res Function(_$CalculateTotalPriceImpl) then) =
      __$$CalculateTotalPriceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalculateTotalPriceImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CalculateTotalPriceImpl>
    implements _$$CalculateTotalPriceImplCopyWith<$Res> {
  __$$CalculateTotalPriceImplCopyWithImpl(_$CalculateTotalPriceImpl _value,
      $Res Function(_$CalculateTotalPriceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CalculateTotalPriceImpl implements _CalculateTotalPrice {
  const _$CalculateTotalPriceImpl();

  @override
  String toString() {
    return 'CartEvent.calculateTotalPrice()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculateTotalPriceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCartItems,
    required TResult Function(ProductModel product, int quantity) addToCart,
    required TResult Function(ProductModel product, int newQuantity)
        updateCartItemQuantity,
    required TResult Function(ProductModel product) removeFromCart,
    required TResult Function() calculateTotalPrice,
  }) {
    return calculateTotalPrice();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCartItems,
    TResult? Function(ProductModel product, int quantity)? addToCart,
    TResult? Function(ProductModel product, int newQuantity)?
        updateCartItemQuantity,
    TResult? Function(ProductModel product)? removeFromCart,
    TResult? Function()? calculateTotalPrice,
  }) {
    return calculateTotalPrice?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCartItems,
    TResult Function(ProductModel product, int quantity)? addToCart,
    TResult Function(ProductModel product, int newQuantity)?
        updateCartItemQuantity,
    TResult Function(ProductModel product)? removeFromCart,
    TResult Function()? calculateTotalPrice,
    required TResult orElse(),
  }) {
    if (calculateTotalPrice != null) {
      return calculateTotalPrice();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCartItems value) loadCartItems,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_UpdateCartItemQuantity value)
        updateCartItemQuantity,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_CalculateTotalPrice value) calculateTotalPrice,
  }) {
    return calculateTotalPrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCartItems value)? loadCartItems,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_UpdateCartItemQuantity value)? updateCartItemQuantity,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_CalculateTotalPrice value)? calculateTotalPrice,
  }) {
    return calculateTotalPrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCartItems value)? loadCartItems,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_UpdateCartItemQuantity value)? updateCartItemQuantity,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_CalculateTotalPrice value)? calculateTotalPrice,
    required TResult orElse(),
  }) {
    if (calculateTotalPrice != null) {
      return calculateTotalPrice(this);
    }
    return orElse();
  }
}

abstract class _CalculateTotalPrice implements CartEvent {
  const factory _CalculateTotalPrice() = _$CalculateTotalPriceImpl;
}
