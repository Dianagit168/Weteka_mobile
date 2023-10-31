import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLApi {
  Future<List<dynamic>> fetchData() async {
    HttpLink httpLink = HttpLink('https://api.weteka.org/api/private');
    GraphQLClient qlClient = GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(
        store: HiveStore(),
      ),
    );
    QueryResult queryResult = await qlClient.query(
      QueryOptions(
        document: gql(
          """ query {
                  mostView {
                    id
                    title
                    thumbnail
                    price
                    views
                    description
                    createdAt
                    objective
                    pointId
                    organization {
                      id
                      logo
                      name
                      isVerify
                      cover
                    }
                    user {
                      fullname
                      avatar
                    }

                    points {
                      id
                    }
                  }
  }
""",
        ),
      ),
    );
    //print('Diana is ${queryResult.data!["mostView"].runtimeType}');

    return queryResult.data!["mostView"];
  }
}
