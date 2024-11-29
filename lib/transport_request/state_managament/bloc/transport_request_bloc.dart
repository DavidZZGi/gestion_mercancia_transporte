import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestion_mercancia_transporte/app/utils/app_preferences.dart';
import 'package:gestion_mercancia_transporte/transport_request/domain/create_transport_request_use_case.dart';
import 'package:gestion_mercancia_transporte/transport_request/domain/delete_transport_request_use_case.dart';
import 'package:gestion_mercancia_transporte/transport_request/domain/get_transport_request_use_case.dart';
import 'package:gestion_mercancia_transporte/transport_request/domain/update_request_status_use_case.dart';

import '../../transport_request_repository/models/transport_request.dart';

part 'transport_request_event.dart';
part 'transport_request_state.dart';
part 'transport_request_bloc.freezed.dart';

class TransportRequestBloc
    extends Bloc<TransportRequestEvent, TransportRequestState> {
  final CreateTransportRequestUseCase createTransportRequestUseCase;
  final DeleteTransportRequestUseCase deleteTransportRequestUseCase;
  final UpdateRequestStatusTransportRequestUseCase
      updateRequestStatusTransportRequestUseCase;
  final _prefs = AppPreferences();
  final GetTransportRequestUseCase getTransportRequestUseCase;
  TransportRequestBloc(
      {required this.createTransportRequestUseCase,
      required this.deleteTransportRequestUseCase,
      required this.getTransportRequestUseCase,
      required this.updateRequestStatusTransportRequestUseCase})
      : super(const _Initial()) {
    on<_AddTransportRequest>(_onCreateTransporRequest);
    on<_GetAllTransportRequest>(_onGetransporRequest);
    on<_UpdateTransportRequest>(_onUpdateTransporRequest);
    on<_DeleteTransportRequest>(_onDeleteTransporRequest);
  }

  FutureOr<void> _onCreateTransporRequest(
      _AddTransportRequest event, Emitter<TransportRequestState> emit) async {
    try {
      await createTransportRequestUseCase.call(event.request);
      add(const TransportRequestEvent.getAll());
    } catch (e) {
      emit(TransportRequestState.error(e.toString()));
    }
  }

  FutureOr<void> _onGetransporRequest(_GetAllTransportRequest event,
      Emitter<TransportRequestState> emit) async {
    emit(const TransportRequestState.loading());
    try {
      final requests =
          await getTransportRequestUseCase.call(_prefs.getUserId()!);
      emit(TransportRequestState.loaded(requests));
    } catch (e) {
      emit(TransportRequestState.error(e.toString()));
    }
  }

  FutureOr<void> _onUpdateTransporRequest(_UpdateTransportRequest event,
      Emitter<TransportRequestState> emit) async {
    try {
      await updateRequestStatusTransportRequestUseCase.call(event.request);
      add(const TransportRequestEvent.getAll());
    } catch (e) {
      emit(TransportRequestState.error(e.toString()));
    }
  }

  FutureOr<void> _onDeleteTransporRequest(_DeleteTransportRequest event,
      Emitter<TransportRequestState> emit) async {
    try {
      await deleteTransportRequestUseCase.call(event.id);
      add(const TransportRequestEvent.getAll());
    } catch (e) {
      emit(TransportRequestState.error(e.toString()));
    }
  }
}
