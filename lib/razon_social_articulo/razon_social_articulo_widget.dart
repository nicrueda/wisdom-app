import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'razon_social_articulo_model.dart';
export 'razon_social_articulo_model.dart';

class RazonSocialArticuloWidget extends StatefulWidget {
  const RazonSocialArticuloWidget({Key? key}) : super(key: key);

  @override
  _RazonSocialArticuloWidgetState createState() =>
      _RazonSocialArticuloWidgetState();
}

class _RazonSocialArticuloWidgetState extends State<RazonSocialArticuloWidget> {
  late RazonSocialArticuloModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RazonSocialArticuloModel());
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
                      'assets/images/Diseo_sin_ttulo_(3).png',
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
                              'RAZÓN SOCIAL: \nUN CONCEPTO CLAVE\nPARA CREAR TU EMPRESA',
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
                      '¿Que es la razón social?',
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
                        'La razón social de una empresa es el nombre legal bajo el cual se registra y opera la empresa. Es el nombre que aparece en los documentos oficiales, como el registro comercial, la factura y el contrato, y se utiliza para identificar y distinguir a la empresa de otras empresas. La razón social puede estar compuesta por el nombre de la empresa, el nombre del propietario o los socios, el objeto social y la forma jurídica de la empresa.',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Supreme',
                              fontWeight: FontWeight.normal,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                    Text(
                      '¿Dónde registro mi empresa?',
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
                        'En Colombia, la razón social de una empresa se registra en la Cámara de Comercio correspondiente al lugar donde la empresa tiene su domicilio principal. El registro se realiza a través del trámite de matrícula mercantil, el cual es obligatorio para todas las empresas que operan en el país. En este proceso se deben proporcionar datos como el nombre de la empresa, el objeto social, la forma jurídica, la identificación del representante legal y otros detalles que varían según el tipo de empresa. Una vez registrada la empresa, se le asigna un número de matrícula y se le expide un certificado de existencia y representación legal, que acredita la validez del registro ante terceros.',
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
