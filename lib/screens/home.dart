import 'package:flutter/material.dart';

import '../models/item_model.dart';
import '../widgets/item_grid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Item> items = [
    Item(id: 1, name: "Lorem Ipsum 1", price: 380.0, image: "https://static.pullandbear.net/assets/public/97af/bc77/89c149fbb32d/9825a65b7348/07591543700-A6M/07591543700-A6M.jpg?ts=1727367333429&w=1124&f=auto" ,description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    Item(id: 2, name: "Lorem Ipsum 2", price: 480.0, image: "https://static.pullandbear.net/assets/public/e87f/79dc/1ea14b7f88d6/c09e545d757c/07590913710-A6M/07590913710-A6M.jpg?ts=1723626380781&w=1124&f=auto" ,description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    Item(id: 3, name: "Lorem Ipsum 3", price: 380.0, image: "https://static.pullandbear.net/assets/public/c5bb/7361/b2e64ba6bdaf/d7004231b314/07594513612-A6M/07594513612-A6M.jpg?ts=1719914390393&w=1124&f=auto" ,description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    Item(id: 4, name: "Lorem Ipsum 4", price: 435.0, image: "https://static.pullandbear.net/assets/public/28eb/8165/f8b149ddb1b6/f09fabe8174c/07590913701-A6M/07590913701-A6M.jpg?ts=1723626338347&w=1124&f=auto" ,description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 27, 78, 94),
        title: const Text("211264", style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: ItemGrid(items: items),
    );
  }
}