import 'package:flutter/material.dart';
import 'profile_photo.dart';

/// Header profil: foto + nama + NIM.
class ProfileHeader extends StatelessWidget {
  final String name;
  final String nim;

  const ProfileHeader({super.key, required this.name, required this.nim});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const ProfilePhoto(radius: 60),
        const SizedBox(height: 16),
        Text(
          name,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          'NIM: $nim',
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }
}
