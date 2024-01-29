import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';


void main() {
  runApp(DateApp());
}

class DateApp extends StatefulWidget {
  const DateApp({super.key});

  @override
  State<DateApp> createState() => _DateAppState();
}

class _DateAppState extends State<DateApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DateActivity(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DateActivity extends StatefulWidget {
  const DateActivity({super.key});

  @override
  State<DateActivity> createState() => _DateActivityState();
}

class _DateActivityState extends State<DateActivity> {
  var time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(

          height: 200,
          width: double.infinity,
          color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Current Date : ${DateFormat('QQQQ').format(time)}',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      time = DateTime.now();
                    });
                  },
                  child: Text('Current Time',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)))
            ],
          ),
        ),
      ),
    );
  }
}
