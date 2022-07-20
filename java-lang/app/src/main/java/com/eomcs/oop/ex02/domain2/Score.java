package com.eomcs.oop.ex02.domain2;

public  class Score {

  String name;
  int kor;
  int eng;
  int math;
  int sum;
  float aver;

  static void coumpute(Score s) {
    s.sum = s.kor + s.eng + s.math;
    s.aver = (float) s.sum / 3;
  }

  static void printScore(Score s) { 
    System.out.printf("%s: %d, %d, %d, %d, %.1f\n",
        s.name, s.kor, s.eng, s.math, s.sum, s.aver);
  }

  static void printScore2(Score s) { 
    System.out.printf("%s: %d, %d, %d\n",
        s.name, s.kor, s.eng, s.math);
  }
}
