/*
 * 키보드 입력을 받는 도구를 구비하고 있다.
 */
package com.bitcamp.board;

public class Prompt {
  static java.util.Scanner keyboardInput = new java.util.Scanner(System.in);

  static int inputInt() {
    String str = keyboardInput.nextLine();
    return Integer.parseInt(str); //"123" ==> 123, "5" ==> 5, "ok" ==> 실행 오류!
  }

  static int inputInt(String title) {
    System.out.print(title);
    String str = keyboardInput.nextLine();
    return Integer.parseInt(str);
  }

  static String inputString() {
    return keyboardInput.nextLine();
  }

  static String inputString(String title) {
    System.out.print(title);
    return keyboardInput.nextLine();
  }

  static void close() {
    keyboardInput.close();
  }
}
// 사용자로부터 메뉴 번호를 입력 받기
// 방법1:
/*
    String input = keyboardInput.nextLine();
    return Integer.parseInt(input);   

    Integer.parseInt( ); : 사용자가 문자, 숫자를 넣었을 때 정수 값으로 출력함.
    // ex) “123”⇒ 123, “5” ⇒ 5, “ok” ⇒ 실행오류.

 */
// 방법2:
// int menuNo = keyboardInput.nextInt();
// keyboardInput.nextLine(); // 입력한 숫자 뒤에 남아 있는 줄바꿈 코드 제거
// return menuNo;
// 메서드를 통해 특정 코드의 복잡함을 감출 수 있다. ==> encapsulation(캡슐화)
// static int promptMenu() {
//   int menuNo = Prompt.nextInt();
//   return menuNo;
// }
// 앱의 스위치 케이스 if로하면 아래처럼.
// if (menuNo == 0) {
//   break;
// } else if (menuNo == 1) {
//   processBoardList();
// } else if (menuNo == 2) {
//   processboardDetail();
// } else if (menuNo == 3) {
//   processBoardInput();
// } else {
//   System.out.println("메뉴 번호가 옳지 않습니다!");
// }
