import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:scholar_app/src/commons.dart';
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
      appBar: AppBar(title: Text('Settings'), backgroundColor: primary,),
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
                leading: Icon(Icons.language, color: primary,),
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
              SettingsTile(title: 'Phone number', leading: Icon(Icons.phone, color: primary,)),
              SettingsTile(title: 'Email', leading: Icon(Icons.email, color: primary,)),
              SettingsTile(title: 'Sign out', leading: Icon(Icons.exit_to_app, color: primary,)),
            ],
          ),
          SettingsSection(
//            title: 'Security',
            tiles: [

              SettingsTile.switchTile(
                title: 'Change password',
                leading: Icon(Icons.lock, color: primary,),
                switchValue: false,
                onToggle: (bool value) {},
              ),
              SettingsTile.switchTile(
                title: 'Enable Notifications',
                enabled: notificationsEnabled,
                leading: Icon(Icons.notifications_active, color: primary,),
                switchValue: true,
                onToggle: (value) {},
              ),
            ],
          ),
          SettingsSection(
//            title: 'Misc',
            tiles: [
              SettingsTile(
                  title: 'Terms of Service', leading: Icon(Icons.description, color: primary)),
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
                    color: primary,
                  ),
                ),
                Text(
                  'Version: 1.0.0',
                  style: TextStyle(color: primary),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}