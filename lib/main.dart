import 'package:flutter/material.dart';

void main() {
  runApp(const Portratee());
}

class Portratee extends StatelessWidget {
  const Portratee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Flip(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Flip extends StatelessWidget {
  const Flip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return Scaffold(
            appBar: AppBar(
              title: const Text("SECOND ASIGNMENT"),
            ),
            body: orientation == Orientation.portrait
                ? buildContainer()
                : Row(
                    children: [
                      Expanded(child: buildListView()),
                      Expanded(child: buildContainer()),
                    ],
                  ),
            drawer: orientation == Orientation.portrait
                ? Drawer(
                    child: Container(
                      padding: const EdgeInsets.only(top: 80),
                      child: buildListView(),
                    ),
                  )
                : null);
      },
    );
  }

  Container buildContainer() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.red,
    );
  }

  Container buildListView() {
    return Container(
      color: Colors.white,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: const [
          Text("FIRST ELEMENT"),
          SizedBox(
            height: 10,
          ),
          Text("SECOND ELEMENT"),
          SizedBox(
            height: 10,
          ),
          Text("THIRD ELEMENT"),
          SizedBox(
            height: 10,
          ),
          Text("FORTH ELEMENT"),
          SizedBox(
            height: 10,
          ),
          Text("FIFTHE ELEMENT"),
        ],
      ),
    );
  }
}
