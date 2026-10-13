import 'package:flutter/material.dart';

/// Menampilkan daftar keterampilan dalam bentuk chip.
class SkillChips extends StatelessWidget {
  final List<String> skills;

  const SkillChips({super.key, required this.skills});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: skills
          .map(
            (s) => Chip(
              label: Text(s),
              backgroundColor: Colors.blue.shade50,
              side: BorderSide(color: Colors.blue.shade200),
            ),
          )
          .toList(),
    );
  }
}
