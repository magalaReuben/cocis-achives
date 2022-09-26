import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Software Engineering Course Units List';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: ChooseCourseUnit(),
    );
  }
}

class ChooseCourseUnit extends StatefulWidget {
  const ChooseCourseUnit({super.key});

  @override
  State<ChooseCourseUnit> createState() => _ChooseCourseUnitState();
}

class _ChooseCourseUnitState extends State<ChooseCourseUnit> {
  // ignore: non_constant_identifier_names
  List CourseUnits = [
    'Prblem Solving and Programming Concepts',
    'Communication Skills',
    'Mathematics For Software Engineers',
    'TechnicalAnalysis and Design',
    'Foundations of Information Systems and Technology',
    'Computer Literacy',
    'Software Development Principles',
    'NumericalAnalysis I',
    'Object Oriented Programming I',
    'Data and Information Management I',
    'Introduction to Web Development',
    'Artificial Intelligence',
    'Data Structures and Algorithms',
    'Computer Nteworks',
    'Formal Methods',
    'Object Oriented Programming II',
    'Operating Systems',
    'Emerging Web Development Technologies',
    'Requirements Engineering',
    'Mobile Programming Projects',
    'Data Communication',
    'Object Analysis and Design',
    'Embedded Systems I',
    'Software Metrics',
    'User Interface Design',
    'Mobile Networks and Computing',
    'Software Evolution',
    'Software Architecture and Patterns',
    'Software Testing and Verification',
    'Research methodology',
    'Machine Learning',
    'Cloud Computing and Big Data',
    'Embedded Systems II',
    'ICT innovation and Entreprenuership',
    'Emerging Trends in Software Engineering',
    'Software Integration and Deployment',
    'Software Security',
    'Software Engineering Standards and Ethics',
    'Software Quality Management'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 63, 53, 198),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 204, 41, 101),
        title: const Text('SOFTWARE ENGINEERING'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: CourseUnits.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(CourseUnits[index]),
                onTap: () {
                  print('you have passed the test');
                },
              ),
              color: Colors.green,
            );
          }),
    );
  }
}
