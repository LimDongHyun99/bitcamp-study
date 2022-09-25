<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!DOCTYPE html>
    <html>
    <head>
    <meta charset=\"UTF-8\">
    <title>bitcamp</title>
    </head>
    <body>
    <h1>게시글 상세 정보</h1>

    int boardNo = Integer.parseInt(req.getParameter("no"));

    try {
      Board board = boardDao.findByNo(boardNo);

      if (board == null) {
        <p>해당 번호의 게시글이 없습니다.</p>

      } else {
        <form action='update'>
        <table border='1'>
          <tr>
<th>번호</th><td><input name='board.no' type='number' value='%d' readonly></td>
          </tr>
          <tr>
<th>제목</th><td><input name='board.title' type='text' value='%s' size='60'></td>
          </tr>
          <tr>
<th>내용</th><td><textarea name='board.content' rows='10' cols='60'>%s</textarea></td>
          </tr>
          <tr>
<th>조회수</th><td>%d</td>",
          </tr>
          <tr>
<th>작성자</th><td>%d</td>", board.memberNo
          </tr>
          <tr>
<th>등록일</th><td>%s</td>", board.createdDate
          </tr>
        </table>
        <p>
          <button type='submit'>변경</button>
        out.printf("  <a href='delete?no=%d'>삭제</a>", board.no);
        </p>
        </form>
      }
    } catch (Exception e) {
      <p>실행 중 오류 발생!</p>
    }

    </body>
    </html>
  }\