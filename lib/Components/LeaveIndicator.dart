import 'package:flutter/material.dart';
import 'package:masscode/theme.dart';

class LeaveStatusIndicator extends StatefulWidget {
  const LeaveStatusIndicator({super.key});

  @override
  State<LeaveStatusIndicator> createState() => _LeaveStatusIndicatorState();
}

List<String> leaveStatus = [
  "Pending",
  "Approved",
  "Rejected",
];

List<int> TotalStatus = [
  2,
  10,
  1,
];

containerStatus(status) => Container(
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        color: leaveStatus[status] == "Approved"
            ? Colors.green
            : (leaveStatus[status] == "Rejected")
                ? Colors.red
                : Color(0xFFFC7900),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(18),
          bottomRight: Radius.circular(18),
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text(TotalStatus[status].toString(), style: Title4)),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text(leaveStatus[status],
                    textAlign: TextAlign.start, style: Subtitle4),
              )
            ],
          ),
        ],
      ),
    );

class _LeaveStatusIndicatorState extends State<LeaveStatusIndicator> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                      child: containerStatus(index),
                    ),
                  ],
                );
              },
            ),
          ],
        ));
  }
}
