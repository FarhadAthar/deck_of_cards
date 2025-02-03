class PartialDeck {
  bool success;
  String deckid;
  bool shuffled;
  int remaining;

  PartialDeck(
      {required this.success,
      required this.deckid,
      required this.shuffled,
      required this.remaining});

  factory PartialDeck.fromMap(Map<String, dynamic> map) {
    return PartialDeck(
      success: map['success'],
      deckid: map['deck_id'],
      shuffled: map['shuffled'],
      remaining: map['remaining'],
    );
  }
}
