import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/chat_model.dart';
import 'package:whatsapp_ui/styles/styles.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => Column(children: <Widget>[
        Divider(height: 10),
        ListTile(
          leading: CircleAvatar(
              foregroundColor: S.colors.primary,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(dummyData[i].avatarUrl)),
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(dummyData[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(dummyData[i].time,
                    style: TextStyle(color: Colors.grey, fontSize: 14))
              ]),
          subtitle: Container(
              padding: EdgeInsets.only(top: 5),
              child: Text(dummyData[i].message,
                  style: TextStyle(color: Colors.grey, fontSize: 15))),
        )
      ]),
    );
  }
}

// class ChatListItem extends StatelessWidget {
//   ChatModel data;

//   // const ChatListItem({super.key, required data});

//   ChatListItem({required this.data});

//   @override
//   Widget build(BuildContext context) {
//     return Container(

//     );
//   }
// }
