package dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import dto.ItemDTO;
import dto.SalesDTO;
import dto.WarehouseDTO;

public class MarketDaoImp implements MarketDAO {
	
	private SqlSessionTemplate sqlSession;
	
	public MarketDaoImp() {}
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void inputInsertmethod(WarehouseDTO dto) {
		
	}

	@Override
	public int salesSelectMethod(String code) {
		return 0;
	}

	@Override
	public void salesInsertMethod(SalesDTO dto) {
		
	}

	@Override
	public List<ItemDTO> itemSelectMethod() {
		return sqlSession.selectList("mt.waresel");
	}

	@Override
	public List<String> pnameSelectMethod() {
		return null;
	}

}
