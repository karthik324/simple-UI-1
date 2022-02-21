import 'package:flutter/material.dart';
import 'package:ui_page_app/custom_widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  bool radioButton = true;
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Additional Information'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
        ),
        body: ListView(
          children: [
            CustomListTile(
              title: 'Share Dukaan App',
              leading: IconButton(
                icon: Icon(Icons.share_outlined),
                onPressed: () {},
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
            CustomListTile(
              title: 'Change Language',
              leading: IconButton(
                icon: Icon(Icons.messenger_outline_outlined),
                onPressed: () {},
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
            CustomListTile(
                title: 'WhatsApp Chat Support',
                leading: IconButton(
                  icon: FaIcon(FontAwesomeIcons.whatsapp),
                  onPressed: () {},
                ),
                trailing: Switch(
                  value: radioButton,
                  activeTrackColor: Colors.blue[100],
                  activeColor: Colors.blue[900],
                  onChanged: (value) {},
                )),
            CustomListTile(
              title: 'Privacy Policy',
              leading: IconButton(
                icon: Icon(Icons.lock_outline),
                onPressed: () {},
              ),
            ),
            CustomListTile(
              title: 'Rate Us',
              leading: IconButton(
                icon: Icon(Icons.star_border),
                onPressed: () {},
              ),
            ),
            CustomListTile(
              title: 'Sign Out',
              leading: IconButton(
                icon: Icon(Icons.logout_outlined),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 300,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Version',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    '2.4.2',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
