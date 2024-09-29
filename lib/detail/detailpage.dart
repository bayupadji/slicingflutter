
import 'package:flutter/material.dart';
import '../main.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(), // Use your custom AppBar here
      body: ListView(
        // Use ListView for the body
        children: [
          Header(),
          Content(),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/image.png',
      fit: BoxFit.cover, // Ensure the image covers the available space
      height: 300, // Set a height for the header
      width: double.infinity, // Full width
    );
  }
}

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The Marina Beach',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  SizedBox(
                    height: 4,
                    ),
                  Text(
                    'Semarang, Central Java',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Color(0xffD80032),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '4.2',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.call,
                    color: Color(0xFF2E2E2E),
                    size: 32,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Call',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF2E2E2E),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.navigation,
                    color: Color(0xFF2E2E2E),
                    size: 32,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Route',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF2E2E2E),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.share,
                    color: Color(0xFF2E2E2E),
                    size: 32,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Share',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF2E2E2E),
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Descriptions',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Marina Beach is a charming tourist destination in Semarang, Central Java, that offers stunning natural beauty and a relaxing atmosphere. Located by the sea, the beach is an ideal place for visitors who want to relax while enjoying the expansive ocean views and soothing waves.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'With soft white sand and clear sea water, Marina Beach provides various facilities to ensure a pleasant vacation experience. You can enjoy various activities such as swimming, playing beach volleyball or simply taking a stroll along the beachfront. There are also areas to relax and enjoy delicious local cuisine at the surrounding warungs.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ],
      ),
    );
  }
}