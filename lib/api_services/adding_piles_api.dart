import 'package:flutter_deck_of_cards/api_services/api_services_template.dart';
import 'package:flutter_deck_of_cards/model_classes/add_piles.dart';

class AddingPilesApi extends ApiService {
  @override
  String get apiURL => '<<deck_id>>/pile/<<pile_name>>/add/?cards=AS,2S';

  Future<AddPiles> getShuffleCards() async {
    var data = await fetch();
    return AddPiles.fromMap(data);
  }
}
