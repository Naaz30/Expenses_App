import 'package:flutter/material.dart';
import 'package:expenses/views/add_event/add_event_page.dart';





class AddNewEventFAB extends StatelessWidget {
  const AddNewEventFAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.black,
      onPressed: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const AddEvent()));
      },
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}
