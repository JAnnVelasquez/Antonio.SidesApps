import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hobbies extends StatelessWidget {
  const Hobbies({super.key});

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
                const Icon(Icons.music_note, color: Colors.blueAccent),
                const SizedBox(width: 8),
                Text(
                  'Hobbies',
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
              'Desde hace un par de años empecé a sentir pasión por la música, y poco a poco con el pasar del tiempo he buscado pulir esa habilidad.',
              style: GoogleFonts.openSans(fontSize: 17, height: 1.4),
            ),
            const SizedBox(height: 10),
            Text(
              'He aprendido a tocar la guitarra y saxofón con mucha práctica y paciencia.',
              style: GoogleFonts.openSans(fontSize: 17, height: 1.4),
            ),
            const SizedBox(height: 10),
            Text(
              'También practico Voleibol y es el deporte en el que mejor me desempeño.',
              style: GoogleFonts.openSans(fontSize: 17, height: 1.4),
            ),
          ],
        ),
      ),
    );
  }
}
