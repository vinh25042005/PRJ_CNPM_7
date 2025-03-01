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

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "schedule" field.
  String? _schedule;
  String get schedule => _schedule ?? '';
  bool hasSchedule() => _schedule != null;

  // "subjects" field.
  String? _subjects;
  String get subjects => _subjects ?? '';
  bool hasSubjects() => _subjects != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _id = snapshotData['id'] as String?;
    _name = snapshotData['name'] as String?;
    _schedule = snapshotData['schedule'] as String?;
    _subjects = snapshotData['subjects'] as String?;
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
  String? id,
  String? name,
  String? schedule,
  String? subjects,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'id': id,
      'name': name,
      'schedule': schedule,
      'subjects': subjects,
    }.withoutNulls,
  );

  return firestoreData;
}

class TeachersRecordDocumentEquality implements Equality<TeachersRecord> {
  const TeachersRecordDocumentEquality();

  @override
  bool equals(TeachersRecord? e1, TeachersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.id == e2?.id &&
        e1?.name == e2?.name &&
        e1?.schedule == e2?.schedule &&
        e1?.subjects == e2?.subjects;
  }

  @override
  int hash(TeachersRecord? e) => const ListEquality()
      .hash([e?.email, e?.id, e?.name, e?.schedule, e?.subjects]);

  @override
  bool isValidKey(Object? o) => o is TeachersRecord;
}
