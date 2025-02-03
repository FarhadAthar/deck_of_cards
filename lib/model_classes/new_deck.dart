class NewDeck {
  bool success;
  String deckid;
  bool shuffled;
  int remaining;

  NewDeck(
      {required this.success,
      required this.deckid,
      required this.shuffled,
      required this.remaining});

  factory NewDeck.fromMap(Map<String, dynamic> map) {
    return NewDeck(
      success: map['success'],
      deckid: map['deck_id'],
      shuffled: map['shuffled'],
      remaining: map['remaining'],
    );
  }
}
