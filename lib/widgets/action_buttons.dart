import 'package:flutter/material.dart';

/// Tombol aksi (Edit & Bagikan). Setiap tombol dibungkus Flexible(flex: 1)
/// sehingga lebarnya sama dan mengisi ruang yang tersedia.
class ActionButtons extends StatelessWidget {
  final VoidCallback onEdit;
  final VoidCallback onShare;

  const ActionButtons({super.key, required this.onEdit, required this.onShare});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: ElevatedButton.icon(
            onPressed: onEdit,
            icon: const Icon(Icons.edit),
            label: const Text('Edit'),
          ),
        ),
        const SizedBox(width: 12),
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: ElevatedButton.icon(
            onPressed: onShare,
            icon: const Icon(Icons.share),
            label: const Text('Bagikan'),
          ),
        ),
      ],
    );
  }
}
