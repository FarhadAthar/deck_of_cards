import 'package:flutter_deck_of_cards/api_services/api_services_template.dart';
import 'package:flutter_deck_of_cards/model_classes/drwing_from_piles.dart';

class ShufflePilesApi extends ApiService {
  @override
  String get apiURL => '<<deck_id>>/pile/<<pile_name>>/shuffle/';

  Future<DrawingFromPiles> getShuffleCards() async {
    var data = await fetch();
    return DrawingFromPiles.fromMap(data);
  }
}
