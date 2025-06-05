import 'package:flutter/material.dart';

void main() {
  runApp(AlRahmanApp());
}

class AlRahmanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'الرحمن الرحيم',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        fontFamily: 'Amiri', // لو حابب تضيف خط عربي (اختياري)
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => TasbeehPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Center(
        child: Text(
          'الرحمن الرحيم',
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.green[900],
          ),
        ),
      ),
    );
  }
}

class TasbeehPage extends StatefulWidget {
  @override
  _TasbeehPageState createState() => _TasbeehPageState();
}

class _TasbeehPageState extends State<TasbeehPage> {
  int _count = 0;

  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }

  void _resetCounter() {
    setState(() {
      _count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('سبحة الرحمن الرحيم'),
        backgroundColor: Colors.green[700],
        centerTitle: true,
      ),
      body: Container(
        color: Colors.green[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'عدد التسبيحات',
              style: TextStyle(fontSize: 24, color: Colors.green[900]),
            ),
            SizedBox(height: 20),
            Text(
              '$_count',
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.green[900]),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('سبح'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                textStyle: TextStyle(fontSize: 24),
                primary: Colors.green[700],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _resetCounter,
              child: Text('إعادة التصفير'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
                primary: Colors.red[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

