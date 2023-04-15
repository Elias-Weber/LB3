import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:lb3/screens/screen_2.dart";
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lb3/methods.dart';
import 'package:lb3/screens/edit_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _Auftrag = Hive.box("myAuftrag");

  final _AuftragNR = Hive.box("myAuftragNR");

  Method method = Method();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.zero)),
        child: Text("Auftrag Hinzufügen"),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Form_1()),
          );
        },
      ),
      appBar: AppBar(
        title: Text("Startseite"),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: _Auftrag.length,
            itemBuilder: (BuildContext context, int index) {
              var Kunde = method.myKunde(index);
              var Beschreibung = method.myBeschreibung(index);
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListView(
                    children: [

                      Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: ListTile(
                              leading: Text(
                                ("$Kunde"),
                              ),
                              trailing: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    _Auftrag.delete(index);
                                  });
                                },
                                child: Icon(
                                  Icons.delete,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: ListTile(
                              leading: Text(
                                ("$Beschreibung"),
                              ),
                              trailing: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Edit(index: index,)),
                                  );
                                },
                                child: Icon(
                                  Icons.edit,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
