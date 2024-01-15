import 'package:mobile/core/graphql/query_doc.dart';

class DeleteQuery extends QueryDoc {
  final String? jobId;

  DeleteQuery({this.jobId});

  @override
  String get queryDoc => r'''
                                mutation Delete( $jobId: ID){
                                  deleteJob(jobId: $jobId) {
                                    id
                                    title
                                    description
                                    createdAt
                                  }
                                }
                        ''';

  @override
  Map<String, dynamic> get variables {
    return {"jobId": jobId};
  }
}
