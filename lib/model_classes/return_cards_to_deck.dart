class ReturningCardsToDeck {
  bool success;
  String deckid;
  bool shuffled;
  int remaining;
  Piles piles;

  ReturningCardsToDeck(
      {required this.success,
      required this.deckid,
      required this.shuffled,
      required this.remaining,
      required this.piles});

  factory ReturningCardsToDeck.fromMap(Map<String, dynamic> map) {
    return ReturningCardsToDeck(
      success: map['success'],
      deckid: map['deck_id'],
      shuffled: map['shuffled'],
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
