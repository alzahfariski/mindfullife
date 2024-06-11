import 'package:flutter/material.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:midfullife/app/modules/main/page/main_page.dart';
import 'dart:convert';

import 'package:midfullife/utils/constants/colors.dart';
import 'package:midfullife/utils/constants/image_string.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

class ChatLumiPage extends StatefulWidget {
  const ChatLumiPage({super.key});

  @override
  State<ChatLumiPage> createState() => _ChatLumiPageState();
}

class _ChatLumiPageState extends State<ChatLumiPage> {
  final ourUrl =
      "https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=AIzaSyAUPLDs8PkUC70iwM_XZWu0oKnW8E8APsI";

  ChatUser currentUser = ChatUser(
    id: "1",
    firstName: "Zi",
    lastName: "Gen",
  );
  ChatUser bot = ChatUser(
    id: "2",
    firstName: "Lumi",
    lastName: "AI",
  );

  List<ChatMessage> allMessages = [];
  List<ChatUser> typing = [];
  final header = {"Content-Type": "application/json"};

  getData(ChatMessage message) async {
    typing.add(bot);
    allMessages.insert(0, message);
    setState(() {});

    var data = {
      "contents": [
        {
          "role": "user",
          "parts": [
            {
              "text":
                  "You are Lumi (LUMI AI teman kesehatan mentalmu) a friendly assistant trained by team Zigen. team Zigen is a developer that loves to code, his currently based on Bengkulu, Indonesia."
            }
          ]
        },
        {
          "role": "model",
          "parts": [
            {
              "text":
                  "Hello! Welcome... My name Lumi (LUMI AI teman kesehatan mentalmu). What's your name?"
            }
          ]
        },
        {
          "role": "user",
          "parts": [
            {"text": "Hi"}
          ]
        },
        {
          "role": "model",
          "parts": [
            {"text": "Hi there! Thanks for reaching out this app."}
          ]
        },
        {
          "role": "user",
          "parts": [
            {"text": message.text}
          ]
        },
      ]
    };

    try {
      var response = await http.post(Uri.parse(ourUrl),
          headers: header, body: jsonEncode(data));

      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body);

        setState(() {
          ChatMessage message2 = ChatMessage(
            user: bot,
            text: responseData['candidates'][0]['content']['parts'][0]['text'],
            createdAt: DateTime.now(),
          );

          allMessages.insert(0, message2);
        });
      } else {
        // ignore: use_build_context_synchronously
        showAboutDialog(context: context, children: [Text(response.body)]);
      }
    } catch (e) {
      // ignore: use_build_context_synchronously
      showAboutDialog(context: context, children: [Text(e.toString())]);
    }

    typing.remove(bot);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Get.to(() => const MainPage());
          },
          icon: const Icon(
            MingCuteIcons.mgc_arrow_left_line,
            color: TColors.primary800,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              _showDeleteAllMessagesDialog(context);
            },
            icon: const Icon(
              Icons.refresh,
              color: TColors.primary800,
            ),
          ),
        ],
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage(tLumi),
              radius: 19,
            ),
            const SizedBox(width: 13),
            Text(
              'LUMI',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
        backgroundColor: TColors.primary500,
      ),
      body: DashChat(
        typingUsers: typing,
        currentUser: currentUser,
        onSend: (ChatMessage message) {
          getData(message);
        },
        messages: allMessages,
        inputOptions: InputOptions(
          autocorrect: false,
          alwaysShowSend: true,
          sendButtonBuilder: (send) {
            return GestureDetector(
              onTap: send,
              child: Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(left: 10),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: TColors.primary800),
                child: const Icon(
                  MingCuteIcons.mgc_send_line,
                  color: TColors.primary500,
                ),
              ),
            );
          },
          inputDecoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                width: 1,
                color: TColors.primary600,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                width: 1,
                color: TColors.primary600,
              ),
            ),
            hintText: 'Apa Pertanyaan Mu?',
            hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: TColors.grey400,
                ),
          ),
          cursorStyle: const CursorStyle(
            color: Colors.black,
          ),
        ),
        messageOptions: const MessageOptions(
          currentUserContainerColor: TColors.primary800,
          showOtherUsersAvatar: false,
        ),
      ),
    );
  }

  void _showDeleteAllMessagesDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Hapus Semua Pesan'),
          content: const Text('Anda yakin ingin menghapus semua pesan?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Batal'),
            ),
            TextButton(
              onPressed: () {
                _deleteAllMessages();
                Navigator.of(context).pop();
              },
              child: const Text('Hapus'),
            ),
          ],
        );
      },
    );
  }

  void _deleteAllMessages() {
    setState(() {
      allMessages.clear();
    });
  }
}
