import 'package:flutter/material.dart';

class Exercise {
  final String name;
  final String imagePath;
  final List<ExerciseDetail> details;

  Exercise(
      {required this.name, required this.imagePath, required this.details});
}

class ExerciseDetail {
  final String name;
  final String repetitions;

  ExerciseDetail({required this.name, required this.repetitions});
}

class ExercisePage extends StatelessWidget {
  final String title;

  ExercisePage({required this.title});

  @override
  Widget build(BuildContext context) {
    // กำหนด exercises ที่คุณต้องการแสดงผล
    Exercise exercise;

    switch (title) {
      case 'Six Pack Exercises':
        exercise = Exercise(
          name: 'Six Pack',
          imagePath:
              'https://cdn.pixabay.com/photo/2014/04/24/20/39/bodybuilder-331671_1280.jpg',
          details: [
            ExerciseDetail(name: 'Crunches', repetitions: '12 ครั้ง x 4 รอบ'),
            ExerciseDetail(name: 'Leg Raises', repetitions: '12 ครั้ง x 4 รอบ'),
            ExerciseDetail(
                name: 'Bicycle Crunches', repetitions: '15 ครั้ง x 4 รอบ'),
            ExerciseDetail(name: 'Planks', repetitions: '30 วินาที x 4 รอบ'),
          ],
        );
        break;
      case 'Arm Exercises':
        exercise = Exercise(
          name: 'Arm',
          imagePath:
              'https://cdn.pixabay.com/photo/2024/05/23/07/10/fitness-8782433_1280.png',
          details: [
            ExerciseDetail(
                name: 'Bicep Curls', repetitions: '12 ครั้ง x 4 รอบ'),
            ExerciseDetail(
                name: 'Tricep Dips', repetitions: '10 ครั้ง x 4 รอบ'),
            ExerciseDetail(name: 'Push-Ups', repetitions: '12 ครั้ง x 4 รอบ'),
            ExerciseDetail(
                name: 'Shoulder Press', repetitions: '12 ครั้ง x 4 รอบ'),
          ],
        );
        break;
      case 'Leg Exercises':
        exercise = Exercise(
          name: 'Leg',
          imagePath:
              'https://png.pngtree.com/png-clipart/20210907/ourlarge/pngtree-red-leg-muscles-png-image_3879251.jpg',
          details: [
            ExerciseDetail(name: 'Squats', repetitions: '15 ครั้ง x 4 รอบ'),
            ExerciseDetail(name: 'Lunges', repetitions: '12 ครั้ง x 4 รอบ'),
            ExerciseDetail(name: 'Deadlifts', repetitions: '12 ครั้ง x 4 รอบ'),
            ExerciseDetail(name: 'Leg Press', repetitions: '10 ครั้ง x 4 รอบ'),
          ],
        );
        break;
      case 'Chest Exercises':
        exercise = Exercise(
          name: 'Chest',
          imagePath:
              'https://cdn.pixabay.com/photo/2024/05/23/06/02/body-8782296_640.png',
          details: [
            ExerciseDetail(
                name: 'Bench Press', repetitions: '12 ครั้ง x 4 รอบ'),
            ExerciseDetail(name: 'Push-Ups', repetitions: '15 ครั้ง x 4 รอบ'),
            ExerciseDetail(name: 'Chest Fly', repetitions: '12 ครั้ง x 4 รอบ'),
            ExerciseDetail(name: 'Dips', repetitions: '10 ครั้ง x 4 รอบ'),
          ],
        );
        break;
      default:
        exercise = Exercise(
          name: 'ออกกำลังกาย',
          imagePath:
              'https://cdn.pixabay.com/photo/2024/05/23/06/02/body-8782296_640.png',
          details: [],
        );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              exercise.imagePath,
              width: MediaQuery.of(context).size.width, // ขยายให้เต็มความกว้าง
              height: MediaQuery.of(context).size.height * 0.4, // กำหนดความสูง
              fit: BoxFit.cover, // ปรับขนาดให้เต็มกรอบโดยรักษาสัดส่วน
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                exercise.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: exercise.details.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(exercise.details[index].name),
                    subtitle: Text(exercise.details[index].repetitions),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
