import 'package:flutter/material.dart';


class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-0.30, -0.95),
                  end: Alignment(0.3, 0.95),
                  colors: [Color(0xFF4FACFE), Color(0xFF00F2FE)]
                ),
              ),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding:  EdgeInsets.all(32.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Your Message Here",
                          border: OutlineInputBorder(),
                        ),
                      )
                    ),
                  ],
                )
                ),
            )
          ),
        ]
      )
    );
  }
}