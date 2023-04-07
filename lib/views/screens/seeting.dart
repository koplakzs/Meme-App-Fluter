import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  final items = ["About"];

  Widget _buttonItem(BuildContext context, int index) {
    final item = items[index];
    return Container(
      alignment: Alignment.centerLeft,
      child: MaterialButton(
          onPressed: () => Navigator.pushNamed(context, '/about'),
          minWidth: double.infinity,
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                item,
              ))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: ListView.builder(
          itemBuilder: _buttonItem,
          itemCount: items.length,
        ),
      ),
    );
  }
}
