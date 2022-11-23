import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main(List<String> args) {
  runApp(const DeltaNews());
}

class DeltaNews extends StatelessWidget {
  const DeltaNews({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delta News',
      home: const MySplashScreen(),
    );
  }
}

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 10,
      navigateAfterSeconds: const HomePage(),
      title: Text('WELCOME TO DELTA NEWS'),
      image: Image.network(
          'https://www.deltastate.gov.ng/wp-content/uploads/2019/10/cropped-Delta-Logo.png'),
      backgroundColor: Colors.white,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
