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
      ChatUserList(senderName: "nachoqueen0506", message: "무엇을 도와드릴까요?", profileImage: "lib/images/user.jpeg",icon:'' ),
      ChatUserList(senderName: "rockstar123", message: "운동 관심 있다고 쓰셨는데, 어떤 운동 좋아하세요?", profileImage: "lib/images/user.jpeg", icon: ''),
      ChatUserList(senderName: "yourAngel99", message: "꿈이 뭐예요?", profileImage: "lib/images/user.jpeg",icon:''),
      ChatUserList(senderName: "yonseiMentor", message: "멘토가 되어 영광입니다!", profileImage: "lib/images/user.jpeg",icon:'' ),
      ChatUserList(senderName: "letMeHelpY0u", message: "이루고 싶은게 무엇인가요?", profileImage: "lib/images/user.jpeg", icon: ''),
      ChatUserList(senderName: "lovingBlueberries", message: "도움 드릴 수 있어 기쁩니다 :)", profileImage: "lib/images/user.jpeg",icon:''),
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 234, 234),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                    height: 30,
                    child: Text("CHATS",
                    style: appstyle(20, Colors.black, FontWeight.bold)),
                  ),
              Expanded(
                child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TextField(
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
                          ),
                          ListView.builder(
                            itemCount: chatUsersList.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index){
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    ChatUserList(
                                      senderName: chatUsersList[index].senderName,
                                      message: chatUsersList[index].message,
                                      profileImage: chatUsersList[index].profileImage,
                                      icon: chatUsersList[index].icon,
                                    ),
                                    const Divider(
        color: Colors.grey,
        height: 5,
        thickness: 1,
      ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    )]
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
