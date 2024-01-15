import 'package:mobile/core/graphql/query_doc.dart';

class JobQuery extends QueryDoc {
  String? title;
  String? description;
  String? createdAt;
  bool? active;
  String? id;

  @override
  String get queryDoc => r'''
                        query ExampleQuery {
                          jobs {
                            id
                            createdAt
                            title
                            description
                            active
                            company {
                              id
                            }
                          }
                        }
                  ''';

  @override
  // TODO: implement variables
  Map<String, dynamic> get variables => throw UnimplementedError();
}
