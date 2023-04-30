import 'package:flutter/material.dart';

class WhatsappMessage extends StatefulWidget {
  const WhatsappMessage({super.key});

  @override
  State<WhatsappMessage> createState() => _WhatsappMessageState();
}


class _WhatsappMessageState extends State<WhatsappMessage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //  Text field in the center of screen
      margin: const EdgeInsets.all(20.0),
      child: const Center(
        child: TextField(
          maxLines: 8,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Enter Whatsapp Automatic message here",
          ),
        ),
      ),
    );
  }
}