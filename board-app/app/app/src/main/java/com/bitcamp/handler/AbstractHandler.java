package com.bitcamp.handler;

// Handler 규격에 맞춰 서브 클래스에게 물려줄 공통 필드나 메서드를 준비한다.
//
public class AbstractHandler implements Handler {

  / 핸들러가 사용할 메뉴 목록을 담을 배열을 준비한다.
  // => 메뉴 목록은 생성자를 통해 초기화시킨다. 
  //
  private static String[] menus;
  
  
  // 반드시 메뉴 목록을 초기화시키도록 강제하기위해
  // 기본 생성자 대신 메뉴 목록을 배열로 받는 생성자를 준비한다.
  
  public AbstractHandler(String[] menus) {
    this.menus = menus;
  }
  
  // 다음 메서드는 execute()에서 메뉴를 출력할 때 사용된다.
  // 다만 서브 클래스서 출력 형식을 바꾸기 위해 오버라이딩 할 수 있도록
  // 접근 범위를 protected로 설정한다.
  protected void printMenus() {
    for (int i = 0; i < menus.length; i++) {
      System.out.printf("  %d:%s\n", i + 1, menus[i]);
    }
    
  }

  protected static void printHeadline() {
    System.out.println("=========================================");
  }

  protected static void printBlankLine() {
    System.out.println(); // 메뉴를 처리한 후 빈 줄 출력
  }
  protected static void printTitle() {
    System.out.printf("%s:\n", App.breadcrumbMenu);
  }
  
  @Override
  public void execute() {
    while (true) {
            printTitle();
            printHadline();
            printBlankLine();
            
      try {
        int menuNo = Prompt.inputInt("메뉴를 선택하세요[1..5](0: 이전) ");

        displayHeadline();

        // 다른 인스턴스 메서드를 호출할 때 this에 보관된 인스턴스 주소를 사용한다. 
        switch (menuNo) {
          case 0: return;
          case 1: this.onList(); break;
          case 2: this.onDetail(); break;
          case 3: this.onInput(); break;
          case 4: this.onDelete(); break;
          case 5: this.onUpdate(); break;
          default: System.out.println("메뉴 번호가 옳지 않습니다!");
        }

        displayBlankLine();

      } catch (Exception ex) {
        System.out.printf("예외 발생: %s\n", ex.getMessage());
      }
    } // 게시판 while
  
  
  @Override
  public void execute() {
      
      
    }
}
