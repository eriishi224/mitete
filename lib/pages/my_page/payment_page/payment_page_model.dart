import '/chat_page/confilm_payment/confilm_payment_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'payment_page_widget.dart' show PaymentPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaymentPageModel extends FlutterFlowModel<PaymentPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ConfilmPayment component.
  late ConfilmPaymentModel confilmPaymentModel;

  @override
  void initState(BuildContext context) {
    confilmPaymentModel = createModel(context, () => ConfilmPaymentModel());
  }

  @override
  void dispose() {
    confilmPaymentModel.dispose();
  }
}
