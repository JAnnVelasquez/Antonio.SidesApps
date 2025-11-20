import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignatureScreen extends StatelessWidget {
  const SignatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Firma & Contacto',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey[900],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            height: 4,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blueAccent, Colors.purpleAccent],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/avatar.jpeg'),
            ),
            const SizedBox(height: 24),
            Text(
              'Jose Antonio Velasquez',
              style: GoogleFonts.roboto(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[900],
                shadows: const [
                  Shadow(
                    offset: Offset(1, 1),
                    blurRadius: 2,
                    color: Colors.black26,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Estudiante de ingenieria en sistemas',
              style: GoogleFonts.openSans(
                fontSize: 20,
                color: Colors.blueGrey[700],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.email, color: Colors.blueGrey),
                SizedBox(width: 10),
                Text('jvelasquez.1901@unimar.edu.ve'),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.phone, color: Colors.blueGrey),
                SizedBox(width: 10),
                Text('+58 416-5955253'),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
