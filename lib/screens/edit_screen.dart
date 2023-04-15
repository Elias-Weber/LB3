import "package:flutter/material.dart";
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lb3/screens/home_screen.dart';

class Edit extends StatefulWidget {
  final int index;

  const Edit({Key? key, required this.index}) : super(key: key);

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  late int index;

  final _myAuftrag = Hive.box("myAuftrag");
  final _myAuftragNR = Hive.box("myAuftragNR");

  @override
  void initState() {
    super.initState();
    index = widget.index;
    writeInForms(index);
  }

  void writeInForms(int index) {
    var myList = _myAuftrag.get(index);
    setState(() {
      _textController0.text = myList[0];
      _textController1.text = myList[1];
      _textController2.text = myList[2];
      _textController3.text = myList[3];
      _textController4.text = myList[4];
      _textController5.text = myList[5];
      _textController6.text = myList[6];
      _textController7.text = myList[7];
      _textController8.text = myList[8];
    });
  }

  final _textController0 = TextEditingController();

  final _textController1 = TextEditingController();

  final _textController2 = TextEditingController();

  final _textController3 = TextEditingController();

  final _textController4 = TextEditingController();

  final _textController5 = TextEditingController();

  final _textController6 = TextEditingController();

  final _textController7 = TextEditingController();

  final _textController8 = TextEditingController();

  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Auftrag bearbeiten"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  child: Center(),
                ),
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
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      status = true;
                    });

                    var auftragList = [];
                    auftragList.add(_textController0.text);
                    auftragList.add(_textController1.text);
                    auftragList.add(_textController2.text);
                    auftragList.add(_textController3.text);
                    auftragList.add(_textController4.text);
                    auftragList.add(_textController5.text);
                    auftragList.add(_textController6.text);
                    auftragList.add(_textController7.text);
                    auftragList.add(_textController8.text);

                    _myAuftrag.put(index, auftragList);

                    _textController0.clear();
                    _textController1.clear();
                    _textController2.clear();
                    _textController3.clear();
                    _textController4.clear();
                    _textController5.clear();
                    _textController6.clear();
                    _textController7.clear();
                    _textController8.clear();

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );

                  },
                  color: Colors.blue,
                  child: Text("Uebernehmen"),
                ),
              ], //Culum Chirlden  //Children
            ), //Colum
          ], //ListView Children
        ), //ListView
      ), //Padding
    ); // Scaffold
  } //Widget
} //Class
