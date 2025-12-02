import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CompleteDropOffScreen(),
    );
  }
}
class CompleteDropOffScreen extends StatefulWidget {
  const CompleteDropOffScreen({super.key});

  @override
  State<CompleteDropOffScreen> createState() => _CompleteDropOffScreenState();
}

class _CompleteDropOffScreenState extends State<CompleteDropOffScreen> {
  bool verifiedTravelerId = false;
  bool verifiedUnboxedItem = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text(
          "Complete Drop-off",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: false,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: 10),
            const Text(
              "Upload Item Pictures",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            // Upload Box
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.cloud_upload_outlined, size: 40, color: Colors.grey),
                    const SizedBox(height: 10),
                    const Text(
                      "Open Camera to capture",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF7A0056),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text(
                      "Or click to upload",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),

            Row(
              children: [
                Checkbox(
                  value: verifiedTravelerId,
                  onChanged: (val) {
                    setState(() {
                      verifiedTravelerId = val !;
                    });
                  },
                ),
                const Text(
                  "I have verified traveler ID",
                  style: TextStyle(fontSize: 12, fontFamily: "Poppins"),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: verifiedUnboxedItem,
                  onChanged: (val) {
                    setState(() {
                      verifiedTravelerId = val!;
                    });
                  },
                ),
                const Text(
                  '''Please click box to verify that you are delivering 
unpacked unboxed item to the Traveler''',
                  style: TextStyle(fontSize: 11, fontFamily: "Poppins"),
                ),
              ],
            ),


            const Spacer(),

            // Next Button
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF7A0056),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
