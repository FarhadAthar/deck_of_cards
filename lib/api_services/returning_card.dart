import 'package:flutter_deck_of_cards/api_services/api_services_template.dart';
import 'package:flutter_deck_of_cards/model_classes/new_deck.dart';
import 'package:flutter_deck_of_cards/model_classes/return_cards_to_deck.dart';

class ReturningCardApi extends ApiService {
  NewDeck? newDeck;
  @override
  String get apiURL => '${newDeck!.deckid}/pile/<<pile_name>>/return/?cards=AS,2S';

  Future<ReturningCardsToDeck> getShuffleCards() async {
    var data = await fetch();
    return ReturningCardsToDeck.fromMap(data);
  }
}
