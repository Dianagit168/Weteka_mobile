// ignore: file_names
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

String? typenameDataIdFromObject(Object object) {
  if (object is Map<String, Object> &&
      object.containsKey('__typename') &&
      object.containsKey('id')) {
    return "${object['__typename']}/${object['id']}";
  }
  return null;
}

class GraphQLConfiguration with ChangeNotifier {
  // ignore: avoid_init_to_null
  static Link? link;
  static HttpLink httpLink = HttpLink(
  Platform.isAndroid
    ? 'https://api.weteka.org/api/private'
    : 'https://api.weteka.org/api/private',
  );

  static void setToken(String token) {
    AuthLink alink = AuthLink(getToken: () async => token);
    GraphQLConfiguration.link = alink.concat(GraphQLConfiguration.httpLink);
  }

  static void removeToken() {
    GraphQLConfiguration.link = null;
  }

  static Link getLink() {
    // ignore: unnecessary_null_comparison
    return GraphQLConfiguration.link != null
        ? GraphQLConfiguration.link!
        : GraphQLConfiguration.httpLink;
  }

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: getLink(),
      cache: GraphQLCache(dataIdFromObject: typenameDataIdFromObject),
    ),
  );
  
  GraphQLClient clientToQuery() {
    return GraphQLClient(
      cache: GraphQLCache(dataIdFromObject: typenameDataIdFromObject),
      link: getLink(),
    );
  }
  
}
