import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_story/flutter_story.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_app/entities/const.dart';
import 'package:ui_app/screens/chat_page.dart';


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
  ];
  List<String> profileList = [
    'assets/images/home_delete/image1.jpg',
    'assets/images/home_delete/image2.jpg',
    'assets/images/home_delete/image3.jpg',
    'assets/images/home_delete/image4.jpg',
    'assets/images/home_delete/image5.jpg',

  ];
  List<Color> colors = [
    Colors.white30,
    Colors.yellow,
    Color(0XFFF5B7BE),
    Color(0XFF98A1F1),
    Color(0XFFFBDC94),
  ];

  ///Users
  List<String> secondUserList = [
    'Alex Linderson',
    'Team Align',
    'Labhon Ahraham',
    'Sabila Sayma',
    'John Borino',
    'Alex Linderson',
    'Team Align',
    'Labhon Ahraham',
  ];
  List<String> secondProfileList = [
    'assets/images/home_delete/image1.jpg',
    'assets/images/home_delete/image2.jpg',
    'assets/images/home_delete/image3.jpg',
    'assets/images/home_delete/image4.jpg',
    'assets/images/home_delete/image5.jpg',
    'assets/images/home_delete/image1.jpg',
    'assets/images/home_delete/image2.jpg',
    'assets/images/home_delete/image3.jpg',
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
            child: Image.asset('assets/images/home_delete/search.png', color: Colors.white,),
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
              margin: EdgeInsets.all(6),
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFF363F3B),
                ),
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(image:AssetImage('assets/images/home_delete/image1.jpg'), fit: BoxFit.cover)
              ),
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool index) {
            return [
              SliverAppBar(
                expandedHeight: MediaQuery.of(context).size.height * 0.19,
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
                                SizedBox(height: 15,),
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
                                                    profileList[index], fit: BoxFit.cover,),
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
                                                            'assets/images/story/elnmusk .jpg'
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
                                      height: 115,
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
                                                        'assets/images/home_delete/status.svg',
                                                        height: 52,
                                                        width: 52,
                                                      ),
                                                    )),
                                                    Positioned(
                                                      left: 6.9,
                                                      top: 2.8,
                                                      child: Container(
                                                        height: 52,
                                                        width: 52,
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(100),
                                                          image: DecorationImage(image: AssetImage(profileList[index]), fit: BoxFit.cover)
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      right: 9,
                                                      bottom: 7,
                                                      child: SvgPicture.asset(
                                                          'assets/images/home_delete/plus.svg',
                                                        height: 15,
                                                        width: 15,
                                                      ),
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
                                  SvgPicture.asset(
                                    'assets/images/home_delete/notification.svg',
                                    height: 28,
                                    width: 28,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  SvgPicture.asset(
                                    'assets/images/home_delete/remove.svg',
                                    height: 28,
                                    width: 28,
                                  ),
                                ]),
                            child: ListTile(
                              leading: index == 1
                                  ? GroupCallWidget()
                                  : Stack(
                                    children: [
                                      Container(
                                        height: 52,
                                        width: 52,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          image: DecorationImage(image: AssetImage(secondProfileList[index]), fit: BoxFit.cover)
                                        ),
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
