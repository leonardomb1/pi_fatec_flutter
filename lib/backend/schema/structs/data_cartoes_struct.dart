// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataCartoesStruct extends BaseStruct {
  DataCartoesStruct({
    int? idCartao,
    int? idUsuario,
    String? descProblema,
    String? descIdeia,
    DateTime? dataCartao,
  })  : _idCartao = idCartao,
        _idUsuario = idUsuario,
        _descProblema = descProblema,
        _descIdeia = descIdeia,
        _dataCartao = dataCartao;

  // "id_cartao" field.
  int? _idCartao;
  int get idCartao => _idCartao ?? 0;
  set idCartao(int? val) => _idCartao = val;
  void incrementIdCartao(int amount) => _idCartao = idCartao + amount;
  bool hasIdCartao() => _idCartao != null;

  // "id_usuario" field.
  int? _idUsuario;
  int get idUsuario => _idUsuario ?? 0;
  set idUsuario(int? val) => _idUsuario = val;
  void incrementIdUsuario(int amount) => _idUsuario = idUsuario + amount;
  bool hasIdUsuario() => _idUsuario != null;

  // "desc_problema" field.
  String? _descProblema;
  String get descProblema => _descProblema ?? '';
  set descProblema(String? val) => _descProblema = val;
  bool hasDescProblema() => _descProblema != null;

  // "desc_ideia" field.
  String? _descIdeia;
  String get descIdeia => _descIdeia ?? '';
  set descIdeia(String? val) => _descIdeia = val;
  bool hasDescIdeia() => _descIdeia != null;

  // "data_cartao" field.
  DateTime? _dataCartao;
  DateTime? get dataCartao => _dataCartao;
  set dataCartao(DateTime? val) => _dataCartao = val;
  bool hasDataCartao() => _dataCartao != null;

  static DataCartoesStruct fromMap(Map<String, dynamic> data) =>
      DataCartoesStruct(
        idCartao: castToType<int>(data['id_cartao']),
        idUsuario: castToType<int>(data['id_usuario']),
        descProblema: data['desc_problema'] as String?,
        descIdeia: data['desc_ideia'] as String?,
        dataCartao: data['data_cartao'] as DateTime?,
      );

  static DataCartoesStruct? maybeFromMap(dynamic data) => data is Map
      ? DataCartoesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id_cartao': _idCartao,
        'id_usuario': _idUsuario,
        'desc_problema': _descProblema,
        'desc_ideia': _descIdeia,
        'data_cartao': _dataCartao,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id_cartao': serializeParam(
          _idCartao,
          ParamType.int,
        ),
        'id_usuario': serializeParam(
          _idUsuario,
          ParamType.int,
        ),
        'desc_problema': serializeParam(
          _descProblema,
          ParamType.String,
        ),
        'desc_ideia': serializeParam(
          _descIdeia,
          ParamType.String,
        ),
        'data_cartao': serializeParam(
          _dataCartao,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static DataCartoesStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataCartoesStruct(
        idCartao: deserializeParam(
          data['id_cartao'],
          ParamType.int,
          false,
        ),
        idUsuario: deserializeParam(
          data['id_usuario'],
          ParamType.int,
          false,
        ),
        descProblema: deserializeParam(
          data['desc_problema'],
          ParamType.String,
          false,
        ),
        descIdeia: deserializeParam(
          data['desc_ideia'],
          ParamType.String,
          false,
        ),
        dataCartao: deserializeParam(
          data['data_cartao'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'DataCartoesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataCartoesStruct &&
        idCartao == other.idCartao &&
        idUsuario == other.idUsuario &&
        descProblema == other.descProblema &&
        descIdeia == other.descIdeia &&
        dataCartao == other.dataCartao;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([idCartao, idUsuario, descProblema, descIdeia, dataCartao]);
}

DataCartoesStruct createDataCartoesStruct({
  int? idCartao,
  int? idUsuario,
  String? descProblema,
  String? descIdeia,
  DateTime? dataCartao,
}) =>
    DataCartoesStruct(
      idCartao: idCartao,
      idUsuario: idUsuario,
      descProblema: descProblema,
      descIdeia: descIdeia,
      dataCartao: dataCartao,
    );
