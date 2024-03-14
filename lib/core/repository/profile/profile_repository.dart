import 'package:dartz/dartz.dart';
import 'package:science_dex/core/entity/period_entity.dart';
import 'package:science_dex/core/exception/science_dex_exception.dart';
import 'package:science_dex/core/helpers/science_dex_try_catch.dart';
import 'package:science_dex/core/service/database/local_database.dart';
import 'package:sqflite/sqflite.dart';

class ProfileRepository {
  Future<Either<ScienceDexException, void>> createPeriod({required PeriodEntity newPeriod}) async {
    return executeWithCatch<void>(() async {
      final Database db = await SqliteService.database;
      int a = await db.insert('period', newPeriod.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
    print(a);
    });
  }

  Future<Either<ScienceDexException, List<PeriodEntity>>> getPeriods() async {
    return executeWithCatch<List<PeriodEntity>>(() async {
      final db = await SqliteService.initializeDB();
      final List<Map<String, Object?>> queryResult = await db.query('period');
      return queryResult.map((e) => PeriodEntity.fromMap(e)).toList();
    });
  }

  Future<Either<ScienceDexException, void>> deletePeriod({required String id}) async {
    return executeWithCatch(() async {
      final db = await SqliteService.initializeDB();
      db.delete('period', where: "id = ?", whereArgs: [id]);
    });
  }
}
