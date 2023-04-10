import "package:flutter/material.dart";
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lb3/TicketLib.dart';
import 'package:lb3/screens/home_screen.dart';
import 'package:lb3/ticket.dart';

class Form_1 extends StatefulWidget {
  Form_1({Key? key}) : super(key: key);

  @override
  State<Form_1> createState() => _Form_1State();
}

class _Form_1State extends State<Form_1> {
  final _myAuftrag = Hive.box("myAuftrag");
  final _myAuftragNR = Hive.box("myAuftragNR");

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
        title: const Text("Auftrag hinzufügen"),
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



                    int auftragNR = _myAuftrag.length;
                    _myAuftragNR.add(auftragNR);

                    print(auftragNR);
                    print(_myAuftragNR);
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

                    _myAuftrag.put(auftragNR, auftragList);
                    var myHiveList = _myAuftrag.get(auftragNR);
                    myHiveList.forEach((myHiveList) {
                      print(myHiveList);


                      _textController0.clear();
                      _textController1.clear();
                      _textController2.clear();
                      _textController3.clear();
                      _textController4.clear();
                      _textController5.clear();
                      _textController6.clear();
                      _textController7.clear();
                      _textController8.clear();



                    });
                  },
                  color: Colors.blue,
                  child: Text("Speichern"),
                ),

                Visibility(
                  visible: status,
                  child: ElevatedButton(
                    child: Text("Zurück zum Hauptmenü"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
