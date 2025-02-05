import 'package:flutter_deck_of_cards/api_services/api_services_template.dart';
import 'package:flutter_deck_of_cards/model_classes/add_piles.dart';
import 'package:flutter_deck_of_cards/model_classes/new_deck.dart';

class AddingPilesApi extends ApiService {
  NewDeck? newDeck;
  @override
  String get apiURL => '${newDeck!.deckid}/pile/<<pile_name>>/add/?cards=AS,2S';

  Future<AddPiles> getShuffleCards() async {
    var data = await fetch();
    return AddPiles.fromMap(data);
  }
}
