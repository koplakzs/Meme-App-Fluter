import 'package:flutter/material.dart';

class BarBottom extends StatefulWidget {
  const BarBottom(
      {Key? key, required this.currentIndex, required this.onItemTapped})
      : super(key: key);

  final int currentIndex;
  final void Function(int) onItemTapped;
  @override
  State<BarBottom> createState() => _BarBottomState();
}

class _BarBottomState extends State<BarBottom> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/home_icon.png'),
              size: 20,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/seeting_icon.png'),
              size: 20,
            ),
            label: "Setting")
      ],
      currentIndex: widget.currentIndex,
      onTap: widget.onItemTapped,
      type: BottomNavigationBarType.fixed,
    );
  }
}
