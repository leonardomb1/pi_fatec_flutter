import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cadastrar_cartao_widget.dart' show CadastrarCartaoWidget;
import 'package:flutter/material.dart';

class CadastrarCartaoModel extends FlutterFlowModel<CadastrarCartaoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for ideia widget.
  FocusNode? ideiaFocusNode;
  TextEditingController? ideiaTextController;
  String? Function(BuildContext, String?)? ideiaTextControllerValidator;
  String? _ideiaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the patients full name.';
    }

    return null;
  }

  // State field(s) for pilares widget.
  FormFieldController<List<String>>? pilaresValueController;
  String? get pilaresValue => pilaresValueController?.value?.firstOrNull;
  set pilaresValue(String? val) =>
      pilaresValueController?.value = val != null ? [val] : [];
  // State field(s) for problema widget.
  FocusNode? problemaFocusNode;
  TextEditingController? problemaTextController;
  String? Function(BuildContext, String?)? problemaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    ideiaTextControllerValidator = _ideiaTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    ideiaFocusNode?.dispose();
    ideiaTextController?.dispose();

    problemaFocusNode?.dispose();
    problemaTextController?.dispose();
  }
}
