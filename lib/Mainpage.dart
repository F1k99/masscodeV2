import 'package:flutter/material.dart';
import 'package:masscode/Components/Tabbar.dart';
import 'package:masscode/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context),
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: TabbarComponents()))
              ],
            ))
          ],
        )),
      ),
    );
  }
}
