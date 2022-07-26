package com.bitcamp.board.dao;

import com.bitcamp.board.domain.Member;

// 회원 목록을 관리하는 역할
//
public class MemberList {
  public MemberList() {}
  private int no = 0;


  public Member get(int memberNo) {
    for (int i = 0; i < this.memberCount; i++) {
      if (this.members[i].no == memberNo) {
        return this.members[i];
      }
    }
    return null;
  }

  public void add(Member member) {
    if (this.memberCount == this.members.length) {
      grow();
    }
    member.no = nextNo();
    this.members[this.memberCount++] = member;
  }

  public boolean remove(int memberNo) {
    int memberIndex = -1;
    for (int i = 0; i < this.memberCount; i++) {
      if (this.members[i].no == memberNo) {
        memberIndex = i;
        break;
      }
    }

    if (memberIndex == -1) {
      return false;
    }

    for (int i = memberIndex + 1; i < this.memberCount; i++) {
      this.members[i - 1] = this.members[i];
    }

    this.members[--this.memberCount] = null;

    return true;
  }

  private void grow() {
    int newSize = this.members.length + (this.members.length >> 1);
    Member[] newArray = new Member[newSize];
    for (int i = 0; i < this.members.length; i++) {
      newArray[i] = this.members[i];
    }
    this.members = newArray;
  }

  private int nextNo() {
    return ++no;
  }
}














