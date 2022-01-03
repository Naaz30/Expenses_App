import 'package:flutter/material.dart';
import 'package:expenses/controllers/appdata.dart';
import 'package:expenses/views/homepage/widgets/event_cards_list.dart';
import 'widgets/add_event_button.dart';
import 'package:expenses/models/amount.dart';





class EventListPage extends StatefulWidget {
  const EventListPage({Key? key}) : super(key: key);

  @override
  State<EventListPage> createState() => _EventListPageState();
}

class _EventListPageState extends State<EventListPage> {

  @override
  Widget build(BuildContext context) {



    return Scaffold(




      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 100,
            bottom: 30,
          ),
          child: Column(
            children: [
              const Text(
                'Expenses',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Total Amount : " + returnAmount().toString(),
                style : TextStyle(
                fontSize: 20,
                ),

              ),
              const SizedBox(
                height: 50,
              ),
              Expanded(
                child: EventCardsList(
                  eventList: AppData.getEvents(),
                ),

              ),
            ],
          ),
        ),
      ),

      floatingActionButton: const AddNewEventFAB(),





    );
  }
}