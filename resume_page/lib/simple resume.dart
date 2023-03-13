import 'package:flutter/material.dart';

//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Resume'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Muhammad Abdullah',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Software Engineer',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Experience',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Software Engineer, Acme Inc. (2018 - Present)',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  '• Led development of a new web application, resulting in a 25% increase in customer engagement',
                  style: TextStyle(fontSize: 14.0),
                ),
                SizedBox(height: 5.0),
                Text(
                  '• Maintained and updated existing web applications, ensuring high availability and performance',
                  style: TextStyle(fontSize: 14.0),
                ),
                SizedBox(height: 5.0),
                Text(
                  'Software Engineer, XYZ Corp. (2016 - 2018)',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  '• Developed and maintained internal tools to improve team productivity',
                  style: TextStyle(fontSize: 14.0),
                ),
                SizedBox(height: 5.0),
                Text(
                  '• Worked on a variety of software projects, including mobile apps and web applications',
                  style: TextStyle(fontSize: 14.0),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Skills',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Wrap(
                  spacing: 10.0,
                  children: [
                    Chip(label: Text('Flutter')),
                    Chip(label: Text('Dart')),
                    Chip(label: Text('Java')),
                    Chip(label: Text('Python')),
                    Chip(label: Text('SQL')),
                  ],
                ),
                SizedBox(height: 20.0),
                Text(
                  'Education',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Bachelor of Science in Computer Science, University of XYZ (2016)',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
