import "package:flutter/material.dart";

class Form_1 extends StatelessWidget {
  Form_1({Key? key}) : super(key: key);

  final _textController0 = TextEditingController();
  final _textController1 = TextEditingController();
  final _textController2 = TextEditingController();
  final _textController3 = TextEditingController();
  final _textController4 = TextEditingController();
  final _textController5 = TextEditingController();
  final _textController6 = TextEditingController();
  final _textController7 = TextEditingController();
  final _textController8 = TextEditingController();

  final String _Kunde = "12";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Auftrag hinzufügen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Column(
              children: [
                TextField(
                  controller: _textController0,
                  decoration: InputDecoration(
                    labelText: "Kunde:",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        _textController0.clear();
                      },
                      icon: Icon(Icons.clear),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _textController1,
                  decoration: InputDecoration(
                    labelText: "Kurz beschreibung:",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        _textController1.clear();
                      },
                      icon: Icon(Icons.clear),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _textController2,
                  decoration: InputDecoration(
                    labelText: "Neuer PC:",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        _textController2.clear();
                      },
                      icon: Icon(Icons.clear),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _textController3,
                  decoration: InputDecoration(
                    labelText: "vorhandene Software:",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        _textController3.clear();
                      },
                      icon: Icon(Icons.clear),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _textController4,
                  decoration: InputDecoration(
                    labelText: "Software zum übernehmen:",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        _textController4.clear();
                      },
                      icon: Icon(Icons.clear),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _textController5,
                  decoration: InputDecoration(
                    labelText: "Software zum neu kaufen:",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        _textController5.clear();
                      },
                      icon: Icon(Icons.clear),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _textController6,
                  decoration: InputDecoration(
                    labelText: "Daten zum übernhemen:",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        _textController6.clear();
                      },
                      icon: Icon(Icons.clear),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _textController7,
                  decoration: InputDecoration(
                    labelText: "Erwartete Arbeitszeit:",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        _textController7.clear();
                      },
                      icon: Icon(Icons.clear),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _textController8,
                  decoration: InputDecoration(
                    labelText: "Gebrauchte Arbeitszeit:",
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {
                        _textController8.clear();
                      },
                      icon: Icon(Icons.clear),
                    ),
                  ),
                ),
                MaterialButton(onPressed: () {
                  _Kunde = _textController0.text;
                },
                  color: Colors.blue,
                    child: const Text("Post"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
