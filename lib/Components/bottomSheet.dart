import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:intl/intl.dart';
import 'package:masscode/theme.dart';

class RequestLeave extends StatefulWidget {
  const RequestLeave({super.key});

  @override
  State<RequestLeave> createState() => _RequestLeaveState();
}

class _RequestLeaveState extends State<RequestLeave> {
  //dropdown
  List<String> leaveTypeItem = [
    "Annual Leave",
    "Sick Leave",
    "Hospitalization",
  ];

  static var descCtrl = TextEditingController();
  String? selectedStartDates;
  String? selectedEndDates;
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedStartDates = "Select Start Dates";
    selectedEndDates = "Select End Dates";
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Container(
        width: double.infinity,
        height: 550,
        decoration: BoxDecoration(
          // color: Colors.black,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(25, 25, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 15, 0, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Request Leave",
                          style: TextStyle(
                            fontFamily: 'Open Sans',
                            color: Color.fromARGB(500, 87, 99, 108),
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "Please enter the information below to request leave",
                          style: TextStyle(
                            fontFamily: 'Plus Jakarta Sans',
                            color: Color.fromARGB(500, 87, 99, 108),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.close,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            }),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                //Dropdown Button
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
                    child: DropdownButtonFormField2<String>(
                      isExpanded: true,
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      hint: const Text(
                        'Please Select ...',
                        style: TextStyle(fontSize: 14),
                      ),
                      items: leaveTypeItem
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                          .toList(),
                      validator: (value) {
                        if (value == null) {
                          return 'Please select ....';
                        }
                        return null;
                      },
                      onChanged: (value) {},
                      onSaved: (value) {
                        selectedValue = value.toString();
                      },
                      buttonStyleData: const ButtonStyleData(
                        padding: EdgeInsets.only(right: 8),
                      ),
                      iconStyleData: const IconStyleData(
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black45,
                        ),
                        iconSize: 24,
                      ),
                      dropdownStyleData: DropdownStyleData(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      menuItemStyleData: const MenuItemStyleData(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                      ),
                    ),
                  ),
                )
              ],
            ),
            //Start Date
            Padding(
              padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Text(
                        "${selectedStartDates}",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 13.0,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Sans"),
                      ),
                    )),
                    IconButton(
                      icon: Icon(
                        Icons.calendar_month_rounded,
                        color: Colors.black,
                      ),
                      onPressed: () async {
                        final DateTimeRange? dateTimeRange =
                            await showDateRangePicker(
                          context: context,
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2030),
                        );
                        if (dateTimeRange != null) {
                          setState(() {
                            selectedStartDates = DateFormat('dd/MM/yyyy')
                                .format(dateTimeRange.start);
                            selectedEndDates = DateFormat('dd/MM/yyyy')
                                .format(dateTimeRange.end);
                          });
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),

            //End Date
            Padding(
              padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Text(
                          "${selectedEndDates}",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 13.0,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Sans"),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.calendar_month_rounded,
                        color: Colors.black,
                      ),
                      onPressed: () async {
                        final DateTimeRange? dateTimeRange =
                            await showDateRangePicker(
                          context: context,
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2030),
                        );
                        if (dateTimeRange != null) {
                          setState(() {
                            selectedStartDates = DateFormat('dd/MM/yyyy')
                                .format(dateTimeRange.start);
                            selectedEndDates = DateFormat('dd/MM/yyyy')
                                .format(dateTimeRange.end);
                          });
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
            //Text Field Description
            Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: TextField(
                    autofocus: true,
                    obscureText: false,
                    maxLines: 5,
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 13.0,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Sans"),
                    controller: descCtrl,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        hintText: 'Description',
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 13.0,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Sans")),
                  ),
                ),
              ),
            ),
            //Buttons
            Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 25),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          15), // Adjust the border radius value
                    ),
                    backgroundColor:
                        primaryColor, // Change the background color
                    foregroundColor: Colors.white, // Change the text color
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Request Leave"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
