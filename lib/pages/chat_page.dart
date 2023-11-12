import 'package:flutter/material.dart';
import 'package:yonsei_project/utilities/appstyle.dart';
import 'package:yonsei_project/utilities/chat_util.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}
class _ChatPageState extends State<ChatPage>{
    List<ChatUserList> chatUsersList = [
      ChatUserList(senderName: "nachoqueen0506", message: "Awesome Setup", profileImage: "lib/images/user.jpeg",icon:'' ),
      ChatUserList(senderName: "nachoqueen0506", message: "Awesome Setup", profileImage: "lib/images/user.jpeg", icon: ''),
      ChatUserList(senderName: "nachoqueen0506", message: "Awesome Setup", profileImage: "lib/images/user.jpeg",icon:''),
      ChatUserList(senderName: "nachoqueen0506", message: "Awesome Setup", profileImage: "lib/images/user.jpeg",icon:'' ),
      ChatUserList(senderName: "nachoqueen0506", message: "Awesome Setup", profileImage: "lib/images/user.jpeg", icon: ''),
      ChatUserList(senderName: "nachoqueen0506", message: "Awesome Setup", profileImage: "lib/images/user.jpeg",icon:''),
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 234, 234),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                      top: 80
                    ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    prefixIcon: Icon(Icons.search,color: Colors.grey.shade400,size: 20,),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.black54
                      )
                    ),
                  ),
                )
                ),
                ListView.builder(
                  itemCount: chatUsersList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index){
                    return ChatUserList(
                      senderName: chatUsersList[index].senderName,
                      message: chatUsersList[index].message,
                      profileImage: chatUsersList[index].profileImage,
                      icon: chatUsersList[index].icon,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
    );
  }
}
