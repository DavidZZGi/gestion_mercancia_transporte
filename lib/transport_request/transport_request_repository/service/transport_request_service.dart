import 'package:gestion_mercancia_transporte/app/data/database_helper.dart';
import 'package:gestion_mercancia_transporte/transport_request/transport_request_repository/interface/transport_request_interface.dart';
import 'package:gestion_mercancia_transporte/transport_request/transport_request_repository/models/transport_request.dart';

class TransportRequestService implements TransportRequestInterface {
  final DatabaseHelper databaseHelper;
  final String tableNmae = 'transport_requests';
  TransportRequestService({required this.databaseHelper});
  @override
  Future<void> createTransportRequest(TransportRequest request) async {
    final db = await databaseHelper.database;

    await db.insert(tableNmae, {
      'id': request.id,
      'destinationName': request.destinationName,
      'status': request.status.name,
    });
  }

  @override
  Future<void> deleteTransportRequest(int id) async {
    final db = await databaseHelper.database;
    await db.delete(
      tableNmae,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  @override
  Future<List<TransportRequest>> getTransportRequests() async {
    final db = await databaseHelper.database;

    final results = await db.query(tableNmae);

    return results
        .map((e) => TransportRequest(
              id: e['id'] as int,
              destinationName: e['destinationName'] as String,
              status: RequestStatus.values.byName(e['status'] as String),
            ))
        .toList();
  }

  @override
  Future<void> updateRequestStatus(int id, RequestStatus status) async {
    final db = await databaseHelper.database;

    await db.update(
      tableNmae,
      {'status': status.name},
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
