import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StudentsRecord extends FirestoreRecord {
  StudentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "studentID" field.
  String? _studentID;
  String get studentID => _studentID ?? '';
  bool hasStudentID() => _studentID != null;

  // "class_id" field.
  String? _classId;
  String get classId => _classId ?? '';
  bool hasClassId() => _classId != null;

  // "quizzes" field.
  List<String>? _quizzes;
  List<String> get quizzes => _quizzes ?? const [];
  bool hasQuizzes() => _quizzes != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _name = snapshotData['name'] as String?;
    _role = snapshotData['role'] as String?;
    _studentID = snapshotData['studentID'] as String?;
    _classId = snapshotData['class_id'] as String?;
    _quizzes = getDataList(snapshotData['quizzes']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('students');

  static Stream<StudentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StudentsRecord.fromSnapshot(s));

  static Future<StudentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StudentsRecord.fromSnapshot(s));

  static StudentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StudentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StudentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StudentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StudentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StudentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStudentsRecordData({
  String? email,
  String? name,
  String? role,
  String? studentID,
  String? classId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'name': name,
      'role': role,
      'studentID': studentID,
      'class_id': classId,
    }.withoutNulls,
  );

  return firestoreData;
}

class StudentsRecordDocumentEquality implements Equality<StudentsRecord> {
  const StudentsRecordDocumentEquality();

  @override
  bool equals(StudentsRecord? e1, StudentsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.name == e2?.name &&
        e1?.role == e2?.role &&
        e1?.studentID == e2?.studentID &&
        e1?.classId == e2?.classId &&
        listEquality.equals(e1?.quizzes, e2?.quizzes);
  }

  @override
  int hash(StudentsRecord? e) => const ListEquality()
      .hash([e?.email, e?.name, e?.role, e?.studentID, e?.classId, e?.quizzes]);

  @override
  bool isValidKey(Object? o) => o is StudentsRecord;
}
