import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mobile/core/graphql/config.dart';

final graphqlProvider = Provider<GraphQLClient>((ref) {
  GraphqlConfig config = GraphqlConfig();
  return config.init();
});
