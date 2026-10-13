import 'package:flutter/material.dart';
import 'info_row.dart';

/// Informasi akademik & kontak (nama dan NIM sudah ada di ProfileHeader).
class ProfileInfo extends StatelessWidget {
  final String programStudi;
  final String email;
  final String lokasi;

  const ProfileInfo({
    super.key,
    required this.programStudi,
    required this.email,
    required this.lokasi,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InfoRow(icon: Icons.school, label: programStudi),
        InfoRow(icon: Icons.email, label: email),
        InfoRow(icon: Icons.location_on, label: lokasi),
      ],
    );
  }
}
