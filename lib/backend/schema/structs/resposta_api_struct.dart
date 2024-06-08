// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RespostaApiStruct extends BaseStruct {
  RespostaApiStruct({
    String? message,
    int? status,
    bool? sucess,
    bool? error,
    List<DataLoginStruct>? data,
  })  : _message = message,
        _status = status,
        _sucess = sucess,
        _error = error,
        _data = data;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;
  bool hasMessage() => _message != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  set status(int? val) => _status = val;
  void incrementStatus(int amount) => _status = status + amount;
  bool hasStatus() => _status != null;

  // "sucess" field.
  bool? _sucess;
  bool get sucess => _sucess ?? false;
  set sucess(bool? val) => _sucess = val;
  bool hasSucess() => _sucess != null;

  // "error" field.
  bool? _error;
  bool get error => _error ?? false;
  set error(bool? val) => _error = val;
  bool hasError() => _error != null;

  // "data" field.
  List<DataLoginStruct>? _data;
  List<DataLoginStruct> get data => _data ?? const [];
  set data(List<DataLoginStruct>? val) => _data = val;
  void updateData(Function(List<DataLoginStruct>) updateFn) =>
      updateFn(_data ??= []);
  bool hasData() => _data != null;

  static RespostaApiStruct fromMap(Map<String, dynamic> data) =>
      RespostaApiStruct(
        message: data['message'] as String?,
        status: castToType<int>(data['status']),
        sucess: data['sucess'] as bool?,
        error: data['error'] as bool?,
        data: getStructList(
          data['data'],
          DataLoginStruct.fromMap,
        ),
      );

  static RespostaApiStruct? maybeFromMap(dynamic data) => data is Map
      ? RespostaApiStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'message': _message,
        'status': _status,
        'sucess': _sucess,
        'error': _error,
        'data': _data?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.int,
        ),
        'sucess': serializeParam(
          _sucess,
          ParamType.bool,
        ),
        'error': serializeParam(
          _error,
          ParamType.bool,
        ),
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static RespostaApiStruct fromSerializableMap(Map<String, dynamic> data) =>
      RespostaApiStruct(
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.int,
          false,
        ),
        sucess: deserializeParam(
          data['sucess'],
          ParamType.bool,
          false,
        ),
        error: deserializeParam(
          data['error'],
          ParamType.bool,
          false,
        ),
        data: deserializeStructParam<DataLoginStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: DataLoginStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'RespostaApiStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RespostaApiStruct &&
        message == other.message &&
        status == other.status &&
        sucess == other.sucess &&
        error == other.error &&
        listEquality.equals(data, other.data);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([message, status, sucess, error, data]);
}

RespostaApiStruct createRespostaApiStruct({
  String? message,
  int? status,
  bool? sucess,
  bool? error,
}) =>
    RespostaApiStruct(
      message: message,
      status: status,
      sucess: sucess,
      error: error,
    );
