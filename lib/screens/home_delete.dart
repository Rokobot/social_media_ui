import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_story/flutter_story.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:status_view/status_view.dart';
import 'package:ui_app/entities/const.dart';
import 'package:ui_app/screens/chat_page.dart';
import 'package:ui_app/screens/story_page.dart';
import 'package:vibration/vibration.dart';

import '../widgets/group_call_widget.dart';

class HomeDeleted extends StatefulWidget {
  const HomeDeleted({super.key});

  @override
  State<HomeDeleted> createState() => _HomeDeletedState();
}

class _HomeDeletedState extends State<HomeDeleted> {
  ///Status
  List<String> userList = [
    'My status',
    'Adil',
    'Marina',
    'Dean',
    'Max',
    'Marina',
    'Dean',
    'Max'
  ];
  List<String> profileList = [
    'assets/images/image6.png',
    'assets/images/image4.png',
    'assets/images/image3.png',
    'assets/images/image2.png',
    'assets/images/image1.png',
    'assets/images/image3.png',
    'assets/images/image2.png',
    'assets/images/image1.png'
  ];
  List<Color> colors = [
    Colors.white30,
    Colors.yellow,
    Color(0XFFF5B7BE),
    Color(0XFF98A1F1),
    Color(0XFFFBDC94),
    Color(0XFFF5B7BE),
    Color(0XFF98A1F1),
    Color(0XFFFBDC94)
  ];

  ///Users
  List<String> secondUserList = [
    'Alex Linderson',
    'Team Align',
    'Labhon Ahraham',
    'Sabila Sayma',
    'John Borino',
    'Angel Dayna'
        'Sabila Sayma',
    'John Borino',
    'Angel Dayna'
  ];
  List<String> secondProfileList = [
    'assets/images/user1.png',
    'assets/images/image3.png',
    'assets/images/image4.png',
    'assets/images/user2.png',
    'assets/images/image1.png',
    'assets/images/user3.png',
    'assets/images/user2.png',
    'assets/images/image1.png',
    'assets/images/user3.png',
  ];

  String? imagePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Home',
            style: TextStyle(color: Colors.white, fontFamily: ''),
          ),
          centerTitle: true,
          leading: Container(
            child: Image.asset('assets/images/search.png'),
            margin: EdgeInsets.all(6),
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFF363F3B),
              ),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          actions: [
            Container(
              child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/image6.png')),
              margin: EdgeInsets.all(6),
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFF363F3B),
                ),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool index) {
            return [
              SliverAppBar(
                expandedHeight: MediaQuery.of(context).size.height * 0.2,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 180,
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: userList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: index != 0
                                        ? Story(
                                            children: [
                                              StoryUser(
                                                width: 56,
                                                height: 56,
                                                borderWidth: 1,
                                                borderColor: colors[index],
                                                avatar: Image.asset(
                                                    profileList[index]),
                                                label: Text(
                                                  userList[index],
                                                  style: TextStyle(
                                                      color: Colors.white70),
                                                ),
                                                children: [
                                                  StoryCard(
                                                    cardDuration: Duration(seconds: 3),
                                                    color: CusColors().storyColor,
                                                    child: Center(
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          Image.asset(
                                                            height: 300,
                                                            width: 300,
                                                            'assets/images/elnmusk .jpg'
                                                          ),
                                                          Text('I am never give up', style: TextStyle(color: Colors.white, fontSize: 30),)
                                                        ],
                                                      ),
                                                    ),
                                                    footer: StoryCardFooter(
                                                      forwardButton: StoryCardForwardButton(),
                                                      messageBox: StoryCardMessageBox(),
                                                    ),
                                                  ),

                                                ],
                                              )
                                            ],
                                          )
                                        : Container(
                                          child: Column(
                                                                                mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Stack(
                                                  children: [
                                                    Positioned(
                                                        child: Container(
                                                      width: 65,
                                                      height: 65,
                                                      child: SvgPicture.asset(
                                                        'assets/images/status.svg',
                                                        height: 52,
                                                        width: 52,
                                                      ),
                                                    )),
                                                    Positioned(
                                                      left: 6.9,
                                                      top: 2.8,
                                                      child: CircleAvatar(
                                                          radius: 25.5,
                                                          backgroundImage:
                                                              ExactAssetImage(
                                                            profileList[index],
                                                          )),
                                                    ),
                                                    Positioned(
                                                      right: 9,
                                                      bottom: 10,
                                                      child: CircleAvatar(
                                                          radius: 6,
                                                          child: Image.asset(
                                                              'assets/images/plus.png')),
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  'My status',
                                                  style: TextStyle(
                                                      color: Colors.white70,
                                                      fontWeight: FontWeight.w300),
                                                )
                                              ],
                                            ),
                                        )),
                                SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ),
              ),
            ];
          },
          body: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                children: [
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    width: 30,
                    height: 3,
                    decoration: BoxDecoration(
                        color: CusColors().cusDvider,
                        borderRadius: BorderRadius.circular(100)),
                  ),
                  Expanded(
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: secondUserList.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            print(index);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChatPage(
                                          imagePath:
                                              secondProfileList[index],
                                          userName: secondUserList[index],
                                        )));
                          },
                          child: Slidable(
                            endActionPane: ActionPane(
                                motion: const ScrollMotion(),
                                children: [
                                  Image.asset(
                                    'assets/images/notification.png',
                                    height: 28,
                                    width: 28,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    'assets/images/trash.png',
                                    height: 28,
                                    width: 28,
                                  ),
                                ]),
                            child: ListTile(
                              leading: index == 1
                                  ? GroupCallWidget()
                                  : Hero(
                                      tag: 'userProfile',
                                      child: Stack(
                                        children: [
                                          CircleAvatar(
                                            radius: 25,
                                            backgroundImage:
                                                ExactAssetImage(
                                                    secondProfileList[
                                                        index]),
                                          ),
                                          Positioned(
                                            bottom: 2,
                                            left: 37,
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  CusColors().onlineUser,
                                              radius: 3,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                              title: Text(
                                secondUserList[index],
                                style:
                                    TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                'Don’t miss to attend the meeting.',
                                style:
                                    TextStyle(color: CusColors().lastSeen),
                              ),
                              trailing: Container(
                                  child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '2 min ago',
                                    style: TextStyle(
                                        color: CusColors().lastSeen,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  SizedBox(
                                    height: 1,
                                  ),
                                  index == 0
                                      ? Container(
                                          height: 15,
                                          width: 15,
                                          child: CircleAvatar(
                                            backgroundColor:
                                                Color(0XFFF31816),
                                            child: Text(
                                              '3',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight:
                                                      FontWeight.w400),
                                            ),
                                          ),
                                        )
                                      : SizedBox(
                                          height: 15,
                                        )
                                ],
                              )),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              )),
        ));
  }
}
