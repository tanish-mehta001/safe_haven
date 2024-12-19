import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReliefServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Relief Services',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Find nearby relief camps, medical centers, and food distribution points.',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Go back to the previous page
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
