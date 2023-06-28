contract Result {
    struct Student {
        uint8 roll_num; // error - should be uint16
        string name;
        bool result;
    }

    Student[] public students;

    function addStudent() public {
        students.push(Student(501, "John", true));
    }
}
