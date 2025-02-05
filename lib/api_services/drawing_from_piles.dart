import 'package:flutter_deck_of_cards/api_services/api_services_template.dart';
import 'package:flutter_deck_of_cards/model_classes/drwing_from_piles.dart';
import 'package:flutter_deck_of_cards/model_classes/new_deck.dart';

class DrawingFromPilesApi extends ApiService {
  NewDeck? newDeck;
  @override
  String get apiURL => '${newDeck!.deckid}/pile/<<pile_name>>/draw/random/';

  Future<DrawingFromPiles> getShuffleCards() async {
    var data = await fetch();
    return DrawingFromPiles.fromMap(data);
  }
}
