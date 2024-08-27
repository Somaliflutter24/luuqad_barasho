import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatelessWidget {
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2A4C96),
        shadowColor: Color(0xFF1D1D1D),
        surfaceTintColor: Color(0xFF1D1D1D),
        foregroundColor: Colors.white,
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 14.0),
        children: <Widget>[
//           ListTile(
//             contentPadding: EdgeInsets.symmetric(horizontal: 20),
//             leading: Icon(
//               Icons.share,
//               size: 25,
//               color: Colors.black,
//             ),
//             title: Text(
//               'Share to friends',
//               style: TextStyle(fontSize: 18),
//             ),
//             onTap: () {
//               Share.share('''
// 👇Download this App👇
// https://play.google.com/store/apps/details?id=com.smw.sotranslator \n\n
// ⚡✨ Check out the So Translator App ⚡✨
//   ''');
//             },
//           ),
          Divider(
            height: 0,
          ),
          // ListTile(
          //   contentPadding: EdgeInsets.symmetric(horizontal: 20),
          //   leading: Icon(
          //     Icons.star_rate_outlined,
          //     size: 25,
          //     color: Colors.black,
          //   ),
          //   title: Text(
          //     'Give us Rating',
          //     style: TextStyle(fontSize: 18),
          //   ),
          //   onTap: () {
          //     _launchURL(
          //         'https://play.google.com/store/apps/details?id=com.smw.sotranslator');
          //   },
          // ),
          Divider(
            height: 0,
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            leading: Icon(
              Icons.privacy_tip,
              size: 25,
              color: Colors.black,
            ),
            title: Text(
              'Privacy Policy',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              _launchURL(
                  'https://www.termsfeed.com/live/4a4a8bee-4824-44ad-9acd-fb970bce55bb');
            },
          ),
          Divider(
            height: 0,
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            leading: Icon(
              Icons.info_outline,
              size: 25,
              color: Colors.black,
            ),
            title: Text(
              'Terms and Condition',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              _launchURL(
                  'https://www.termsfeed.com/live/2c5b25b3-3763-4a01-ab94-c81a09206621');
            },
          ),
          Divider(
            height: 0,
          ),
        ],
      ),
    );
  }
}