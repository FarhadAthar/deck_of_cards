import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 249, 227, 119),
          title: Text(widget.title,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
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
                                                255, 249, 227, 119))),
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
