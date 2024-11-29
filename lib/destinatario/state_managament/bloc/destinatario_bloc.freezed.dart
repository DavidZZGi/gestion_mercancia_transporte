// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'destinatario_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DestinatarioEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAll,
    required TResult Function(Destinatario destinatario) add,
    required TResult Function(Destinatario destinatario) update,
    required TResult Function(int id) delete,
    required TResult Function(String qrContent) scanQr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAll,
    TResult? Function(Destinatario destinatario)? add,
    TResult? Function(Destinatario destinatario)? update,
    TResult? Function(int id)? delete,
    TResult? Function(String qrContent)? scanQr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAll,
    TResult Function(Destinatario destinatario)? add,
    TResult Function(Destinatario destinatario)? update,
    TResult Function(int id)? delete,
    TResult Function(String qrContent)? scanQr,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllDestinatario value) getAll,
    required TResult Function(_AddDestinatario value) add,
    required TResult Function(_UpdateDestinatario value) update,
    required TResult Function(_DeleteDestinatario value) delete,
    required TResult Function(_ScanQr value) scanQr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllDestinatario value)? getAll,
    TResult? Function(_AddDestinatario value)? add,
    TResult? Function(_UpdateDestinatario value)? update,
    TResult? Function(_DeleteDestinatario value)? delete,
    TResult? Function(_ScanQr value)? scanQr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllDestinatario value)? getAll,
    TResult Function(_AddDestinatario value)? add,
    TResult Function(_UpdateDestinatario value)? update,
    TResult Function(_DeleteDestinatario value)? delete,
    TResult Function(_ScanQr value)? scanQr,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinatarioEventCopyWith<$Res> {
  factory $DestinatarioEventCopyWith(
          DestinatarioEvent value, $Res Function(DestinatarioEvent) then) =
      _$DestinatarioEventCopyWithImpl<$Res, DestinatarioEvent>;
}

/// @nodoc
class _$DestinatarioEventCopyWithImpl<$Res, $Val extends DestinatarioEvent>
    implements $DestinatarioEventCopyWith<$Res> {
  _$DestinatarioEventCopyWithImpl(this._value, this._then);

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
    extends _$DestinatarioEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'DestinatarioEvent.started()';
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
    required TResult Function() getAll,
    required TResult Function(Destinatario destinatario) add,
    required TResult Function(Destinatario destinatario) update,
    required TResult Function(int id) delete,
    required TResult Function(String qrContent) scanQr,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAll,
    TResult? Function(Destinatario destinatario)? add,
    TResult? Function(Destinatario destinatario)? update,
    TResult? Function(int id)? delete,
    TResult? Function(String qrContent)? scanQr,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAll,
    TResult Function(Destinatario destinatario)? add,
    TResult Function(Destinatario destinatario)? update,
    TResult Function(int id)? delete,
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
    required TResult Function(_GetAllDestinatario value) getAll,
    required TResult Function(_AddDestinatario value) add,
    required TResult Function(_UpdateDestinatario value) update,
    required TResult Function(_DeleteDestinatario value) delete,
    required TResult Function(_ScanQr value) scanQr,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllDestinatario value)? getAll,
    TResult? Function(_AddDestinatario value)? add,
    TResult? Function(_UpdateDestinatario value)? update,
    TResult? Function(_DeleteDestinatario value)? delete,
    TResult? Function(_ScanQr value)? scanQr,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllDestinatario value)? getAll,
    TResult Function(_AddDestinatario value)? add,
    TResult Function(_UpdateDestinatario value)? update,
    TResult Function(_DeleteDestinatario value)? delete,
    TResult Function(_ScanQr value)? scanQr,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DestinatarioEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetAllDestinatarioImplCopyWith<$Res> {
  factory _$$GetAllDestinatarioImplCopyWith(_$GetAllDestinatarioImpl value,
          $Res Function(_$GetAllDestinatarioImpl) then) =
      __$$GetAllDestinatarioImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllDestinatarioImplCopyWithImpl<$Res>
    extends _$DestinatarioEventCopyWithImpl<$Res, _$GetAllDestinatarioImpl>
    implements _$$GetAllDestinatarioImplCopyWith<$Res> {
  __$$GetAllDestinatarioImplCopyWithImpl(_$GetAllDestinatarioImpl _value,
      $Res Function(_$GetAllDestinatarioImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllDestinatarioImpl implements _GetAllDestinatario {
  const _$GetAllDestinatarioImpl();

  @override
  String toString() {
    return 'DestinatarioEvent.getAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllDestinatarioImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAll,
    required TResult Function(Destinatario destinatario) add,
    required TResult Function(Destinatario destinatario) update,
    required TResult Function(int id) delete,
    required TResult Function(String qrContent) scanQr,
  }) {
    return getAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAll,
    TResult? Function(Destinatario destinatario)? add,
    TResult? Function(Destinatario destinatario)? update,
    TResult? Function(int id)? delete,
    TResult? Function(String qrContent)? scanQr,
  }) {
    return getAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAll,
    TResult Function(Destinatario destinatario)? add,
    TResult Function(Destinatario destinatario)? update,
    TResult Function(int id)? delete,
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
    required TResult Function(_GetAllDestinatario value) getAll,
    required TResult Function(_AddDestinatario value) add,
    required TResult Function(_UpdateDestinatario value) update,
    required TResult Function(_DeleteDestinatario value) delete,
    required TResult Function(_ScanQr value) scanQr,
  }) {
    return getAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllDestinatario value)? getAll,
    TResult? Function(_AddDestinatario value)? add,
    TResult? Function(_UpdateDestinatario value)? update,
    TResult? Function(_DeleteDestinatario value)? delete,
    TResult? Function(_ScanQr value)? scanQr,
  }) {
    return getAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllDestinatario value)? getAll,
    TResult Function(_AddDestinatario value)? add,
    TResult Function(_UpdateDestinatario value)? update,
    TResult Function(_DeleteDestinatario value)? delete,
    TResult Function(_ScanQr value)? scanQr,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(this);
    }
    return orElse();
  }
}

abstract class _GetAllDestinatario implements DestinatarioEvent {
  const factory _GetAllDestinatario() = _$GetAllDestinatarioImpl;
}

/// @nodoc
abstract class _$$AddDestinatarioImplCopyWith<$Res> {
  factory _$$AddDestinatarioImplCopyWith(_$AddDestinatarioImpl value,
          $Res Function(_$AddDestinatarioImpl) then) =
      __$$AddDestinatarioImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Destinatario destinatario});

  $DestinatarioCopyWith<$Res> get destinatario;
}

/// @nodoc
class __$$AddDestinatarioImplCopyWithImpl<$Res>
    extends _$DestinatarioEventCopyWithImpl<$Res, _$AddDestinatarioImpl>
    implements _$$AddDestinatarioImplCopyWith<$Res> {
  __$$AddDestinatarioImplCopyWithImpl(
      _$AddDestinatarioImpl _value, $Res Function(_$AddDestinatarioImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destinatario = null,
  }) {
    return _then(_$AddDestinatarioImpl(
      destinatario: null == destinatario
          ? _value.destinatario
          : destinatario // ignore: cast_nullable_to_non_nullable
              as Destinatario,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DestinatarioCopyWith<$Res> get destinatario {
    return $DestinatarioCopyWith<$Res>(_value.destinatario, (value) {
      return _then(_value.copyWith(destinatario: value));
    });
  }
}

/// @nodoc

class _$AddDestinatarioImpl implements _AddDestinatario {
  const _$AddDestinatarioImpl({required this.destinatario});

  @override
  final Destinatario destinatario;

  @override
  String toString() {
    return 'DestinatarioEvent.add(destinatario: $destinatario)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDestinatarioImpl &&
            (identical(other.destinatario, destinatario) ||
                other.destinatario == destinatario));
  }

  @override
  int get hashCode => Object.hash(runtimeType, destinatario);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDestinatarioImplCopyWith<_$AddDestinatarioImpl> get copyWith =>
      __$$AddDestinatarioImplCopyWithImpl<_$AddDestinatarioImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAll,
    required TResult Function(Destinatario destinatario) add,
    required TResult Function(Destinatario destinatario) update,
    required TResult Function(int id) delete,
    required TResult Function(String qrContent) scanQr,
  }) {
    return add(destinatario);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAll,
    TResult? Function(Destinatario destinatario)? add,
    TResult? Function(Destinatario destinatario)? update,
    TResult? Function(int id)? delete,
    TResult? Function(String qrContent)? scanQr,
  }) {
    return add?.call(destinatario);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAll,
    TResult Function(Destinatario destinatario)? add,
    TResult Function(Destinatario destinatario)? update,
    TResult Function(int id)? delete,
    TResult Function(String qrContent)? scanQr,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(destinatario);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllDestinatario value) getAll,
    required TResult Function(_AddDestinatario value) add,
    required TResult Function(_UpdateDestinatario value) update,
    required TResult Function(_DeleteDestinatario value) delete,
    required TResult Function(_ScanQr value) scanQr,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllDestinatario value)? getAll,
    TResult? Function(_AddDestinatario value)? add,
    TResult? Function(_UpdateDestinatario value)? update,
    TResult? Function(_DeleteDestinatario value)? delete,
    TResult? Function(_ScanQr value)? scanQr,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllDestinatario value)? getAll,
    TResult Function(_AddDestinatario value)? add,
    TResult Function(_UpdateDestinatario value)? update,
    TResult Function(_DeleteDestinatario value)? delete,
    TResult Function(_ScanQr value)? scanQr,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _AddDestinatario implements DestinatarioEvent {
  const factory _AddDestinatario({required final Destinatario destinatario}) =
      _$AddDestinatarioImpl;

  Destinatario get destinatario;
  @JsonKey(ignore: true)
  _$$AddDestinatarioImplCopyWith<_$AddDestinatarioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDestinatarioImplCopyWith<$Res> {
  factory _$$UpdateDestinatarioImplCopyWith(_$UpdateDestinatarioImpl value,
          $Res Function(_$UpdateDestinatarioImpl) then) =
      __$$UpdateDestinatarioImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Destinatario destinatario});

  $DestinatarioCopyWith<$Res> get destinatario;
}

/// @nodoc
class __$$UpdateDestinatarioImplCopyWithImpl<$Res>
    extends _$DestinatarioEventCopyWithImpl<$Res, _$UpdateDestinatarioImpl>
    implements _$$UpdateDestinatarioImplCopyWith<$Res> {
  __$$UpdateDestinatarioImplCopyWithImpl(_$UpdateDestinatarioImpl _value,
      $Res Function(_$UpdateDestinatarioImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destinatario = null,
  }) {
    return _then(_$UpdateDestinatarioImpl(
      destinatario: null == destinatario
          ? _value.destinatario
          : destinatario // ignore: cast_nullable_to_non_nullable
              as Destinatario,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DestinatarioCopyWith<$Res> get destinatario {
    return $DestinatarioCopyWith<$Res>(_value.destinatario, (value) {
      return _then(_value.copyWith(destinatario: value));
    });
  }
}

/// @nodoc

class _$UpdateDestinatarioImpl implements _UpdateDestinatario {
  const _$UpdateDestinatarioImpl({required this.destinatario});

  @override
  final Destinatario destinatario;

  @override
  String toString() {
    return 'DestinatarioEvent.update(destinatario: $destinatario)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDestinatarioImpl &&
            (identical(other.destinatario, destinatario) ||
                other.destinatario == destinatario));
  }

  @override
  int get hashCode => Object.hash(runtimeType, destinatario);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDestinatarioImplCopyWith<_$UpdateDestinatarioImpl> get copyWith =>
      __$$UpdateDestinatarioImplCopyWithImpl<_$UpdateDestinatarioImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAll,
    required TResult Function(Destinatario destinatario) add,
    required TResult Function(Destinatario destinatario) update,
    required TResult Function(int id) delete,
    required TResult Function(String qrContent) scanQr,
  }) {
    return update(destinatario);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAll,
    TResult? Function(Destinatario destinatario)? add,
    TResult? Function(Destinatario destinatario)? update,
    TResult? Function(int id)? delete,
    TResult? Function(String qrContent)? scanQr,
  }) {
    return update?.call(destinatario);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAll,
    TResult Function(Destinatario destinatario)? add,
    TResult Function(Destinatario destinatario)? update,
    TResult Function(int id)? delete,
    TResult Function(String qrContent)? scanQr,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(destinatario);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllDestinatario value) getAll,
    required TResult Function(_AddDestinatario value) add,
    required TResult Function(_UpdateDestinatario value) update,
    required TResult Function(_DeleteDestinatario value) delete,
    required TResult Function(_ScanQr value) scanQr,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllDestinatario value)? getAll,
    TResult? Function(_AddDestinatario value)? add,
    TResult? Function(_UpdateDestinatario value)? update,
    TResult? Function(_DeleteDestinatario value)? delete,
    TResult? Function(_ScanQr value)? scanQr,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllDestinatario value)? getAll,
    TResult Function(_AddDestinatario value)? add,
    TResult Function(_UpdateDestinatario value)? update,
    TResult Function(_DeleteDestinatario value)? delete,
    TResult Function(_ScanQr value)? scanQr,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateDestinatario implements DestinatarioEvent {
  const factory _UpdateDestinatario(
      {required final Destinatario destinatario}) = _$UpdateDestinatarioImpl;

  Destinatario get destinatario;
  @JsonKey(ignore: true)
  _$$UpdateDestinatarioImplCopyWith<_$UpdateDestinatarioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteDestinatarioImplCopyWith<$Res> {
  factory _$$DeleteDestinatarioImplCopyWith(_$DeleteDestinatarioImpl value,
          $Res Function(_$DeleteDestinatarioImpl) then) =
      __$$DeleteDestinatarioImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteDestinatarioImplCopyWithImpl<$Res>
    extends _$DestinatarioEventCopyWithImpl<$Res, _$DeleteDestinatarioImpl>
    implements _$$DeleteDestinatarioImplCopyWith<$Res> {
  __$$DeleteDestinatarioImplCopyWithImpl(_$DeleteDestinatarioImpl _value,
      $Res Function(_$DeleteDestinatarioImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteDestinatarioImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteDestinatarioImpl implements _DeleteDestinatario {
  const _$DeleteDestinatarioImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'DestinatarioEvent.delete(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteDestinatarioImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteDestinatarioImplCopyWith<_$DeleteDestinatarioImpl> get copyWith =>
      __$$DeleteDestinatarioImplCopyWithImpl<_$DeleteDestinatarioImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAll,
    required TResult Function(Destinatario destinatario) add,
    required TResult Function(Destinatario destinatario) update,
    required TResult Function(int id) delete,
    required TResult Function(String qrContent) scanQr,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAll,
    TResult? Function(Destinatario destinatario)? add,
    TResult? Function(Destinatario destinatario)? update,
    TResult? Function(int id)? delete,
    TResult? Function(String qrContent)? scanQr,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAll,
    TResult Function(Destinatario destinatario)? add,
    TResult Function(Destinatario destinatario)? update,
    TResult Function(int id)? delete,
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
    required TResult Function(_GetAllDestinatario value) getAll,
    required TResult Function(_AddDestinatario value) add,
    required TResult Function(_UpdateDestinatario value) update,
    required TResult Function(_DeleteDestinatario value) delete,
    required TResult Function(_ScanQr value) scanQr,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllDestinatario value)? getAll,
    TResult? Function(_AddDestinatario value)? add,
    TResult? Function(_UpdateDestinatario value)? update,
    TResult? Function(_DeleteDestinatario value)? delete,
    TResult? Function(_ScanQr value)? scanQr,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllDestinatario value)? getAll,
    TResult Function(_AddDestinatario value)? add,
    TResult Function(_UpdateDestinatario value)? update,
    TResult Function(_DeleteDestinatario value)? delete,
    TResult Function(_ScanQr value)? scanQr,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _DeleteDestinatario implements DestinatarioEvent {
  const factory _DeleteDestinatario({required final int id}) =
      _$DeleteDestinatarioImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteDestinatarioImplCopyWith<_$DeleteDestinatarioImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$DestinatarioEventCopyWithImpl<$Res, _$ScanQrImpl>
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
    return 'DestinatarioEvent.scanQr(qrContent: $qrContent)';
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
    required TResult Function() getAll,
    required TResult Function(Destinatario destinatario) add,
    required TResult Function(Destinatario destinatario) update,
    required TResult Function(int id) delete,
    required TResult Function(String qrContent) scanQr,
  }) {
    return scanQr(qrContent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAll,
    TResult? Function(Destinatario destinatario)? add,
    TResult? Function(Destinatario destinatario)? update,
    TResult? Function(int id)? delete,
    TResult? Function(String qrContent)? scanQr,
  }) {
    return scanQr?.call(qrContent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAll,
    TResult Function(Destinatario destinatario)? add,
    TResult Function(Destinatario destinatario)? update,
    TResult Function(int id)? delete,
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
    required TResult Function(_GetAllDestinatario value) getAll,
    required TResult Function(_AddDestinatario value) add,
    required TResult Function(_UpdateDestinatario value) update,
    required TResult Function(_DeleteDestinatario value) delete,
    required TResult Function(_ScanQr value) scanQr,
  }) {
    return scanQr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllDestinatario value)? getAll,
    TResult? Function(_AddDestinatario value)? add,
    TResult? Function(_UpdateDestinatario value)? update,
    TResult? Function(_DeleteDestinatario value)? delete,
    TResult? Function(_ScanQr value)? scanQr,
  }) {
    return scanQr?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllDestinatario value)? getAll,
    TResult Function(_AddDestinatario value)? add,
    TResult Function(_UpdateDestinatario value)? update,
    TResult Function(_DeleteDestinatario value)? delete,
    TResult Function(_ScanQr value)? scanQr,
    required TResult orElse(),
  }) {
    if (scanQr != null) {
      return scanQr(this);
    }
    return orElse();
  }
}

abstract class _ScanQr implements DestinatarioEvent {
  const factory _ScanQr(final String qrContent) = _$ScanQrImpl;

  String get qrContent;
  @JsonKey(ignore: true)
  _$$ScanQrImplCopyWith<_$ScanQrImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DestinatarioState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function(List<Destinatario> destinatario) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function(List<Destinatario> destinatario)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function(List<Destinatario> destinatario)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinatarioStateCopyWith<$Res> {
  factory $DestinatarioStateCopyWith(
          DestinatarioState value, $Res Function(DestinatarioState) then) =
      _$DestinatarioStateCopyWithImpl<$Res, DestinatarioState>;
}

/// @nodoc
class _$DestinatarioStateCopyWithImpl<$Res, $Val extends DestinatarioState>
    implements $DestinatarioStateCopyWith<$Res> {
  _$DestinatarioStateCopyWithImpl(this._value, this._then);

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
    extends _$DestinatarioStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'DestinatarioState.initial()';
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
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function(List<Destinatario> destinatario) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function(List<Destinatario> destinatario)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function(List<Destinatario> destinatario)? loaded,
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
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DestinatarioState {
  const factory _Initial() = _$InitialImpl;
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
    extends _$DestinatarioStateCopyWithImpl<$Res, _$ErrorImpl>
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
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'DestinatarioState.error(message: $message)';
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
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function(List<Destinatario> destinatario) loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function(List<Destinatario> destinatario)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function(List<Destinatario> destinatario)? loaded,
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
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements DestinatarioState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$DestinatarioStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'DestinatarioState.loading()';
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
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function(List<Destinatario> destinatario) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function(List<Destinatario> destinatario)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function(List<Destinatario> destinatario)? loaded,
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
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DestinatarioState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Destinatario> destinatario});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$DestinatarioStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destinatario = null,
  }) {
    return _then(_$LoadedImpl(
      null == destinatario
          ? _value._destinatario
          : destinatario // ignore: cast_nullable_to_non_nullable
              as List<Destinatario>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<Destinatario> destinatario)
      : _destinatario = destinatario;

  final List<Destinatario> _destinatario;
  @override
  List<Destinatario> get destinatario {
    if (_destinatario is EqualUnmodifiableListView) return _destinatario;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_destinatario);
  }

  @override
  String toString() {
    return 'DestinatarioState.loaded(destinatario: $destinatario)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._destinatario, _destinatario));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_destinatario));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function(List<Destinatario> destinatario) loaded,
  }) {
    return loaded(destinatario);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function(List<Destinatario> destinatario)? loaded,
  }) {
    return loaded?.call(destinatario);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function(List<Destinatario> destinatario)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(destinatario);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements DestinatarioState {
  const factory _Loaded(final List<Destinatario> destinatario) = _$LoadedImpl;

  List<Destinatario> get destinatario;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
