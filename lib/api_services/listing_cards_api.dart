import 'package:flutter_deck_of_cards/api_services/api_services_template.dart';
import 'package:flutter_deck_of_cards/model_classes/list_cards_pile.dart';
import 'package:flutter_deck_of_cards/model_classes/new_deck.dart';

class ListingCardsApi extends ApiService {
  NewDeck? newDeck;
  @override
  String get apiURL => '${newDeck!.deckid}/pile/<<pile_name>>/list/';

  Future<ListingCardPiles> getShuffleCards() async {
    var data = await fetch();
    return ListingCardPiles.fromMap(data);
  }
}
