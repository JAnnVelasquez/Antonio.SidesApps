import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhoAmI extends StatelessWidget {
  const WhoAmI({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.person, color: Colors.blueAccent),
                const SizedBox(width: 8),
                Text(
                  '¿Quién soy?',
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
              'Soy Jose Antonio Velasquez, nací el 4 de abril del año 2006, actualmente tengo 19 años.',
              style: GoogleFonts.openSans(fontSize: 17, height: 1.4),
            ),
            const SizedBox(height: 10),
            Text(
              'Estoy cursando 7mo trimestre de Ingeniería en Sistemas en la Universidad de Margarita, alma mater del Caribe.',
              style: GoogleFonts.openSans(fontSize: 17, height: 1.4),
            ),
          ],
        ),
      ),
    );
  }
}
