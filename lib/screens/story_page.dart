import 'package:flutter/material.dart';
import 'package:flutter_story/flutter_story.dart';


class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Story(
            children: [
              StoryUser(
                borderColor: Colors.white,
                borderWidth: 1,
                avatar: Image.asset('assets/images/user2.png'),
                label: Text('Username'),
                children: [
                  StoryCard(
                    color: Colors.white,
                    child: Center(child:
                      Text('Story card center', style: TextStyle(color: Colors.white),),),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
