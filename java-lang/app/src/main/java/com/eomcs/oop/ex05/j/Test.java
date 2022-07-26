package com.eomcs.oop.ex05.j;

//생성자는 클래스 이름과 같음(대소문자도 똑같아야함)
//함수는 클래스 이름과 다름(대소문자도 똑같아야함), 메서드는 리턴이 필요없어서 void 쓴다. 예전에 했던게 함수였다. 

class Dto extends Object {
  int a;
  int b;

  Dto() {
    super();
  }

  Dto(int a) {
    this.a = a;
  }

  Dto(int a, int b) {
    this.a = a;
    this.b = b;
  }

  public void m1() {

  }

  int m2() {
    System.out.println("m2 DTO 출력");
    int result = 0;
    int a=1;
    return result +a;
  }  
}

public class Test {

  public static void main(String[] args) {
    // TODO Auto-generated method stub
    Dto dto = new Dto();

    dto.m2();
  }

}
