import 'package:flutter/material.dart';
import 'package:weteka/model/kaset_model.dart';

import '../domain/repositories/kaset_repository.dart';

class KasetProvider extends ChangeNotifier {
  final KasestRepository kasestRepository;

  KasetProvider({required this.kasestRepository});

  List<KasetModel>? kasetList;

  List<KasetModel>? get user => kasetList;

  Future<void> fetchKaset(int userId) async {
    kasetList = await kasestRepository.getAllKasets();
    notifyListeners();
  }
}
