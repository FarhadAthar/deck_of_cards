import 'package:flutter_deck_of_cards/api_services/api_services_template.dart';
import 'package:flutter_deck_of_cards/model_classes/partial_deck.dart';

class ReShuffleCardsApi extends ApiService {
  @override
  String get apiURL => 'new/shuffle/?cards=AS,2S,KS,AD,2D,KD,AC,2C,KC,AH,2H,KH';

  Future<PartialDeck> getShuffleCards() async {
    var data = await fetch();
    return PartialDeck.fromMap(data);
  }
}
