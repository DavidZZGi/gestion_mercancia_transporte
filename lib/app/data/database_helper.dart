import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._internal();

  factory DatabaseHelper() => instance;

  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
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
            userId INTEGER NOT NULL,
            name TEXT NOT NULL,
            address TEXT NOT NULL,
            phone TEXT NOT NULL,
            FOREIGN KEY(userId) REFERENCES users(id)
          );
        ''');
        await db.execute('''
          CREATE TABLE transport_requests (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            recipientId INTEGER NOT NULL,
            userId INTEGER NOT NULL,
            status INTEGER NOT NULL,
            createdAt TEXT NOT NULL,
            notes TEXT,
            FOREIGN KEY(recipientId) REFERENCES recipients(id) ON DELETE CASCADE,
            FOREIGN KEY(userId) REFERENCES users(id)
          );
        ''');
      },
    );
  }
}
