package com.manager.service;

import com.manager.data.StudentDB;
import com.manager.model.Student;
import java.io.IOException;
import java.util.*;
import java.util.regex.Pattern;

public class StudentService {
    StudentDB studentDB = new StudentDB();
    Scanner scanner = new Scanner(System.in);
    public static final String DASH_DECORATION = "--------------------------------------------------------------------------------------------------------------------";
    public static final Pattern NAME_PATTERN = Pattern.compile("^[\\pL ]{2,30}$");
    public int getInt() {
        return Integer.parseInt(scanner.nextLine());
    }
    public boolean checkInsert(Double point) {
        return !(point < 0 | point > 10);
    }

    public void updateFile() throws IOException {
        studentDB.saveFile();
    }
    public void loadFile() throws IOException {
        studentDB.readFile();
    }

    public void showStudentList() throws IOException {
        List<Student> listStudent = new ArrayList<>(studentDB.map.values());
        showStudent(listStudent, listStudent.size());
//        studentDB.readFile();
    }
    public int findMaxNumberOfPoint() {
        int max = 0;
        for (Student item : studentDB.map.values()) {
            if (item.getPointFactor1().size() > max) {
                max = item.getPointFactor1().size();
            }
        }
        return max;
    }
    public int validateNumberGreaterThan0(String mess) {
        System.out.println(mess);
        try {
            int num = getInt();
            if (num > -1) {
                return num;
            }
            throw new Exception();
        } catch (Exception e) {
            System.err.println("Nhập vào định dạng sai, mời nhập lại:");
            return validateNumberGreaterThan0(mess);
        }
    }
    public void showStudent(List<Student> students, int size) throws IOException {
        System.out.println(DASH_DECORATION);
        System.out.format("||%-3s |", "ID");
        System.out.format("%-30s |", "Tên");
        System.out.format("%-12s |", "Ngày sinh");
        System.out.format("%-12s |", "Giới tính");
        System.out.format("%-10s |", "Điểm hs1");
        System.out.format("%-10s |", "Điểm hs2");
        System.out.format("%-10s |", "Điểm hs3");
        System.out.format("%-10s ||\n", "Điểm TB");
        System.out.println(DASH_DECORATION);
        try {
            for (int i = 0; i < size; i++) {
                for (int j = 0; j < findMaxNumberOfPoint(); j++) {
                    if (students.get(i) != null) {
                        if (j == 0) {
                            System.out.format("||%-3d |", students.get(i).getId());
                            System.out.format("%-30s |", students.get(i).getName());
                            System.out.format("%-12s |", students.get(i).getDob());
                            System.out.format("%-12s |", students.get(i).getGender());
                            displayPoint(students.get(i).getPointFactor1().get(j));
                            displayPoint(students.get(i).getPointFactor2().get(j));
                            displayPoint(students.get(i).getPointFactor3().get(j));
                            displayPoint(students.get(i).getAveragePoint());
                            System.out.println("|");
                        } else {
                            System.out.format("||%-3s |", "");
                            System.out.format("%-30s |", "");
                            System.out.format("%-12s |", "");
                            System.out.format("%-12s |", "");
                            try {
                                displayPoint(students.get(i).getPointFactor1().get(j));
                            } catch (IndexOutOfBoundsException e) {
                                System.out.format("%-10s |", " ");
                            }
                            try {
                                displayPoint(students.get(i).getPointFactor2().get(j));
                            } catch (IndexOutOfBoundsException e) {
                                System.out.format("%-10s |", " ");
                            }
                            try {
                                displayPoint(students.get(i).getPointFactor3().get(j));
                            } catch (IndexOutOfBoundsException e) {
                                System.out.format("%-10s |", " ");
                            }
                            System.out.format("%-10s ||\n", "");
                        }
                    } else {
                        System.out.print("");
                    }
                }
            }
        } catch (IndexOutOfBoundsException e) {
            System.out.print("");
        }
        System.out.println(DASH_DECORATION);
        studentDB.saveFile();
    }

    public void gradingStudents() throws IOException {
        List<Student> listStudentSort = new ArrayList<>(studentDB.map.values());
        Collections.sort(listStudentSort);
        done();
        showStudent(listStudentSort, listStudentSort.size());
    }


    public void addStudent() throws IOException {
        int number = validateNumberGreaterThan0("Nhập số lượng học viên cần thêm: ");
        for (int i = 0; i < number; i++) {
            System.out.println("Nhập thông tin học sinh thứ " + (i + 1));
            String name = validateName("Nhập tên:");
            String dob = validateDoB("Nhập ngày tháng năm sinh");
            String gender = validateGender();
            Student student = new Student(name,dob,gender);
            studentDB.map.put(student.getId(), student);
        }
        studentDB.saveFile();
    }

    public String validateDoB(String mess) {
        System.out.println(mess);
        try {
            int day = validateDay("Nhập ngày sinh:");
            int month = validateMonth("Nhập tháng:");
            int year = validateYear("Nhập năm sinh:");
            int dayLimit = validateDayMonth(month, year);
            if (day > dayLimit | day < 1)
                throw new Exception("Ngày phải trong khoảng [1 - " + dayLimit + "] (phụ thuộc vào tháng)");
            return day + "/" + month + "/" + year;
        } catch (Exception e) {
            System.err.println(e.getMessage());
            return validateDoB(mess);
        }
    }

    public int validateDay(String mess) {
        System.out.println(mess);
        try {
            int day = getInt();
            if (day < 1 | day > 31) throw new Exception();
            return day;
        } catch (Exception e) {
            System.err.println("Ngày sinh không hợp lệ");
            return validateDay(mess);
        }
    }

    public int validateMonth(String mess) {
        System.out.println(mess);
        try {
            int month = getInt();
            if (month < 1 | month > 12) throw new Exception();
            return month;
        } catch (Exception e) {
            System.err.println("Tháng không hợp lệ");
            return validateMonth(mess);
        }
    }

    public int validateYear(String mess) {
        System.out.println(mess);
        try {
            int year = getInt();
            if (limitYear(year)) {
                System.err.println("Năm sinh phải trong khoảng [1930 - 2019]");
                return validateYear(mess);
            }
            return year;
        } catch (Exception e) {
            System.err.println("Năm sinh không hợp lệ");
            return validateYear(mess);
        }
    }

    public int validateDayMonth(int month, int year) throws Exception {
        switch (month) {
            case 1:
            case 3:
            case 5:
            case 7:
            case 8:
            case 10:
            case 12:
                return 31;
            case 4:
            case 6:
            case 9:
            case 11:
                return 30;
            case 2:
                if (checkLeapYear(year))
                    return 29;
                else return 28;
            default:
                throw new Exception("Tháng phải trong khoảng [1 - 12]");
        }
    }

    public boolean limitYear(int year) {
        return year <= 1930 || year >= 2020;
    }

    public boolean checkLeapYear(int year) {
        if (year % 400 == 0)
            return true;
        if (year % 4 == 0 && year % 100 != 0)
            return true;
        return false;
    }

    public String validateGender() {
        System.out.println("Nhập giới tính");
        try {
            int choise = validateNumberGreaterThan0("1. Nam\n2. Nữ");
            switch (choise) {
                case 1:
                    return "Nam";
                case 2:
                    return "Nữ";
                default:
                    throw new Exception();
            }
        } catch (Exception e) {
            System.err.println("Nhập sai giới tính");
            return validateGender();
        }
    }

    public String validateName(String mess) {
        System.out.println(mess);
        try {
            String name = scanner.nextLine();
            if (!NAME_PATTERN.matcher(name).matches()) {
                throw new Exception();
            }
            name = name.toLowerCase();
            name = name.trim();
            while (name.contains("  ")) {
                name = name.replace("  ", " ");
            }
            String[] str = name.split("");
            str[0] = str[0].toUpperCase();
            StringBuilder nameBuilder = new StringBuilder(str[0]);
            for (int i = 1; i < str.length; i++) {
                if (str[i].equals(" ")) {
                    str[i + 1] = str[i + 1].toUpperCase();
                }
                nameBuilder.append(str[i]);
            }
            return nameBuilder.toString();
        } catch (Exception e) {
            System.err.println("Tên không được có số, để trống hoặc quá dài (30)");
            return validateName(mess);
        }
    }

    public int validateID(String mess) {
        System.out.println(mess);
        try {
            int id = getInt();
            if (id == 0) return 0;
            if (id > 0) {
                for (Student student : studentDB.map.values()) {
                    if (student.getId() == id) {
                        return id;
                    }
                }
            }
            throw new Exception();
        } catch (Exception e) {
            System.err.println("ID không hợp lệ hoặc không tồn tại học viên này!");
            return validateID(mess);
        }
    }



    public double validatePoints(String mess) {
        System.out.println(mess);
        String input = scanner.nextLine().toLowerCase();
        if (input.equals("x"))
            throw new IllegalArgumentException();
        try {
            double point = Double.parseDouble(input);
            if (point > 10 || point < 0) {
                throw new Exception();
            } else {
                return point;
            }
        } catch (Exception e) {
            System.err.println("Điểm phải trong khoảng [0 - 10]");
            return validatePoints(mess);
        }
    }

    public void done() {
        System.out.println("Thực hiện thành công!");
        System.out.println("____________________________________________");
    }




    public void editStudentInfo() {
        int id = validateID("Nhập ID để sửa, nhập 0 để trở về menu ");
        if (id == 0) return;
        String name = validateName("Nhập tên mới:");
        String dob = validateDoB("Nhập ngày tháng năm sinh");
        String gender = validateGender();
        studentDB.map.get(id).setName(name);
        studentDB.map.get(id).setDob(dob);
        studentDB.map.get(id).setGender(gender);
        try {
            studentDB.saveFile();
        } catch (IOException e) {
            e.printStackTrace();
        }
        done();
    }

    public void deleteStudent() {
        int id = validateID("Nhập ID để xóa, nhập 0 để trở về menu");
        if (id == 0) return;
        displayStudentInfo(id);
        if (confirmMenu()) {
            studentDB.map.remove(id);
            try {
                studentDB.saveFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
            done();
        }
    }

    public boolean confirmMenu() {
        while (true) {
            int choise = validateNumberGreaterThan0("Bạn chắc chắn muốn xóa học viên này?\n1. Có\n2. Không");
            switch (choise) {
                case 1:
                    return true;
                case 2:
                    return false;
                default:
                    System.err.println("Chỉ 'Có' hoặc 'Không'!");
            }
        }
    }


    public void editPoints() {
        while (true) {
            System.out.println("Menu Sửa điểm");
            System.out.println("1. Sửa TỪNG điểm cho một học viên");
            System.out.println("2. Sửa TOÀN BỘ điểm cho một học viên");
            System.out.println("3. Sửa TOÀN BỘ điểm cho TOÀN BỘ học viên");
            System.out.println("0. Trở về menu chính");
            int choose = validateNumberGreaterThan0("Mời nhập:");
            switch (choose) {
                case 1:
                    editEachPoint();
                    break;
                case 2:
                    editAllPoint();
                    break;
                case 3:
                    editAllPointAllStudent();
                    break;
                case 0:
                    return;
                default:
                    System.err.println("Nhập sai, vui lòng nhập lại");
                    break;
            }
        }
    }

    public void editAllPointAllStudent() {
        System.out.println("Lưu ý, chức năng này chỉ cho phép sửa những điểm số đã được nhập!\nNhững điểm chưa được nhập sẽ bị bỏ qua!");
        System.out.println("Ấn 'x' để ngắt nhập bất cứ lúc nào");
        try {
            for (Student student : studentDB.map.values()) {
                editAllPointNeedID(student.getId(), false);
            }
        } catch (IllegalArgumentException e) {
            System.out.println("Ngắt nhập");
        }
    }

    public void editAllPoint() {
        System.out.println("Lưu ý, chức năng này chỉ cho phép sửa những điểm số đã được nhập!\nNhững điểm chưa được nhập sẽ bị bỏ qua!");
        int id = validateID("Nhập ID học viên để sửa điểm, nhập 0 để trở về menu");
        if (id == 0) return;
        editAllPointNeedID(id, true);
    }

    public void editAllPointNeedID(int id, boolean displayMess) {
        displayStudentInfo(id);
        Student student = studentDB.map.get(id);
        if (checkInsert(student.getPointFactor1().get(0))) {
            double point1 = validatePoints("Nhập điểm học viên lần thứ 1 (hệ số 1)");
            student.getPointFactor1().set(0, point1);
        } else if (displayMess) {
            System.out.println("Điểm học viên lần thứ 1 (hệ số 1) chưa được nhập, không thể sửa!");
        }
        if (checkInsert(student.getPointFactor1().get(1))) {
            double point2 = validatePoints("Nhập điểm học viên lần thứ 2 (hệ số 1)");
            student.getPointFactor1().set(1, point2);
        } else if (displayMess) {
            System.out.println("Điểm học viên lần thứ 2 (hệ số 1) chưa được nhập, không thể sửa!");
        }
        if (checkInsert(student.getPointFactor2().get(0))) {
            double point3 = validatePoints("Nhập điểm học viên lần thứ 3 (hệ số 2)");
            student.getPointFactor2().set(0, point3);
        } else if (displayMess) {
            System.out.println("Điểm học viên lần thứ 3 (hệ số 2) chưa được nhập, không thể sửa!");
        }
        if (checkInsert(student.getPointFactor3().get(0))) {
            double point4 = validatePoints("Nhập điểm học viên lần thứ 4 (hệ số 3)");
            student.getPointFactor3().set(0, point4);
        } else if (displayMess) {
            System.out.println("Điểm học viên lần thứ 4 (hệ số 3) chưa được nhập, không thể sửa!");
        }
        displayStudentInfo(id);
        student.setAveragePoint();
        try {
            studentDB.saveFile();
        } catch (IOException e) {
            e.printStackTrace();
        }
        done();
    }

    public void editEachPoint() {
        int id = validateID("Nhập ID học viên để sửa điểm, nhập 0 để trở về menu");
        if (id == 0) return;
        displayStudentInfo(id);
        int choise = -1;
        while (choise != 0) {
            System.out.println("1. Sửa điểm học viên lần thứ 1 (hệ số 1)");
            System.out.println("2. Sửa điểm học viên lần thứ 2 (hệ số 1)");
            System.out.println("3. Sửa điểm học viên lần thứ 3 (hệ số 2)");
            System.out.println("4. Sửa điểm học viên lần thứ 4 (hệ số 3)");
            System.out.println("0. Trở về menu");
            choise = validateNumberGreaterThan0("Mời nhập:");
            switch (choise) {
                case 1:
                    if (!checkInsert(studentDB.map.get(id).getPointFactor1().get(0))) {
                        System.err.println("Điểm chưa được nhập, hãy nhập điểm trước!");
                        break;
                    } else {
                        double point = validatePoints("Nhập điểm:");
                        studentDB.map.get(id).getPointFactor1().set(0, point);
                        done();
                        displayStudentInfo(id);
                    }
                    break;
                case 2:
                    if (!checkInsert(studentDB.map.get(id).getPointFactor1().get(1))) {
                        System.err.println("Điểm chưa được nhập, hãy nhập điểm trước!");
                        break;
                    } else {
                        double point = validatePoints("Nhập điểm:");
                        studentDB.map.get(id).getPointFactor1().set(1, point);
                        done();
                        displayStudentInfo(id);
                    }
                    break;
                case 3:
                    if (!checkInsert(studentDB.map.get(id).getPointFactor2().get(0))) {
                        System.err.println("Điểm chưa được nhập, hãy nhập điểm trước!");
                        break;
                    } else {
                        double point = validatePoints("Nhập điểm:");
                        studentDB.map.get(id).getPointFactor2().set(0, point);
                        done();
                        displayStudentInfo(id);
                    }
                    break;
                case 4:
                    if (!checkInsert(studentDB.map.get(id).getPointFactor3().get(0))) {
                        System.err.println("Điểm chưa được nhập, hãy nhập điểm trước!");
                        break;
                    } else {
                        double point1 = validatePoints("Nhập điểm:");
                        studentDB.map.get(id).getPointFactor3().set(0, point1);
                        done();
                        displayStudentInfo(id);
                    }
                    break;
                case 0:
                    break;
                default:
                    System.out.println("Nhập sai, mời nhập lại");
                    break;
            }
        }
        studentDB.map.get(id).setAveragePoint();
        try {
            studentDB.saveFile();
        } catch (IOException e) {
            e.printStackTrace();
        }
        done();
    }

    public void insertPoint() {
        while (true) {
            System.out.println("Menu Nhập điểm");
            System.out.println("1. Nhập TỪNG điểm cho một học viên");
            System.out.println("2. Nhập TOÀN BỘ điểm cho một học viên");
            System.out.println("3. Nhập TOÀN BỘ điểm cho TOÀN BỘ học viên");
            System.out.println("0. Trở về menu chính");
            int choose = validateNumberGreaterThan0("Mời nhập:");
            switch (choose) {
                case 1:
                    insertEachPoint();
                    break;
                case 2:
                    insertAllPoint();
                    break;
                case 3:
                    insertAllPointAllStudent();
                    break;
                case 0:
                    return;
                default:
                    System.err.println("Nhập sai, vui lòng nhập lại");
                    break;
            }
        }
    }

    public void insertAllPointAllStudent() {
        System.out.println("Lưu ý, chức năng này chỉ cho phép nhập những điểm số chưa được nhập!\nNhững điểm đã được nhập sẽ bị bỏ qua!");
        System.out.println("Ấn 'x' để ngắt nhập bất cứ lúc nào");
        try {
            for (Student student : studentDB.map.values()) {
                insertAllPointNeedID(student.getId(), false);
            }
        } catch (IllegalArgumentException e) {
            System.out.println("Ngắt nhập");
        }
    }

    public void insertAllPoint() {
        System.out.println("Lưu ý, chức năng này chỉ cho phép nhập những điểm số chưa được nhập!\nNhững điểm đã được nhập sẽ bị bỏ qua!");
        int id = validateID("Nhập ID học viên để nhập điểm, nhập 0 để trở về menu");
        if (id == 0) return;
        insertAllPointNeedID(id, true);
    }

    public void insertAllPointNeedID(int id, boolean displayMess) {
        displayStudentInfo(id);
        Student student = studentDB.map.get(id);
        int count = 0;
        if (!checkInsert(student.getPointFactor1().get(0))) {
            double point1 = validatePoints("Nhập điểm học viên lần thứ 1 (hệ số 1)");
            student.getPointFactor1().set(0, point1);
            count++;
        } else if (displayMess) {
            System.out.println("Điểm học viên lần thứ 1 (hệ số 1) đã được nhập, không thể nhập thêm!");
        }
        if (!checkInsert(student.getPointFactor1().get(1))) {
            double point2 = validatePoints("Nhập điểm học viên lần thứ 2 (hệ số 1)");
            student.getPointFactor1().set(1, point2);
            count++;
        } else if (displayMess) {
            System.out.println("Điểm học viên lần thứ 2 (hệ số 1) đã được nhập, không thể nhập thêm!");
        }
        if (!checkInsert(student.getPointFactor2().get(0))) {
            double point3 = validatePoints("Nhập điểm học viên lần thứ 3 (hệ số 2)");
            student.getPointFactor2().set(0, point3);
            count++;
        } else if (displayMess) {
            System.out.println("Điểm học viên lần thứ 3 (hệ số 2) đã được nhập, không thể nhập thêm!");
        }
        if (!checkInsert(student.getPointFactor3().get(0))) {
            double point4 = validatePoints("Nhập điểm học viên lần thứ 4 (hệ số 3)");
            student.getPointFactor3().set(0, point4);
            count++;
        } else if (displayMess) {
            System.out.println("Điểm học viên lần thứ 4 (hệ số 3) đã được nhập, không thể nhập thêm!");
        }
        student.setAveragePoint();
        try {
            studentDB.saveFile();
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (count > 0) {
            displayStudentInfo(id);
            done();
        } else {
            System.out.println("Toàn bộ điểm của học viên này đã được nhập");
        }
    }




    public void displayPoint(double point) {
        if (!(point == -1))
            System.out.format("%-10.2f |", point);
        else
            System.out.format("%-10s |", "Chưa nhập");
    }


    public String displayPointFactor1Map(HashMap<Integer, Student> map, int id, int i) {
        if (map.get(id).getPointFactor1().get(i) < 0 | map.get(id).getPointFactor1().get(i) > 10) {
            return "Chưa nhập";
        } else {
            return "" + map.get(id).getPointFactor1().get(i);
        }
    }

    public String displayPointFactor2Map(HashMap<Integer, Student> map, int id, int i) {
        if (map.get(id).getPointFactor2().get(i) < 0 | map.get(id).getPointFactor2().get(i) > 10) {
            return "Chưa nhập";
        } else {
            return "" + map.get(id).getPointFactor2().get(i);
        }
    }

    public String displayPointFactor3Map(HashMap<Integer, Student> map, int id, int i) {
        if (map.get(id).getPointFactor3().get(i) < 0 | map.get(id).getPointFactor3().get(i) > 10) {
            return "Chưa nhập";
        } else {
            return "" + map.get(id).getPointFactor3().get(i);
        }
    }




    public void insertEachPoint() {
        int id = validateID("Nhập ID học viên để nhập điểm, nhập 0 để trở về menu");
        if (id == 0) return;
        displayStudentInfo(id);
        int choise = -1;
        while (choise != 0) {
            System.out.println("1. Nhập điểm học viên lần thứ 1 (hệ số 1)");
            System.out.println("2. Nhập điểm học viên lần thứ 2 (hệ số 1)");
            System.out.println("3. Nhập điểm học viên lần thứ 3 (hệ số 2)");
            System.out.println("4. Nhập điểm học viên lần thứ 4 (hệ số 3)");
            System.out.println("0. Trở về menu");
            choise = validateNumberGreaterThan0("Mời nhập:");
            switch (choise) {
                case 1:
                    if (checkInsert(studentDB.map.get(id).getPointFactor1().get(0))) {
                        System.err.println("Điểm đã được nhập, không thể nhập thêm!");
                        break;
                    } else {
                        double point = validatePoints("Nhập điểm:");
                        studentDB.map.get(id).getPointFactor1().set(0, point);
                        done();
                        displayStudentInfo(id);
                    }
                    break;
                case 2:
                    if (checkInsert(studentDB.map.get(id).getPointFactor1().get(1))) {
                        System.err.println("Điểm đã được nhập, không thể nhập thêm!");
                        break;
                    } else {
                        double point = validatePoints("Nhập điểm:");
                        studentDB.map.get(id).getPointFactor1().set(1, point);
                        done();
                        displayStudentInfo(id);
                    }
                    break;
                case 3:
                    if (checkInsert(studentDB.map.get(id).getPointFactor2().get(0))) {
                        System.err.println("Điểm đã được nhập, không thể nhập thêm!");
                        break;
                    } else {
                        double point = validatePoints("Nhập điểm:");
                        studentDB.map.get(id).getPointFactor2().set(0, point);
                        done();
                        displayStudentInfo(id);
                    }
                    break;
                case 4:
                    if (checkInsert(studentDB.map.get(id).getPointFactor3().get(0))) {
                        System.err.println("Điểm đã được nhập, không thể nhập thêm!");
                        break;
                    } else {
                        double point1 = validatePoints("Nhập điểm:");
                        studentDB.map.get(id).getPointFactor3().set(0, point1);
                        done();
                        displayStudentInfo(id);
                    }
                    break;
                case 0:
                    break;
                default:
                    System.out.println("Nhập sai, mời nhập lại");
                    break;
            }
        }
        studentDB.map.get(id).setAveragePoint();
        try {
            studentDB.saveFile();
        } catch (IOException e) {
            e.printStackTrace();
        }
        done();
    }



    public void displayStudentInfo(int id) {
        String name = studentDB.map.get(id).getName();
        System.out.println("Học sinh: " + name + "\t");
        System.out.print("Điểm hệ 1: ");
        for (int i = 0; i < studentDB.map.get(id).getPointFactor1().size(); i++) {
            System.out.print(displayPointFactor1Map(studentDB.map, id, i));
            System.out.print("\t|");
        }
        System.out.print("Điểm hệ 2: ");
        for (int i = 0; i < studentDB.map.get(id).getPointFactor2().size(); i++) {
            System.out.print(displayPointFactor2Map(studentDB.map, id, i));
            System.out.print("\t|");
        }
        System.out.print("Điểm hệ 3: ");
        for (int i = 0; i < studentDB.map.get(id).getPointFactor3().size(); i++) {
            System.out.print(displayPointFactor3Map(studentDB.map, id, i));
        }
        System.out.println();
    }


    @Override
    public String toString() {
        return "ManagementApp{" +
                "map=" + studentDB.map +
                '}';
    }


}

