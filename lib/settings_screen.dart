import 'package:flutter/material.dart';
import 'package:t2_2022130019/edit_profile_form.dart';
import 'package:t2_2022130019/providers/profile_provider.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                Consumer<ProfileProvider>(
                  builder: (context, value, child) {
                  final profile = value.profile;
                  
                  return ListTile(
                    leading: const Icon(Icons.person_rounded),
                    title: const Text('Edit Profile'),
                    onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EditProfileForm(),
                        settings: RouteSettings(arguments: profile),
                      ),
                      );
                    },
                  );
                  }
                ),
                ListTile(
                  leading: const Icon(Icons.info_outline_rounded),
                  title: const Text('About'),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.logout_rounded),
                  title: const Text('Logout'),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}