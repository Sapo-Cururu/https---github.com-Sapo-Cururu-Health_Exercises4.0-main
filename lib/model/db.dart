import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';

class DB {
  final String _tabela;
  DB(this._tabela);
  static final DB instance = DB("artigos");
  static Database? _database;
  get database async {
    if (_database != null) {
      return _database;
    }
    return await _initDatabase();
  }

  _initDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'textos.db'),
      version: 1,
      onCreate: (Database db, int version) {
        db.execute("create table $_tabela(id INTEGER PRIMARY KEY AUTOINCREMENT, isFavorite INT");
      },
    );
  }

  Future<int?> addData(Map<String, dynamic> map) async {
    await _initDatabase();
    final exists = await _database!.query(_tabela, where: "id=?", whereArgs: [map["id"]]);
    if (exists.isEmpty) {
      return await _database!.insert(_tabela, map);
    }
    return await _database!.update(_tabela, map, where: "id=?", whereArgs: [map["id"]]);
  }

  Future<List<Map<String, Object?>>> searchData() async {
    await _initDatabase();
    final exists = await _database!.query(_tabela);
    if (exists.isNotEmpty) {
      return await _database!.query(_tabela);
    } else {
      return [];
    }
  }
}
