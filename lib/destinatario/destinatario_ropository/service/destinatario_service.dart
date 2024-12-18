import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:gestion_mercancia_transporte/app/utils/app_preferences.dart';
import 'package:gestion_mercancia_transporte/destinatario/destinatario_ropository/models/destinatario.dart';
import 'package:sqflite/sqflite.dart';

import '../../../app/data/database_helper.dart';
import '../interface/destinatario_interface.dart';

class DestinatarioService implements DestinatarioInterface {
  final DatabaseHelper databaseHelper;
  final String destinatarioTable = 'recipients';
  final _pref = AppPreferences();
  final Dio dio;
  DestinatarioService({required this.databaseHelper, required this.dio});
  @override
  Future<void> createDestinatario(Destinatario destinatario) async {
    final db = await databaseHelper.database;
    await db.insert(
      destinatarioTable,
      destinatario.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> uploadDestinatarioToServer() async {
    try {
      final destinatarios = await getAllDestinatarios();
      if (destinatarios.isEmpty) {
        return;
      }
      for (final destinatario in destinatarios) {
        try {
          // Convertir cada destinatario a JSON y enviarlo al servidor
          final response = await dio.post(
            '/recipients',
            data: destinatario.toJson(),
          );

          if (response.statusCode == 201) {
            print('Destinatario subido con éxito: ${destinatario.name}');
          } else {
            throw Exception(
              'Error al subir destinatario ${destinatario.name}: Código ${response.statusCode} - ${response.statusMessage}',
            );
          }
        } catch (dioError) {
          // Capturar errores específicos de Dio
          print(
            'Error de red al subir destinatario ${destinatario.name}: $dioError',
          );
        }
      }
    } catch (e) {
      throw Exception('Sincronización fallida: $e');
    }
  }

  Future<void> downloadDestinatariosFromServer() async {
    try {
      final response = await dio.get('/destinatarios');

      if (response.statusCode == 200) {
        // Convertir el JSON recibido en una lista de Destinatario
        final data = response.data as List;
        final destinatarioList =
            data.map((json) => Destinatario.fromJson(json)).toList();
        //guardar listado de destinatario del server en la bd local
        for (var element in destinatarioList) {
          try {
            await createDestinatario(element);
          } catch (e) {
            throw (Exception(e));
          }
        }
      } else {
        throw Exception(
          'Error al obtener destinatarios: Código ${response.statusCode} - ${response.statusMessage}',
        );
      }
    } catch (dioError) {
      throw Exception('Fallo de red al intentar obtener datos del servidor');
    }
  }

  @override
  Future<void> deleteDestinatario(int destinatarioId) async {
    final db = await databaseHelper.database;
    await db.delete(
      destinatarioTable,
      where: 'id = ?',
      whereArgs: [destinatarioId],
    );
  }

  @override
  Future<List<Destinatario>> getAllDestinatarios() async {
    print(_pref.getUserId());
    final db = await databaseHelper.database;
    final List<Map<String, dynamic>> maps = await db.query(
      destinatarioTable,
      where: 'userId = ?',
      whereArgs: [_pref.getUserId()],
    );
    final result = maps.map((map) => Destinatario.fromJson(map)).toList();
    return result;
  }

  @override
  Future<void> updateDestinatario(Destinatario destinatario) async {
    final db = await databaseHelper.database;
    await db.update(
      destinatarioTable,
      destinatario.toJson(),
      where: 'id = ?',
      whereArgs: [destinatario.id],
    );
  }

  @override
  Future<void> createDestinatarioFromQr(String qrContent) async {
    final db = await databaseHelper.database;
    try {
      final data = json.decode(qrContent) as Map<String, dynamic>;
      final recipient = Destinatario.fromJson(data);
      await db.insert(destinatarioTable, recipient.toJson());
    } catch (e) {
      // Si no es un JSON válido, intentamos tratarlo como texto plano
      RegExp regExp = RegExp(
          r"Destinatario\{id=(\d+), userId=(\d+), name='(.+)', address='(.+)', phone='(.+)'\}");
      final match = regExp.firstMatch(qrContent);
      if (match != null) {
        // Si el texto tiene el formato esperado, extraemos los valores
        final destinatario = Destinatario(
          id: int.tryParse(match.group(1)!),
          userId: int.tryParse(match.group(2)!)!,
          name: match.group(3) ?? '',
          address: match.group(4) ?? '',
          phone: match.group(5) ?? '',
        );
        await db.insert(destinatarioTable, destinatario.toJson(),
            conflictAlgorithm: ConflictAlgorithm.replace);
      } else {
        throw const FormatException('El formato de entrada no es válido.');
      }
    }
  }
}
