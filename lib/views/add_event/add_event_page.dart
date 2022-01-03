import 'package:expenses/models/event.dart';
import 'package:flutter/material.dart';
import 'package:expenses/views/add_event/widgets/save_event_button.dart';
import 'package:flutter/services.dart';

class AddEvent extends StatefulWidget {
  const AddEvent({Key? key}) : super(key: key);

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {

  String eventName = "";
  int numcost = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(


              children: <Widget>[
                Container(
                  width: 280,
                  padding: EdgeInsets.all(10.0),
                  child: TextFormField(

                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      hintText: 'Enter the name of event',
                    ),
                    onChanged: (val){
                      setState(() {
                        eventName = val;
                      });
                    },
                  ),

                  ),

        Container(
          width: 280,
          padding: EdgeInsets.all(10.0),
          child: TextFormField(

            cursorColor: Colors.black,
            decoration: const InputDecoration(
              hintText: 'Enter money spent',
            ),
            onChanged: (val){
              var v = int.parse(val);
              setState(() {
                numcost = v;

              });
            },



          ),



        ),



              ]

        ),



      ),
      floatingActionButton: SaveEventFAB(
          eventLabel: eventName,
          num: numcost,
      ),
    );
  }

}

