package dao;

import org.mybatis.spring.SqlSessionTemplate;

import dto.MembersDTO;

public class ShoppingDaoImp implements ShoppingDAO {
	
	private SqlSessionTemplate sqlSession;
	
	public ShoppingDaoImp() {
		
	}

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void register(MembersDTO dto) {
		sqlSession.insert("shopping.register", dto);
		
	}

	@Override
	public int selectid(MembersDTO dto) {
		return sqlSession.selectOne("shopping.selectid", dto);
	}

	@Override
	public int selectpass(MembersDTO dto) {
		return sqlSession.selectOne("shopping.selectpass", dto);
	}
	
	
	
	
}
