import 'package:flutter/material.dart';
import 'package:voice_assistant/FeatureBox/feature_box.dart';
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
        title: const Text('Bella'),
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
                  height: 113,
                  width: 120,
                  decoration: BoxDecoration(
                    color: ColorTheme.assistantCircleColor,
                    borderRadius: BorderRadius.circular(70),
                  ),
                ),
              ),
              Container(
                height: 117,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image:
                            AssetImage('assets/image/virtualAssistant.png'))),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            margin: const EdgeInsets.fromLTRB(23, 6, 23, 0),
            decoration: BoxDecoration(
              border: Border.all(color: ColorTheme.borderColor),
              borderRadius:
                  BorderRadius.circular(20).copyWith(topLeft: Radius.zero),
            ),
            child: const Text(
              'Good Morning, What task can i do for you?',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 7, left: 45),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Here are few features!',
              style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Cera Pro',
                  color: ColorTheme.mainFontColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const FeatureBox(
              color: ColorTheme.firstSuggestionBoxColor,
              headerText: 'ChatGpt',
              descriptionText:
                  'A smarter way to stay organized and informed with chatgpt'),
          const FeatureBox(
              color: ColorTheme.secondSuggestionBoxColor,
              headerText: 'Dall-E',
              descriptionText:
                  'Get inspired and stay creative with your personal assistant powered by Dall-E'),
          const FeatureBox(
              color: ColorTheme.thirdSuggestionBoxColor,
              headerText: 'Smart Voice Assistant',
              descriptionText:
                  'Get the best of both worl wide and assistant powered by Dall-E and ChatGpt')
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.keyboard_voice_rounded),
      ),
    );
  }
}
