import 'package:flutter/material.dart';
import 'package:flutter_iti_task/models/user_model.dart';
import 'package:flutter_iti_task/widgets/chat_item.dart';
import 'package:flutter_iti_task/widgets/story_item.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.grey.shade900, // Dark background to mimic the screenshot
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.store_mall_directory)),
        ],
        backgroundColor: Colors.grey.shade900,
        elevation: 0,
        title: const Text(
          'Messenger',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.circular(20),
              ),
              child: const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                ),
              ),
            ),
          ),

          // Horizontal list of stories
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dummyStories.length,
              itemBuilder: (context, index) {
                final story = dummyStories[index];
                return StoryItem(
                  imageUrl: story.user.profileImageUrl,
                  userName: story.user.name,
                  statusText: story.statusText,
                );
              },
            ),
          ),

          // Divider
          const Divider(
            color: Colors.grey,
            height: 1,
          ),

          // Chats List
          Expanded(
            child: ListView.builder(
              itemCount: dummyChats.length,
              itemBuilder: (context, index) {
                final chat = dummyChats[index];
                return ChatItem(
                  imageUrl: chat.user.profileImageUrl,
                  userName: chat.user.name,
                  lastMessage: chat.lastMessage,
                  time: chat.time,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
