# student_data.py

students = []

def add_student():
    """
    Prompt the user to enter student name, age, and grade.
    Append the student as a dictionary to the students list.
    """
    name = input("Enter student name: ")
    age = input("Enter student age: ")
    grade = float(input("Enter student grade: "))

    student = {"name": name, "age": age, "grade": grade}
    students.append(student)
    print(f"✅ {name} has been added successfully!")


def view_students():
    """
    Loop through the students list and print each student's info.
    """
    if not students:
        print("No students found.")
        return

    print("\n🎓 Student List:")
    for i, student in enumerate(students, start=1):
        print(f"{i}. Name: {student['name']}, Age: {student['age']}, Grade: {student['grade']}")


def get_average_grade():
    """
    Return the average grade of all students.
    """
    if not students:
        return 0.0

    total = sum(student["grade"] for student in students)
    avg = total / len(students)
    return avg
