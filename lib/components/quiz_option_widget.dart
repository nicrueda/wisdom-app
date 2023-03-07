import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'quiz_option_model.dart';
export 'quiz_option_model.dart';

class QuizOptionWidget extends StatefulWidget {
  const QuizOptionWidget({
    Key? key,
    this.questionNum,
    this.questionName,
    this.isTrue,
  }) : super(key: key);

  final String? questionNum;
  final String? questionName;
  final bool? isTrue;

  @override
  _QuizOptionWidgetState createState() => _QuizOptionWidgetState();
}

class _QuizOptionWidgetState extends State<QuizOptionWidget> {
  late QuizOptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuizOptionModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return InkWell(
      onTap: () async {
        if (widget.isTrue!) {
          if (_model.isAnswered != null) {
            setState(() {
              _model.isAnswered = null;
            });
            setState(() {
              FFAppState().completedQuestions =
                  FFAppState().completedQuestions + -1;
            });
            setState(() {
              FFAppState().score = FFAppState().score + -1;
            });
          } else {
            setState(() {
              _model.isAnswered = true;
            });
            setState(() {
              FFAppState().completedQuestions =
                  FFAppState().completedQuestions + 1;
            });
            setState(() {
              FFAppState().score = FFAppState().score + 1;
            });
          }
        } else {
          if (_model.isAnswered != null) {
            setState(() {
              _model.isAnswered = null;
            });
            setState(() {
              FFAppState().completedQuestions =
                  FFAppState().completedQuestions + -1;
            });
          } else {
            setState(() {
              _model.isAnswered = false;
            });
            setState(() {
              FFAppState().completedQuestions =
                  FFAppState().completedQuestions + 1;
            });
          }
        }
      },
      child: Container(
        width: double.infinity,
        height: 60.0,
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            () {
              if (_model.isAnswered == true) {
                return Color(0x3B2FB73C);
              } else if (_model.isAnswered == false) {
                return Color(0x8CA50000);
              } else {
                return Colors.transparent;
              }
            }(),
            Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: valueOrDefault<Color>(
              () {
                if (_model.isAnswered == true) {
                  return FlutterFlowTheme.of(context).customColor1;
                } else if (_model.isAnswered == false) {
                  return Color(0xFFA50000);
                } else {
                  return FlutterFlowTheme.of(context).textColor;
                }
              }(),
              Colors.white,
            ),
            width: 2.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 36.0,
                height: 36.0,
                decoration: BoxDecoration(
                  color: valueOrDefault<Color>(
                    () {
                      if (_model.isAnswered == true) {
                        return FlutterFlowTheme.of(context).primaryColor;
                      } else if (_model.isAnswered == false) {
                        return Color(0xFFA50000);
                      } else {
                        return Color(0x00FFFFFF);
                      }
                    }(),
                    Color(0x00FFFFFF),
                  ),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: valueOrDefault<Color>(
                      () {
                        if (_model.isAnswered == true) {
                          return FlutterFlowTheme.of(context).customColor1;
                        } else if (_model.isAnswered == false) {
                          return Color(0xFFA50000);
                        } else {
                          return FlutterFlowTheme.of(context).textColor;
                        }
                      }(),
                      FlutterFlowTheme.of(context).textColor,
                    ),
                  ),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    widget.questionNum!,
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Technor',
                          color: Colors.black,
                          fontSize: 14.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                        child: AutoSizeText(
                          widget.questionName!,
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Technor',
                                color: Colors.black,
                                fontSize: 14.0,
                                useGoogleFonts: false,
                              ),
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
