import 'package:flutter/material.dart';

class SenderDetailsSheet extends StatelessWidget {
  const SenderDetailsSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // Title
          const Center(
            child: Text(
              "Sender Details",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Profile Row
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/user.png"), // Replace with real user image
              ),
              const SizedBox(width: 12),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Sarah G.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins",
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      SizedBox(width: 4),
                      Text(
                        "3.6",
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  )
                ],
              )
            ],
          ),

          const SizedBox(height: 25),

          // From - To Section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // From
              Column(
                children: const [
                  Icon(Icons.location_pin, color: Colors.purple),
                  SizedBox(height: 4),
                  Text("From", style: TextStyle(fontFamily: "Poppins")),
                  SizedBox(height: 5),
                  Text(
                    "Islamabad",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins",
                    ),
                  ),
                ],
              ),

              const Icon(Icons.airplanemode_active, color: Colors.pink),

              // To
              Column(
                children: const [
                  Icon(Icons.location_pin, color: Colors.purple),
                  SizedBox(height: 4),
                  Text("To", style: TextStyle(fontFamily: "Poppins")),
                  SizedBox(height: 5),
                  Text(
                    "Sharjah",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins",
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 25),

          // Package Info List
          infoRow(
            icon: Icons.scale,
            label: "Package Weight",
            value: "30 lbs",
          ),
          const SizedBox(height: 15),

          infoRow(
            icon: Icons.category,
            label: "Package Category",
            value: "Clothing",
          ),
          const SizedBox(height: 15),

          infoRow(
            icon: Icons.attach_money,
            label: "Offered Price",
            value: "\$40.00",
          ),

          const SizedBox(height: 30),

          // Accept Offer Button
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "Accept Offer",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


  // Small helper widget for package details
  Widget infoRow({required IconData icon, required String label, required String value}) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.purple.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.purple),
        ),
        const SizedBox(width: 12),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontFamily: "Poppins",
          ),
        ),
        const Spacer(),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            fontFamily: "Poppins",
          ),
        )
      ],
    );
  }
}
