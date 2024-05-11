import 'package:flutter/material.dart';

class ScheduledCheckInPage extends StatefulWidget {
  @override
  _ScheduledCheckInPageState createState() => _ScheduledCheckInPageState();
}

class _ScheduledCheckInPageState extends State<ScheduledCheckInPage> {
  bool _hourlyCheckIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scheduled Check-In Notifications'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text('Hourly Check-In Notifications'),
              leading: Checkbox(
                value: _hourlyCheckIn,
                onChanged: (value) {
                  setState(() {
                    _hourlyCheckIn = value!;
                  });
                },
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Save the selected options and navigate back
                Navigator.pop(context, {
                  'hourly': _hourlyCheckIn,
                });
              },
              child: Text('Save'),
            ),
          ),
        ],
      ),
    );
  }
}
