import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestionsRecord extends FirestoreRecord {
  QuestionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "QuesContent" field.
  String? _quesContent;
  String get quesContent => _quesContent ?? '';
  bool hasQuesContent() => _quesContent != null;

  // "QuizID" field.
  String? _quizID;
  String get quizID => _quizID ?? '';
  bool hasQuizID() => _quizID != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  bool hasIndex() => _index != null;

  void _initializeFields() {
    _quesContent = snapshotData['QuesContent'] as String?;
    _quizID = snapshotData['QuizID'] as String?;
    _index = castToType<int>(snapshotData['index']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Questions');

  static Stream<QuestionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuestionsRecord.fromSnapshot(s));

  static Future<QuestionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuestionsRecord.fromSnapshot(s));

  static QuestionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuestionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuestionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuestionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuestionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuestionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuestionsRecordData({
  String? quesContent,
  String? quizID,
  int? index,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'QuesContent': quesContent,
      'QuizID': quizID,
      'index': index,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuestionsRecordDocumentEquality implements Equality<QuestionsRecord> {
  const QuestionsRecordDocumentEquality();

  @override
  bool equals(QuestionsRecord? e1, QuestionsRecord? e2) {
    return e1?.quesContent == e2?.quesContent &&
        e1?.quizID == e2?.quizID &&
        e1?.index == e2?.index;
  }

  @override
  int hash(QuestionsRecord? e) =>
      const ListEquality().hash([e?.quesContent, e?.quizID, e?.index]);

  @override
  bool isValidKey(Object? o) => o is QuestionsRecord;
}
