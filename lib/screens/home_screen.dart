import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:lb3/screens/screen_2.dart";
import 'package:lb3/TicketLib.dart';
import 'package:lb3/ticket.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

   TicketLib ticketList = TicketLib();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Startseite"),
      ),
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                child: Text("Auftrag hinzufügen"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Form_1()),
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: ListView.builder(

                itemCount: ticketList.ticketList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(ticketList.ticketList[index].Kunde),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
