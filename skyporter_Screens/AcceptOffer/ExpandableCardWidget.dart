import 'package:flutter/material.dart';

class ExpandableItineraryCard extends StatefulWidget {
  final String title;
  final bool isChecked;
  final Function(bool) onChecked;

  ExpandableItineraryCard({
    required this.title,
    required this.isChecked,
    required this.onChecked,
    super.key,
  });

  @override
  State<ExpandableItineraryCard> createState() =>
      _ExpandableItineraryCardState();
}

class _ExpandableItineraryCardState extends State<ExpandableItineraryCard> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      curve: Curves.fastOutSlowIn,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xFF7A0056), width: 1),
        color: Colors.white,
      ),
      child: Column(
        children: [
          // ---- TOP ROW (Title + Checkbox + Arrow)
          Row(
            children: [
              Checkbox(
                value: widget.isChecked,
                onChanged: (val) => widget.onChecked(val ?? false),
              ),

              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                ),
              ),

              Spacer(),

              // Arrow button
              InkWell(
                onTap: () {
                  setState(() {
                    expanded = !expanded;
                  });
                },
                child: AnimatedRotation(
                  turns: expanded ? 0.5 : 0.0,
                  duration: Duration(milliseconds: 250),
                  child: Icon(Icons.keyboard_arrow_down),
                ),
              ),
            ],
          ),

          // ---- EXPANDED CONTENT
          if (expanded) ...[
            SizedBox(height: 10),

            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      // Departure
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.flight_takeoff,
                                    color: Color(0xFF7A0056), size: 18),
                                SizedBox(width: 4),
                                Text("Departure",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF777B8B))),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text("John F. Kennedy Int. Airport",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14)),
                            Text("Oct 20, 2025",
                                style: TextStyle(color: Color(0xFF777B8B))),
                          ],
                        ),
                      ),

                      // Airplane icon
                      Column(
                        children: [
                          Icon(Icons.flight,
                              color: Color(0xFF7A0056), size: 22),
                          SizedBox(height: 5),
                        ],
                      ),

                      // Destination
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.flight_land,
                                    color: Color(0xFF7A0056), size: 18),
                                SizedBox(width: 4),
                                Text("Destination",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF777B8B))),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text("Islamabad Int. Airport",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14)),
                            Text("Oct 21, 2025",
                                style: TextStyle(color: Color(0xFF777B8B))),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 15),

                  // PRICE + WEIGHT
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Weight Capacity",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xFF777B8B))),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(Icons.work,
                                    color: Color(0xFF7A0056), size: 18),
                                SizedBox(width: 4),
                                Text("15 kg (33.07 lbs)",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600)),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Offered Price",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xFF777B8B))),
                            SizedBox(height: 5),
                            Text("\$40.00",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15)),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}
