import 'package:flutter/material.dart';

class ConfirmAlertBox extends StatefulWidget {
  @override
  _ConfirmAlertBoxState createState() => _ConfirmAlertBoxState();
}

class _ConfirmAlertBoxState extends State<ConfirmAlertBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confirmation Dialog'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text("Confirm Dialog Box"),
                  content: const Text("You have raised a Confirm Dialog Box"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        color: Colors.orange,
                        padding: const EdgeInsets.all(14),
                        child: const Text("okay",
                          style: TextStyle(
                            fontSize: 25,
                          ),),
                      ),
                    ),
                  ],
                ),
              );
            },
            child: const Text("Show Confirm Dialog box",
            ),
          ),
        ),
      ),
    );
  }
}
