import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_app/entities/const.dart';

class GroupCall extends StatefulWidget {
  const GroupCall({Key? key}) : super(key: key);

  @override
  State<GroupCall> createState() => _GroupCallState();
}

class _GroupCallState extends State<GroupCall> {
  ///First user list
  List<String> firstUserList = [
    'Annei Ellison',
    'John Borino',
    'Annei Ellison',
    'John Borino',
    'Annei Ellison',
    'Dean Ronload',

  ];
  List<String> firstImageList = [
    'assets/images/calls/image7.jpg',
    'assets/images/calls/image8.jpg',
    'assets/images/calls/image9.jpg',
    'assets/images/calls/image10.jpg',
    'assets/images/calls/image11.jpg',
    'assets/images/calls/image12.jpg',
  ];

  List<String> svgItems = [
    'assets/images/calls/mic.svg',
    'assets/images/calls/volume.svg',
    'assets/images/calls/video.svg',
    'assets/images/calls/message.svg',
    'assets/images/calls/remove.svg',

  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          children: [
            Expanded(
                child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.78,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/calls/group_call.png',
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40))),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.2),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40))),
                ),
                Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          'Meeting with Lora Adom',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        )),
                    Container(
                        child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/images/calls/image7.jpg'), fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lora Adom',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              'Meeting organizer',
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        )
                      ],
                    )),
                    SizedBox(
                      height: 150,
                    ),
                    Flexible(flex:10,
                      child: ShaderMask(
                        blendMode: BlendMode.dstOut,
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                            colors: [Colors.black, Colors.transparent],
                            stops: [0.0, 0.5],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ).createShader(bounds);
                        },
                        child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            itemCount: firstImageList.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                leading: CircleAvatar(radius: 25.5, backgroundImage: ExactAssetImage(firstImageList[index])),
                                title: Text(
                                  firstUserList[index],
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  firstUserList[index] + ' hey i know that',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              );
                            }),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Flexible(flex: 5,
                      child: Container(

                        height: 50,
                        child:ListView.builder(scrollDirection: Axis.horizontal ,itemCount: svgItems.length,itemBuilder: (context, index){
                          return Container(
                            margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.04),
                            child: CircleAvatar(
                              radius: 32,
                              backgroundColor: index == 3 ?CusColors().messageIcon : index == 4 ? CusColors().exitIcon: Colors.grey.withAlpha(100),
                              child: Stack(
                                children: [
                              Center(child: ImageFiltered(imageFilter: ImageFilter.blur(sigmaX: 100,sigmaY: 100))),
                                  Center(
                                    child: SvgPicture.asset(svgItems[index], height: 28,
                                      width: 28,),
                                  )
                                ],
                              ),
                            ),
                          );
                        })
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    )
                  ],
                )
              ],
            )),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 100,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: firstImageList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                      Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(firstImageList[index]), fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(100)),
                    ),
                          Positioned(
                              left: 40,
                              top: 50,
                              child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(100)),
                                  child: CircleAvatar(
                                    radius: 10,
                                    backgroundColor: Colors.grey,
                                    child: Icon(
                                      Icons.mic_off_outlined,
                                      color: Colors.white70,
                                      size: 13,
                                    ),
                                  ))),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        )),
      ),
    );
  }
}
