import 'package:flutter/material.dart';

import 'AcceptOffer/Bottom_sheet.dart';
import 'AcceptOffer/IternarySearchBottomSheet.dart';
import 'Upload_image.dart';

class My_Order_in_progressVeiwDetail extends StatelessWidget {
  const My_Order_in_progressVeiwDetail({super.key});

  @override
  Widget build(BuildContext context) {
   // var icon;
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          "Sender Details",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // TOP PROFILE CARD
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage:
                      AssetImage("assets/images/profile.png"),
                    ),
                    const SizedBox(width: 10),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Olivia Rhye",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text("⭐ 3.8", style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF7A0056),
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text("Message Traveler"),
                    )

                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),
            // SECTIONS WITH PER-ROW ICONS
            buildSection(
              icon: const Icon(Icons.keyboard_arrow_up),
              title: "Traveler Information",
              data: {
                "From": "Islamabad",
                "To": "New York",
                "Email": "olivia@gmail.com",
                "Contact": "+1234 5678",
              },
              iconsMap: {
                "From": "assets/images/Flight_Fly.png",
                "To": "assets/images/Flight_Fly.png",
                "Email": "assets/images/Flight_Fly.png",
                "Contact": "assets/images/Flight_Fly.png",
              },
            ),

            buildSection(
              icon: const Icon(Icons.keyboard_arrow_up),
              title: "Date & Time Details",
              data: {
                "Departure": "30/09/2025   3:15 am",
                "Arrival": "01/10/2025   05:15 pm",
              },
              iconsMap: {
                "Departure": "assets/images/Flight_Fly.png",
                "Arrival": "assets/images/Flight_Fly.png",
              },
            ),

            buildSection(
              icon: const Icon(Icons.keyboard_arrow_up),
              title: "Luggage Details",
              data: {
                "Booked Weight": "30 lb",
                "Weight Available": "10 lb",
              },
              iconsMap: {
                "Booked Weight": "assets/images/Flight_Fly.png",
                "Weight Available": "assets/images/Flight_Fly.png",
              },
            ),

            buildSection(
              icon: const Icon(
                Icons.edit,
                color: Colors.transparent,
              ),
              title: "Luggage Transit Details",
              data: {
                "Drop-off Date & Time": "Sept 8, 2024 3:30 AM",
                "Pick-up Date & Time": "Sept 8, 2024 11:30 PM",
                "Drop-off Address": "739 Main Street...",
                "Pick-up Address": "739 Main Street...",
              },
              iconsMap: {
                "Drop-off Date & Time": "assets/images/Flight_Fly.png",
                "Pick-up Date & Time": "assets/images/Flight_Fly.png",
                "Drop-off Address": "assets/images/Flight_Fly.png",
                "Pick-up Address": "assets/images/Flight_Fly.png",
              },
            ),

            buildSection(
              icon: const Icon(Icons.edit),
              title: "Receiver Information",
              data: {
                "Name": "Marco Kelly",
                "Email": "marco@gmail.com",
                "Contact": "+1 234 5678",
              },
              iconsMap: {
                "Name": "assets/images/Flight_Fly.png",
                "Email": "assets/images/Flight_Fly.png",
                "Contact": "assets/images/Flight_Fly.png",
              },
            ),

            buildSection(
              icon: const Icon(
                Icons.edit,
                color: Colors.transparent,
              ),
              title: "Payment Details",
              data: {
                "Invoice ID": "#INV-XXXXXX",
                "Total Amount": "\$40.00",
              },
              iconsMap: {
                "Invoice ID": "assets/images/Flight_Fly.png",
                "Total Amount": "assets/images/Flight_Fly.png",
              },
            ),

            const SizedBox(height: 16),
            // BUTTONS
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Color(0xFFA32121)),
                      foregroundColor: Color(0xFFA32121),
                      padding:
                      const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("Cancel Delivery"),
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF7A0056),
                      foregroundColor: Colors.white,
                      padding:
                      const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {

                      _openSenderDetailsSheet(context);
                    },
                    child: const Text("My Cart"),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF7A0056),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  // Navigate to Drop-off screen
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return CompleteDropOffScreen();
                  }));
                },
                child: const Text("Drop-off"),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
  // FUNCTION USED FOR REUSABLE SECTION WIDGET WITH ICON FOR EACH ROW
  Widget buildSection({
    required Icon icon,
    required String title,
    required Map<String, dynamic> data,
    required Map<String, String> iconsMap,
  }) {
    return Card(
      elevation: 1.8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TITLE + ICON
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                icon,
              ],
            ),

            const SizedBox(height: 8),

            // DATA ROWS
            Column(
              children: data.entries.map((entry) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      // IMAGE ICON PER ROW
                      CircleAvatar(
                        radius: 14,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                          iconsMap[entry.key] ?? "assets/icons/default.png",
                        ),
                      ),

                      const SizedBox(width: 12),

                      // KEY TEXT
                      Expanded(
                        child: Text(
                          entry.key,
                          style: const TextStyle(
                            fontSize: 12,
                            fontFamily: "Poppins",
                            color: Color(0xFF667071),
                          ),
                        ),
                      ),

                      // VALUE TEXT
                      Text(
                        entry.value.toString(),
                        style: const TextStyle(
                          fontSize: 14,
                          fontFamily: "Poppins",
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

}
//bottom sheet open of accept offer
void _openSenderDetailsSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),
    ),
    builder: (_) =>  ItineraryBottomSheet(),
  );
}
//bottom sheet open of iternary search
void openItineraryBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (_) => ItineraryBottomSheet(),
  );
}


