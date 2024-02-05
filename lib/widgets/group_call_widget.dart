import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              image: DecorationImage(image: AssetImage('assets/images/home_delete/image4.jpg'), fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    bottomLeft: Radius.circular(100))),
          )),
          Container(color: Colors.white70,width: 1,),
          Expanded(
            child: Column(
              children: [
                Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/images/home_delete/image6.jpg'), fit: BoxFit.cover),
                            color: Colors.yellow,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(100))),
                    ),),
                Container(color: Colors.white70,height: 1,),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/home_delete/image3.jpg'), fit: BoxFit.cover),
                      color: Colors.green,
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(100))),

                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
