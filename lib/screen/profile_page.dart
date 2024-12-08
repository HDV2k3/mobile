import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String userName = 'Huynh Dac Viet';
  final String userEmail = 'dacviethuynh@gmail.com';
  final String userPhone = '0329615309';
  final String userAvatarUrl =
      'https://firebasestorage.googleapis.com/v0/b/datpt-ce669.appspot.com/o/Hinh-nen-co-Viet-Nam-dep-kieu-vintage.jpg?alt=media&token=a75217b5-e4b5-4cd4-9fe5-c43744324317';

  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.blueGrey[50], // Set background color to a soft tone
      body: Padding(
        padding:
            const EdgeInsets.all(20.0), // Add more padding around the content
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 75, // Make the avatar slightly larger
                backgroundImage: NetworkImage(userAvatarUrl),
                backgroundColor:
                    Colors.grey[300], // Light grey background for avatar
              ),
              const SizedBox(height: 20),
              Card(
                elevation: 8, // Add more elevation for a modern shadow effect
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Rounded corners
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      Text(
                        userName,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          const Icon(Icons.email,
                              color: Colors.blueAccent), // Icon for email
                          const SizedBox(width: 8),
                          Text(
                            userEmail,
                            style: const TextStyle(
                                fontSize: 16, color: Colors.black87),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          const Icon(Icons.phone,
                              color: Colors.blueAccent), // Icon for phone
                          const SizedBox(width: 8),
                          Text(
                            userPhone,
                            style: const TextStyle(
                                fontSize: 16, color: Colors.black87),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          'Edit Profile',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
