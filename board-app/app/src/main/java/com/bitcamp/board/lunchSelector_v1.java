package com.bitcamp.board;

import java.util.ArrayList;
import java.util.Scanner;

public class lunchSelector_v1 {
  public static void main(String[] args) {

    String[] names = {
        "우육면", "돈까스", "백반", "한식뷔페",
        "부대찌개", "편의점", "짬뽕", "뼈해장국",
        "쌀국수", "도삭면", "초밥", "파스타",
        "분식", "햄버거", "덮밥", 
    };

    ArrayList<String> list = new ArrayList<>();

    for (String name : names) {
      list.add(name);
    }

    for (int i = 0; i < 100; i++) {
      int i1 = (int)(Math.random() * list.size());
      int i2 = (int)(Math.random() * list.size());

      String temp = list.get(i1);
      list.set(i1, list.get(i2));
      list.set(i2, temp);
    }

    Scanner keyboardInput = new Scanner(System.in);

    System.out.println("오늘 뭐먹지?");
    keyboardInput.nextLine();

    while (list.size() > 0) {
      int no = (int)(Math.random() * list.size());
      System.out.println("오늘의 점심 메뉴! ");
      System.out.println("===> " + list.remove(no));
      keyboardInput.nextLine();
    }

    keyboardInput.close();
  }
}

//   ------------  칠 판  --------------->    문    <-----
//      1       2       3             4       5       6
//1:[김라윤][조영아][안치운]      [이헌식][최지연][김봉경]
//2:[장슬기][임동현][최종찬]      [박병민][유성민][장현경]
//3:[박지민][조주연][유종현]      [문채원][김원태][유제동]
//4:[임은지][황의찬][주  영]      [김민구][      ][신우섭]
//5:[윤주현][최유민][김연정]      [임가온][      ][박진우]


