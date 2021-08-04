package kr.icia.mapper;

import java.util.List;
import java.util.stream.IntStream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.icia.domain.Criteria;
import kr.icia.domain.ReplyVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReplyMapperTest {
	private Long[] bnoArr = { 161L, 166L, 163L, 164L, 165L };

	@Setter(onMethod_ = @Autowired)
	private ReplyMapper mapper;

//	@Test
//	public void testCreate() {
//		IntStream.rangeClosed(1, 10).forEach(i -> {
//			ReplyVO vo = new ReplyVO();
//			vo.setBno(bnoArr[i % 5]);
//			vo.setReply("댓글 테스트" + i);
//			vo.setReplyer("replyer" + i);
//
//			mapper.insert(vo);
//		});
//	}
//}
	
	@Test
	public void testList2() {
		
		Criteria cri = new Criteria(2,10);
		List<ReplyVO> replies
		=mapper.getListWithPaging(cri, 1L);
		
		replies.forEach(reply->log.info(reply));
	}
}
	
