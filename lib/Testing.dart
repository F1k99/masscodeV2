Expanded(
                          child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: DefaultTabController(
                          length: 3,
                          initialIndex: 0,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment(0, 0),
                                child: TabBar(
                                  labelColor: Color.fromARGB(500, 75, 57, 239),
                                  unselectedLabelColor: Colors.grey,
                                  labelStyle: TextStyle(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            SizedBox(
                                              height: 200,
                                              child: Stack(
                                                children: <Widget>[
                                                  Container(
                                                    width: 200,
                                                    height: 200,
                                                    child:
                                                        CircularProgressIndicator(
                                                      strokeWidth: 20,
                                                      value: ((user
                                                                  .TotalAnnualLeave -
                                                              user.AnnualLeaveBalance) /
                                                          user.TotalAnnualLeave),
                                                      backgroundColor:
                                                          Colors.white,
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                                  Color>(
                                                              Colors.green),
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
                                                          "Annual Leave",
                                                          style: TextStyle(
                                                            fontSize: 15,
                                                            fontFamily: 'Outfit',
                                                            color: Color.fromARGB(
                                                                200, 20, 24, 27),
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        Text(
                                                          '${user.AnnualLeaveBalance} Days',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontSize: 20,
                                                            fontFamily: 'Outfit',
                                                            color: Color.fromARGB(
                                                                200, 20, 24, 27),
                                                            fontWeight:
                                                                FontWeight.bold,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        //Change when setup backend
                                        children: [
                                          Text(
                                            'Balance : ${user.AnnualLeaveBalance}/${user.TotalAnnualLeave}',
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

                                  //Tabview 2
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            SizedBox(
                                              height: 200,
                                              child: Stack(
                                                children: <Widget>[
                                                  Container(
                                                    width: 200,
                                                    height: 200,
                                                    child:
                                                        CircularProgressIndicator(
                                                      strokeWidth: 20,
                                                      value: ((user
                                                                  .TotalSickLeave -
                                                              user.SickLeaveBalance) /
                                                          user.TotalSickLeave),
                                                      backgroundColor:
                                                          Colors.white,
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(Colors.red),
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
                                                            color: Color.fromARGB(
                                                                200, 20, 24, 27),
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        Text(
                                                          '${user.SickLeaveBalance} Days ',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontSize: 20,
                                                            fontFamily: 'Outfit',
                                                            color: Color.fromARGB(
                                                                200, 20, 24, 27),
                                                            fontWeight:
                                                                FontWeight.bold,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        //Change when setup backend
                                        children: [
                                          Text(
                                            'Balance : ${user.SickLeaveBalance}/${user.TotalSickLeave}',
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            SizedBox(
                                              height: 200,
                                              child: Stack(
                                                children: <Widget>[
                                                  Container(
                                                    width: 200,
                                                    height: 200,
                                                    child:
                                                        CircularProgressIndicator(
                                                      strokeWidth: 20,
                                                      value: ((user
                                                                  .TotalHospitalisation -
                                                              user.HospitalisationBalance) /
                                                          user.TotalHospitalisation),
                                                      backgroundColor:
                                                          Colors.white,
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                                  Color>(
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
                                                            color: Color.fromARGB(
                                                                200, 20, 24, 27),
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        Text(
                                                          '${user.HospitalisationBalance} Days ',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontSize: 20,
                                                            fontFamily: 'Outfit',
                                                            color: Color.fromARGB(
                                                                200, 20, 24, 27),
                                                            fontWeight:
                                                                FontWeight.bold,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Balance : ${user.HospitalisationBalance}/${user.TotalHospitalisation}',
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