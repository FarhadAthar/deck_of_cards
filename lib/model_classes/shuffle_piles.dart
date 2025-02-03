class ShufflePiles {
  bool success;
  String deckid;
  int remaining;
  Piles piles;

  ShufflePiles(
      {required this.success,
      required this.deckid,
      required this.remaining,
      required this.piles});

  factory ShufflePiles.fromMap(Map<String, dynamic> map) {
    return ShufflePiles(
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
