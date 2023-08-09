import 'package:flutter/material.dart';
import 'package:flutter_favoriteplaces_app/screens/add_place.dart';
import 'package:flutter_favoriteplaces_app/widgets/places_list.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Places'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const AddPlaceScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: PlacesList(
        places: [],
      ),
    );
  }
}