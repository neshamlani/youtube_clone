import 'package:flutter/material.dart';
import 'view_short.dart';

class Shorts extends StatefulWidget {
  const Shorts({super.key});

  @override
  State<Shorts> createState() => _ShortsState();
}

class _ShortsState extends State<Shorts> {
  PageController _controller = new PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      allowImplicitScrolling: true,
      scrollDirection: Axis.vertical,
      children: [
        ViewShort(),
        ViewShort(),
        ViewShort(),
      ],
    );
  }
}
