import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/action_buttons.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_info.dart';
import '../widgets/section_card.dart';
import '../widgets/skill_chips.dart';
import '../widgets/social_media_row.dart';
import 'about_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const String _name = 'Dominicus Fajar Kristanto';
  static const String _nim = '25.11.6562';
  static const String _email = 'd.fajar@students.amikom.ac.id';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            tooltip: 'Tentang Aplikasi',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AboutScreen()),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Foto + nama + NIM mengisi ruang bagian atas
            const Expanded(
              flex: 2,
              child: Center(
                child: SingleChildScrollView(
                  child: ProfileHeader(name: _name, nim: _nim),
                ),
              ),
            ),

            // Informasi mengisi ruang di tengah (bisa di-scroll, tanpa overflow)
            Expanded(
              flex: 3,
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const Column(
                  children: [
                    Divider(),
                    ProfileInfo(
                      programStudi: 'S1 Informatika',
                      email: _email,
                      lokasi: 'Yogyakarta, Indonesia',
                    ),
                    SizedBox(height: 16),
                    SectionCard(
                      title: 'Tentang Saya',
                      icon: Icons.person_outline,
                      child: Text(
                        'Mahasiswa Informatika yang tertarik pada '
                        'pengembangan aplikasi mobile dan web.',
                        style: TextStyle(fontSize: 15, height: 1.5),
                      ),
                    ),
                    SizedBox(height: 16),
                    SectionCard(
                      title: 'Keterampilan',
                      icon: Icons.code,
                      child: SkillChips(
                        skills: ['Flutter', 'Dart', 'Java', 'Git', 'SQL'],
                      ),
                    ),
                    SizedBox(height: 16),
                    SectionCard(
                      title: 'Media Sosial',
                      icon: Icons.public,
                      child: SocialMediaRow(),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),

            // Tombol aksi tetap di bagian bawah
            Padding(
              padding: const EdgeInsets.all(16),
              child: ActionButtons(
                onEdit: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Fitur edit segera hadir')),
                  );
                },
                onShare: () async {
                  await Clipboard.setData(
                    const ClipboardData(text: '$_name - $_nim - $_email'),
                  );
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Info profil disalin ke clipboard'),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
