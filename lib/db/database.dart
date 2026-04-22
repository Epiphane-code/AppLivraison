import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


class DataDB {
  static final DataDB _instance = DataDB._internal();
  factory DataDB() => _instance;
  DataDB._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'my_database.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
        await db.execute('''
          CREATE TABLE comptes (
            id INTEGER PRIMARY KEY,
            token TEXT,
            username TEXT,
            email TEXT,
            phonenumber TEXT,
            role TEXT,
            ville TEXT,
            address TEXT,
          ); 
          CREATE TABLE livraisons (
            id INTEGER PRIMARY KEY,
            id_client INTEGER,
            id_livreur INTEGER,
            adresse_source TEXT,
            adresse_destination TEXT,
            date_livraison TEXT,
            status TEXT,
            FOREIGN KEY (id_client) REFERENCES comptes (id),
            FOREIGN KEY (id_livreur) REFERENCES comptes (id)
        ''');
      }
}