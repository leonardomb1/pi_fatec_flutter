import '/flutter_flow/flutter_flow_util.dart';
import 'detalhe_cartao_widget.dart' show DetalheCartaoWidget;
import 'package:flutter/material.dart';

class DetalheCartaoModel extends FlutterFlowModel<DetalheCartaoWidget> {
  ///  Local state fields for this page.

  dynamic jsonIdeia;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
