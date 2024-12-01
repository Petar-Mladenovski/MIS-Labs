import 'package:flutter/material.dart';
import 'package:laboratory1/models/item_model.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Image.network(arguments.image,
                fit: BoxFit.contain, alignment: Alignment.center),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20.0, 0, 20.0),
              child: Text(
                arguments.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              child: Text(
                arguments.description,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(0, 10.0, 0, 30.0),
              child: Text(
                "\$${arguments.price}",
                style: const TextStyle(
                  fontSize: 26.0,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.pop(context),
        label: const Text(
          "Back",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.white,
        ),
        backgroundColor: const Color.fromARGB(255, 46, 89, 125),
      ),
    );
  }
}
