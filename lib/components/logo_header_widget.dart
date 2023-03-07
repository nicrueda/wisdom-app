import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'logo_header_model.dart';
export 'logo_header_model.dart';

class LogoHeaderWidget extends StatefulWidget {
  const LogoHeaderWidget({Key? key}) : super(key: key);

  @override
  _LogoHeaderWidgetState createState() => _LogoHeaderWidgetState();
}

class _LogoHeaderWidgetState extends State<LogoHeaderWidget> {
  late LogoHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogoHeaderModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/images/Diseno_sin_titulo.png',
            width: MediaQuery.of(context).size.width * 0.5,
            height: 55.7,
            fit: BoxFit.fitHeight,
          ),
        ],
      ),
    );
  }
}
