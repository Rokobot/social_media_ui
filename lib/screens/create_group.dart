import 'package:flutter/material.dart';
import 'package:ui_app/entities/const.dart';

class CreateGroup extends StatefulWidget {
  const CreateGroup({super.key});

  @override
  State<CreateGroup> createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  ///First user list
  List<String> firstUserList = [
    'Dean Ronload',
    'Annei Ellison',
    'John Borino',
    'Annei Ellison',
    'John Borino',
    'Annei Ellison',
  ];
  List<String> firstImageList = [
    'assets/images/image2.png',
    'assets/images/image3.png',
    'assets/images/image4.png',
    'assets/images/image2.png',
    'assets/images/image3.png',
    'assets/images/image3.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          'Create Group',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Group Description',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            Text(
              'Make Group for Team Work',
              style: TextStyle(color: Colors.black, fontSize: 50),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: CusColors().cusBox.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Group work',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: CusColors().cusBox.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Team  relationship',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Group Admin',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/image6.png'),
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
                      'Designer_kishan',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      'Group Admin',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Invited Members',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
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
                                  backgroundImage:
                                      AssetImage('assets/images/plus1.png'),
                                  backgroundColor: Colors.white,
                                ))),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Ink(
                height: 55,
                decoration: BoxDecoration(
                  color: CusColors().selectedLael,
                  borderRadius: BorderRadius.circular(100)
                ),
                child: InkWell(
                  onTap: (){},
                  splashColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Create',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
