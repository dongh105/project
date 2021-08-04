package kr.icia.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.icia.domain.BoardVO;
import kr.icia.domain.Criteria;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceTests {
	@Setter(onMethod_ = { @Autowired })
	private BoardService service;
//	@Test
//	 public void testRegister() {
//	      BoardVO board = new BoardVO();
//      board.setTitle("새로 작성하는 글 1106");
//	      board.setContent("새로 작성하는 글 내용 1106");
//	      board.setWriter("새로운 작성자 1106");
	
//	      service.register(board);
//	      log.info("생성된 게시물 번호 :"+board.getBno());
	@Test
	public void testGetList2() {
		service.getList(new Criteria(2,10)).forEach(board -> log.info(board));
		
	}

}
