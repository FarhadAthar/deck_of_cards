class DrawCard {
  bool success;
  String deckid;
  List<Cards> cards;
  int remaining;

  DrawCard(
      {required this.success,
      required this.deckid,
      required this.cards,
      required this.remaining});

  factory DrawCard.fromMap(Map<String, dynamic> map) {
    return DrawCard(
      success: map['success'],
      deckid: map['deck_id'],
      cards : List<Cards>.from(map['cards'].map((x) => Cards.fromMap(x))),
      remaining: map['remaining'],
    );
  }
}

class Cards {
  String code;
  String image;
  Images images;

  Cards({required this.code, required this.image, required this.images});

  factory Cards.fromMap(Map<String, dynamic> map) {
    return Cards(
      code: map['code'],
      image: map['image'],
      images: Images.fromMap(map['images']),
    );
  }
}

class Images {
  String svg;
  String png;

  Images({required this.svg, required this.png});

  factory Images.fromMap(Map<String, dynamic> map) {
    return Images(
      svg: map['svg'],
      png: map['png'],
    );
  }
}
