import 'package:flutter/material.dart';

/// Deretan ikon media sosial. Setiap ikon bisa diklik (IconButton)
/// dan menampilkan SnackBar berisi nama media sosial yang diklik.
class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void _showSnackBar(BuildContext context, String nama) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Kamu menekan $nama'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () => _showSnackBar(context, 'Instagram'),
          icon: const Icon(Icons.camera_alt),
          color: const Color(0xFFE1306C),
          iconSize: 32,
          tooltip: 'Instagram',
        ),
        IconButton(
          onPressed: () => _showSnackBar(context, 'LinkedIn'),
          icon: const Icon(Icons.business_center),
          color: const Color(0xFF0A66C2),
          iconSize: 32,
          tooltip: 'LinkedIn',
        ),
        IconButton(
          onPressed: () => _showSnackBar(context, 'GitHub'),
          icon: const Icon(Icons.code),
          color: const Color(0xFF24292E),
          iconSize: 32,
          tooltip: 'GitHub',
        ),
      ],
    );
  }
}
