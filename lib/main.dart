import 'package:cocis_archives/nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Computer Science Course Units List';

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
    // 'Communication Skills',
    // 'Computer Organisation and Architecture',
    // 'Digital Innovation and Computational Thinking',
    // 'Sructured and Object Oriented Programming',
    // 'Mathematics for Computer Science',
    // 'Computer Literacy',
    // 'Operating Systems',
    // 'Data Structures and Algorithm',
    // 'System Analysis and Design',
    // 'Probability and Statistics',
    // 'Software Development Project',
    // 'Discete Mathematics',
    // 'Artificial Intelligence',
    // 'Embeddeded and Real-Time Systems',
    // 'Database Management Systems',
    // 'Computer Networks',
    // 'Research Methodology',
    // 'Introduction to Machine Learning',
    // 'Cloud Computing',
    // 'Automata,Complexity and Compatibility',
    // 'Robotics',
    // 'Software Quality and Verification',
    // 'Software Construction',
    // 'Entreprenuership Principles',
    // 'Advanced Programming',
    // 'User Interface Design',
    // 'Business Process Management',
    // 'Cryptology and Coding Theory',
    // 'Operations Research',
    // 'Computer Graphics',
    // 'Modelling Simulation',
    // 'Compiler Design',
    // 'Computer Security',
    // 'Emerging Trends in Computer Science',
    // 'Data Communications',
    // 'Distributed Systems Development',
    // 'Data Warehousing and Business Intelligence '
    {
      "Name": "Computer Literacy",
      "PDF": [
        "lib/pdfs/CSC1100 Computer Literacy Examination End of Semester I 202-2021 (1).pdf",
        "lib/pdfs/QUESTIONS0042.pdf"
      ]
    },
    {
      "Name": "Communication Skills",
      "PDF": [null, null],
    },
    {
      "Name": "Computer Organosation and Architecture",
      "PDF": [null],
    },
    {
      "Name": "Mathematics For Computer Science ",
      "PDF": [null, null],
    },
    {
      "Name": "Digital Innovation And Computational Thinking",
      "PDF": [null, null],
    },
    {
      "Name": "Operating Systems",
      "PDF": [null, null],
    },
    {
      "Name": "Probabilty And Statistics",
      "PDF": [null, null],
    },
    {
      "Name": "SystemAnalysis And Design",
      "PDF": [null, null],
    },
    {
      "Name": "Data Structures And Design",
      "PDF": [null, null],
    },
    {
      "Name": "Discete Mathematics",
      "PDF": [null, null],
    },
    {
      "Name": "Computer Networks",
      "PDF": [null, null],
    },
    {
      "Name": "Datbase Management Systems",
      "PDF": [null, null],
    },
    {
      "Name": "Artificial Intelligence",
      "PDF": [null, null],
    },
    {
      "Name": "Embedded Systems and Real-Time Systems",
      "PDF": [null, null],
    },
    {
      "Name": "Research Methodology",
      "PDF": [null, null],
    },
    {
      "Name": "Introducyion to Machine Learning",
      "PDF": [null, null],
    },
    {
      "Name": "Cloud Computing",
      "PDF": [null, null],
    },
    {
      "Name": "Automata,Complexity and Compatibility",
      "PDF": [null, null],
    },
    {
      "Name": "Robotics",
      "PDF": [null, null],
    },
    {
      "Name": "Software Quality and Verification",
      "PDF": [null, null],
    },
    {
      "Name": "Software Construction",
      "PDF": [null, null],
    },
    {
      "Name": "Entrepreneurship Principles",
      "PDF": [null, null],
    },
    {
      "Name": "Advanced Programming",
      "PDF": [null, null],
    },
    {
      "Name": "User Interface Design",
      "PDF": [null, null],
    },
    {
      "Name": "Business Process Management",
      "PDF": [null, null],
    },
    {
      "Name": "Cryptology and Coding Theory",
      "PDF": [null, null],
    },
    {
      "Name": "Operations Research",
      "PDF": [null, null],
    },
    {
      "Name": "Computer Graphics",
      "PDF": [null, null],
    },
    {
      "Name": "Modelling Simulation",
      "PDF": [null, null],
    },
    {
      "Name": "Compiler Design",
      "PDF": [null, null],
    },
    {
      "Name": "Computer Security",
      "PDF": [null, null],
    },
    {
      "Name": "Emerging Trends in Computer Science",
      "PDF": [null, null],
    },
    {
      "Name": "Data Communications",
      "PDF": [null, null],
    },
    {
      "Name": "Distributed Systems Development",
      "PDF": [null, null],
    },
    {
      "Name": "Data Warehousing and Business Intelligence",
      "PDF": [null, null],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('COMPUTER SCIENCE'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: CourseUnits.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text(CourseUnits[index]["Name"]),
              subtitle: Text("Course Unit $index"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => navi(
                            title: CourseUnits[index]["Name"],
                            pdfs: CourseUnits[index]["PDF"]))));
              },
              //color: Colors.green,
            ),
          );
        },
      ),
    );
//       body: ListView(
//         children: [
//           Card(
//             child: ListTile(
//               title: Text('data'),
//               subtitle: Text('data'),
//               leading: Icon(Icons.menu),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: ((context) => const navi())));
//               },
//             ),
//           ),
//           Card(
//             child: ListTile(
//               title: Text('data'),
//               subtitle: Text('data'),
//               leading: Icon(Icons.outlet),
//               trailing: Icon(Icons.home),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: ((context) => const Compsc1())));
//               },
//             ),
//           ),
//           Card(
//             child: ListTile(
//               title: Text('data'),
//               subtitle: Text('data'),
//               leading: Icon(Icons.person),
//               onTap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: ((context) => const Comp3())));
//               },
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
  }
}
