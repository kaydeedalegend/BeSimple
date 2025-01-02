// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TaskStruct extends BaseStruct {
  TaskStruct({
    int? id,
    DateTime? createdAt,
    String? userId,
    String? title,
    String? description,
    bool? isCompleted,
  })  : _id = id,
        _createdAt = createdAt,
        _userId = userId,
        _title = title,
        _description = description,
        _isCompleted = isCompleted;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "is_completed" field.
  bool? _isCompleted;
  bool get isCompleted => _isCompleted ?? false;
  set isCompleted(bool? val) => _isCompleted = val;

  bool hasIsCompleted() => _isCompleted != null;

  static TaskStruct fromMap(Map<String, dynamic> data) => TaskStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as DateTime?,
        userId: data['user_id'] as String?,
        title: data['title'] as String?,
        description: data['description'] as String?,
        isCompleted: data['is_completed'] as bool?,
      );

  static TaskStruct? maybeFromMap(dynamic data) =>
      data is Map ? TaskStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'user_id': _userId,
        'title': _title,
        'description': _description,
        'is_completed': _isCompleted,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'is_completed': serializeParam(
          _isCompleted,
          ParamType.bool,
        ),
      }.withoutNulls;

  static TaskStruct fromSerializableMap(Map<String, dynamic> data) =>
      TaskStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.DateTime,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        isCompleted: deserializeParam(
          data['is_completed'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'TaskStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TaskStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        userId == other.userId &&
        title == other.title &&
        description == other.description &&
        isCompleted == other.isCompleted;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, createdAt, userId, title, description, isCompleted]);
}

TaskStruct createTaskStruct({
  int? id,
  DateTime? createdAt,
  String? userId,
  String? title,
  String? description,
  bool? isCompleted,
}) =>
    TaskStruct(
      id: id,
      createdAt: createdAt,
      userId: userId,
      title: title,
      description: description,
      isCompleted: isCompleted,
    );
