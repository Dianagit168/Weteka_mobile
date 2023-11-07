import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLApi {
  // for PopularCourse

  Future<List<dynamic>> getPopularCourse() async {
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

    return queryResult.data!["mostView"];
  }

  // for Library

  Future<List<dynamic>> getLibrary() async {
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
                  books {
                    id
                    title
                    slug
                    thumbnail
                    createdAt
                    file
                    orgId
                    #   grade
                    ownerId
                    rate
                    views
                    subCategoriesId
                    subcategories {
                      title {
                        kh
                        en
                      }
                    }
                    category {
                      title {
                        kh
                        en
                      }
                    }
                    organization {
                      slug
                      id
                      name
                      isVerify
                      logo
                    }
                    owner {
                      fullname
                      avatar
                    }
                  }
                }
          """,
        ),
      ),
    );

    return queryResult.data!["books"];
  }

  Future<List<dynamic>> getKasetOrPhragraph() async {
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
                  getAllBlogs {
                    id
                    slug
                    title
                    views
                    status
                    isPublic
                    createdAt
                    updatedAt
                    content
                    owner {
                      avatar
                      fullname
                    }
                    orgId
                    organization {
                      id
                      name
                      logo
                      isVerify
                      slug
                      ownerId
                      totalSubscribers
                      isSubscribed
                      createdAt
                    }
                  }
                }
          """,
        ),
      ),
    );

    return queryResult.data!["getAllBlogs"];
  }
}
