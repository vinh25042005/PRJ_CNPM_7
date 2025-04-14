import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClassesRecord extends FirestoreRecord {
  ClassesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "teacherID" field.
  String? _teacherID;
  String get teacherID => _teacherID ?? '';
  bool hasTeacherID() => _teacherID != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "startTime" field.
  String? _startTime;
  String get startTime => _startTime ?? '';
  bool hasStartTime() => _startTime != null;

  // "subject" field.
  String? _subject;
  String get subject => _subject ?? '';
  bool hasSubject() => _subject != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "endTime" field.
  String? _endTime;
  String get endTime => _endTime ?? '';
  bool hasEndTime() => _endTime != null;

  // "studentsID" field.
  List<String>? _studentsID;
  List<String> get studentsID => _studentsID ?? const [];
  bool hasStudentsID() => _studentsID != null;

  // "class_id" field.
  String? _classId;
  String get classId => _classId ?? '';
  bool hasClassId() => _classId != null;

  // "class_name" field.
  String? _className;
  String get className => _className ?? '';
  bool hasClassName() => _className != null;

  void _initializeFields() {
    _teacherID = snapshotData['teacherID'] as String?;
    _date = snapshotData['date'] as String?;
    _startTime = snapshotData['startTime'] as String?;
    _subject = snapshotData['subject'] as String?;
    _description = snapshotData['description'] as String?;
    _endTime = snapshotData['endTime'] as String?;
    _studentsID = getDataList(snapshotData['studentsID']);
    _classId = snapshotData['class_id'] as String?;
    _className = snapshotData['class_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('classes');

  static Stream<ClassesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClassesRecord.fromSnapshot(s));

  static Future<ClassesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClassesRecord.fromSnapshot(s));

  static ClassesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClassesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClassesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClassesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClassesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClassesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClassesRecordData({
  String? teacherID,
  String? date,
  String? startTime,
  String? subject,
  String? description,
  String? endTime,
  String? classId,
  String? className,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'teacherID': teacherID,
      'date': date,
      'startTime': startTime,
      'subject': subject,
      'description': description,
      'endTime': endTime,
      'class_id': classId,
      'class_name': className,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClassesRecordDocumentEquality implements Equality<ClassesRecord> {
  const ClassesRecordDocumentEquality();

  @override
  bool equals(ClassesRecord? e1, ClassesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.teacherID == e2?.teacherID &&
        e1?.date == e2?.date &&
        e1?.startTime == e2?.startTime &&
        e1?.subject == e2?.subject &&
        e1?.description == e2?.description &&
        e1?.endTime == e2?.endTime &&
        listEquality.equals(e1?.studentsID, e2?.studentsID) &&
        e1?.classId == e2?.classId &&
        e1?.className == e2?.className;
  }

  @override
  int hash(ClassesRecord? e) => const ListEquality().hash([
        e?.teacherID,
        e?.date,
        e?.startTime,
        e?.subject,
        e?.description,
        e?.endTime,
        e?.studentsID,
        e?.classId,
        e?.className
      ]);

  @override
  bool isValidKey(Object? o) => o is ClassesRecord;
}
