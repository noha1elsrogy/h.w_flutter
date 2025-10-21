import 'package:flutter/material.dart';

class MaleFemale extends StatelessWidget {
  const MaleFemale({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MaleFemaleCard(
          colorCard: Color(0xff090b24),
          icon: Icon(
            Icons.female,
            color: Colors.white,
            size: 80,
          ),
          text: 'Female',
        ),
        MaleFemaleCard(
            colorCard: Color(0xff16162e),
            icon: Icon(
              Icons.male,
              color: Colors.white,
              size: 80,
            ),
            text: 'Male')
      ],
    );
  }
}

class MaleFemaleCard extends StatelessWidget {
  final Icon icon;
  final String text;
  final Color colorCard;
  const MaleFemaleCard(
      {super.key,
      required this.colorCard,
      required this.icon,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: colorCard,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: icon,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
