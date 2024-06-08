import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for MobileUser widget.
  FocusNode? mobileUserFocusNode;
  TextEditingController? mobileUserTextController;
  String? Function(BuildContext, String?)? mobileUserTextControllerValidator;
  // State field(s) for DesktopUser widget.
  FocusNode? desktopUserFocusNode;
  TextEditingController? desktopUserTextController;
  String? Function(BuildContext, String?)? desktopUserTextControllerValidator;
  // State field(s) for MobilePassword widget.
  FocusNode? mobilePasswordFocusNode;
  TextEditingController? mobilePasswordTextController;
  late bool mobilePasswordVisibility;
  String? Function(BuildContext, String?)?
      mobilePasswordTextControllerValidator;
  // State field(s) for DesktopPassword widget.
  FocusNode? desktopPasswordFocusNode;
  TextEditingController? desktopPasswordTextController;
  late bool desktopPasswordVisibility;
  String? Function(BuildContext, String?)?
      desktopPasswordTextControllerValidator;
  // Stores action output result for [Backend Call - API (login)] action in MobileButton widget.
  ApiCallResponse? loginCall;

  @override
  void initState(BuildContext context) {
    mobilePasswordVisibility = false;
    desktopPasswordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileUserFocusNode?.dispose();
    mobileUserTextController?.dispose();

    desktopUserFocusNode?.dispose();
    desktopUserTextController?.dispose();

    mobilePasswordFocusNode?.dispose();
    mobilePasswordTextController?.dispose();

    desktopPasswordFocusNode?.dispose();
    desktopPasswordTextController?.dispose();
  }
}
