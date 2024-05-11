import 'package:flutter/material.dart';
class RealTimeMonitor extends StatefulWidget {
  const RealTimeMonitor({super.key});

  @override
  State<RealTimeMonitor> createState() => _RealTimeMonitorState();
}

class _RealTimeMonitorState extends State<RealTimeMonitor> {

  int counter = 0;
  String emotion = '';


  void imotion(){

    switch(counter){
      case 1:
        setState(() {
          emotion='Happy';
        });
      case 1:
        setState(() {
          emotion='Sad';
        });
      case 1:
        setState(() {
          emotion='Angry';
        });
    }

  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Emotion'),
            ElevatedButton(onPressed: () => setState(() {
              counter++;
            }), child: Text("Monitor"))
          ],
        ),
      ),
    );
  }
}
