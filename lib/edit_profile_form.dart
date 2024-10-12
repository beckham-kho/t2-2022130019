import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t2_2022130019/models/profile.dart';
import 'package:t2_2022130019/providers/profile_provider.dart';

class EditProfileForm extends StatelessWidget {
  const EditProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final existingContact = ModalRoute.of(context)!.settings.arguments as Profile;
    nameController.text = existingContact.name;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    final name = nameController.text;
                    
                    final newProfileName = Profile(
                      name: name
                    );
                    
                    context.read<ProfileProvider>().editProfile(newProfileName);
                    
                    Navigator.pop(context);
                  },
                  child: const Text('Save'),
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}