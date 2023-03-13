import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume',
      theme: ThemeData(
        primaryColor: Colors.blueGrey[900],
        visualDensity: VisualDensity.adaptivePlatformDensity, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.amber),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Resume'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'John Doe',
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
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Experience',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.blueGrey[900],
                  ),
                ),
                SizedBox(height: 10.0),
                Card(
                  elevation: 3.0,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Software Engineer, Acme Inc. (2018 - Present)',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                            color: Colors.grey[800],
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                            Icon(Icons.check_circle, color: Colors.green,
                                size: 20.0),
                            SizedBox(width: 5.0),
                            Expanded(
                              child: Text(
                                'Led development of a new web application, resulting in a 25% increase in customer engagement',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5.0),
                        Row(
                          children: [
                            Icon(Icons.check_circle, color: Colors.green,
                                size: 20.0),
                            SizedBox(width: 5.0),
                            Expanded(
                              child: Text(
                                'Maintained and updated existing web applications, ensuring high availability and performance',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Card(
                  elevation: 3.0,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(
                      'Software Engineer, XYZ Corp. (2016 - 2018)',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                        color: Colors.grey[800],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                        children: [
                        Icon(Icons.check_circle, color: Colors.green,
                        size: 20.0),
                    SizedBox(width: 5.0),
                    Expanded(
                      child: Text(
                        'Developed and maintained internal tools for automated testing, resulting in a 50% reduction in testing time',
                        style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  ],
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    Icon(Icons.check_circle, color: Colors.green, size: 20.0),
                    SizedBox(width: 5.0),
                    Expanded(
                      child: Text(
                        'Collaborated with cross-functional teams to design and develop new features for customer-facing web applications',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20.0),
        Text(
          'Skills',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.blueGrey[900],
          ),
        ),
        SizedBox(height: 10.0),
        Wrap(
          spacing: 10.0,
          runSpacing: 5.0,
          children: [
            Chip(
              backgroundColor: Colors.amber,
              label: Text(
                'Flutter',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Chip(
              backgroundColor: Colors.amber,
              label: Text(
                'Dart',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Chip(
              backgroundColor: Colors.amber,
              label: Text(
                'Java',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Chip(
              backgroundColor: Colors.amber,
              label: Text(
                'Python',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Chip(
              backgroundColor: Colors.amber,
              label: Text(
                'Git',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20.0),
        Text(
          'Education',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.blueGrey[900],
          ),
        ),
        SizedBox(height: 10.0),
        Card(
          elevation: 3.0,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bachelor of Science in Computer Science',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                    color: Colors.grey[800],
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  'University of California, Los Angeles',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  'Graduated Magna Cum Laude',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
        ),
        ],
      ),
    ),)
    ,
    )
    ,
    );
  }
}