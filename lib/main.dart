import 'package:flutter/material.dart';
import 'sections/who_am_i.dart';
import 'sections/hobbies.dart';
import 'sections/bands_favorites.dart';
import 'sections/widgets/animated_section.dart';
import 'sections/screens/signature_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AntonioSides',
      debugShowCheckedModeBanner: false,

      routes: {
        '/': (context) => const PortfolioBody(),
        '/signature': (context) => const SignatureScreen(),
      },

      initialRoute: '/',
    );
  }
}

class PortfolioBody extends StatelessWidget {
  const PortfolioBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AntonioSides',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey[900],
        actions: [
          IconButton(
            icon: const Icon(Icons.contact_mail),
            onPressed: () {
              Navigator.pushNamed(context, '/signature');
            },
          ),
        ],
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

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          AnimatedSection(
            child: Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/avatar.jpeg'),
              ),
            ),
          ),
          SizedBox(height: 24),
          AnimatedSection(child: WhoAmI()),
          SizedBox(height: 24),
          AnimatedSection(child: Hobbies()),
          SizedBox(height: 24),
          AnimatedSection(child: BandsFavorites()),
          SizedBox(height: 24),
          SizedBox(height: 20),
          Center(
            child: Text(
              'Jose Antonio Velasquez C.I: 31.257.901',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
