import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'no_dog_error_model.dart';
export 'no_dog_error_model.dart';

class NoDogErrorWidget extends StatefulWidget {
  const NoDogErrorWidget({super.key});

  @override
  State<NoDogErrorWidget> createState() => _NoDogErrorWidgetState();
}

class _NoDogErrorWidgetState extends State<NoDogErrorWidget> {
  late NoDogErrorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoDogErrorModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Text(
        'わんこが登録されていません',
        style: FlutterFlowTheme.of(context).labelSmall.override(
              fontFamily: 'Noto Sans JP',
              fontSize: 14.0,
              letterSpacing: 0.0,
            ),
      ),
    );
  }
}
