import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubmissionsRecord extends FirestoreRecord {
  SubmissionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "submission_id" field.
  String? _submissionId;
  String get submissionId => _submissionId ?? '';
  bool hasSubmissionId() => _submissionId != null;

  // "quiz_id" field.
  String? _quizId;
  String get quizId => _quizId ?? '';
  bool hasQuizId() => _quizId != null;

  // "studentID" field.
  String? _studentID;
  String get studentID => _studentID ?? '';
  bool hasStudentID() => _studentID != null;

  // "answers" field.
  List<String>? _answers;
  List<String> get answers => _answers ?? const [];
  bool hasAnswers() => _answers != null;

  // "score" field.
  double? _score;
  double get score => _score ?? 0.0;
  bool hasScore() => _score != null;

  // "submitted_at" field.
  DateTime? _submittedAt;
  DateTime? get submittedAt => _submittedAt;
  bool hasSubmittedAt() => _submittedAt != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _submissionId = snapshotData['submission_id'] as String?;
    _quizId = snapshotData['quiz_id'] as String?;
    _studentID = snapshotData['studentID'] as String?;
    _answers = getDataList(snapshotData['answers']);
    _score = castToType<double>(snapshotData['score']);
    _submittedAt = snapshotData['submitted_at'] as DateTime?;
    _status = snapshotData['status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('submissions');

  static Stream<SubmissionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SubmissionsRecord.fromSnapshot(s));

  static Future<SubmissionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SubmissionsRecord.fromSnapshot(s));

  static SubmissionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubmissionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubmissionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubmissionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubmissionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubmissionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSubmissionsRecordData({
  String? submissionId,
  String? quizId,
  String? studentID,
  double? score,
  DateTime? submittedAt,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'submission_id': submissionId,
      'quiz_id': quizId,
      'studentID': studentID,
      'score': score,
      'submitted_at': submittedAt,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class SubmissionsRecordDocumentEquality implements Equality<SubmissionsRecord> {
  const SubmissionsRecordDocumentEquality();

  @override
  bool equals(SubmissionsRecord? e1, SubmissionsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.submissionId == e2?.submissionId &&
        e1?.quizId == e2?.quizId &&
        e1?.studentID == e2?.studentID &&
        listEquality.equals(e1?.answers, e2?.answers) &&
        e1?.score == e2?.score &&
        e1?.submittedAt == e2?.submittedAt &&
        e1?.status == e2?.status;
  }

  @override
  int hash(SubmissionsRecord? e) => const ListEquality().hash([
        e?.submissionId,
        e?.quizId,
        e?.studentID,
        e?.answers,
        e?.score,
        e?.submittedAt,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is SubmissionsRecord;
}
