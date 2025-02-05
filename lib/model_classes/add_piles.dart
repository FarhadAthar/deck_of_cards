import 'package:flutter_deck_of_cards/model_classes/new_deck.dart';

class AddPiles {
  
  bool success;
  String deckid;
  int remaining;
  Piles piles;

  AddPiles(
      {required this.success,
      required this.deckid,
      required this.remaining,
      required this.piles});

  factory AddPiles.fromMap(Map<String, dynamic> map) {
    return AddPiles(
      success: map['success'],
      deckid: map['deck_id'],
      remaining: map['remaining'],
      piles: Piles.fromMap(map['piles']),
    );
  }
}

class Piles {
  Discard discard;

  Piles({required this.discard});

  factory Piles.fromMap(Map<String, dynamic> map) {
    return Piles(
      discard: Discard.fromMap(map['discard']),
    );
  }
}

class Discard {
  int remaining;

  Discard({required this.remaining});

  factory Discard.fromMap(Map<String, dynamic> map) {
    return Discard(
      remaining: map['remaining'],
    );
  }
}
