import 'package:flutter/material.dart';
import 'ExercisePage.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // รูปภาพฟิตเนส
            Container(
              margin: EdgeInsets.all(16.0),
              child: Image.network(
                'https://png.pngtree.com/png-clipart/20201217/ourmid/pngtree-punching-muscle-santa-png-image_2515678.jpg',
                width: MediaQuery.of(context).size.width * 0.8,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'เลือกประเภทการออกกำลังกาย:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // จำนวนคอลัมน์
                padding: EdgeInsets.all(10),
                children: <Widget>[
                  _buildExerciseButton(context, 'Six Pack Exercises'),
                  _buildExerciseButton(context, 'Arm Exercises'),
                  _buildExerciseButton(context, 'Leg Exercises'),
                  _buildExerciseButton(context, 'Chest Exercises'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExerciseButton(BuildContext context, String title) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ExercisePage(title: title),
            ),
          );
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
