import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuizzesRecord extends FirestoreRecord {
  QuizzesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "teacherID" field.
  String? _teacherID;
  String get teacherID => _teacherID ?? '';
  bool hasTeacherID() => _teacherID != null;

  // "subject" field.
  String? _subject;
  String get subject => _subject ?? '';
  bool hasSubject() => _subject != null;

  // "quiz_id" field.
  String? _quizId;
  String get quizId => _quizId ?? '';
  bool hasQuizId() => _quizId != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "class_id" field.
  String? _classId;
  String get classId => _classId ?? '';
  bool hasClassId() => _classId != null;

  // "essay_questions" field.
  List<String>? _essayQuestions;
  List<String> get essayQuestions => _essayQuestions ?? const [];
  bool hasEssayQuestions() => _essayQuestions != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "due_date" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "studentID" field.
  List<String>? _studentID;
  List<String> get studentID => _studentID ?? const [];
  bool hasStudentID() => _studentID != null;

  void _initializeFields() {
    _title = snapshotData['Title'] as String?;
    _teacherID = snapshotData['teacherID'] as String?;
    _subject = snapshotData['subject'] as String?;
    _quizId = snapshotData['quiz_id'] as String?;
    _description = snapshotData['description'] as String?;
    _classId = snapshotData['class_id'] as String?;
    _essayQuestions = getDataList(snapshotData['essay_questions']);
    _status = snapshotData['status'] as String?;
    _dueDate = snapshotData['due_date'] as DateTime?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _studentID = getDataList(snapshotData['studentID']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('quizzes');

  static Stream<QuizzesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuizzesRecord.fromSnapshot(s));

  static Future<QuizzesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuizzesRecord.fromSnapshot(s));

  static QuizzesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuizzesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuizzesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuizzesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuizzesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuizzesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuizzesRecordData({
  String? title,
  String? teacherID,
  String? subject,
  String? quizId,
  String? description,
  String? classId,
  String? status,
  DateTime? dueDate,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Title': title,
      'teacherID': teacherID,
      'subject': subject,
      'quiz_id': quizId,
      'description': description,
      'class_id': classId,
      'status': status,
      'due_date': dueDate,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuizzesRecordDocumentEquality implements Equality<QuizzesRecord> {
  const QuizzesRecordDocumentEquality();

  @override
  bool equals(QuizzesRecord? e1, QuizzesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.teacherID == e2?.teacherID &&
        e1?.subject == e2?.subject &&
        e1?.quizId == e2?.quizId &&
        e1?.description == e2?.description &&
        e1?.classId == e2?.classId &&
        listEquality.equals(e1?.essayQuestions, e2?.essayQuestions) &&
        e1?.status == e2?.status &&
        e1?.dueDate == e2?.dueDate &&
        e1?.createdAt == e2?.createdAt &&
        listEquality.equals(e1?.studentID, e2?.studentID);
  }

  @override
  int hash(QuizzesRecord? e) => const ListEquality().hash([
        e?.title,
        e?.teacherID,
        e?.subject,
        e?.quizId,
        e?.description,
        e?.classId,
        e?.essayQuestions,
        e?.status,
        e?.dueDate,
        e?.createdAt,
        e?.studentID
      ]);

  @override
  bool isValidKey(Object? o) => o is QuizzesRecord;
}
