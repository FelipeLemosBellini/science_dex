import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqliteService {
  static Database? _database;
  static Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initializeDB();
    return _database!;
  }

  static Future<Database> initializeDB() async {
    String path = await getDatabasesPath();
    return openDatabase(join(path, 'database.db'), singleInstance: true, onCreate: (database, version) async {
      await database.execute('''CREATE TABLE period (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            periodName TEXT NOT NULL,
            startDate TEXT NOT NULL,
            endDate TEXT NOT NULL,
            category TEXT NOT NULL,
            targetOne INTEGER NOT NULL,
            targetTwo INTEGER NOT NULL
          )
          ''');
    }, version: 2);
  }
}
