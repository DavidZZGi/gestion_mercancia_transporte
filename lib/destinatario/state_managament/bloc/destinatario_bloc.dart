import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestion_mercancia_transporte/app/core/no_params.dart';
import 'package:gestion_mercancia_transporte/destinatario/domain/create_destinatario_use_case.dart';
import 'package:gestion_mercancia_transporte/destinatario/domain/delete_destinatario_use_case.dart';
import 'package:gestion_mercancia_transporte/destinatario/domain/get_destinatarios_use_case.dart';
import 'package:gestion_mercancia_transporte/destinatario/domain/update_destinatario_use_case.dart';

import '../../destinatario_ropository/models/destinatario.dart';

part 'destinatario_event.dart';
part 'destinatario_state.dart';
part 'destinatario_bloc.freezed.dart';

class DestinatarioBloc extends Bloc<DestinatarioEvent, DestinatarioState> {
  final GetDestinatariosUseCase getDestinatariosUseCase;
  final CreateDestinatarioUseCase createDestinatarioUseCase;
  final UpdateDestinatarioUseCase updateDestinatarioUseCase;
  final DeleteDestinatarioUseCase deleteDestinatarioUseCase;
  DestinatarioBloc(
      {required this.createDestinatarioUseCase,
      required this.deleteDestinatarioUseCase,
      required this.getDestinatariosUseCase,
      required this.updateDestinatarioUseCase})
      : super(const _Initial()) {
    on<_GetAllDestinatario>(_onGetAll);
    on<_AddDestinatario>(_onAdd);
    on<_UpdateDestinatario>(_onUpdate);
    on<_DeleteDestinatario>(_onDelete);
  }

  FutureOr<void> _onGetAll(
      _GetAllDestinatario event, Emitter<DestinatarioState> emit) async {
    emit(const _Loading());
    try {
      final destinatarios = await getDestinatariosUseCase.call(NoParams());
      emit(_Loaded(destinatarios));
    } catch (e) {
      emit(_Error(message: e.toString()));
    }
  }

  FutureOr<void> _onAdd(
      _AddDestinatario event, Emitter<DestinatarioState> emit) async {
    emit(const _Loading());
    try {
      await createDestinatarioUseCase.call(event.destinatario);
      add(const _GetAllDestinatario());
    } catch (e) {
      emit(_Error(message: e.toString()));
    }
  }

  FutureOr<void> _onUpdate(
      _UpdateDestinatario event, Emitter<DestinatarioState> emit) async {
    emit(const _Loading());
    try {
      await updateDestinatarioUseCase.call(event.destinatario);
      add(const _GetAllDestinatario());
    } catch (e) {
      emit(_Error(message: e.toString()));
    }
  }

  FutureOr<void> _onDelete(
      _DeleteDestinatario event, Emitter<DestinatarioState> emit) async {
    emit(const _Loading());
    try {
      await deleteDestinatarioUseCase.call(event.id);
      add(const _GetAllDestinatario());
    } catch (e) {
      emit(_Error(message: e.toString()));
    }
  }
}
