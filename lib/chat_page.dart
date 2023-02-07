import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(

          backgroundColor: Color(0xFFB3AFF3),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.message),text: "chats",),
              Tab(icon: Icon(Icons.signal_wifi_statusbar_null),text: "status",),
              Tab(icon: Icon(Icons.call),text: "calls",),
            ],

          ),
        ),
        body: TabBarView(
          children: [
CustomList(),
CustomList(),
CustomList(),
          ],
        ),

      ),
    );
  }
}


class CustomList extends StatelessWidget {
  const CustomList ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.separated(itemBuilder:(context, index)=>
          ListTile(
            onTap: (){},
            enabled: true,
            title: Text("user${index}"),
        subtitle: Text("new messages"),
        trailing: CircleAvatar(
          backgroundColor: Color(0xFFB3AFF3),
          radius: 5,
        ),
        leading: CircleAvatar(
          backgroundColor: Color(0xFFB3AFF3),
          radius: 30,
        ),
      ) , separatorBuilder: (context,index)=>Container(width: double.infinity,height: 1,color: Colors.grey,), itemCount: 100),
    );
  }
}
