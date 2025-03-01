import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssignmentsRecord extends FirestoreRecord {
  AssignmentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdBy" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  void _initializeFields() {
    _createdBy = snapshotData['createdBy'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('assignments');

  static Stream<AssignmentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AssignmentsRecord.fromSnapshot(s));

  static Future<AssignmentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AssignmentsRecord.fromSnapshot(s));

  static AssignmentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AssignmentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AssignmentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AssignmentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AssignmentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AssignmentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAssignmentsRecordData({
  DocumentReference? createdBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdBy': createdBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class AssignmentsRecordDocumentEquality implements Equality<AssignmentsRecord> {
  const AssignmentsRecordDocumentEquality();

  @override
  bool equals(AssignmentsRecord? e1, AssignmentsRecord? e2) {
    return e1?.createdBy == e2?.createdBy;
  }

  @override
  int hash(AssignmentsRecord? e) => const ListEquality().hash([e?.createdBy]);

  @override
  bool isValidKey(Object? o) => o is AssignmentsRecord;
}
