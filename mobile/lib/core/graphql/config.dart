import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mobile/core/constants/constants.dart';

///
/// Graphql configuration

class GraphqlConfig {
  final HttpLink httpLink = HttpLink(AppConstants.graphQLBaseUrl);

  ///
  /// Initialize graphql client
  GraphQLClient init([String? token]) {
    if (token != null && token.isNotEmpty) {
      httpLink.defaultHeaders['Authorization'] = 'Bearer $token';
    }
    return GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(),
    );
  }
}
