import 'package:flutter/material.dart';

class AlertBox extends StatefulWidget {
  const AlertBox({super.key});

  @override
  State<AlertBox> createState() => _AlertBoxState();
}

class _AlertBoxState extends State<AlertBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dailog Box'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(onPressed: (){
            showDialog(context: context, builder: (context) => AlertDialog(
                title: Text("Alert Dialog Box"),
                content:Text("You have raised a Alert Dialog Box"),
                actions:[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();

                    }, child: Container(
                      color: Colors.orange,
                      padding: const EdgeInsets.all(14),
                      child: Text("okay")),
                  ),
                ]
            )
            );
          }, child: Text("Show alert Dialog box"),
          ),
        ),
      ),
    );
  }
}
