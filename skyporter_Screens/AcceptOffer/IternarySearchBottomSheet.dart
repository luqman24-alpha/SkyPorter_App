import 'package:flutter/material.dart';

class ItineraryBottomSheet extends StatefulWidget {
  const ItineraryBottomSheet({super.key});

  @override
  _ItineraryBottomSheetState createState() => _ItineraryBottomSheetState();
}

class _ItineraryBottomSheetState extends State<ItineraryBottomSheet> {
  bool weekend_Trip = false;
  bool Business_Trip = false;
  bool November_Travel = false;

  bool novemberExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              const SizedBox(height: 15),

              const Text(
                "Select Itinerary",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 15),

              TextField(
                decoration: InputDecoration(
                  hintText: "Search by itinerary name",
                  hintStyle: const TextStyle(
                    fontSize: 14,
                    fontFamily: "Poppins",
                    color: Color(0xFF777B8B),
                    fontWeight: FontWeight.w500,
                  ),
                  suffixIcon: const Icon(
                    Icons.search,
                    color: Color(0xFF777B8B),
                  ),
                  contentPadding:
                  const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              //  CARD CALL
              buildItineraryCard(
                title: "November Travel",
                isExpanded: novemberExpanded,
                isChecked: November_Travel,
                onToggle: (value) {
                  setState(() => novemberExpanded = value);
                },
                onCheck: (value) {
                  setState(() => November_Travel = value);
                },
              ),

              // CARD 2
              Card(
                color: Colors.white,
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    children: [
                      Checkbox(
                        value: weekend_Trip,
                        onChanged: (val) {
                          setState(() {
                            weekend_Trip = val ?? false;
                          });
                        },
                      ),
                      const Text(
                        "Weekend Trip",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
              ),

              // CARD 3
              Card(
                color: Colors.white,
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    children: [
                      Checkbox(
                        value: Business_Trip,
                        onChanged: (val) {
                          setState(() {
                            Business_Trip = val ?? false;
                          });
                        },
                      ),
                      const Text(
                        "Business Trip",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
              ),
              // CARD 4
              Card(
                color: Colors.white,
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    children: [
                      Checkbox(
                        value: Business_Trip,
                        onChanged: (val) {
                          setState(() {
                            Business_Trip = val ?? false;
                          });
                        },
                      ),
                      const Text(
                        "Business Trip",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
              ),
              
              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF7A0056),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Apply",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}


/// USED FOR EXPANDING OF ARROW
Widget buildItineraryCard({
  required String title,
  required bool isExpanded,
  required bool isChecked,
  required Function(bool) onToggle,
  required Function(bool) onCheck,
}) {
  return Card(
    color: Colors.white,
    elevation: 1,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: [
        // ---------------- HEADER ROW ----------------
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (val) => onCheck(val ?? false),
              ),

              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                ),
              ),

              const Spacer(),

              GestureDetector(
                onTap: () => onToggle(!isExpanded),
                child: Icon(
                  isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                ),
              ),
            ],
          ),
        ),

        // ---------------- EXPANDED CONTENT ----------------
        if (isExpanded)
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                // ----- DEPARTURE | PLANE | DESTINATION -----
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // LEFT: Departure
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Departure",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFF777B8B)),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "John F. Kennedy Int. Airport\nOct 20, 2025",
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                    ),

                    // CENTER: Flight Icon
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(Icons.flight, color: Colors.purple),
                    ),

                    // RIGHT: Destination
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            "Destination",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFF777B8B)),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Islamabad Int. Airport\nOct 21, 2025",
                            textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                // ---- BOTTOM ROW ----
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Weight Capacity: 15kg (33 lbs)"),
                    Text("\$40.00"),
                  ],
                ),
              ],
            ),
          ),
      ],
    ),
  );
}

