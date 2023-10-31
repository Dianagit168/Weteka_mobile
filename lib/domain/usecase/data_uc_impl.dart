import 'package:flutter/material.dart';
import 'package:weteka/data/api/graphql_api.dart';

class FetchDataUcImpl {
  final GraphQLApi graphQLApi = GraphQLApi();
  
  // List<dynamic> character = [];
  ValueNotifier<List<dynamic>> character = ValueNotifier([]);

  Future fetchData() async {
    // print('Lol ${graphQLApi.fetchData()}}');
    character.value = await graphQLApi.fetchData();

    print(character.value.length);
    
    
  }
}
