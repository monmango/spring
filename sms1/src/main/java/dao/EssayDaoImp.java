package dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import dto.EssayDTO;
import dto.PageDTO;

public class EssayDaoImp implements EssayDAO{

	private SqlSessionTemplate sqlSession;
	
	public EssayDaoImp() {}
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	

	@Override
	public int count() {
		return sqlSession.selectOne("essay.count");
	}
	
	@Override
	public void essayInsetMethod(EssayDTO dto) {
		sqlSession.insert("essay.e_ins", dto);
	}

	@Override
	public List<EssayDTO> essayListMethod(PageDTO pv) {
		return sqlSession.selectList("essay.e_list", pv);
	}

	@Override
	public  EssayDTO essayViewMethod(int essay_num) {
		return sqlSession.selectOne("essay.e_view", essay_num);
	}

	@Override
	public EssayDTO essayUpViewMethod(int essay_num) {
		return sqlSession.selectOne("essay.e_view", essay_num);
	}
	
	@Override
	public void essayUpdateMethod(EssayDTO dto) {
		System.out.println(dto.getEssay_num());
		System.out.println(dto.getEssay_subject());
		System.out.println(dto.getEssay_content());
		sqlSession.update("essay.e_update", dto);
	}

	@Override
	public void essayDeleteMethod(int essay_num) {
		sqlSession.selectOne("essay.e_del", essay_num);
		
	}

}
