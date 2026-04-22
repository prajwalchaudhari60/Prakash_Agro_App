import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  Future<void> openMap() async {
    final Uri mapsUri = Uri.parse(
      'https://www.google.com/maps/search/?api=1&query=Dhamangaon+Badhe',
    );

    if (await canLaunchUrl(mapsUri)) {
      await launchUrl(mapsUri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Card(
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.phone, size: 50, color: Colors.green),
                SizedBox(height: 10),
                Text('Prakash Agro Services', style: TextStyle(fontSize: 20)),
                SizedBox(height: 10),
                Text('Phone: 9322098176'),
                SizedBox(height: 10),
                Text('Location: Dhamangaon Badhe'),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: openMap,
                  child: Text('Open Location'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}