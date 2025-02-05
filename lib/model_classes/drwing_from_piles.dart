class DrawingFromPiles {
  bool success;
  String deckid;
  int remaining;
  Piles piles;
  List<Cards> cards;

  DrawingFromPiles(
      {required this.success,
      required this.deckid,
      required this.remaining,
      required this.piles,
      required this.cards});

  factory DrawingFromPiles.fromMap(Map<String, dynamic> map) {
    return DrawingFromPiles(
      success: map['success'],
      deckid: map['deck_id'],
      remaining: map['remaining'],
      piles: Piles.fromMap(map['piles']),
      cards: List<Cards>.from(map['cards'].map((x) => Cards.fromMap(x))),
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

class Cards {
  String image;
  String value;
  String suit;
  String code;

  Cards(
      {required this.image,
      required this.value,
      required this.suit,
      required this.code});

  factory Cards.fromMap(Map<String, dynamic> map) {
    return Cards(
      image: map['image'],
      value: map['value'],
      suit: map['suit'],
      code: map['code'],
    );
  }
}
