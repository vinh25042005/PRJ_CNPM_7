// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PieValueStruct extends FFFirebaseStruct {
  PieValueStruct({
    double? done,
    double? workingOn,
    double? pending,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _done = done,
        _workingOn = workingOn,
        _pending = pending,
        super(firestoreUtilData);

  // "Done" field.
  double? _done;
  double get done => _done ?? 30.0;
  set done(double? val) => _done = val;

  void incrementDone(double amount) => done = done + amount;

  bool hasDone() => _done != null;

  // "WorkingOn" field.
  double? _workingOn;
  double get workingOn => _workingOn ?? 40.0;
  set workingOn(double? val) => _workingOn = val;

  void incrementWorkingOn(double amount) => workingOn = workingOn + amount;

  bool hasWorkingOn() => _workingOn != null;

  // "Pending" field.
  double? _pending;
  double get pending => _pending ?? 30.0;
  set pending(double? val) => _pending = val;

  void incrementPending(double amount) => pending = pending + amount;

  bool hasPending() => _pending != null;

  static PieValueStruct fromMap(Map<String, dynamic> data) => PieValueStruct(
        done: castToType<double>(data['Done']),
        workingOn: castToType<double>(data['WorkingOn']),
        pending: castToType<double>(data['Pending']),
      );

  static PieValueStruct? maybeFromMap(dynamic data) =>
      data is Map ? PieValueStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Done': _done,
        'WorkingOn': _workingOn,
        'Pending': _pending,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Done': serializeParam(
          _done,
          ParamType.double,
        ),
        'WorkingOn': serializeParam(
          _workingOn,
          ParamType.double,
        ),
        'Pending': serializeParam(
          _pending,
          ParamType.double,
        ),
      }.withoutNulls;

  static PieValueStruct fromSerializableMap(Map<String, dynamic> data) =>
      PieValueStruct(
        done: deserializeParam(
          data['Done'],
          ParamType.double,
          false,
        ),
        workingOn: deserializeParam(
          data['WorkingOn'],
          ParamType.double,
          false,
        ),
        pending: deserializeParam(
          data['Pending'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'PieValueStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PieValueStruct &&
        done == other.done &&
        workingOn == other.workingOn &&
        pending == other.pending;
  }

  @override
  int get hashCode => const ListEquality().hash([done, workingOn, pending]);
}

PieValueStruct createPieValueStruct({
  double? done,
  double? workingOn,
  double? pending,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PieValueStruct(
      done: done,
      workingOn: workingOn,
      pending: pending,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PieValueStruct? updatePieValueStruct(
  PieValueStruct? pieValue, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    pieValue
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPieValueStructData(
  Map<String, dynamic> firestoreData,
  PieValueStruct? pieValue,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (pieValue == null) {
    return;
  }
  if (pieValue.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && pieValue.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final pieValueData = getPieValueFirestoreData(pieValue, forFieldValue);
  final nestedData = pieValueData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = pieValue.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPieValueFirestoreData(
  PieValueStruct? pieValue, [
  bool forFieldValue = false,
]) {
  if (pieValue == null) {
    return {};
  }
  final firestoreData = mapToFirestore(pieValue.toMap());

  // Add any Firestore field values
  pieValue.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPieValueListFirestoreData(
  List<PieValueStruct>? pieValues,
) =>
    pieValues?.map((e) => getPieValueFirestoreData(e, true)).toList() ?? [];
