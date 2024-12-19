import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecoveryAidPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Recovery Aid',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Post-Disaster Support',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Access resources to aid your recovery process after a disaster.',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  _buildRecoveryCard(
                    context,
                    title: 'Relief Services',
                    description:
                        'Find nearby relief camps, medical centers, and food distribution points.',
                    icon: Icons.local_hospital_rounded,
                    onTap: () {
                      Navigator.pushNamed(context, '/reliefServices');
                    },
                  ),
                  _buildRecoveryCard(
                    context,
                    title: 'Missing Persons',
                    description:
                        'Report missing persons or search for loved ones in the registry.',
                    icon: Icons.person_search_rounded,
                    onTap: () {
                      Navigator.pushNamed(context, '/missingPersons');
                    },
                  ),
                  _buildRecoveryCard(
                    context,
                    title: 'NGOs & Volunteers',
                    description:
                        'Connect with organizations and volunteers offering disaster aid.',
                    icon: Icons.volunteer_activism_rounded,
                    onTap: () {
                      Navigator.pushNamed(context, '/ngosVolunteers');
                    },
                  ),
                  _buildRecoveryCard(
                    context,
                    title: 'Emotional Support',
                    description:
                        'Access counseling services and emotional support resources.',
                    icon: Icons.support_rounded,
                    onTap: () {
                      Navigator.pushNamed(context, '/emotionalSupport');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecoveryCard(BuildContext context,
      {required String title,
      required String description,
      required IconData icon,
      required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 4,
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: [Colors.blue[400]!, Colors.blue[200]!],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: Colors.white,
                child: Icon(
                  icon,
                  size: 32,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      description,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
