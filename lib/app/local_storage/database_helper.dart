import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();

  factory DatabaseHelper() => _instance;

  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final path = join(await getDatabasesPath(), 'transport_manager.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        // Crear tablas
        await db.execute('''
          CREATE TABLE users (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            username TEXT NOT NULL,
            email TEXT NOT NULL UNIQUE,
            passwordHash TEXT NOT NULL
          );
        ''');
        await db.execute('''
          CREATE TABLE recipients (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            address TEXT NOT NULL,
            phone TEXT NOT NULL
          );
        ''');
        await db.execute('''
          CREATE TABLE transport_requests (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            recipientId INTEGER NOT NULL,
            status INTEGER NOT NULL,
            createdAt TEXT NOT NULL,
            FOREIGN KEY(recipientId) REFERENCES recipients(id)
          );
        ''');
      },
    );
  }
}
