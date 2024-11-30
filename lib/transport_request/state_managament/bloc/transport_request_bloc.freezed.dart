// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transport_request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransportRequestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TransportRequest request) add,
    required TResult Function(TransportRequest request) update,
    required TResult Function(int id) delete,
    required TResult Function() getAll,
    required TResult Function(String qrContent) scanQr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TransportRequest request)? add,
    TResult? Function(TransportRequest request)? update,
    TResult? Function(int id)? delete,
    TResult? Function()? getAll,
    TResult? Function(String qrContent)? scanQr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TransportRequest request)? add,
    TResult Function(TransportRequest request)? update,
    TResult Function(int id)? delete,
    TResult Function()? getAll,
    TResult Function(String qrContent)? scanQr,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddTransportRequest value) add,
    required TResult Function(_UpdateTransportRequest value) update,
    required TResult Function(_DeleteTransportRequest value) delete,
    required TResult Function(_GetAllTransportRequest value) getAll,
    required TResult Function(_ScanQr value) scanQr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddTransportRequest value)? add,
    TResult? Function(_UpdateTransportRequest value)? update,
    TResult? Function(_DeleteTransportRequest value)? delete,
    TResult? Function(_GetAllTransportRequest value)? getAll,
    TResult? Function(_ScanQr value)? scanQr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddTransportRequest value)? add,
    TResult Function(_UpdateTransportRequest value)? update,
    TResult Function(_DeleteTransportRequest value)? delete,
    TResult Function(_GetAllTransportRequest value)? getAll,
    TResult Function(_ScanQr value)? scanQr,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportRequestEventCopyWith<$Res> {
  factory $TransportRequestEventCopyWith(TransportRequestEvent value,
          $Res Function(TransportRequestEvent) then) =
      _$TransportRequestEventCopyWithImpl<$Res, TransportRequestEvent>;
}

/// @nodoc
class _$TransportRequestEventCopyWithImpl<$Res,
        $Val extends TransportRequestEvent>
    implements $TransportRequestEventCopyWith<$Res> {
  _$TransportRequestEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$TransportRequestEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'TransportRequestEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TransportRequest request) add,
    required TResult Function(TransportRequest request) update,
    required TResult Function(int id) delete,
    required TResult Function() getAll,
    required TResult Function(String qrContent) scanQr,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TransportRequest request)? add,
    TResult? Function(TransportRequest request)? update,
    TResult? Function(int id)? delete,
    TResult? Function()? getAll,
    TResult? Function(String qrContent)? scanQr,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TransportRequest request)? add,
    TResult Function(TransportRequest request)? update,
    TResult Function(int id)? delete,
    TResult Function()? getAll,
    TResult Function(String qrContent)? scanQr,
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
    required TResult Function(_AddTransportRequest value) add,
    required TResult Function(_UpdateTransportRequest value) update,
    required TResult Function(_DeleteTransportRequest value) delete,
    required TResult Function(_GetAllTransportRequest value) getAll,
    required TResult Function(_ScanQr value) scanQr,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddTransportRequest value)? add,
    TResult? Function(_UpdateTransportRequest value)? update,
    TResult? Function(_DeleteTransportRequest value)? delete,
    TResult? Function(_GetAllTransportRequest value)? getAll,
    TResult? Function(_ScanQr value)? scanQr,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddTransportRequest value)? add,
    TResult Function(_UpdateTransportRequest value)? update,
    TResult Function(_DeleteTransportRequest value)? delete,
    TResult Function(_GetAllTransportRequest value)? getAll,
    TResult Function(_ScanQr value)? scanQr,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TransportRequestEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddTransportRequestImplCopyWith<$Res> {
  factory _$$AddTransportRequestImplCopyWith(_$AddTransportRequestImpl value,
          $Res Function(_$AddTransportRequestImpl) then) =
      __$$AddTransportRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TransportRequest request});

  $TransportRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$AddTransportRequestImplCopyWithImpl<$Res>
    extends _$TransportRequestEventCopyWithImpl<$Res, _$AddTransportRequestImpl>
    implements _$$AddTransportRequestImplCopyWith<$Res> {
  __$$AddTransportRequestImplCopyWithImpl(_$AddTransportRequestImpl _value,
      $Res Function(_$AddTransportRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$AddTransportRequestImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as TransportRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TransportRequestCopyWith<$Res> get request {
    return $TransportRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$AddTransportRequestImpl implements _AddTransportRequest {
  const _$AddTransportRequestImpl(this.request);

  @override
  final TransportRequest request;

  @override
  String toString() {
    return 'TransportRequestEvent.add(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTransportRequestImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTransportRequestImplCopyWith<_$AddTransportRequestImpl> get copyWith =>
      __$$AddTransportRequestImplCopyWithImpl<_$AddTransportRequestImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TransportRequest request) add,
    required TResult Function(TransportRequest request) update,
    required TResult Function(int id) delete,
    required TResult Function() getAll,
    required TResult Function(String qrContent) scanQr,
  }) {
    return add(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TransportRequest request)? add,
    TResult? Function(TransportRequest request)? update,
    TResult? Function(int id)? delete,
    TResult? Function()? getAll,
    TResult? Function(String qrContent)? scanQr,
  }) {
    return add?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TransportRequest request)? add,
    TResult Function(TransportRequest request)? update,
    TResult Function(int id)? delete,
    TResult Function()? getAll,
    TResult Function(String qrContent)? scanQr,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddTransportRequest value) add,
    required TResult Function(_UpdateTransportRequest value) update,
    required TResult Function(_DeleteTransportRequest value) delete,
    required TResult Function(_GetAllTransportRequest value) getAll,
    required TResult Function(_ScanQr value) scanQr,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddTransportRequest value)? add,
    TResult? Function(_UpdateTransportRequest value)? update,
    TResult? Function(_DeleteTransportRequest value)? delete,
    TResult? Function(_GetAllTransportRequest value)? getAll,
    TResult? Function(_ScanQr value)? scanQr,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddTransportRequest value)? add,
    TResult Function(_UpdateTransportRequest value)? update,
    TResult Function(_DeleteTransportRequest value)? delete,
    TResult Function(_GetAllTransportRequest value)? getAll,
    TResult Function(_ScanQr value)? scanQr,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _AddTransportRequest implements TransportRequestEvent {
  const factory _AddTransportRequest(final TransportRequest request) =
      _$AddTransportRequestImpl;

  TransportRequest get request;
  @JsonKey(ignore: true)
  _$$AddTransportRequestImplCopyWith<_$AddTransportRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTransportRequestImplCopyWith<$Res> {
  factory _$$UpdateTransportRequestImplCopyWith(
          _$UpdateTransportRequestImpl value,
          $Res Function(_$UpdateTransportRequestImpl) then) =
      __$$UpdateTransportRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TransportRequest request});

  $TransportRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$UpdateTransportRequestImplCopyWithImpl<$Res>
    extends _$TransportRequestEventCopyWithImpl<$Res,
        _$UpdateTransportRequestImpl>
    implements _$$UpdateTransportRequestImplCopyWith<$Res> {
  __$$UpdateTransportRequestImplCopyWithImpl(
      _$UpdateTransportRequestImpl _value,
      $Res Function(_$UpdateTransportRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$UpdateTransportRequestImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as TransportRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TransportRequestCopyWith<$Res> get request {
    return $TransportRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$UpdateTransportRequestImpl implements _UpdateTransportRequest {
  const _$UpdateTransportRequestImpl(this.request);

  @override
  final TransportRequest request;

  @override
  String toString() {
    return 'TransportRequestEvent.update(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTransportRequestImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTransportRequestImplCopyWith<_$UpdateTransportRequestImpl>
      get copyWith => __$$UpdateTransportRequestImplCopyWithImpl<
          _$UpdateTransportRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TransportRequest request) add,
    required TResult Function(TransportRequest request) update,
    required TResult Function(int id) delete,
    required TResult Function() getAll,
    required TResult Function(String qrContent) scanQr,
  }) {
    return update(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TransportRequest request)? add,
    TResult? Function(TransportRequest request)? update,
    TResult? Function(int id)? delete,
    TResult? Function()? getAll,
    TResult? Function(String qrContent)? scanQr,
  }) {
    return update?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TransportRequest request)? add,
    TResult Function(TransportRequest request)? update,
    TResult Function(int id)? delete,
    TResult Function()? getAll,
    TResult Function(String qrContent)? scanQr,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddTransportRequest value) add,
    required TResult Function(_UpdateTransportRequest value) update,
    required TResult Function(_DeleteTransportRequest value) delete,
    required TResult Function(_GetAllTransportRequest value) getAll,
    required TResult Function(_ScanQr value) scanQr,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddTransportRequest value)? add,
    TResult? Function(_UpdateTransportRequest value)? update,
    TResult? Function(_DeleteTransportRequest value)? delete,
    TResult? Function(_GetAllTransportRequest value)? getAll,
    TResult? Function(_ScanQr value)? scanQr,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddTransportRequest value)? add,
    TResult Function(_UpdateTransportRequest value)? update,
    TResult Function(_DeleteTransportRequest value)? delete,
    TResult Function(_GetAllTransportRequest value)? getAll,
    TResult Function(_ScanQr value)? scanQr,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateTransportRequest implements TransportRequestEvent {
  const factory _UpdateTransportRequest(final TransportRequest request) =
      _$UpdateTransportRequestImpl;

  TransportRequest get request;
  @JsonKey(ignore: true)
  _$$UpdateTransportRequestImplCopyWith<_$UpdateTransportRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTransportRequestImplCopyWith<$Res> {
  factory _$$DeleteTransportRequestImplCopyWith(
          _$DeleteTransportRequestImpl value,
          $Res Function(_$DeleteTransportRequestImpl) then) =
      __$$DeleteTransportRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteTransportRequestImplCopyWithImpl<$Res>
    extends _$TransportRequestEventCopyWithImpl<$Res,
        _$DeleteTransportRequestImpl>
    implements _$$DeleteTransportRequestImplCopyWith<$Res> {
  __$$DeleteTransportRequestImplCopyWithImpl(
      _$DeleteTransportRequestImpl _value,
      $Res Function(_$DeleteTransportRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteTransportRequestImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteTransportRequestImpl implements _DeleteTransportRequest {
  const _$DeleteTransportRequestImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'TransportRequestEvent.delete(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTransportRequestImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTransportRequestImplCopyWith<_$DeleteTransportRequestImpl>
      get copyWith => __$$DeleteTransportRequestImplCopyWithImpl<
          _$DeleteTransportRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TransportRequest request) add,
    required TResult Function(TransportRequest request) update,
    required TResult Function(int id) delete,
    required TResult Function() getAll,
    required TResult Function(String qrContent) scanQr,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TransportRequest request)? add,
    TResult? Function(TransportRequest request)? update,
    TResult? Function(int id)? delete,
    TResult? Function()? getAll,
    TResult? Function(String qrContent)? scanQr,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TransportRequest request)? add,
    TResult Function(TransportRequest request)? update,
    TResult Function(int id)? delete,
    TResult Function()? getAll,
    TResult Function(String qrContent)? scanQr,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddTransportRequest value) add,
    required TResult Function(_UpdateTransportRequest value) update,
    required TResult Function(_DeleteTransportRequest value) delete,
    required TResult Function(_GetAllTransportRequest value) getAll,
    required TResult Function(_ScanQr value) scanQr,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddTransportRequest value)? add,
    TResult? Function(_UpdateTransportRequest value)? update,
    TResult? Function(_DeleteTransportRequest value)? delete,
    TResult? Function(_GetAllTransportRequest value)? getAll,
    TResult? Function(_ScanQr value)? scanQr,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddTransportRequest value)? add,
    TResult Function(_UpdateTransportRequest value)? update,
    TResult Function(_DeleteTransportRequest value)? delete,
    TResult Function(_GetAllTransportRequest value)? getAll,
    TResult Function(_ScanQr value)? scanQr,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _DeleteTransportRequest implements TransportRequestEvent {
  const factory _DeleteTransportRequest(final int id) =
      _$DeleteTransportRequestImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteTransportRequestImplCopyWith<_$DeleteTransportRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllTransportRequestImplCopyWith<$Res> {
  factory _$$GetAllTransportRequestImplCopyWith(
          _$GetAllTransportRequestImpl value,
          $Res Function(_$GetAllTransportRequestImpl) then) =
      __$$GetAllTransportRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllTransportRequestImplCopyWithImpl<$Res>
    extends _$TransportRequestEventCopyWithImpl<$Res,
        _$GetAllTransportRequestImpl>
    implements _$$GetAllTransportRequestImplCopyWith<$Res> {
  __$$GetAllTransportRequestImplCopyWithImpl(
      _$GetAllTransportRequestImpl _value,
      $Res Function(_$GetAllTransportRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllTransportRequestImpl implements _GetAllTransportRequest {
  const _$GetAllTransportRequestImpl();

  @override
  String toString() {
    return 'TransportRequestEvent.getAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllTransportRequestImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TransportRequest request) add,
    required TResult Function(TransportRequest request) update,
    required TResult Function(int id) delete,
    required TResult Function() getAll,
    required TResult Function(String qrContent) scanQr,
  }) {
    return getAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TransportRequest request)? add,
    TResult? Function(TransportRequest request)? update,
    TResult? Function(int id)? delete,
    TResult? Function()? getAll,
    TResult? Function(String qrContent)? scanQr,
  }) {
    return getAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TransportRequest request)? add,
    TResult Function(TransportRequest request)? update,
    TResult Function(int id)? delete,
    TResult Function()? getAll,
    TResult Function(String qrContent)? scanQr,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddTransportRequest value) add,
    required TResult Function(_UpdateTransportRequest value) update,
    required TResult Function(_DeleteTransportRequest value) delete,
    required TResult Function(_GetAllTransportRequest value) getAll,
    required TResult Function(_ScanQr value) scanQr,
  }) {
    return getAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddTransportRequest value)? add,
    TResult? Function(_UpdateTransportRequest value)? update,
    TResult? Function(_DeleteTransportRequest value)? delete,
    TResult? Function(_GetAllTransportRequest value)? getAll,
    TResult? Function(_ScanQr value)? scanQr,
  }) {
    return getAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddTransportRequest value)? add,
    TResult Function(_UpdateTransportRequest value)? update,
    TResult Function(_DeleteTransportRequest value)? delete,
    TResult Function(_GetAllTransportRequest value)? getAll,
    TResult Function(_ScanQr value)? scanQr,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(this);
    }
    return orElse();
  }
}

abstract class _GetAllTransportRequest implements TransportRequestEvent {
  const factory _GetAllTransportRequest() = _$GetAllTransportRequestImpl;
}

/// @nodoc
abstract class _$$ScanQrImplCopyWith<$Res> {
  factory _$$ScanQrImplCopyWith(
          _$ScanQrImpl value, $Res Function(_$ScanQrImpl) then) =
      __$$ScanQrImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String qrContent});
}

/// @nodoc
class __$$ScanQrImplCopyWithImpl<$Res>
    extends _$TransportRequestEventCopyWithImpl<$Res, _$ScanQrImpl>
    implements _$$ScanQrImplCopyWith<$Res> {
  __$$ScanQrImplCopyWithImpl(
      _$ScanQrImpl _value, $Res Function(_$ScanQrImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qrContent = null,
  }) {
    return _then(_$ScanQrImpl(
      null == qrContent
          ? _value.qrContent
          : qrContent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ScanQrImpl implements _ScanQr {
  const _$ScanQrImpl(this.qrContent);

  @override
  final String qrContent;

  @override
  String toString() {
    return 'TransportRequestEvent.scanQr(qrContent: $qrContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanQrImpl &&
            (identical(other.qrContent, qrContent) ||
                other.qrContent == qrContent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, qrContent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanQrImplCopyWith<_$ScanQrImpl> get copyWith =>
      __$$ScanQrImplCopyWithImpl<_$ScanQrImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(TransportRequest request) add,
    required TResult Function(TransportRequest request) update,
    required TResult Function(int id) delete,
    required TResult Function() getAll,
    required TResult Function(String qrContent) scanQr,
  }) {
    return scanQr(qrContent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(TransportRequest request)? add,
    TResult? Function(TransportRequest request)? update,
    TResult? Function(int id)? delete,
    TResult? Function()? getAll,
    TResult? Function(String qrContent)? scanQr,
  }) {
    return scanQr?.call(qrContent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(TransportRequest request)? add,
    TResult Function(TransportRequest request)? update,
    TResult Function(int id)? delete,
    TResult Function()? getAll,
    TResult Function(String qrContent)? scanQr,
    required TResult orElse(),
  }) {
    if (scanQr != null) {
      return scanQr(qrContent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddTransportRequest value) add,
    required TResult Function(_UpdateTransportRequest value) update,
    required TResult Function(_DeleteTransportRequest value) delete,
    required TResult Function(_GetAllTransportRequest value) getAll,
    required TResult Function(_ScanQr value) scanQr,
  }) {
    return scanQr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddTransportRequest value)? add,
    TResult? Function(_UpdateTransportRequest value)? update,
    TResult? Function(_DeleteTransportRequest value)? delete,
    TResult? Function(_GetAllTransportRequest value)? getAll,
    TResult? Function(_ScanQr value)? scanQr,
  }) {
    return scanQr?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddTransportRequest value)? add,
    TResult Function(_UpdateTransportRequest value)? update,
    TResult Function(_DeleteTransportRequest value)? delete,
    TResult Function(_GetAllTransportRequest value)? getAll,
    TResult Function(_ScanQr value)? scanQr,
    required TResult orElse(),
  }) {
    if (scanQr != null) {
      return scanQr(this);
    }
    return orElse();
  }
}

abstract class _ScanQr implements TransportRequestEvent {
  const factory _ScanQr(final String qrContent) = _$ScanQrImpl;

  String get qrContent;
  @JsonKey(ignore: true)
  _$$ScanQrImplCopyWith<_$ScanQrImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransportRequestState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TransportRequest> requests) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TransportRequest> requests)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TransportRequest> requests)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportRequestStateCopyWith<$Res> {
  factory $TransportRequestStateCopyWith(TransportRequestState value,
          $Res Function(TransportRequestState) then) =
      _$TransportRequestStateCopyWithImpl<$Res, TransportRequestState>;
}

/// @nodoc
class _$TransportRequestStateCopyWithImpl<$Res,
        $Val extends TransportRequestState>
    implements $TransportRequestStateCopyWith<$Res> {
  _$TransportRequestStateCopyWithImpl(this._value, this._then);

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
    extends _$TransportRequestStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'TransportRequestState.initial()';
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
    required TResult Function(List<TransportRequest> requests) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TransportRequest> requests)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TransportRequest> requests)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TransportRequestState {
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
    extends _$TransportRequestStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'TransportRequestState.loading()';
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
    required TResult Function(List<TransportRequest> requests) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TransportRequest> requests)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TransportRequest> requests)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TransportRequestState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TransportRequest> requests});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$TransportRequestStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requests = null,
  }) {
    return _then(_$LoadedImpl(
      null == requests
          ? _value._requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<TransportRequest>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<TransportRequest> requests)
      : _requests = requests;

  final List<TransportRequest> _requests;
  @override
  List<TransportRequest> get requests {
    if (_requests is EqualUnmodifiableListView) return _requests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requests);
  }

  @override
  String toString() {
    return 'TransportRequestState.loaded(requests: $requests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._requests, _requests));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_requests));

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
    required TResult Function(List<TransportRequest> requests) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(requests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TransportRequest> requests)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(requests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TransportRequest> requests)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(requests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements TransportRequestState {
  const factory _Loaded(final List<TransportRequest> requests) = _$LoadedImpl;

  List<TransportRequest> get requests;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$TransportRequestStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TransportRequestState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

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
    required TResult Function(List<TransportRequest> requests) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TransportRequest> requests)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TransportRequest> requests)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TransportRequestState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
