import 'dart:io';

void main(){
    
    print ("Student: "); //input the student name
    String? name = stdin.readLineSync();

    print("Enter your assignment score : "); //enter the assign score
    double? assignment = double.parse(stdin.readLineSync()!);

    print("Midterm score: ");//enter the midterm score
    double? midterm = double.parse(stdin.readLineSync()!);

    print("Final exam score: "); //enter the final exam score
    double? finalExam = double.parse(stdin.readLineSync()!);

    
    
    //compute the assign, midterm and final exam using multiplication and calculate weighted average
    double finalGrade = (assignment * 0.2) + (midterm * 0.3) + (finalExam * 0.5);

    //and here the computation of result or final grade and they see the passed or failed 
    try {
    String result;
    if (finalGrade >= 90){
         result= "Passed";
    } else if (finalGrade >= 80 ){
        result = "Passed";
    } else if (finalGrade >= 70){
        result = "Failed";
    } else if (finalGrade >= 60){
        result= "Failed";
    } else {
        result = "Failed";
    }

    //printing or display all result
    print("Student Name: $name");
    print ("Final Grade: $assignment");
    print ("Final Grade: $midterm");
    print ("Final Grade: $finalExam");
    print ("Final Grade: $finalGrade");
    print("result: $result");
    
    } catch (e) {
        print("ERROR: Invalid a value");
    } // if input is given the print an error
}