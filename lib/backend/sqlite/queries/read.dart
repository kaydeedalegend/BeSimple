import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN RETRIEVE ALL TASKS
Future<List<RetrieveAllTasksRow>> performRetrieveAllTasks(
  Database database,
) {
  const query = '''
SELECT * FROM tasks 
WHERE user_id = 'user-uuid';
''';
  return _readQuery(database, query, (d) => RetrieveAllTasksRow(d));
}

class RetrieveAllTasksRow extends SqliteRow {
  RetrieveAllTasksRow(super.data);
}

/// END RETRIEVE ALL TASKS
