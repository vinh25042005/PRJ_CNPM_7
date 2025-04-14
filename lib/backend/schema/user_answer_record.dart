import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserAnswerRecord extends FirestoreRecord {
  UserAnswerRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "UserID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  // "isCorrect" field.
  bool? _isCorrect;
  bool get isCorrect => _isCorrect ?? false;
  bool hasIsCorrect() => _isCorrect != null;

  // "QuesID" field.
  String? _quesID;
  String get quesID => _quesID ?? '';
  bool hasQuesID() => _quesID != null;

  // "QuizID" field.
  String? _quizID;
  String get quizID => _quizID ?? '';
  bool hasQuizID() => _quizID != null;

  // "userAnswer" field.
  String? _userAnswer;
  String get userAnswer => _userAnswer ?? '';
  bool hasUserAnswer() => _userAnswer != null;

  // "Score" field.
  String? _score;
  String get score => _score ?? '';
  bool hasScore() => _score != null;

  // "QuesContent" field.
  String? _quesContent;
  String get quesContent => _quesContent ?? '';
  bool hasQuesContent() => _quesContent != null;

  // "studentName" field.
  String? _studentName;
  String get studentName => _studentName ?? '';
  bool hasStudentName() => _studentName != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  bool hasIndex() => _index != null;

  void _initializeFields() {
    _userID = snapshotData['UserID'] as String?;
    _isCorrect = snapshotData['isCorrect'] as bool?;
    _quesID = snapshotData['QuesID'] as String?;
    _quizID = snapshotData['QuizID'] as String?;
    _userAnswer = snapshotData['userAnswer'] as String?;
    _score = snapshotData['Score'] as String?;
    _quesContent = snapshotData['QuesContent'] as String?;
    _studentName = snapshotData['studentName'] as String?;
    _index = castToType<int>(snapshotData['index']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('UserAnswer');

  static Stream<UserAnswerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserAnswerRecord.fromSnapshot(s));

  static Future<UserAnswerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserAnswerRecord.fromSnapshot(s));

  static UserAnswerRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserAnswerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserAnswerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserAnswerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserAnswerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserAnswerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserAnswerRecordData({
  String? userID,
  bool? isCorrect,
  String? quesID,
  String? quizID,
  String? userAnswer,
  String? score,
  String? quesContent,
  String? studentName,
  int? index,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'UserID': userID,
      'isCorrect': isCorrect,
      'QuesID': quesID,
      'QuizID': quizID,
      'userAnswer': userAnswer,
      'Score': score,
      'QuesContent': quesContent,
      'studentName': studentName,
      'index': index,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserAnswerRecordDocumentEquality implements Equality<UserAnswerRecord> {
  const UserAnswerRecordDocumentEquality();

  @override
  bool equals(UserAnswerRecord? e1, UserAnswerRecord? e2) {
    return e1?.userID == e2?.userID &&
        e1?.isCorrect == e2?.isCorrect &&
        e1?.quesID == e2?.quesID &&
        e1?.quizID == e2?.quizID &&
        e1?.userAnswer == e2?.userAnswer &&
        e1?.score == e2?.score &&
        e1?.quesContent == e2?.quesContent &&
        e1?.studentName == e2?.studentName &&
        e1?.index == e2?.index;
  }

  @override
  int hash(UserAnswerRecord? e) => const ListEquality().hash([
        e?.userID,
        e?.isCorrect,
        e?.quesID,
        e?.quizID,
        e?.userAnswer,
        e?.score,
        e?.quesContent,
        e?.studentName,
        e?.index
      ]);

  @override
  bool isValidKey(Object? o) => o is UserAnswerRecord;
}
