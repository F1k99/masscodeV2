import 'package:flutter/material.dart';
import 'package:masscode/Widget/container_round.dart';
import 'package:masscode/theme.dart';

import '../Model/user.dart';

class TabbarComponents extends StatefulWidget {
  const TabbarComponents({super.key});

  @override
  State<TabbarComponents> createState() => _TabbarComponentsState();
}

class _TabbarComponentsState extends State<TabbarComponents> {
  User user = User(
    id: '1',
    name: 'Amirul Fikri',
    AnnualLeaveBalance: 10,
    SickLeaveBalance: 15,
    HospitalisationBalance: 55,
    AnnualLeaveTotal: 15,
    SickLeaveTotal: 20,
    HospitalisationTotal: 60,
  );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(40, 10, 0, 0),
                child: Text("Welcome ${user.name} !", style: Title1),
              )
            ],
          ),
          Align(
            alignment: Alignment(0, 0),
            child: TabBar(
              labelColor: primaryText,
              unselectedLabelColor: secondaryText,
              labelStyle: TabBarTitle,
              tabs: [
                Tab(
                  text: 'Annual Leave',
                ),
                Tab(
                  text: 'Sick Leave',
                ),
                Tab(
                  text: 'Hospitalisation',
                ),
              ],
            ),
          ),
          Expanded(
              child: TabBarView(
            children: [
              //Tabview 1
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 200,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                width: 180,
                                height: 180,
                                child: CircularProgressIndicator(
                                  strokeWidth: 19,
                                  value: ((user.AnnualLeaveTotal -
                                          user.AnnualLeaveBalance) /
                                      user.AnnualLeaveTotal),
                                  backgroundColor: Color(0x2B49C946),
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Color(0xFF31B62F)),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                top: 55,
                                child: Column(
                                  children: [
                                    Text(
                                      "${user.AnnualLeaveBalance}",
                                      style: Title3,
                                    ),
                                    Text(
                                      'Annual Leave \nBalance',
                                      textAlign: TextAlign.center,
                                      style: SubTitle2,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        width: 150,
                        height: 50,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                RoundContainer(),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Total Leave Accured",
                                  style: SubTitle1,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 17,
                                ),
                                Text(
                                  "${user.AnnualLeaveTotal}",
                                  style: Subtitle3,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Container(
                        width: 150,
                        height: 50,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                RoundContainer(),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Leave Used",
                                  style: SubTitle1,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "${user.AnnualLeaveTotal - user.AnnualLeaveBalance}",
                                  style: Subtitle3,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),

              //Tabview 2
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 200,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                width: 180,
                                height: 180,
                                child: CircularProgressIndicator(
                                  strokeWidth: 19,
                                  value: ((user.SickLeaveTotal -
                                          user.SickLeaveBalance) /
                                      user.SickLeaveTotal),
                                  backgroundColor: Color(0x26B62F2F),
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Color(0xFFB62F2F)),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                top: 55,
                                child: Column(
                                  children: [
                                    Text(
                                      "${user.SickLeaveBalance}",
                                      style: Title3,
                                    ),
                                    Text(
                                      'Sick Leave \nBalance',
                                      textAlign: TextAlign.center,
                                      style: SubTitle2,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        width: 150,
                        height: 50,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                RoundContainer(),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Total Leave Accured",
                                  style: SubTitle1,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 17,
                                ),
                                Text(
                                  "${user.SickLeaveTotal}",
                                  style: Subtitle3,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Container(
                        width: 150,
                        height: 50,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                RoundContainer(),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Leave Used",
                                  style: SubTitle1,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "${user.SickLeaveTotal - user.SickLeaveBalance}",
                                  style: Subtitle3,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              //Tabview 3
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 200,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                width: 180,
                                height: 180,
                                child: CircularProgressIndicator(
                                  strokeWidth: 19,
                                  value: ((user.HospitalisationTotal -
                                          user.HospitalisationBalance) /
                                      user.HospitalisationTotal),
                                  backgroundColor: Color(0x44F8E21A),
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Color(0xFFF8E21A)),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                top: 55,
                                child: Column(
                                  children: [
                                    Text(
                                      "${user.HospitalisationBalance}",
                                      style: Title3,
                                    ),
                                    Text(
                                      'Hospitalisation \nBalance',
                                      textAlign: TextAlign.center,
                                      style: SubTitle2,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        width: 150,
                        height: 50,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                RoundContainer(),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Total Leave Accured",
                                  style: SubTitle1,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 17,
                                ),
                                Text(
                                  "${user.HospitalisationTotal}",
                                  style: Subtitle3,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Container(
                        width: 150,
                        height: 50,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                RoundContainer(),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Leave Used",
                                  style: SubTitle1,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "${user.HospitalisationTotal - user.HospitalisationBalance}",
                                  style: Subtitle3,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          )),
        ],
      ),
    );
  }
}
