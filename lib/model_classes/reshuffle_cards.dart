class ReShuffleCards {
  bool success;
  String deckid;
  bool shuffled;
  int remaining;

  ReShuffleCards(
      {required this.success,
      required this.deckid,
      required this.shuffled,
      required this.remaining});

  factory ReShuffleCards.fromMap(Map<String, dynamic> map) {
    return ReShuffleCards(
      success: map['success'],
      deckid: map['deck_id'],
      shuffled: map['shuffled'],
      remaining: map['remaining'],
    );
  }
}
