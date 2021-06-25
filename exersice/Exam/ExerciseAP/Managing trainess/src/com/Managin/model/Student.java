package com.Managin.model;

import java.util.ArrayList;

public class Student {
    public static int count;
    public  int id;
    private String name;
    private String gender;
    private String dob;



    public Student( String name, String dob, String gender) {
        this.id = ++count;
        this.name = name;
        this.dob = dob;
        this.gender = gender;
        initPointFactor1();
        initPointFactor2();
        initPointFactor3();
    }

    public Student() {
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }
    public static void setAutoId(int count) {
        Student.count = count ;
    }

    public static int getAutoId() {
        return count;
    }


    public int getId() {
        return id;
    }
    public void setId(int id){
        this.id = id ;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    private ArrayList<ArrayList<Double>> points = new ArrayList<>();
    private ArrayList<Double> pointFactor1 = new ArrayList<>();
    private ArrayList<Double> pointFactor2 = new ArrayList<>();
    private ArrayList<Double> pointFactor3 = new ArrayList<>();
    private double averagePoint = -1;


    public void setAveragePoint() {
        double totalPointFactor1 = 0;
        double totalPointFactor2 = 0;
        double totalPointFactor3 = 0;
        int countNegativePointFactor1 = 0;
        int countNegativePointFactor2 = 0;
        int countNegativePointFactor3 = 0;
        for (Double point : pointFactor1) {
            if (point < 0) {
                totalPointFactor1 += 0;
                countNegativePointFactor1++;
            } else
                totalPointFactor1 += point;
        }
        for (Double point : pointFactor2) {
            if (point < 0) {
                totalPointFactor2 += 0;
                countNegativePointFactor2++;
            } else
                totalPointFactor2 += point * 2;
        }
        for (Double point : pointFactor3) {
            if (point < 0) {
                totalPointFactor3 += 0;
                countNegativePointFactor3++;
            } else
                totalPointFactor3 += point * 3;
        }
        double totalNumberOfPoints = (pointFactor1.size() - countNegativePointFactor1) + ((pointFactor2.size() - countNegativePointFactor2) * 2) + ((pointFactor3.size() - countNegativePointFactor3) * 3);
        averagePoint = (totalPointFactor1 + totalPointFactor2 + totalPointFactor3) / totalNumberOfPoints;
    }



    private void initPointFactor1() {
        points.add(pointFactor1);
        double point1 = -1;
        double point2 = -1;
        pointFactor1.add(point1);
        pointFactor1.add(point2);
    }

    private void initPointFactor2() {
        points.add(pointFactor2);
        double point1 = -1;
        pointFactor2.add(point1);
    }

    private void initPointFactor3() {
        points.add(pointFactor3);
        double point1 = -1;
        pointFactor3.add(point1);
    }

    public ArrayList<ArrayList<Double>> getPoints() {
        return points;
    }

    public ArrayList<Double> getPointFactor1() {
        return pointFactor1;
    }

    public ArrayList<Double> getPointFactor2() {
        return pointFactor2;
    }

    public ArrayList<Double> getPointFactor3() {
        return pointFactor3;
    }

    public double getAveragePoint() {
        return averagePoint;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", points=" + points +
                ", pointFactor1=" + pointFactor1 +
                ", pointFactor2=" + pointFactor2 +
                ", pointFactor3=" + pointFactor3 +
                ", averagePoint=" + averagePoint +
                "}\n";
    }

}