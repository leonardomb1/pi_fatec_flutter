// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataLoginStruct extends BaseStruct {
  DataLoginStruct({
    int? idUsuario,
    String? nomeUsuario,
    String? senhaUsuario,
    int? idFuncionario,
  })  : _idUsuario = idUsuario,
        _nomeUsuario = nomeUsuario,
        _senhaUsuario = senhaUsuario,
        _idFuncionario = idFuncionario;

  // "id_usuario" field.
  int? _idUsuario;
  int get idUsuario => _idUsuario ?? 0;
  set idUsuario(int? val) => _idUsuario = val;
  void incrementIdUsuario(int amount) => _idUsuario = idUsuario + amount;
  bool hasIdUsuario() => _idUsuario != null;

  // "nome_usuario" field.
  String? _nomeUsuario;
  String get nomeUsuario => _nomeUsuario ?? '';
  set nomeUsuario(String? val) => _nomeUsuario = val;
  bool hasNomeUsuario() => _nomeUsuario != null;

  // "senha_usuario" field.
  String? _senhaUsuario;
  String get senhaUsuario => _senhaUsuario ?? '';
  set senhaUsuario(String? val) => _senhaUsuario = val;
  bool hasSenhaUsuario() => _senhaUsuario != null;

  // "id_funcionario" field.
  int? _idFuncionario;
  int get idFuncionario => _idFuncionario ?? 0;
  set idFuncionario(int? val) => _idFuncionario = val;
  void incrementIdFuncionario(int amount) =>
      _idFuncionario = idFuncionario + amount;
  bool hasIdFuncionario() => _idFuncionario != null;

  static DataLoginStruct fromMap(Map<String, dynamic> data) => DataLoginStruct(
        idUsuario: castToType<int>(data['id_usuario']),
        nomeUsuario: data['nome_usuario'] as String?,
        senhaUsuario: data['senha_usuario'] as String?,
        idFuncionario: castToType<int>(data['id_funcionario']),
      );

  static DataLoginStruct? maybeFromMap(dynamic data) => data is Map
      ? DataLoginStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id_usuario': _idUsuario,
        'nome_usuario': _nomeUsuario,
        'senha_usuario': _senhaUsuario,
        'id_funcionario': _idFuncionario,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id_usuario': serializeParam(
          _idUsuario,
          ParamType.int,
        ),
        'nome_usuario': serializeParam(
          _nomeUsuario,
          ParamType.String,
        ),
        'senha_usuario': serializeParam(
          _senhaUsuario,
          ParamType.String,
        ),
        'id_funcionario': serializeParam(
          _idFuncionario,
          ParamType.int,
        ),
      }.withoutNulls;

  static DataLoginStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataLoginStruct(
        idUsuario: deserializeParam(
          data['id_usuario'],
          ParamType.int,
          false,
        ),
        nomeUsuario: deserializeParam(
          data['nome_usuario'],
          ParamType.String,
          false,
        ),
        senhaUsuario: deserializeParam(
          data['senha_usuario'],
          ParamType.String,
          false,
        ),
        idFuncionario: deserializeParam(
          data['id_funcionario'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DataLoginStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataLoginStruct &&
        idUsuario == other.idUsuario &&
        nomeUsuario == other.nomeUsuario &&
        senhaUsuario == other.senhaUsuario &&
        idFuncionario == other.idFuncionario;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([idUsuario, nomeUsuario, senhaUsuario, idFuncionario]);
}

DataLoginStruct createDataLoginStruct({
  int? idUsuario,
  String? nomeUsuario,
  String? senhaUsuario,
  int? idFuncionario,
}) =>
    DataLoginStruct(
      idUsuario: idUsuario,
      nomeUsuario: nomeUsuario,
      senhaUsuario: senhaUsuario,
      idFuncionario: idFuncionario,
    );
