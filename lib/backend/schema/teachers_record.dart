import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeachersRecord extends FirestoreRecord {
  TeachersRecord._(
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

  // "schedule" field.
  List<String>? _schedule;
  List<String> get schedule => _schedule ?? const [];
  bool hasSchedule() => _schedule != null;

  // "subjects" field.
  String? _subjects;
  String get subjects => _subjects ?? '';
  bool hasSubjects() => _subjects != null;

  // "teacherId" field.
  String? _teacherId;
  String get teacherId => _teacherId ?? '';
  bool hasTeacherId() => _teacherId != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _name = snapshotData['name'] as String?;
    _role = snapshotData['role'] as String?;
    _schedule = getDataList(snapshotData['schedule']);
    _subjects = snapshotData['subjects'] as String?;
    _teacherId = snapshotData['teacherId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('teachers');

  static Stream<TeachersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TeachersRecord.fromSnapshot(s));

  static Future<TeachersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TeachersRecord.fromSnapshot(s));

  static TeachersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TeachersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TeachersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TeachersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TeachersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TeachersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTeachersRecordData({
  String? email,
  String? name,
  String? role,
  String? subjects,
  String? teacherId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'name': name,
      'role': role,
      'subjects': subjects,
      'teacherId': teacherId,
    }.withoutNulls,
  );

  return firestoreData;
}

class TeachersRecordDocumentEquality implements Equality<TeachersRecord> {
  const TeachersRecordDocumentEquality();

  @override
  bool equals(TeachersRecord? e1, TeachersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.name == e2?.name &&
        e1?.role == e2?.role &&
        listEquality.equals(e1?.schedule, e2?.schedule) &&
        e1?.subjects == e2?.subjects &&
        e1?.teacherId == e2?.teacherId;
  }

  @override
  int hash(TeachersRecord? e) => const ListEquality().hash(
      [e?.email, e?.name, e?.role, e?.schedule, e?.subjects, e?.teacherId]);

  @override
  bool isValidKey(Object? o) => o is TeachersRecord;
}
