import 'package:flutter_deck_of_cards/api_services/api_services_template.dart';
import 'package:flutter_deck_of_cards/model_classes/draw_card.dart';
import 'package:flutter_deck_of_cards/model_classes/new_deck.dart';

class DrawCardApi extends ApiService {
  NewDeck ?newDeck;
  @override
  String get apiURL => '${newDeck!.deckid}/draw/?count=2';

  Future<DrawCard> getShuffleCards() async {
    var data = await fetch();
    return DrawCard.fromMap(data);
  }
}
