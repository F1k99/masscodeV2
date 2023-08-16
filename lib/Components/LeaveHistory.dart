import 'package:flutter/material.dart';

class LeaveHistory extends StatefulWidget {
  const LeaveHistory({super.key});

  @override
  State<LeaveHistory> createState() => _LeaveHistoryState();
}

class _LeaveHistoryState extends State<LeaveHistory> {
  List<String> leaveTypeArray = [
    "Annual Leave",
    "Sick Leave",
    "Annual Leave",
  ];

  List<String> dateArray = [
    "10/8/2023 - 11/8/2023",
    "13/8/2023 - 15/8/2023",
    "15/8/2023 - 17/8/2023",
  ];

  List<String> daysArray = [
    "3 Days",
    "2 Days",
    "2 Days",
  ];
  List<String> statusArray = [
    "Rejected",
    "Approved",
    "Pending",
  ];

  containerStatus(status) => Container(
        width: 15,
        height: 90,
        decoration: BoxDecoration(
          color: statusArray[status] == "Approved"
              ? Colors.green
              : (statusArray[status] == "Rejected")
                  ? Colors.red
                  : Color(0xFFFC7900),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(0),
            topLeft: Radius.circular(25),
            topRight: Radius.circular(0),
          ),
        ),
      );
  //conditions for text color
  listViewStatus(status) => (Text(
        statusArray[status],
        textAlign: TextAlign.start,
        style: TextStyle(
            color: statusArray[status] == "Approved"
                ? Colors.green
                : (statusArray[status] == "Rejected")
                    ? Colors.red
                    : Color(0xFFFC7900),
            fontWeight: FontWeight.bold,
            fontSize: 14),
      ));
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Row(
        children: [
          Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.fromLTRB(25, 0, 25, 15),
                    child: Container(
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(18),
                            bottomRight: Radius.circular(18),
                            topLeft: Radius.circular(18),
                            topRight: Radius.circular(18),
                          ),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              //Condition
                              containerStatus(index),
                            ],
                          ),
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                      leaveTypeArray[index],
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                      dateArray[index],
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    daysArray[index],
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [listViewStatus(index)],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ))
        ],
      ),
    );
  }
}
