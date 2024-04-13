import 'package:flutter/material.dart';
import 'package:my_app/components/asset_image_widget.dart';

class NutrisiScreen extends StatefulWidget {
  const NutrisiScreen({Key? key}) : super(key: key);

  @override
  _NutrisiScreenState createState() => _NutrisiScreenState();
}

class _NutrisiScreenState extends State<NutrisiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nutrition Information'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AssetImageWidget(
                imagePath: 'assets/images/nutrisi.png',
                width: 400,
                height: 380,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              Text(
                'Here are the essential nutrients you need!',
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: 20),
              Text(
                'Nutrition during pregnancy is the foundation for the mother\'s health and baby\'s development. Make every bite an investment in a bright future',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 1,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  buildMenuItem(
                    'Folic Acid',
                    'Folic acid helps prevent neural tube defects in the fetus.',
                    'assets/images/omega3.jpeg',
                  ),
                  buildMenuItem(
                    'Iron',
                    'Iron is needed for the formation of red blood cells in pregnant women.',
                    'assets/images/zatbesi.jpeg',
                  ),
                  buildMenuItem(
                    'Protein',
                    'Protein is important for tissue formation and fetal growth.',
                    'assets/images/protein.png',
                  ),
                  buildMenuItem(
                    'Omega-3 Fatty Acids',
                    'Omega-3 helps in brain development and fetal vision.',
                    'assets/images/omega3.jpeg',
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(String label, String info, String imagePath) {
    return GestureDetector(
      onTap: () {
        // Handle onTap
      },
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8), // Set transparency
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 6,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                width: 80, // Adjust image size
                height: 80, // Adjust image size
              ),
              const SizedBox(height: 8),
              Opacity(
                opacity: 1.0, // Text opacity
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 4),
              Opacity(
                opacity: 1.0, // Text opacity
                child: Text(
                  info,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
