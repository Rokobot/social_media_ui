import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ui_app/entities/const.dart';

class ChatPage extends StatefulWidget {
  String? imagePath;
  String? userName;
  ChatPage({super.key, required this.imagePath, required this.userName});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<String> message = [];
  TextEditingController controller = TextEditingController();
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(color: CusColors().scafolldColor),
            child: Column(
              children: [
                Container(
                  height: 100,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white70,
                        ),
                      ),
                      Expanded(
                          child: ListTile(
                        leading: Image.asset(
                          widget.imagePath.toString(),
                        ),
                        title: Text(
                          widget.userName.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'This is about me',
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                      Icon(
                        Icons.menu_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            topLeft: Radius.circular(40)),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Expanded(
                            child: Container(
                          margin: EdgeInsets.only(right: 15, top: 15, left: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                topLeft: Radius.circular(40)),
                          ),
                          child: ListView.builder(
                            controller: scrollController,
                              itemCount: message.length,
                              itemBuilder: (context, index) {
                                return Random().nextInt(3) == 0
                                    ? Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                          constraints:
                                              BoxConstraints(maxWidth: 200),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: CusColors()
                                                          .rightMessage,
                                                      borderRadius: BorderRadius
                                                          .only(
                                                              topLeft: Radius
                                                                  .circular(50),
                                                              bottomLeft: Radius
                                                                  .circular(50),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          50))),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20,
                                                            right: 15,
                                                            bottom: 15,
                                                            top: 15),
                                                    child: Text(
                                                      '${message[index].toString()}',
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  constraints: BoxConstraints(
                                                      maxWidth: 200),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 0,
                                              ),
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: Container(
                                                  child: Text(
                                                    '12:00',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: CusColors()
                                                            .lastSeen),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    : Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          constraints:
                                              BoxConstraints(maxWidth: 200),
                                          child: Column(
                                            children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: CusColors()
                                                          .leftMessage,
                                                      borderRadius: BorderRadius
                                                          .only(
                                                              topRight: Radius
                                                                  .circular(50),
                                                              bottomLeft: Radius
                                                                  .circular(50),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          50))),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20,
                                                            right: 15,
                                                            bottom: 15,
                                                            top: 15),
                                                    child: Text(
                                                      '${message[index].toString()}',
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                  constraints: BoxConstraints(
                                                      maxWidth: 200),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 0,
                                              ),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                    child: Text(
                                                      '12:00',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: CusColors()
                                                              .lastSeen),
                                                    ),
                                                  )),
                                              SizedBox(
                                                height: 5,
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                              }),
                        )),
                        Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: CusColors().scafolldColor,
                              borderRadius: BorderRadius.circular(40)),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.camera_alt_outlined),
                                    color: Colors.white70,
                                    onPressed: () {},
                                  ),
                                  Expanded(
                                    child: TextField(
                                      maxLines: 7,
                                      minLines: 1,
                                      cursorColor: Colors.white70,
                                      textAlignVertical:
                                          TextAlignVertical.center,
                                      controller: controller,
                                      style: TextStyle(color: Colors.white70),
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(
                                              bottom: 10, left: 5, right: 5),
                                          constraints:
                                              BoxConstraints(maxHeight: 180),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  color: Colors.white70)),
                                          disabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  color: Colors.white70)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  color: Colors.white70))),
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.send_rounded),
                                    color: Colors.white70,
                                    onPressed: () {
                                      setState(() {
                                        if (controller.text.isNotEmpty) {
                                          scrollController.animateTo(
                                              scrollController.position.maxScrollExtent,
                                              duration: Duration(milliseconds: 900),
                                              curve: Curves.easeInCubic);
                                          message.add(controller.text);
                                          controller.clear();
                                        }
                                      });
                                    },
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
