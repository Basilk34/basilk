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
      title: 'Smart Home',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Smart Home App"), centerTitle: true),

      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                child: Text(
                  "Smart Home Menu",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            ListTile(leading: Icon(Icons.home), title: Text("Home")),
            ListTile(leading: Icon(Icons.settings), title: Text("Settings")),
            ListTile(leading: Icon(Icons.info), title: Text("About")),
          ],
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            height: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1558002038-1055907df827",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            "Welcome to Smart Home",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),

          const Text(
            "Control your devices easily and monitor your home system.",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),

          const SizedBox(height: 25),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildCard(Icons.lightbulb, "Lights", Colors.orange),
              buildCard(Icons.water_drop, "Water", Colors.blue),
            ],
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildCard(Icons.security, "Security", Colors.green),
              buildCard(Icons.power, "Power", Colors.red),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildCard(IconData icon, String title, Color color) {
    return Container(
      width: 160,
      height: 140,
      decoration: BoxDecoration(
        color: color.withOpacity(0.15),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 50, color: color),

          const SizedBox(height: 10),

          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
