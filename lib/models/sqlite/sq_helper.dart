import 'package:mobilprogramlamaodev/models/sqlite/sq_helper_modul.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

// hackathon da yazılan kod alınmıştır
class DataBaseHandler {
  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, "example.db"),
      onCreate: (databese, version) async {
        await databese.execute(
            'CREATE TABLE reports (id INTEGER PRIMARY KEY, name TEXT  , email TEXT , password Text )');
      },
      version: 1,
    );
  }

  Future<int> insertReports(List<Report> reports) async {
    int result = 0;
    final Database db = await initializeDB();
    for (var report in reports) {
      result = await db.insert("reports", report.toMap());
    }
    return result;
  }

  Future<List<Report>> retrieveReports() async {
    final Database db = await initializeDB();
    final List<Map<String, Object?>> queryResult = await db.query("reports");
    return queryResult.map((e) => Report.fromMap(e)).toList();
  }
}
