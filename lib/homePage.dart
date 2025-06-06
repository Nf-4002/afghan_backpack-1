
import 'package:afghan_backpack/constants.dart';
import 'package:afghan_backpack/herat_screens/herat.dart';
import 'package:afghan_backpack/profilePage.dart';

import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  final List<Map<String, String>> cities = [
    {
      'name': 'Herat',
      'location': 'western of AFG',
      'image': 'images/Herat.jpg',
    },
    {
      'name': 'Kabul',
      'location': 'eastern of AFG',
      'image': 'images/Kabul.jpg',
    },
    {
      'name': 'Balkh',
      'location': 'northern of AFG',
      'image': 'images/Balkh.jpg',
    },
    {
      'name': 'Bamiyan',
      'location': 'central of AFG',
      'image': 'images/Bamiyan.jpg',
    },
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: _buildDrawer(context),
      appBar: AppBar(
        backgroundColor: kButtonBackgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: kListIcon,
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        title: const Text(
          'Popular Cities of Afghanistan',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle,
                color: kListIconColor, size: 45),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          itemCount: cities.length,
          itemBuilder: (context, index) {
            final city = cities[index];
            return Padding(
              padding: const EdgeInsets.all(5),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HeratCityPage()),
                  );
                },
                child: CityCard(
                  name: city['name']!,
                  location: city['location']!,
                  image: city['image']!,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Drawer _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text('Narges Farahi'),
            accountEmail: Text('narges.farahi_354@example.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
          ),
          ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () => Navigator.pop(context)),
          ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('Favorites'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FavoritesPage()),
                );
              }),
          const ListTile(leading: Icon(Icons.star), title: Text('Stars')),
          const ListTile(leading: Icon(Icons.person), title: Text('Profile')),
          const ListTile(leading: Icon(Icons.call), title: Text('Call Us')),
          const ListTile(
              leading: Icon(Icons.settings), title: Text('Settings')),
          const Divider(),
          const ListTile(leading: Icon(Icons.help), title: Text('Help')),
          const ListTile(leading: Icon(Icons.logout), title: Text('Log out')),
        ],
      ),
    );
  }
}


class CityCard extends StatelessWidget {
  final String name;
  final String location;
  final String image;

  const CityCard({
    required this.name,
    required this.location,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 13),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(17),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                image,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(kLocationIcon, color: kLocationColor, size: 18),
                      const SizedBox(width: 4),
                      Text(
                        location,
                        style: TextStyle(fontSize: 16, color: kLocationColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      Icon(kStarIcon, color: kStarIconColor, size: 16),
                      Icon(kStarIcon, color: kStarIconColor, size: 16),
                      Icon(kStarIcon, color: kStarIconColor, size: 16),
                      Icon(kStarIcon, color: kStarIconColor, size: 16),
                      Icon(kStarHalfIcon, color: kStarIconColor, size: 16),
                      SizedBox(width: 4),
                      Text("4.8"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kButtonBackgroundColor,
        title: const Text('Favorites'),
      ),
      body: Center(
        child: const Text(
          'This is your Favorites page!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}