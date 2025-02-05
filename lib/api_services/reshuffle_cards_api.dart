import 'package:flutter_deck_of_cards/api_services/api_services_template.dart';
import 'package:flutter_deck_of_cards/model_classes/new_deck.dart';
import 'package:flutter_deck_of_cards/model_classes/reshuffle_cards.dart';

class ReShuffleCardsApi extends ApiService {
  NewDeck? newDeck;
  @override
  String get apiURL => 'deck/${newDeck!.deckid}/shuffle/';

  Future<ReShuffleCards> getShuffleCards() async {
    var data = await fetch();
    return ReShuffleCards.fromMap(data);
  }
}
