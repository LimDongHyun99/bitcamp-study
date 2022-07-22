package com.bitcamp.board.dao;

public class ObjectList {

  private static final int DEFAULT_SIZE = 3;


  // 서브 클래스에서 직접 접근할 수 있도록 접근 범위를 넓힌다. 
  protected int length; 
  protected Object[] list; // protected: 같은 패키지 + 서브 클래스 

  public ObjectList() {
    this.list = new Object[DEFAULT_SIZE];
  }

  public ObjectList(int initCapacity) {
    this.list = new Object[initCapacity];
  }

  // 목록에 저장된 인스턴스를 꺼내서 리턴한다.
  public Object[] toArray() {
    Object[] arr = new Object[this.length];
    for (int i = 0; i < arr.length; i++) {
      arr[i] = this.list[i];
    }
    return arr;
  }
  private void grow() {
    int newSize = this.list.length + (this.list.length >> 1);
    Object[] newArray = new Object[newSize];
    for (int i = 0; i < this.list.length; i++) {
      newArray[i] = this.list[i];
    }
    this.list = newArray;
  }
  //  
  public boolean remove(int index) {
    if (index < 0 || index >= this.length) {
      return false;    
    }
    for (int i = index + 1; i < this.length; i++) {
      this.list[i - 1] = this.list[i];
    }
    this.list[--this.length] = null;
    return true;
  }
}



//public void add(Board board) {
//if (this.boardCount == this.boards.length) {
//  grow();
//}
//board.no = nextNo();
//this.boards[this.boardCount++] = board;
//}




