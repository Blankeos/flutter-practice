import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/call_screen.dart';
import 'package:whatsapp_ui/screens/camera_screen.dart';
import 'package:whatsapp_ui/screens/chat_screen.dart';
import 'package:whatsapp_ui/screens/status_screen.dart';
import 'package:whatsapp_ui/styles/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // To do: Implement initState
    super.initState();

    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        backgroundColor: S.colors.primary,
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS"),
          ],
        ),
        actions: <Widget>[
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.more_vert)
        ],
      ),
      body: TabBarView(controller: _tabController, children: <Widget>[
        CameraScreen(),
        ChatScreen(),
        StatusScreen(),
        CallScreen(),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("open chats");
        },
        backgroundColor: S.colors.accent,
        child: Icon(Icons.message, color: Colors.white),
      ),
    );
  }
}
