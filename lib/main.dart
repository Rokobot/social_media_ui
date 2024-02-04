import 'package:flutter/material.dart';
import 'package:ui_app/entities/const.dart';
import 'package:ui_app/screens/create_group.dart';
import 'package:ui_app/screens/group_call.dart';
import 'package:ui_app/screens/home_delete.dart';
import 'package:vibration/vibration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  //Route page from bottom nav bar
  int pageIndex = 0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: CusColors().scafolldColor,
          appBarTheme: AppBarTheme(color: CusColors().scafolldColor)),
      home: Scaffold(
        body: currentPage(),
        bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            onTap: (value){
              setState(() {
                pageIndex = value;
              });
            },
            currentIndex: pageIndex,
            selectedItemColor: CusColors().selectedLael,
            unselectedItemColor: CusColors().unSelectedLabel,
            items: [
              BottomNavigationBarItem(icon: Image.asset('assets/images/message.png', color: pageIndex == 0? CusColors().selectedLael: CusColors().cusItemColor,), label: 'Message',),
              BottomNavigationBarItem(icon:  Image.asset('assets/images/call.png', color: pageIndex == 1 ? CusColors().selectedLael : CusColors().unSelectedLabel,), label: 'Calls'),
              BottomNavigationBarItem(icon:  Image.asset('assets/images/user.png', color: pageIndex == 2 ? CusColors().selectedLael : CusColors().unSelectedLabel,), label: 'Contacts'),
              BottomNavigationBarItem(icon:  Image.asset('assets/images/settings.png', color: pageIndex == 3 ? CusColors().selectedLael : CusColors().unSelectedLabel,), label: 'Settings'),
            ]),
      ),
    );
  }

  currentPage(){
    switch(pageIndex){
      case 0:
        return const HomeDeleted();
      case 1:
        return const GroupCall();
      case 2:
        return Container();
      case 3:
        return const CreateGroup();
    }
  }
}
