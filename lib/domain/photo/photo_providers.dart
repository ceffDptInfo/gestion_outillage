// import 'package:path/path.dart';

// import 'photo.dart';

// class PhotoProvider {

//   Future<String> getPath() async{
//     return join((await getTemporaryDirectory()).path, '${DateTime.now()}.png',);
//   }

//   Future<List<Photo>> loadPhotos() async {
//     final results = await DBHelper.getAll("photos");
//     return results.map((m) => Photo.fromMap(m)).toList();
//   }

//   Future<int> addPhoto(Photo photo) async {
//    return DBHelper.insert("photos", photo.toMap());
//   }

//   Future<int> deletePhoto(Photo photo) async {
//     return DBHelper.delete("photos", photo.id);
//   }
// }


// /// Helper to access the to the local database
// class DBHelper {
//   static Future<sql.Database> database() async {
//     final dbPath = await sql.getDatabasesPath();
//     return sql.openDatabase(join(dbPath, 'myPhotos.db'), version: 1,
//         onCreate: (db, version) {
//           db.execute('CREATE TABLE photos (id INTEGER PRIMARY KEY, name TEXT, path TEXT)');
//         });
//   }

//   static Future<int> insert(String table, Map<String, Object> data) async {
//     final sqlDb = await DBHelper.database();
//     return sqlDb.insert(table, data, conflictAlgorithm: sql.ConflictAlgorithm.replace);
//   }

//   static  Future<int> delete(String table, int id) async {
//     final sqlDb = await DBHelper.database();
//     return sqlDb.delete(table,where: 'id = ?',whereArgs: [id]);
//   }

//   static Future<List<Map<String, dynamic>>> getAll(String table) async {
//     final sqlDb = await DBHelper.database();
//     return sqlDb.query(table);
//   }
// }