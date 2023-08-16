import 'package:flutter/material.dart';
import 'package:masscode/Components/LeaveHistory.dart';
import 'package:masscode/Components/LeaveIndicator.dart';
import 'package:masscode/Components/Tabbar.dart';
import 'package:masscode/Widget/PrimaryButton.dart';
import 'package:masscode/theme.dart';

import 'Components/bottomSheet.dart';

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
        appBar: AppBar(
          backgroundColor: primaryColor,
          automaticallyImplyLeading: false,
          leading: IconButton(
            iconSize: 35,
            icon: Icon(
              Icons.chevron_left_rounded,
              color: Colors.white,
            ),
            onPressed: () => MainPage(),
          ),
          //Change when setup backend
          title: Text("Dashboard", style: AppbarTitle),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 25, 5),
              child: Container(
                width: 50,
                height: 50,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                //Change when setup backend
                child: Image.asset(
                  'assets/profile_picture.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
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
              )),
              Row(
                children: [LeaveStatusIndicator()],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(50, 0, 0, 2),
                      child: Text("History", style: TabBarTitle),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                    child: Text("Show all", style: TabBarTitle2),
                  )
                ],
              ),
              Row(
                children: [LeaveHistory()],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(25, 0, 25, 10),
                child: PrimaryButton(
                    textValue: "Request Leave",
                    onPressed: () async {
                      await showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          builder: (context) {
                            return RequestLeave();
                          }).then((value) => setState(() {}));
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
