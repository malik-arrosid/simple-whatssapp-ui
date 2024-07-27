import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/call.dart';
import 'package:whatsapp_ui/theme.dart';

class CallView extends StatelessWidget {
  const CallView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callList.length,
      itemBuilder: (context, index) {
        final call = callList[index];
        return ListTile(
          leading: Icon(
            Icons.account_circle, 
            color: Colors.black45, 
            size: 58,
          ),
          title: Text(
            call.name,
            style: customTextStyle,
          ),
          subtitle: Text(
            call.statusDate,
            style: const TextStyle(
              color: Colors.black45, 
              fontSize: 16,
            ),
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Icon(
              Icons.call,
              color: Colors.green,
            )
          ),
        );
      }
    );
  }
}