import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const Magic8BallApp());
}

class Magic8BallApp extends StatelessWidget {
  const Magic8BallApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Magic8BallScreen(),
    );
  }
}

class Magic8BallScreen extends StatefulWidget {
  const Magic8BallScreen({super.key});

  @override
  _Magic8BallScreenState createState() => _Magic8BallScreenState();
}

class _Magic8BallScreenState extends State<Magic8BallScreen> {
  final List<String> _images = [
    'images/image1.png',
    'images/image2.png',
    'images/image3.png',
    'images/image4.png',
    'images/image5.png',
  ];

  String _currentImage = 'images/image1.png';

  void _getRandomImage() {
    final random = Random();
    setState(() {
      _currentImage = _images[random.nextInt(_images.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Magic 8 Ball'),
        backgroundColor: Colors.blue,
      ),
      body: GestureDetector(
        onTap: _getRandomImage, // Bắt sự kiện chạm trên toàn bộ màn hình
        child: Center(
          child: Image.asset(
            _currentImage, // Hiển thị ảnh ngẫu nhiên
          ),
        ),
      ),
    );
  }
}
