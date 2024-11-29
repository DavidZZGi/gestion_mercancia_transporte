import 'package:gestion_mercancia_transporte/app/data/database_helper.dart';
import 'package:gestion_mercancia_transporte/transport_request/transport_request_repository/interface/transport_request_interface.dart';
import 'package:gestion_mercancia_transporte/transport_request/transport_request_repository/models/transport_request.dart';
import 'package:sqflite/sqflite.dart';

class TransportRequestService implements TransportRequestInterface {
  final DatabaseHelper databaseHelper;
  final String tableName = 'transport_requests';

  TransportRequestService({required this.databaseHelper});

  @override
  Future<void> createTransportRequest(TransportRequest request) async {
    final db = await databaseHelper.database;

    await db.insert(
      tableName,
      request.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  @override
  Future<void> deleteTransportRequest(int id) async {
    final db = await databaseHelper.database;
    await db.delete(
      tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  @override
  Future<List<TransportRequest>> getTransportRequests(int userId) async {
    final db = await databaseHelper.database;
    final List<Map<String, dynamic>> maps = await db.query(
      tableName,
      where: 'userId = ?',
      whereArgs: [userId],
    );
    return maps.map((map) => TransportRequest.fromJson(map)).toList();
  }

  @override
  Future<void> updateRequestStatus(TransportRequest transportRequest) async {
    final db = await databaseHelper.database;

    await db.update(
      tableName,
      transportRequest.toJson(),
      where: 'id = ?',
      whereArgs: [transportRequest.id],
    );
  }
}
