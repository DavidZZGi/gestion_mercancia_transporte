import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:gestion_mercancia_transporte/app/data/database_helper.dart';
import 'package:gestion_mercancia_transporte/app/utils/app_preferences.dart';
import 'package:gestion_mercancia_transporte/transport_request/transport_request_repository/interface/transport_request_interface.dart';
import 'package:gestion_mercancia_transporte/transport_request/transport_request_repository/models/transport_request.dart';
import 'package:sqflite/sqflite.dart';

class TransportRequestService implements TransportRequestInterface {
  final DatabaseHelper databaseHelper;
  final String tableName = 'transport_requests';
  final _pref = AppPreferences();
  final Dio dio;

  TransportRequestService({required this.databaseHelper, required this.dio});

  Future<void> uploadTransportRequestToServer() async {
    final transportRequests = await getTransportRequests(); // Desde SQLite
    if (transportRequests.isNotEmpty) {
      try {
        for (var element in transportRequests) {
          try {
            final response = await dio.post(
              '/transport-requests',
              data: element.toJson(),
            );
            if (response.statusCode == 200) {
              print('Destinatario subido con éxito: ${element.toString()}');
            } else {
              throw Exception(
                'Error al subir destinatario ${element.toString()}: Código ${response.statusCode} - ${response.statusMessage}',
              );
            }
          } catch (dioError) {
            // Capturar errores específicos de Dio
            print(
              'Error de red al subir destinatario ${element.toString()}: $dioError',
            );
          }
        }
      } catch (e) {
        print(e);
      }
    }
  }

  Future<void> fetchTransportRequestsFromServer() async {
    try {
      final response = await dio.get('/transport-requests');

      if (response.statusCode == 200) {
        // Convertir el JSON recibido en una lista de TransportRequest
        final data = response.data as List;
        final transportRequestList =
            data.map((json) => TransportRequest.fromJson(json)).toList();
        for (var element in transportRequestList) {
          try {
            await createTransportRequest(element);
          } catch (e) {
            throw (Exception(e));
          }
        }
      } else {
        throw Exception(
          'Error al obtener solicitudes de transporte: Código ${response.statusCode} - ${response.statusMessage}',
        );
      }
    } catch (dioError) {
      // Manejo de errores de red
      print('Error al obtener solicitudes de transporte: $dioError');
      throw Exception('Fallo de red al intentar obtener datos del servidor');
    }
  }

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
  Future<List<TransportRequest>> getTransportRequests() async {
    final db = await databaseHelper.database;
    final List<Map<String, dynamic>> maps = await db.query(
      tableName,
      where: 'userId = ?',
      whereArgs: [_pref.getUserId()],
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

  @override
  Future<void> createTransportRequestFromQr(String qrContent) async {
    final db = await databaseHelper.database;
    try {
      final data = json.decode(qrContent) as Map<String, dynamic>;
      final result = TransportRequest.fromJson(data);
      await db.insert(tableName, result.toJson());
    } catch (e) {
      // Si no es un JSON válido, intentamos tratarlo como texto plano
      RegExp regExp = RegExp(
          r"TransportRequest\{id=(\d+), userId=(\d+), recipientId=(\d+), status=(\d+), createdAt='([^']+)', notes='([^']*)'\}");
      final match = regExp.firstMatch(qrContent);
      if (match != null) {
        // Extraemos los valores y creamos el objeto TransportRequest
        final transportRequest = TransportRequest(
          id: int.tryParse(match.group(1)!),
          userId: int.tryParse(match.group(2)!)!,
          recipientId: int.tryParse(match.group(3)!)!,
          status: RequestStatus.values[int.tryParse(
              match.group(4)!)!], // Convertimos el int a RequestStatus
          createdAt: DateTime.parse(match.group(5)!),
          notes: match.group(6),
        );

        // Insertar en base de datos
        await db.insert(tableName, transportRequest.toJson(),
            conflictAlgorithm: ConflictAlgorithm.replace);
      } else {
        throw const FormatException('El formato de entrada no es válido.');
      }
    }
  }
}
