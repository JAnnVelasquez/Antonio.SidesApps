import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BandsFavorites extends StatelessWidget {
  const BandsFavorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 8,
      shadowColor: Colors.blueGrey.withValues(alpha: 0.5),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade100, Colors.purple.shade100],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.library_music, color: Colors.blueAccent),
                const SizedBox(width: 8),
                Text(
                  'Mis bandas favoritas',
                  style: GoogleFonts.roboto(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              'The Beatles',
              style: GoogleFonts.openSans(fontSize: 17, height: 1.4),
            ),
            const SizedBox(height: 8),
            Text(
              'Oasis',
              style: GoogleFonts.openSans(fontSize: 17, height: 1.4),
            ),
            const SizedBox(height: 8),
            Text(
              'Queen',
              style: GoogleFonts.openSans(fontSize: 17, height: 1.4),
            ),
          ],
        ),
      ),
    );
  }
}
