import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/recovery_aid_page.dart';
import 'recovery_aid/emotional_support_page.dart';
import 'recovery_aid/missing_person_page.dart';
import 'recovery_aid/ngo_volunteer_page.dart';
import 'recovery_aid/relief_services_page.dart';

void main() {
  runApp(SafeHavenApp());
}

class SafeHavenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SafeHaven',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/recoveryAid': (context) => RecoveryAidPage(),
        '/reliefServices': (context) => ReliefServicesPage(), // Relief Services route
        '/missingPersons': (context) => MissingPersonsPage(), // Missing Persons route
        '/ngosVolunteers': (context) => NGOsVolunteersPage(), // NGOs & Volunteers route
        '/emotionalSupport': (context) => EmotionalSupportPage(), // Emotional Support route
      },
    );
  }
}
