package com.bitcamp.board.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.springframework.stereotype.Component;
import com.bitcamp.board.domain.AttachedFile;
import com.bitcamp.board.domain.Board;
import com.bitcamp.board.domain.Member;
import com.bitcamp.board.service.BoardService;
import com.bitcamp.servlet.Controller;

@Component("/board/add")
// - 애노테이션을 붙일 때 객체 이름을 명시하면 그 이름으로 저장한다.
// - 프론트 컨트롤러는 페이지 컨트롤러를 찾을 때 이 이름으로 찾을 것이다.
public class BoardAddController implements Controller {

  BoardService boardService;
  public BoardAddController(BoardService boardService) {
    this.boardService = boardService;
  }

  @Override
  public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
    request.setCharacterEncoding("UTF-8");

    Board board = new Board();
    board.setTitle(request.getParameter("title"));
    board.setContent(request.getParameter("content"));

    List<AttachedFile> attachedFiles = new ArrayList<>();
    String dirPath = request.getServletContext().getRealPath("/board/files");
    Collection<Part> parts = request.getParts();

    for (Part part : parts) {
      if (!part.getName().equals("files") || part.getSize() == 0) {
        continue;
      }

      String filename = UUID.randomUUID().toString();
      part.write(dirPath + "/" + filename);
      attachedFiles.add(new AttachedFile(filename));
    }
    board.setAttachedFiles(attachedFiles);

    Member loginMember = (Member) request.getSession().getAttribute("loginMember");
    board.setWriter(loginMember);

    boardService.add(board);
    return "redirect:list";
  }
}






