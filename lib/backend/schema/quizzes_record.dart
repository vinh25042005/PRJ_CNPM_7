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

  // "Questions" field.
  List<String>? _questions;
  List<String> get questions => _questions ?? const [];
  bool hasQuestions() => _questions != null;

  void _initializeFields() {
    _title = snapshotData['Title'] as String?;
    _teacherID = snapshotData['teacherID'] as String?;
    _questions = getDataList(snapshotData['Questions']);
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
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Title': title,
      'teacherID': teacherID,
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
        listEquality.equals(e1?.questions, e2?.questions);
  }

  @override
  int hash(QuizzesRecord? e) =>
      const ListEquality().hash([e?.title, e?.teacherID, e?.questions]);

  @override
  bool isValidKey(Object? o) => o is QuizzesRecord;
}
