import 'package:flutter/material.dart';
import 'package:voice_assistant/color_theme.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assitant App'),
        backgroundColor: ColorTheme.whiteColor,
        leading: const Icon(Icons.menu),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: ColorTheme.assistantCircleColor,
                    borderRadius: BorderRadius.circular(70),
                  ),
                ),
              ),
              Container(
                height: 123,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image:
                            AssetImage('assets/image/virtualAssistant.png'))),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            margin: const EdgeInsets.fromLTRB(23, 10, 23, 0),
            decoration: BoxDecoration(
              border: Border.all(color: ColorTheme.borderColor),
              borderRadius:
                  BorderRadius.circular(20).copyWith(topLeft: Radius.zero),
            ),
            child: const Text(
              'Good Morning, What tast can i do for you?',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
