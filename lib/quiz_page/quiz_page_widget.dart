import '/backend/backend.dart';
import '/components/quiz_option_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'quiz_page_model.dart';
export 'quiz_page_model.dart';

class QuizPageWidget extends StatefulWidget {
  const QuizPageWidget({
    Key? key,
    this.quizSetRef,
    this.quizDuration,
    this.coverPhoto,
  }) : super(key: key);

  final DocumentReference? quizSetRef;
  final int? quizDuration;
  final String? coverPhoto;

  @override
  _QuizPageWidgetState createState() => _QuizPageWidgetState();
}

class _QuizPageWidgetState extends State<QuizPageWidget> {
  late QuizPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuizPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.instantTimer = InstantTimer.periodic(
        duration: Duration(milliseconds: 1000),
        callback: (timer) async {
          _model.timerController.onExecute.add(StopWatchExecute.start);
        },
        startImmediately: true,
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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

    return FutureBuilder<int>(
      future: queryQuizRecordCount(
        queryBuilder: (quizRecord) =>
            quizRecord.where('quiz_set', isEqualTo: widget.quizSetRef),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: SpinKitDoubleBounce(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 50.0,
              ),
            ),
          );
        }
        int quizPageCount = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                height: 36.0,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                  borderRadius: BorderRadius.circular(50.0),
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.timer,
                                        color: Colors.black,
                                        size: 24.0,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            6.0, 0.0, 0.0, 0.0),
                                        child: FlutterFlowTimer(
                                          initialTime: widget.quizDuration!,
                                          getDisplayTime: (value) =>
                                              StopWatchTimer.getDisplayTime(
                                            value,
                                            hours: false,
                                            milliSecond: false,
                                          ),
                                          timer: _model.timerController,
                                          updateStateInterval:
                                              Duration(milliseconds: 1000),
                                          onChanged: (value, displayTime,
                                              shouldUpdate) {
                                            _model.timerMilliseconds = value;
                                            _model.timerValue = displayTime;
                                            if (shouldUpdate) setState(() {});
                                          },
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Technor',
                                                color: Colors.black,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'P',
                                style: TextStyle(),
                              ),
                              TextSpan(
                                text: valueOrDefault<String>(
                                  (_model.pageNavigate + 1).toString(),
                                  '0',
                                ),
                                style: TextStyle(),
                              )
                            ],
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.grid_view,
                                color: Colors.black,
                                size: 24.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: Color(0x00FFFFFF),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            LinearPercentIndicator(
                              percent: valueOrDefault<double>(
                                FFAppState().completedQuestions / quizPageCount,
                                0.0,
                              ),
                              width: MediaQuery.of(context).size.width * 1.0,
                              lineHeight: 9.0,
                              animation: true,
                              progressColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              backgroundColor: Color(0x72F1F4F8),
                              barRadius: Radius.circular(0.0),
                              padding: EdgeInsets.zero,
                            ),
                            Expanded(
                              child: StreamBuilder<List<QuizRecord>>(
                                stream: queryQuizRecord(
                                  queryBuilder: (quizRecord) =>
                                      quizRecord.where('quiz_set',
                                          isEqualTo: widget.quizSetRef),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: SpinKitDoubleBounce(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 50.0,
                                        ),
                                      ),
                                    );
                                  }
                                  List<QuizRecord> pageViewQuizRecordList =
                                      snapshot.data!;
                                  return Container(
                                    width: double.infinity,
                                    height: 160.0,
                                    child: PageView.builder(
                                      controller: _model.pageViewController ??=
                                          PageController(
                                              initialPage: min(
                                                  0,
                                                  pageViewQuizRecordList
                                                          .length -
                                                      1)),
                                      scrollDirection: Axis.horizontal,
                                      itemCount: pageViewQuizRecordList.length,
                                      itemBuilder: (context, pageViewIndex) {
                                        final pageViewQuizRecord =
                                            pageViewQuizRecordList[
                                                pageViewIndex];
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 20.0, 20.0, 20.0),
                                              child: Text(
                                                pageViewQuizRecord.question!,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .title1
                                                        .override(
                                                          fontFamily: 'Technor',
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 20.0, 20.0, 0.0),
                                              child: ListView(
                                                padding: EdgeInsets.zero,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 12.0),
                                                    child: StreamBuilder<
                                                        List<QuestionARecord>>(
                                                      stream:
                                                          queryQuestionARecord(
                                                        parent:
                                                            pageViewQuizRecord
                                                                .reference,
                                                        singleRecord: true,
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  SpinKitDoubleBounce(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                                size: 50.0,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<QuestionARecord>
                                                            quizOptionQuestionARecordList =
                                                            snapshot.data!;
                                                        // Return an empty Container when the item does not exist.
                                                        if (snapshot
                                                            .data!.isEmpty) {
                                                          return Container();
                                                        }
                                                        final quizOptionQuestionARecord =
                                                            quizOptionQuestionARecordList
                                                                    .isNotEmpty
                                                                ? quizOptionQuestionARecordList
                                                                    .first
                                                                : null;
                                                        return QuizOptionWidget(
                                                          key: Key(
                                                              'Keyk56_${pageViewIndex}_of_${pageViewQuizRecordList.length}'),
                                                          questionNum: 'A',
                                                          questionName:
                                                              quizOptionQuestionARecord!
                                                                  .question,
                                                          isTrue:
                                                              quizOptionQuestionARecord!
                                                                  .isTrue,
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 12.0),
                                                    child: StreamBuilder<
                                                        List<QuestionBRecord>>(
                                                      stream:
                                                          queryQuestionBRecord(
                                                        parent:
                                                            pageViewQuizRecord
                                                                .reference,
                                                        singleRecord: true,
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  SpinKitDoubleBounce(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                                size: 50.0,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<QuestionBRecord>
                                                            quizOptionQuestionBRecordList =
                                                            snapshot.data!;
                                                        // Return an empty Container when the item does not exist.
                                                        if (snapshot
                                                            .data!.isEmpty) {
                                                          return Container();
                                                        }
                                                        final quizOptionQuestionBRecord =
                                                            quizOptionQuestionBRecordList
                                                                    .isNotEmpty
                                                                ? quizOptionQuestionBRecordList
                                                                    .first
                                                                : null;
                                                        return QuizOptionWidget(
                                                          key: Key(
                                                              'Keyv1c_${pageViewIndex}_of_${pageViewQuizRecordList.length}'),
                                                          questionNum: 'B',
                                                          questionName:
                                                              quizOptionQuestionBRecord!
                                                                  .question,
                                                          isTrue:
                                                              quizOptionQuestionBRecord!
                                                                  .isTrue,
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 12.0),
                                                    child: StreamBuilder<
                                                        List<QuestionCRecord>>(
                                                      stream:
                                                          queryQuestionCRecord(
                                                        parent:
                                                            pageViewQuizRecord
                                                                .reference,
                                                        singleRecord: true,
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  SpinKitDoubleBounce(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                                size: 50.0,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<QuestionCRecord>
                                                            quizOptionQuestionCRecordList =
                                                            snapshot.data!;
                                                        // Return an empty Container when the item does not exist.
                                                        if (snapshot
                                                            .data!.isEmpty) {
                                                          return Container();
                                                        }
                                                        final quizOptionQuestionCRecord =
                                                            quizOptionQuestionCRecordList
                                                                    .isNotEmpty
                                                                ? quizOptionQuestionCRecordList
                                                                    .first
                                                                : null;
                                                        return QuizOptionWidget(
                                                          key: Key(
                                                              'Keyxpo_${pageViewIndex}_of_${pageViewQuizRecordList.length}'),
                                                          questionNum: 'C',
                                                          questionName:
                                                              quizOptionQuestionCRecord!
                                                                  .question,
                                                          isTrue:
                                                              quizOptionQuestionCRecord!
                                                                  .isTrue,
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 12.0),
                                                    child: StreamBuilder<
                                                        List<QuestionDRecord>>(
                                                      stream:
                                                          queryQuestionDRecord(
                                                        parent:
                                                            pageViewQuizRecord
                                                                .reference,
                                                        singleRecord: true,
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  SpinKitDoubleBounce(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                                size: 50.0,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<QuestionDRecord>
                                                            quizOptionQuestionDRecordList =
                                                            snapshot.data!;
                                                        // Return an empty Container when the item does not exist.
                                                        if (snapshot
                                                            .data!.isEmpty) {
                                                          return Container();
                                                        }
                                                        final quizOptionQuestionDRecord =
                                                            quizOptionQuestionDRecordList
                                                                    .isNotEmpty
                                                                ? quizOptionQuestionDRecordList
                                                                    .first
                                                                : null;
                                                        return QuizOptionWidget(
                                                          key: Key(
                                                              'Key00i_${pageViewIndex}_of_${pageViewQuizRecordList.length}'),
                                                          questionNum: 'D',
                                                          questionName:
                                                              quizOptionQuestionDRecord!
                                                                  .question,
                                                          isTrue:
                                                              quizOptionQuestionDRecord!
                                                                  .isTrue,
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (FFAppState().completedQuestions > 0)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 20.0, 0.0),
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 12.0,
                                        borderWidth: 1.0,
                                        buttonSize: 60.0,
                                        fillColor: Colors.black,
                                        icon: Icon(
                                          Icons.keyboard_arrow_left,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          size: 30.0,
                                        ),
                                        onPressed: () async {
                                          await _model.pageViewController
                                              ?.previousPage(
                                            duration:
                                                Duration(milliseconds: 300),
                                            curve: Curves.ease,
                                          );
                                          setState(() {
                                            _model.pageNavigate =
                                                _model.pageNavigate + -1;
                                          });
                                        },
                                      ),
                                    ),
                                  if ((FFAppState().completedQuestions >= 0) &&
                                      (FFAppState().completedQuestions <
                                          quizPageCount))
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            await _model.pageViewController
                                                ?.nextPage(
                                              duration:
                                                  Duration(milliseconds: 300),
                                              curve: Curves.ease,
                                            );
                                            if (quizPageCount !=
                                                _model.pageNavigate) {
                                              setState(() {
                                                _model.pageNavigate =
                                                    _model.pageNavigate + 1;
                                              });
                                            }
                                          },
                                          text: 'Siguiente',
                                          options: FFButtonOptions(
                                            width: 130.0,
                                            height: 60.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Colors.black,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .title1
                                                    .override(
                                                      fontFamily: 'Technor',
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      fontSize: 16.0,
                                                      useGoogleFonts: false,
                                                    ),
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  if (FFAppState().completedQuestions ==
                                      quizPageCount)
                                    Expanded(
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          context.goNamed(
                                            'scorePage',
                                            queryParams: {
                                              'scoreAchieved': serializeParam(
                                                FFAppState().score,
                                                ParamType.int,
                                              ),
                                              'totalQuestions': serializeParam(
                                                quizPageCount,
                                                ParamType.int,
                                              ),
                                            }.withoutNulls,
                                          );

                                          FFAppState().update(() {
                                            FFAppState().completedQuestions = 0;
                                          });
                                        },
                                        text: 'Completar',
                                        options: FFButtonOptions(
                                          width: 130.0,
                                          height: 60.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: Colors.black,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .title1
                                              .override(
                                                fontFamily: 'Technor',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: 16.0,
                                                useGoogleFonts: false,
                                              ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
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
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
