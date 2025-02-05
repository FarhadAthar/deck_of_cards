import 'package:flutter_deck_of_cards/api_services/api_services_template.dart';
import 'package:flutter_deck_of_cards/model_classes/list_cards_pile.dart';

class ListingCardsApi extends ApiService {
  @override
  String get apiURL => '<<deck_id>>/pile/<<pile_name>>/list/';

  Future<ListingCardPiles> getShuffleCards() async {
    var data = await fetch();
    return ListingCardPiles.fromMap(data);
  }
}
