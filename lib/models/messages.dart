

class Message{
  late String sender;
  late String receiver;
  final String type;
  late String content;
  late DateTime timestamp;

  Message({
    required this.sender,
    required this.receiver,
    required this.type,
    required this.content,
    required this.timestamp,
  });

  void updateMessage({
    String? content,
  }) {
    if (content != null && type == 'text') {
      this.content = content;
      timestamp = DateTime.now();
    }
  }


  static Message messageFromJSON(Map<String, dynamic> json) {
    return Message(
      sender: json['sender'],
      receiver: json['receiver'],
      type: json['type'],
      content: json['content'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }

  static Map<String, dynamic> messageToJSON(Message message) {
    return {
      'sender': message.sender,
      'receiver': message.receiver,
      'type': message.type,
      'content': message.content,
      'timestamp': message.timestamp.toIso8601String(),
    };
  }
}