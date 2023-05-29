import 'package:calculator_task/custom_text.dart';
import 'package:flutter/material.dart';
import 'customTextField.dart';


void main() => runApp(const GPACalculator());


class GPACalculator extends StatefulWidget {
  const GPACalculator({super.key});

  @override
  State<StatefulWidget> createState() {
    return GPACalculatorState();
  }
}

class GPACalculatorState extends State<GPACalculator> {
  num? gpa;
  num  totalGPA1 = 0.0, averageGPA1 = 0.0, totalGPA2 = 0.0, averageGPA2 = 0.0,totalAverageCGPA = 0.0;


  double? course1;
  double? course2;
  double? course3;
  double? course4;
  double? course5;
  double? course6;
  double? course7;
  double? course8;


  Widget? iconReturn(course)  {
  if((course?? 0) >= 95 && (course?? 0) <= 100 ){
      return Icon(
        Icons.sentiment_very_satisfied_rounded,
        color: Colors.yellow,
        size: 30,
      );
    }else if((course?? 0) >=90 && (course?? 0) <=94){
      return Icon(
        Icons.sentiment_satisfied_alt,
        color: Colors.yellow,
        size: 30,
      );
    }
    else if((course?? 0) >=85 && (course?? 0) <=89){
      return Icon(
        Icons.sentiment_satisfied,
        color: Colors.yellow,
        size: 30,
      );
    }
    else if((course?? 0) >=80 && (course?? 0) <=84){
      return Icon(
        Icons.sentiment_neutral,
        color: Colors.yellow,
        size: 30,
      );
    }
    else if((course?? 0) >=75 && (course?? 0) <=79){
      return Icon(
        Icons.sentiment_dissatisfied,
        color: Colors.yellow,
        size: 30,
      );
    }
    else if((course?? 0) >=70 && (course?? 0) <=74){
      return Icon(
        Icons.sentiment_dissatisfied_outlined,
        color: Colors.yellow,
        size: 30,
      );
    }
    else if((course?? 0) >=65 && (course?? 0) <=69){
      return Icon(
        Icons.sentiment_dissatisfied_rounded,
        color: Colors.yellow,
        size: 30,
      );
    }
    else if((course?? 0) >=60 && (course?? 0) <=64){
      return Icon(
        Icons.sentiment_very_dissatisfied_outlined,
        color: Colors.yellow,
        size: 30,
      );
    }
    else if((course?? 0) >=0 && (course?? 0) <=59){
      return Icon(
        Icons.sentiment_very_dissatisfied_rounded,
        color: Colors.yellow,
        size: 30,
      );
    }else{
      return Icon(Icons.error);
    }
    iconReturn(course);
  }
  double gpaCalculate(course){
    if((course?? 0) >= 95 && (course?? 0) <= 100 ){
      return gpa = 4.0;
    }else if((course?? 0) >=90 && (course?? 0) <=94){
      return gpa = 3.5;
    }
    else if((course?? 0) >=85 && (course?? 0) <=89){
      return gpa = 3.0;
    }
    else if((course?? 0) >=80 && (course?? 0) <=84){
      return gpa = 2.5;
    }
    else if((course?? 0) >=75 && (course?? 0) <=79){
      return gpa = 2.0;
    }
    else if((course?? 0) >=70 && (course?? 0) <=74){
      return gpa = 1.5;
    }
    else if((course?? 0) >=65 && (course?? 0) <=69){
      return gpa = 1.0;
    }
    else if((course?? 0) >=60 && (course?? 0) <=64){
      return gpa = 0.5;
    }
    else if((course?? 0) >=0 && (course?? 0) <=59){
      return gpa = 0.0;
    }else{
      return gpa = 0.0;
    }
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "GPA Calculator",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.lime,
          shadowColor: Colors.green,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Semester 1",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.cyan),
                ),
              ),

              //course1
              Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const <Widget>[
                      //course1
                        CustomText(text: "OBJECT ORIENTED PROGRAMMING"),
                      SizedBox(
                        height: 70.0,
                      ),
                      //course2
                      CustomText(text: "DATA STRUCTURES AND ALGORITHMS"),
                      SizedBox(
                        height: 80.0,
                      ),
                      //course3
                      CustomText(text: "DATABASE MANAGEMENT SYSTEMS"),
                      SizedBox(
                        height: 70.0,
                      ),
                      //course4
                      CustomText(text: "MACHINE LEARNING"),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      //course1
                      Row(
                        children: <Widget>[
                          CustomTextField(course: 'course1', onChange: (double value) {
                            setState(() {
                              course1 = value;
                            }); },),
                          Padding(padding: const EdgeInsets.only(left: 100.0, top: 0.0),
                            child: iconReturn(course1),
                          ),
                        ],
                      ),

                      //course2
                      Row(
                        children: [
                          CustomTextField(course: 'course2', onChange: (double value) {
                            setState(() {
                              course2 = value;
                            }); },),
                          Padding(padding: const EdgeInsets.only(left: 100.0, top: 0.0),
                            child: iconReturn(course2),
                          ),
                        ],
                      ),

                      //course3
                      Row(
                        children: [
                          CustomTextField(course: 'course3', onChange: (double value) {
                            setState(() {
                              course3 = value;
                            }); },),
                          Padding(padding: const EdgeInsets.only(left: 100.0, top: 0.0),
                            child: iconReturn(course3),
                          ),
                        ],
                      ),

                      //course4
                      Row(
                        children: [
                          CustomTextField(course: 'course4', onChange: (double value) {
                            setState(() {
                              course4 = value;
                            }); },),
                          Padding(padding: const EdgeInsets.only(left: 100.0, top: 0.0),
                            child: iconReturn(course4),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              //elevatedbutton
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 120.0, top: 35.0),
                        child: ElevatedButton(
                          onPressed: () {

                            setState(() {
                              gpaCalculate(course1);
                              gpaCalculate(course2);
                              gpaCalculate(course3);
                              gpaCalculate(course4);

                              course1 = gpaCalculate(course1) * 3;
                              course2 = gpaCalculate(course2) * 3;
                              course3 = gpaCalculate(course3) * 3;
                              course4 = gpaCalculate(course4) * 3;

                              totalGPA1 = course1! + course2! + course3! + course4!;
                              averageGPA1 = totalGPA1/12;

                            });
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.cyan.shade400,
                            shadowColor: Colors.lime,
                            side: BorderSide(
                              width: 3,
                              color: Colors.pink.shade100,
                            ),
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            padding: const EdgeInsets.all(25),
                          ),
                          child: Text(
                            "Calculate",
                            style: TextStyle(
                                color: Colors.pink.shade50,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 90.0,
                          top: 30.0,
                        ),
                        child: Card(
                          color: Colors.lime.shade200,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: "Your GPA is ",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.cyan.shade600,
                                      fontFamily: 'Roboto',
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: averageGPA1.toStringAsFixed(1),
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.pink.shade400,
                                          fontFamily: 'Roboto',
                                        ),
                                      ),
                                    ],

                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),


              //semester2
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Semester 2",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.cyan),
                ),
              ),


              Row(
              //course5
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      //course5
                      CustomText(text: "MOBILE APPLICATION DEVELOPMENT"),
                      SizedBox(
                        height: 70.0,
                      ),
                      //course6
                      CustomText(text: "SOFTWARE DESIGN AND ARCHITECTURE"),

                      SizedBox(
                        height: 80.0,
                      ),
                      //course7
                      CustomText(text: "ARTIFICIAL INTELLIGENCE"),
                      SizedBox(
                        height: 70.0,
                      ),
                      //course8
                      CustomText(text: "SOFTWARE RE-ENGINEERING"),

                    ],
                  ),
                  Column(
                    children: <Widget>[
                      //course5
                      Row(
                        children: [
                          CustomTextField(course: 'course5', onChange: (double value) {
                            setState(() {
                              course5 = value;
                            }); },),
                          Padding(padding: const EdgeInsets.only(left: 100.0, top: 0.0),
                            child: iconReturn(course5),
                          ),
                        ],
                      ),

                      //course6
                      Row(
                        children: [
                          CustomTextField(course: 'course6', onChange: (double value) {
                            setState(() {
                              course6 = value;
                            }); },),
                          Padding(padding: const EdgeInsets.only(left: 100.0, top: 0.0),
                            child: iconReturn(course6),
                          ),
                        ],
                      ),

                      //course7
                      Row(
                        children: [
                          CustomTextField(course: 'course7', onChange: (double value) {
                            setState(() {
                              course7 = value;
                            }); },),
                          Padding(padding: const EdgeInsets.only(left: 100.0, top: 0.0),
                            child: iconReturn(course7),
                          ),
                        ],
                      ),

                      //course8
                      Row(
                        children: [
                          CustomTextField(course: 'course8', onChange: (double value) {
                            setState(() {
                              course8 = value;
                            }); },),
                          Padding(padding: const EdgeInsets.only(left: 100.0, top: 0.0),
                            child: iconReturn(course8),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              //elevated button 2
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 120.0, top: 35.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              gpaCalculate(course5);
                              gpaCalculate(course6);
                              gpaCalculate(course7);
                              gpaCalculate(course8);

                              course5 = gpaCalculate(course5) * 3;
                              course6 = gpaCalculate(course6) * 3;
                              course7 = gpaCalculate(course7) * 3;
                              course8 = gpaCalculate(course8) * 3;

                              totalGPA2 = course5! + course6! + course7! + course8!;
                              averageGPA2 = totalGPA2/12;

                              //CGPA calculate
                              totalAverageCGPA = (averageGPA1 + averageGPA2) / 2;
                            });
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.cyan.shade400,
                            shadowColor: Colors.lime,
                            side: BorderSide(
                              width: 3,
                              color: Colors.pink.shade100,
                            ),
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            padding: const EdgeInsets.all(25),
                          ),
                          child: Text(
                            "Calculate",
                            style: TextStyle(
                                color: Colors.pink.shade50,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 90.0,
                          top: 30.0,
                        ),
                        child: Card(
                          color: Colors.lime.shade200,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: RichText(
                              text: TextSpan(
                                text: "Your GPA is ",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.cyan.shade600,
                                  fontFamily: 'Roboto',
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: averageGPA2.toStringAsFixed(1),
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.pink.shade400,
                                      fontFamily: 'Roboto',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),


              //result card

              Padding(padding: const EdgeInsets.only(top: 60.0, left: 200.0, bottom: 60.0),
              child: Card(
                color: Colors.lime.shade200,
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: RichText(
                    text: TextSpan(
                      text: "Your CGPA is ",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyan.shade600,
                        fontFamily: 'Roboto',
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: totalAverageCGPA.toStringAsFixed(1),
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink.shade400,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ],
                    ),
                  ),
              ),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}