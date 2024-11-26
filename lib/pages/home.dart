import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Your location',
          style: TextStyle(color: Colors.grey),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                  'images/logo2.jpeg'), // place with your image asset
            ),
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.location_on, color: Colors.grey),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Essikadu, Canada-Ghana',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter tracking number',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            const Text(
              'Recent Delivery',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Card(
              elevation: 2,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'images/logo1.jpeg', // place with your image asset
                          height: 50,
                        ),
                        SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'PnP Delivery',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('Alpha Venom'),
                            Text('\Ghc199.99'),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Tracking No: #9546342'),
                            Text('Partner: Fedex (Drop)'),
                            Text('Status: In Transit'),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Call Justice'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            const Text(
              'Recent Packages',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Image.asset('images/logo1.jpeg',
                        height: 50), // place with your image asset
                    title: Text('EVGA GeForce 3080'),
                    subtitle: Text('#423223556222'),
                    trailing: Text(
                      '\$1999',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  ListTile(
                    leading: Image.asset('images/logo1.jpeg',
                        height: 50), // place with your image asset
                    title: Text('Samsung S21 Ultra'),
                    subtitle: Text('#964325652690'),
                    trailing: Text(
                      '\$1499',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.time),
            label: 'Timer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: 0, // Set the current index to highlight the Home button
        onTap: (index) {
          // Handle navigation tap
        },
      ),
    );
  }
}
