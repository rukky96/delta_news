import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main(List<String> args) {
  runApp(const DeltaNews());
}

class DeltaNews extends StatelessWidget {
  const DeltaNews({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Delta News',
      home: MySplashScreen(),
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
      navigateAfterSeconds: const IntroductionPage(),
      title: const Text('WELCOME TO DELTA NEWS'),
      image: Image(image: AssetImage('assets/images/delta_logo.png')),
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
      appBar: AppBar(
        title: Text('Delta News'),
      ),
    );
  }
}

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({super.key});

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  List<String> pagePictures = [
    'assets/images/okowa.png',
    'assets/images/statue.png',
    'assets/images/athlete.png',
  ];
  int pictureIndex = 0;

  final introKey = GlobalKey<IntroductionScreenState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(pagePictures[pictureIndex]), fit: BoxFit.fill)),
      child: IntroductionScreen(
        globalBackgroundColor: Color.fromARGB(0, 207, 90, 90),
        key: introKey,
        globalFooter: SizedBox(
          width: double.infinity,
          height: 60,
          child: ElevatedButton(
            onPressed: (() {}),
            child: Text('Next'),
          ),
        ),
        showSkipButton: true,
        skip: const Text('Skip'),
        done: const Text('Done'),
        next: const Text('Next'),
        onChange: ((value) {
          setState(() {
            pictureIndex = value;
          });
        }),
        showNextButton: false,
        onDone: () {
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => const HomePage())));
        },
        pages: [
          PageViewModel(
            title: 'The first page',
            body: 'Get the latest news \n from reliable sources',
          ),
          PageViewModel(
            title: 'The first page',
            body: 'Get the latest news \n from reliable sources',
          ),
          PageViewModel(
            title: 'The first page',
            body: 'Get the latest news \n from reliable sources',
          ),
        ],
      ),
    );
  }
}
