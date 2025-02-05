import 'package:flutter_deck_of_cards/api_services/api_services_template.dart';
import 'package:flutter_deck_of_cards/model_classes/draw_card.dart';

class DrawCardApi extends ApiService {
  @override
  String get apiURL => '<<deck_id>>/draw/?count=2';

  Future<DrawCard> getShuffleCards() async {
    var data = await fetch();
    return DrawCard.fromMap(data);
  }
}
