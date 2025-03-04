import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileCard(),
  ));
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFF43A047),
        title: const Text("Profile Card" ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Foto Profil
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Image.asset(
                  'icons/assets.jpg',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),



            const Text(
              "Abdul Hamid Awaludin Ardiansyah",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Senior Yapping Specialist",
              style: TextStyle(fontSize: 24, color: Colors.green),
            ),
            const SizedBox(height: 10),


            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "A man who sometimes get dissapointed and most of them all from himself",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
            ),
            const SizedBox(height: 15),


            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF43A047),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              onPressed: ()=> launchUrl(Uri.parse("mailto:Hamidardiansyah14@gmail.com")),
              child: const Text(
                "@Hamidardiansyah14@gmail.com",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),


        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: SvgPicture.asset('icons/whatsapp.svg', width: 30),
              onPressed: () async {
                final Uri url = Uri.parse('https://wa.me/+6281227809246');
                if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
                  throw 'Could not launch $url';
                }
              },
            ),
            IconButton(
              icon: const Icon(Icons.camera_alt, size: 30),
              onPressed: () async {
                final Uri url = Uri.parse('https://www.instagram.com/abdul_hamid_ardiansyah?igsh=MWIwdWVmamJqOXU5ZA==');
                if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
                  throw 'Could not launch $url';
                }
              },
            ),
            IconButton(
              icon: const Icon(Icons.code, size: 30),
              onPressed: () async {
                final Uri url = Uri.parse('https://github.com/asistink');
                if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
                  throw 'Could not launch $url';
                }
              },
            ),
          ],
        ),
          ],
        ),
      ),
    );
  }
}
