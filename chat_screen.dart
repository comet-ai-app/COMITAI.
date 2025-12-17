import 'package:flutter/material.dart';
import '../../services/ai_service.dart';
import '../../logic/intent_detector.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, String>> _messages = [];
  String currentMode = "General";

  void _sendMessage() async {
    String text = _controller.text;
    if (text.isEmpty) return;

    setState(() {
      _messages.add({"role": "user", "content": text});
      currentMode = IntentDetector.detectMode(text); // Auto Mode Detection
    });

    _controller.clear();

    // AI Response
    String response = await AIService().getResponse(text, currentMode);
    
    setState(() {
      _messages.add({"role": "assistant", "content": response});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("COMET - $currentMode")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) => MessageBubble(msg: _messages[index]),
            ),
          ),
          _buildInputBar(),
        ],
      ),
    );
  }

  Widget _buildInputBar() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.black, border: Border(top: BorderSide(color: Colors.white12))),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(hintText: "Ask anything...", hintStyle: TextStyle(color: Colors.white38)),
            ),
          ),
          IconButton(icon: Icon(Icons.send, color: Colors.cyanAccent), onPressed: _sendMessage),
        ],
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final Map<String, String> msg;
  MessageBubble({required this.msg});

  @override
  Widget build(BuildContext context) {
    bool isUser = msg['role'] == 'user';
    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isUser ? Colors.blueGrey[900] : Colors.deepPurple[900],
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: isUser ? Colors.cyan : Colors.purpleAccent, width: 0.5)
        ),
        child: Text(msg['content']!, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}