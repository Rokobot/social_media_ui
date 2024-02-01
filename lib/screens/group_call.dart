import 'package:flutter/material.dart';
import 'package:ui_app/entities/const.dart';

class GroupCall extends StatefulWidget {
  const GroupCall({Key? key}) : super(key: key);

  @override
  State<GroupCall> createState() => _GroupCallState();
}

class _GroupCallState extends State<GroupCall> {
  ///First user list
  List<String> firstUserList = [
    'Dean Ronload',
    'Annei Ellison',
    'John Borino',
    'Annei Ellison',
    'John Borino'
  ];
  List<String> firstImageList = [
    'assets/images/image2.png',
    'assets/images/image3.png',
    'assets/images/image4.png',
    'assets/images/image2.png',
    'assets/images/image3.png'
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
                            'assets/images/group_call.png',
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
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  AssetImage('assets/images/image3.png'),
                            )),
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
                    Expanded(
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
                                leading: CircleAvatar(
                                  backgroundImage:
                                      AssetImage(firstImageList[index]),
                                ),
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
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/items.png'))),
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
                          CircleAvatar(
                            radius: 34,
                            backgroundImage: AssetImage(firstImageList[index]),
                          ),
                          Positioned(
                              left: 48,
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
