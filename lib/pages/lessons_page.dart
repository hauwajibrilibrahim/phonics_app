import 'package:flutter/material.dart';

class LessonsPage extends StatefulWidget {
  const LessonsPage({super.key});

  @override
  State<LessonsPage> createState() => _LessonsPageState();
}

class _LessonsPageState extends State<LessonsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: _buildLessonsAppBar(),
            ),
            SizedBox(height: 24),
            _buildGroupCard(
              title: "",
              bgImage: "assets/group1_bg.png",
              letters: ["s", "a", "t", "i", "p", "n"],
              buttonColor: Colors.pinkAccent,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLessonsAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Text(
            "Lessons",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black12)],
            ),
            child: Icon(Icons.settings_outlined, color: Colors.pink),
          ),
        ],
      ),
    );
  }
  Widget buildLetterBox(String text) {
  return Container(
    width: 65,
    height: 65,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 10,
          offset: Offset(0, 4),
        )
      ],
    ),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.pink,
      ),
    ),
  );
}

  Widget _buildGroupCard({
  required String title,
  required String bgImage,
  required List<String> letters,
  required Color buttonColor,
}) {
  return Container(
    margin: EdgeInsets.only(bottom: 30),
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        // Background card
        Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            image: DecorationImage(
              image: AssetImage('assets/images/bgimage.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 40),
              Text(
                title,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 120), 
            ],
          ),
        ),

        // Letters Grid (floating on top of the background)
        Positioned(
          top: 150, 
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              children: letters
                  .map((letter) => buildLetterBox(letter))
                  .toList(),
            ),
          ),
        ),

        // Button (placed under everything)
        Positioned(
          bottom: -250,
          left: 20,
          right: 20,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor,
              padding: EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            onPressed: () {},
            child: Text(
              "Practice $title with Readers",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    ),
  );
}

    
  
}
