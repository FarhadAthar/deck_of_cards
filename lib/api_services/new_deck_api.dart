import 'package:flutter_deck_of_cards/api_services/api_services_template.dart';
import 'package:flutter_deck_of_cards/model_classes/new_deck.dart';

class NewDeckApi extends ApiService {
  @override
  String get apiURL => 'new/';

  Future<NewDeck> getShuffleCards() async {
    var data = await fetch();
    return NewDeck.fromMap(data);
  }
}
