import 'package:flutter_deck_of_cards/api_services/api_services_template.dart';
import 'package:flutter_deck_of_cards/model_classes/shuffle_cards.dart';

class ShuffleCardsApi extends ApiService {
  @override
  String get apiURL => 'new/shuffle/?deck_count=1';

  Future<ShuffleCards> getShuffleCards() async {
    var data = await fetch();
    return ShuffleCards.fromMap(data);
  }
}
