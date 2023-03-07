import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tecnicas_conteo_articulo_model.dart';
export 'tecnicas_conteo_articulo_model.dart';

class TecnicasConteoArticuloWidget extends StatefulWidget {
  const TecnicasConteoArticuloWidget({Key? key}) : super(key: key);

  @override
  _TecnicasConteoArticuloWidgetState createState() =>
      _TecnicasConteoArticuloWidgetState();
}

class _TecnicasConteoArticuloWidgetState
    extends State<TecnicasConteoArticuloWidget> {
  late TecnicasConteoArticuloModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TecnicasConteoArticuloModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 400.0,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/Diseo_sin_ttulo_(2).png',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 50.0, 20.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FlutterFlowIconButton(
                            borderColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.close,
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              size: 20.0,
                            ),
                            onPressed: () async {
                              context.pop();
                            },
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            50.0, 0.0, 50.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Todo lo que necesitas \nsaber acerca de las\ntécnicas de conteo',
                              textAlign: TextAlign.center,
                              style:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Technor',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: false,
                                      ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 29.0, 50.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      '¿Que són las técnicas de conteo?',
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily: 'Technor',
                            fontSize: 18.0,
                            useGoogleFonts: false,
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                      child: Text(
                        'Las técnicas de conteo son herramientas matemáticas que se utilizan para contar el número de elementos de un conjunto, de manera sistemática y sin omitir ninguna posibilidad. Estas técnicas incluyen el principio multiplicativo, el principio aditivo y la combinación y permutación.',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Supreme',
                              fontWeight: FontWeight.normal,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                    Text(
                      '¿Qué es el principio multiplicativo?',
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily: 'Technor',
                            fontSize: 18.0,
                            useGoogleFonts: false,
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                      child: Text(
                        'Establece que si un suceso se puede realizar de «m» formas diferentes y luego se puede realizar otro suceso de «n» formas diferentes, el número total de formas en que pueden ocurrir es igual a m x n.',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Supreme',
                              fontWeight: FontWeight.normal,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                    Text(
                      '¿Qué es el principio aditivo?',
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily: 'Technor',
                            fontSize: 18.0,
                            useGoogleFonts: false,
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                      child: Text(
                        'Establece que si un suceso «A» se puede realizar de «m» maneras diferentes, y otro suceso «B» se puede realizar de «n» maneras diferentes, además, si ocurre uno no puede ocurrir el otro, entonces, el evento A o el evento B, se realizarán de m + n formas.',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Supreme',
                              fontWeight: FontWeight.normal,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                    Text(
                      '¿Qué son las permutaciones?',
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily: 'Technor',
                            fontSize: 18.0,
                            useGoogleFonts: false,
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                      child: Text(
                        'Se utilizan para contar el número de formas diferentes en que se pueden organizar los elementos de un conjunto. En las permutaciones SI importa el orden.',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Supreme',
                              fontWeight: FontWeight.normal,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                    Text(
                      '¿Qué son las combinaciones?',
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily: 'Technor',
                            fontSize: 18.0,
                            useGoogleFonts: false,
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                      child: Text(
                        'Se utilizan para contar el número de formas diferentes en que se pueden organizar los elementos de un conjunto. En las combinaciones NO importa el orden.',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Supreme',
                              fontWeight: FontWeight.normal,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
