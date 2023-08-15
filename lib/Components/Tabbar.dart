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
    name: 'Muhammad Salman',
    AnnualLeaveBalance: 10,
    SickLeaveBalance: 18,
    HospitalisationBalance: 5,
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
                                width: 200,
                                height: 200,
                                child: CircularProgressIndicator(
                                  strokeWidth: 20,
                                  value: ((user.AnnualLeaveTotal -
                                          user.AnnualLeaveBalance) /
                                      user.AnnualLeaveTotal),
                                  backgroundColor: Colors.white,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.green),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                top: 67,
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
                        height: 60,
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
                                  width: 20,
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
                        height: 60,
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
                      // RoundContainer(),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      // Text(
                      //   "Total Leave Accured",
                      //   style: SubTitle1,
                      // )
                    ],

                    // mainAxisAlignment: MainAxisAlignment.center,
                    // //Change when setup backend
                    // children: [
                    //   Text(
                    //     'Balance : ${user.AnnualLeaveBalance}/${user.AnnualLeaveTotal}',
                    //     style: TextStyle(
                    //       fontSize: 18,
                    //       fontFamily: 'Readex Pro',
                    //       color: Colors.black,
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //   )
                    // ],
                  )
                ],
              ),

              //Tabview 2
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
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
                                width: 200,
                                height: 200,
                                child: CircularProgressIndicator(
                                  strokeWidth: 20,
                                  value: ((user.SickLeaveTotal -
                                          user.SickLeaveBalance) /
                                      user.SickLeaveTotal),
                                  backgroundColor: Colors.white,
                                  valueColor:
                                      AlwaysStoppedAnimation<Color>(Colors.red),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                top: 80,
                                child: Column(
                                  children: [
                                    Text(
                                      "Sick Leave",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Outfit',
                                        color: Color.fromARGB(200, 20, 24, 27),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '${user.SickLeaveBalance} Days ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Outfit',
                                        color: Color.fromARGB(200, 20, 24, 27),
                                        fontWeight: FontWeight.bold,
                                      ),
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
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    //Change when setup backend
                    children: [
                      Text(
                        'Balance : ${user.SickLeaveBalance}/${user.SickLeaveTotal}',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Readex Pro',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
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
                                width: 200,
                                height: 200,
                                child: CircularProgressIndicator(
                                  strokeWidth: 20,
                                  value: ((user.HospitalisationTotal -
                                          user.HospitalisationBalance) /
                                      user.HospitalisationTotal),
                                  backgroundColor: Colors.white,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.yellow),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                top: 80,
                                child: Column(
                                  children: [
                                    Text(
                                      "Hospitalisation",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Outfit',
                                        color: Color.fromARGB(200, 20, 24, 27),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '${user.HospitalisationBalance} Days ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Outfit',
                                        color: Color.fromARGB(200, 20, 24, 27),
                                        fontWeight: FontWeight.bold,
                                      ),
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
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Balance : ${user.HospitalisationBalance}/${user.HospitalisationTotal}',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Readex Pro',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
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
