import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:xylophone_flutter/widgets/custom_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late AudioPlayer _player;

  @override
  void initState() {
    _player = AudioPlayer();

    super.initState();
  }

  Future<void> playMusc(int number) async {
    await _player.play(AssetSource('audio/note${number}.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomContainer(onTap: () => playMusc(1), color: Colors.blue),
          CustomContainer(onTap: () => playMusc(2), color: Colors.pink),
          CustomContainer(onTap: () => playMusc(3), color: Colors.purple),
          CustomContainer(onTap: () => playMusc(4), color: Colors.orange),
          CustomContainer(onTap: () => playMusc(5), color: Colors.black),
          CustomContainer(onTap: () => playMusc(6), color: Colors.yellow),
          CustomContainer(onTap: () => playMusc(7), color: Colors.green),
        ],
      ),
    ));
  }
}
