import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:scholar_app/src/screens/language.dart';
import 'package:settings_ui/settings_ui.dart';


class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool lockInBackground = true;
  bool notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings'), backgroundColor: Hexcolor("#98C429"),),
      body: SettingsList(
        // backgroundColor: Colors.orange,
        sections: [
          SettingsSection(

           // title: 'Common',
            // titleTextStyle: TextStyle(fontSize: 30),
            tiles: [
              SettingsTile(
                title: 'Language',
                subtitle: 'English',
                leading: Icon(Icons.language, color: Hexcolor("#98C429"),),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => LanguagesScreen()));
                },
              ),
//              SettingsTile(
//                title: 'Environment',
//                subtitle: 'Production',
//                leading: Icon(Icons.cloud_queue),
//                onTap: () => print('e'),
//              ),
            ],

          ),
          SettingsSection(
           // title: 'Account',
            tiles: [
              SettingsTile(title: 'Phone number', leading: Icon(Icons.phone, color: Hexcolor("#98C429"),)),
              SettingsTile(title: 'Email', leading: Icon(Icons.email, color: Hexcolor("#98C429"),)),
              SettingsTile(title: 'Sign out', leading: Icon(Icons.exit_to_app, color: Hexcolor("#98C429"),)),
            ],
          ),
          SettingsSection(
//            title: 'Security',
            tiles: [

              SettingsTile.switchTile(
                title: 'Change password',
                leading: Icon(Icons.lock, color: Hexcolor("#98C429"),),
                switchValue: false,
                onToggle: (bool value) {},
              ),
              SettingsTile.switchTile(
                title: 'Enable Notifications',
                enabled: notificationsEnabled,
                leading: Icon(Icons.notifications_active, color: Hexcolor("#98C429"),),
                switchValue: true,
                onToggle: (value) {},
              ),
            ],
          ),
          SettingsSection(
//            title: 'Misc',
            tiles: [
              SettingsTile(
                  title: 'Terms of Service', leading: Icon(Icons.description, color: Hexcolor("#98C429"))),
            ],
          ),
          CustomSection(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 22, bottom: 8),
                  child: Image.asset(
                    'assets/images/settings.png',
                    height: 50,
                    width: 50,
                    color: Hexcolor("#98C429"),
                  ),
                ),
                Text(
                  'Version: 1.0.0',
                  style: TextStyle(color: Hexcolor("#98C429")),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}