import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weteka/data/api/graphql_api.dart';

class FetchDataUcImpl {
  final GraphQLApi graphQLApi = GraphQLApi();
  

  

  ValueNotifier<List<dynamic>> storePopularCourse = ValueNotifier([]);
  ValueNotifier<List<dynamic>> storeLibrary = ValueNotifier([]);
  ValueNotifier<List<dynamic>> storeKasetOrPharagraph = ValueNotifier([]);

  Future getQuery() async {
    storePopularCourse.value = await graphQLApi.getPopularCourse();

    storeLibrary.value = await graphQLApi.getLibrary();

    storeKasetOrPharagraph.value = await graphQLApi.getKasetOrPhragraph();

    print('Diana lol ${storeKasetOrPharagraph.value.length}');
  }

  String formatDateForWeteka(String timestampString) {
    int timestamp = int.parse(timestampString);

    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp);

    String formattedDate = DateFormat('dd-MM-yyyy').format(dateTime);

    return formattedDate;
  }

  // void scrollListener() {
  //   if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
      
  //     print('ScrollListener');

  //   } 
    
  // }
}
