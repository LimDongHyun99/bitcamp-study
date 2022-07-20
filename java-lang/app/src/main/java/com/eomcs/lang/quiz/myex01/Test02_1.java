package com.eomcs.lang.quiz.myex01;

public class Test02_1 {

  public static void main(String[] args) {
    int p = parity(0b01100011);
    System.out.println(p == 0); // true

    p = parity(0b01010111_01100011);
    System.out.println(p == 1); // true
  }

  static int parity(int value) {
    int r = 0;

    while (value != 0) {
      r ^= 1;
      value &= (value - 1);
    }

    return r;
  }
}
