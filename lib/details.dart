import 'package:flutter/material.dart';
import 'package:event_calender_app/reusbale_widgets_constants.dart';
import 'package:intl/intl.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final TextEditingController _date = TextEditingController();
  final TextEditingController _time = TextEditingController();
  TimeOfDay? time;
  TimeOfDay? pickedTime;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    time = TimeOfDay.now();
  }

  Future<Null> selectTime(BuildContext context) async {
    pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (pickedTime != null) time = pickedTime;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SafeArea(
          child: Column(
            children: [
              Text(
                'Select Date, Time and Guests',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              kNFieldSizedBox,
              Text(
                'Number of guests:-',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              GuestField(
                hText: 'Number of Guests',
                prefixIcon: Icon(Icons.person_add_alt_sharp),
              ),
              kNFieldSizedBox,
              Text(
                'Please Select a Date',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              TextField(
                controller: _date,
                decoration: InputDecoration(
                  icon: Icon(Icons.calendar_month),
                  labelText: 'Please select a Date',
                ),
                onTap: () async {
                  DateTime? pickeddate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1999),
                      lastDate: DateTime(3000));
                  if (pickeddate != null) {
                    // setState() {
                    _date.text = DateFormat('yyyy-MM-dd').format(pickeddate);
                    // }
                  }
                },
              ),
              kNFieldSizedBox,
              Text(
                'Please Select a Time',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              kNFieldSizedBox,
              TextField(
                controller: _time,
                decoration: InputDecoration(
                  icon: Icon(Icons.watch),
                  labelText: 'Please select a Time',
                ),
                onTap: () async {
                  selectTime(context);
                  if (pickedTime != null) {
                    // setState() {
                    _time.text =
                        '${pickedTime!.hour}:${pickedTime!.minute.toString().padLeft(2, '0')}';
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
