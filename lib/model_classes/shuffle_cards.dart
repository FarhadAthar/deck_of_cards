class ShuffleCards {
  bool success;
  String deckid;
  bool shuffled;
  int remaining;

  ShuffleCards({required this.success,required this.deckid,required this.shuffled,required this.remaining});

  factory ShuffleCards.fromMap(Map<String, dynamic> map) {
    return ShuffleCards(
      success: map['success'],
      deckid: map['deck_id'],
      shuffled: map['shuffled'],
      remaining: map['remaining'],
    );
  }

}
