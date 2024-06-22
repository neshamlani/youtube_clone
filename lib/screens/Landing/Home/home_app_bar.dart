import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/icons/text_and_icon.png"),
          Container(
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.person),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
