import 'package:freezed_annotation/freezed_annotation.dart';

part 'transport_request.freezed.dart';
part 'transport_request.g.dart';

/// Define los estados de una solicitud de transporte.
enum RequestStatus {
  @JsonValue('preparing')
  preparing,
  @JsonValue('inTransit')
  inTransit,
  @JsonValue('delivered')
  delivered
}

@Freezed()
@JsonSerializable()
class TransportRequest with _$TransportRequest {
  const factory TransportRequest({
    int? id,
    required int userId,
    required int recipientId,
    required String destinationName,
    required RequestStatus status,
  }) = _TransportRequest;

  /// Genera un modelo desde un JSON.
  factory TransportRequest.fromJson(Map<String, dynamic> json) =>
      _$TransportRequestFromJson(json);

  /// Convierte el modelo a JSON.
  @override
  Map<String, dynamic> toJson() => _$TransportRequestToJson(this);
}
