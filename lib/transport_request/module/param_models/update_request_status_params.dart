import '../../transport_request_repository/models/transport_request.dart';

class UpdateRequestStatusParams {
  final int id;
  final RequestStatus status;
  UpdateRequestStatusParams({required this.id, required this.status});
}
