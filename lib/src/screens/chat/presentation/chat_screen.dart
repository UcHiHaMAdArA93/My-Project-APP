import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';

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
              child:  Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: NeonLeftMsgCard(
                        backgroundColor: Colors.red,
                        lightBlurRadius: 10,
                        lightSpreadRadius: 3,
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: NeonRightMsgCard(
                        backgroundColor: Colors.blue,
                        lightBlurRadius: 10,
                        lightSpreadRadius: 3,
                      ),
                    ),
                    Padding(
                      padding:  const EdgeInsets.all(32.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Message",
                          border: const OutlineInputBorder(),
                          prefixIcon: IconButton(onPressed: (){}, 
                          icon: const Icon(Icons.send, 
                          color: Colors.black,),
                          ),
                        ),
                      )
                    ),
                  ],
                ),
                ),
            ),
          ),
        ],
      ),
    );
  }
}