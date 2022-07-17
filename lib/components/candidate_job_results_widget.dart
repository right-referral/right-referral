import '../backend/backend.dart';
import '../candidate_view_job_and_apply/candidate_view_job_and_apply_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class CandidateJobResultsWidget extends StatefulWidget {
  const CandidateJobResultsWidget({
    Key key,
    this.location,
    this.company,
    this.domain,
    this.industry,
    this.jobTitle,
  }) : super(key: key);

  final String location;
  final String company;
  final String domain;
  final String industry;
  final String jobTitle;

  @override
  _CandidateJobResultsWidgetState createState() =>
      _CandidateJobResultsWidgetState();
}

class _CandidateJobResultsWidgetState extends State<CandidateJobResultsWidget> {
  PagingController<DocumentSnapshot, JobPostsRecord> _pagingController;
  Query _pagingQuery;
  List<StreamSubscription> _streamSubscriptions = [];

  @override
  void dispose() {
    _streamSubscriptions.forEach((s) => s?.cancel());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PagedListView<DocumentSnapshot<Object>, JobPostsRecord>(
      pagingController: () {
        final Query<Object> Function(Query<Object>) queryBuilder =
            (jobPostsRecord) => jobPostsRecord
                .where('hiring_location', isEqualTo: widget.location)
                .where('company_name', isEqualTo: widget.company)
                .where('domain', isEqualTo: widget.domain)
                .where('industry_type', isEqualTo: widget.industry)
                .where('job_title', isEqualTo: widget.jobTitle)
                .orderBy('posted_on', descending: true);
        if (_pagingController != null) {
          final query = queryBuilder(JobPostsRecord.collection);
          if (query != _pagingQuery) {
            // The query has changed
            _pagingQuery = query;
            _streamSubscriptions.forEach((s) => s?.cancel());
            _streamSubscriptions.clear();
            _pagingController.refresh();
          }
          return _pagingController;
        }

        _pagingController = PagingController(firstPageKey: null);
        _pagingQuery = queryBuilder(JobPostsRecord.collection);
        _pagingController.addPageRequestListener((nextPageMarker) {
          queryJobPostsRecordPage(
            queryBuilder: (jobPostsRecord) => jobPostsRecord
                .where('hiring_location', isEqualTo: widget.location)
                .where('company_name', isEqualTo: widget.company)
                .where('domain', isEqualTo: widget.domain)
                .where('industry_type', isEqualTo: widget.industry)
                .where('job_title', isEqualTo: widget.jobTitle)
                .orderBy('posted_on', descending: true),
            nextPageMarker: nextPageMarker,
            pageSize: 25,
            isStream: true,
          ).then((page) {
            _pagingController.appendPage(
              page.data,
              page.nextPageMarker,
            );
            final streamSubscription = page.dataStream?.listen((data) {
              final itemIndexes = _pagingController.itemList
                  .asMap()
                  .map((k, v) => MapEntry(v.reference.id, k));
              data.forEach((item) {
                final index = itemIndexes[item.reference.id];
                final items = _pagingController.itemList;
                if (index != null) {
                  items.replaceRange(index, index + 1, [item]);
                  _pagingController.itemList = {
                    for (var item in items) item.reference: item
                  }.values.toList();
                }
              });
              setState(() {});
            });
            _streamSubscriptions.add(streamSubscription);
          });
        });
        return _pagingController;
      }(),
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      builderDelegate: PagedChildBuilderDelegate<JobPostsRecord>(
        // Customize what your widget looks like when it's loading the first page.
        firstPageProgressIndicatorBuilder: (_) => Center(
          child: SizedBox(
            width: 50,
            height: 50,
            child: SpinKitThreeBounce(
              color: FlutterFlowTheme.of(context).primaryColor,
              size: 50,
            ),
          ),
        ),

        itemBuilder: (context, _, listViewIndex) {
          final listViewJobPostsRecord =
              _pagingController.itemList[listViewIndex];
          return Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Job ID : ',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          AutoSizeText(
                            listViewJobPostsRecord.jobid,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Job Title : ',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          AutoSizeText(
                            listViewJobPostsRecord.jobTitle,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Company :  ',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Text(
                            listViewJobPostsRecord.companyName,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Posted on : ',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Text(
                            listViewJobPostsRecord.postedOn.toString(),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Num of positions : ',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Text(
                            listViewJobPostsRecord.openingsNum.toString(),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Domain : ',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Text(
                            listViewJobPostsRecord.domain,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Industry : ',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Text(
                            listViewJobPostsRecord.industryType,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Key Skills : ',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Text(
                            listViewJobPostsRecord.keySkillsMustHave,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 1, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          CandidateViewJobAndApplyWidget(
                                        jobidParameter:
                                            listViewJobPostsRecord.jobid,
                                        companyParameter:
                                            listViewJobPostsRecord.companyName,
                                        jobTitleParameter:
                                            listViewJobPostsRecord.jobTitle,
                                      ),
                                    ),
                                  );
                                },
                                text: 'View',
                                options: FFButtonOptions(
                                  height: 20,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('delete pressed ...');
                                },
                                text: 'Quick apply',
                                options: FFButtonOptions(
                                  height: 20,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .background,
                                        fontSize: 10,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Check status',
                              options: FFButtonOptions(
                                height: 20,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        endIndent: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
