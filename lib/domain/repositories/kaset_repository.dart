import 'package:graphql_flutter/graphql_flutter.dart';
import '../../data/api/graphql/graphql_config.dart';
import '../../data/api/graphql/querys/kaset.dart';
import '../../model/kaset_model.dart';

class KasestRepository {
  Future<List<KasetModel>> getAllKasets() async {
    List<KasetModel> kasetList = [];
    QueryKaset queryKaset = QueryKaset();
    GraphQLConfiguration graphQLConfig = GraphQLConfiguration();
    GraphQLClient client = graphQLConfig.clientToQuery();
    QueryResult result = await client.query(QueryOptions(
        document: gql(
      queryKaset.getAllKaset(),
    )));
    if (!result.hasException) {
      print(result.data);
    } else if (result.hasException) {}
    return kasetList;
  }

  Future<List<KasetModel>> getKasetBySchool({String? orgId}) async {
    List<KasetModel> blogs = [];
    QueryKaset queryKaset = QueryKaset();
    GraphQLConfiguration graphQLConfig = GraphQLConfiguration();
    GraphQLClient client = graphQLConfig.clientToQuery();
    QueryResult result = await client.query(QueryOptions(
        document: gql(
      queryKaset.getKasetBySchool(orgId: orgId),
    )));
    if (!result.hasException) {
      print(result.data);
    } else if (result.hasException) {}
    return blogs;
  }

  Future<List<KasetModel>> getOwneKaset({String? orgId}) async {
    List<KasetModel> blogs = [];
    QueryKaset queryKaset = QueryKaset();
    GraphQLConfiguration graphQLConfig = GraphQLConfiguration();
    GraphQLClient _client = graphQLConfig.clientToQuery();
    QueryResult result = await _client.query(QueryOptions(
        document: gql(
      queryKaset.getKasetBySchool(orgId: orgId),
    )));
    if (!result.hasException) {
      print(result.data);
    } else if (result.hasException) {}
    return blogs;
  }
}
