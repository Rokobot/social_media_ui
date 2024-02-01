import 'package:flutter/material.dart';

class GroupCallWidget extends StatefulWidget {
  const GroupCallWidget({super.key});

  @override
  State<GroupCallWidget> createState() => _GroupCallWidgetState();
}

class _GroupCallWidgetState extends State<GroupCallWidget> {

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25,
      child: Row(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    bottomLeft: Radius.circular(100))),
            child: Image.asset(
              'assets/images/call_image.png',
              fit: BoxFit.fill,
            ),
          )),
          Expanded(
            child: Column(
              children: [
                Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(100))),
                    child: Image.asset(
                      'assets/images/call_image2.png',
                      fit: BoxFit.fill,
                    ),
                    ),),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(100))),
                      child: Image.asset(
                        'assets/images/call_image3.png',
                        fit: BoxFit.fill,
                      ),
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
