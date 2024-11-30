import 'dart:convert';

import 'package:gestion_mercancia_transporte/app/utils/app_preferences.dart';
import 'package:gestion_mercancia_transporte/destinatario/destinatario_ropository/models/destinatario.dart';
import 'package:sqflite/sqflite.dart';

import '../../../app/data/database_helper.dart';
import '../interface/destinatario_interface.dart';

class DestinatarioService implements DestinatarioInterface {
  final DatabaseHelper databaseHelper;
  final String destinatarioTable = 'recipients';
  final _pref = AppPreferences();
  DestinatarioService({required this.databaseHelper});
  @override
  Future<void> createDestinatario(Destinatario destinatario) async {
    final db = await databaseHelper.database;
    final result = await db.insert(
      destinatarioTable,
      destinatario.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    print(result);
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
    final result = await db.update(
      destinatarioTable,
      destinatario.toJson(),
      where: 'id = ?',
      whereArgs: [destinatario.id],
    );
    print(result);
  }

  @override
  Future<void> createDestinatarioFromQr(String qrContent) async {
    final db = await databaseHelper.database;
    try {
      final data = json.decode(qrContent) as Map<String, dynamic>;
      final recipient = Destinatario.fromJson(data);
      await db.insert(destinatarioTable, recipient.toJson());
    } catch (e) {
      throw Exception("QR inválido o datos no válidos.");
    }
  }
}
