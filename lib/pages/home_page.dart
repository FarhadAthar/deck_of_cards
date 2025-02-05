import 'package:flutter/material.dart';
import 'package:flutter_deck_of_cards/api_services/adding_piles_api.dart';
import 'package:flutter_deck_of_cards/api_services/draw_card_api.dart';
import 'package:flutter_deck_of_cards/api_services/drawing_from_piles.dart';
import 'package:flutter_deck_of_cards/api_services/listing_cards_api.dart';
import 'package:flutter_deck_of_cards/api_services/new_deck_api.dart';
import 'package:flutter_deck_of_cards/api_services/partial_deck_api.dart';
import 'package:flutter_deck_of_cards/api_services/reshuffle_cards_api.dart';
import 'package:flutter_deck_of_cards/api_services/returning_card.dart';
import 'package:flutter_deck_of_cards/api_services/shuffle_api.dart';
import 'package:flutter_deck_of_cards/api_services/suffle_piles_api.dart';
import 'package:flutter_deck_of_cards/model_classes/add_piles.dart';
import 'package:flutter_deck_of_cards/model_classes/draw_card.dart';
import 'package:flutter_deck_of_cards/model_classes/drwing_from_piles.dart';
import 'package:flutter_deck_of_cards/model_classes/list_cards_pile.dart';
import 'package:flutter_deck_of_cards/model_classes/new_deck.dart';
import 'package:flutter_deck_of_cards/model_classes/partial_deck.dart';
import 'package:flutter_deck_of_cards/model_classes/reshuffle_cards.dart';
import 'package:flutter_deck_of_cards/model_classes/return_cards_to_deck.dart';
import 'package:flutter_deck_of_cards/model_classes/shuffle_cards.dart';
import 'package:flutter_deck_of_cards/model_classes/shuffle_piles.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AddingPilesApi addingPilesApi = AddingPilesApi();
  Future<AddPiles>? addingPilesFuture;
  DrawCardApi drawCardApi = DrawCardApi();
  Future<DrawCard>? drawCardFuture;
  DrawingFromPilesApi drawingFromPilesApi = DrawingFromPilesApi();
  Future<DrawingFromPiles>? drawingFromPilesFuture;
  ListingCardsApi listingCardsApi = ListingCardsApi();
  Future<ListingCardPiles>? listingCardsFuture;
  NewDeckApi newDeckApi = NewDeckApi();
  Future<NewDeck>? newDeckFuture;
  PartialDeckApi partialDeckApi = PartialDeckApi();
  Future<PartialDeck>? partialDeckFuture;
  ReShuffleCardsApi reShuffleCardsApi = ReShuffleCardsApi();
  Future<ReShuffleCards>? reShuffleCardsFuture;
  ReturningCardApi returningCardApi = ReturningCardApi();
  Future<ReturningCardsToDeck>? returningCardFuture;
  ShuffleCardsApi shuffleCardsApi = ShuffleCardsApi();
  Future<ShuffleCards>? shuffleCardsFuture;
  ShufflePilesApi shufflePilesApi = ShufflePilesApi();
  Future<ShufflePiles>? shufflePilesFuture;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 249, 227, 119),
          title: Text(widget.title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black)),
          centerTitle: true,
        ),
        body: Expanded(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/cards_bg.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            child: Expanded(
              flex: 10,
              child: Column(
                children: [
                  const Spacer(
                    flex: 8,
                  ),
                  Expanded(
                      flex: 11,
                      child: Row(
                        children: [
                          const Spacer(
                            flex: 4,
                          ),
                          Expanded(
                              flex: 3,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            const Color.fromARGB(
                                                255, 249, 227, 119)),
                                    elevation:
                                        MaterialStateProperty.all<double>(10.0),
                                    shadowColor: const MaterialStatePropertyAll(
                                        Colors.white)),
                                onPressed: () {
                                  // Navigator.pushNamed(context, '/new_deck');
                                },
                                child: const Text('S T A R T',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                              )),
                          const Spacer(
                            flex: 4,
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
