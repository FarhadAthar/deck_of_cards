class ListingCardPiles {
  bool success;
  String deckid;
  bool shuffled;
  int remaining;

  ListingCardPiles(
      {required this.success,
      required this.deckid,
      required this.shuffled,
      required this.remaining});

  factory ListingCardPiles.fromMap(Map<String, dynamic> map) {
    return ListingCardPiles(
      success: map['success'],
      deckid: map['deck_id'],
      shuffled: map['shuffled'],
      remaining: map['remaining'],
    );
  }
}

class Piles {
  Player1 player1;

  Piles({required this.player1});

  factory Piles.fromMap(Map<String, dynamic> map) {
    return Piles(
      player1: Player1.fromMap(map['player1']),
    );
  }
}

class Player1 {
  int remaining;

  Player1({required this.remaining});

  factory Player1.fromMap(Map<String, dynamic> map) {
    return Player1(
      remaining: map['remaining'],
    );
  }
}

class Player2 {
  List<Cards> cards;
  int remaining;

  Player2({required this.cards, required this.remaining});

  factory Player2.fromMap(Map<String, dynamic> map) {
    return Player2(
      cards: List<Cards>.from(map['cards'].map((x) => Cards.fromMap(x))),
      remaining: map['remaining'],
    );
  }

}

class Cards {
  String image;
  String value;
  String suit;
  String code;

  Cards({required this.image, required this.value, required this.suit, required this.code});

  factory Cards.fromMap(Map<String, dynamic> map) {
    return Cards(
      image: map['image'],
      value: map['value'],
      suit: map['suit'],
      code: map['code'],
    );
  }
}
