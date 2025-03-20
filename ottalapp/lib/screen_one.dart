import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart'; // Required for LatLng

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main menu'),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min, // Ensures the buttons don't stretch
        children: [
          SizedBox(
            height: 80.0,
            width: 80.0,
            child: FittedBox(
              child: FloatingActionButton(
                backgroundColor: Colors.green,
                elevation: 10.0,
                child: const Icon(
                  Icons.add_reaction_outlined,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Action on button press
                },
              ),
            ),
          ),
          const SizedBox(height: 20), // Adds spacing between buttons
          SizedBox(
            height: 80.0,
            width: 80.0,
            child: FittedBox(
              child: FloatingActionButton(
                backgroundColor: Colors.green,
                elevation: 10.0,
                child: const Icon(
                  Icons.add_location_alt_outlined,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Action on button press
                },
              ),
            ),
          ),
        ],
      ),
      body: FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(47.473417, 19.062448), // Set a valid center point
          initialZoom: 16.0, // Set an appropriate zoom level
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.app',
          ),
        ],
      ),
    );
  }
}