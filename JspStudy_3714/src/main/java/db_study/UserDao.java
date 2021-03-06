package db_study;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import db.DBConnectionMgr;
import repository.user.User;

public class UserDao {
	private final DBConnectionMgr pool;
	
	public UserDao(DBConnectionMgr pool) {
		this.pool = pool;
	}
	
	public User getUserByUsername(String username) {
		String sql = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		User user = null;
		
		try {
			con = pool.getConnection(); //데이터베이스 연결
			sql = "select * from user_mst where username = ?"; // 데이터베이스 쿼리 입력문 설정
			pstmt = con.prepareStatement(sql); // ? 부분 채워주는 값
			pstmt.setString(1, username);	// 1번째 값을 String 값으로 넣는다
			rs = pstmt.executeQuery();  // 쿼리 실행
			
			rs.next();
			
			try {
			user = User.builder()
					.user_code(rs.getInt(1))
					.username(rs.getString(2))
					.password(rs.getString(3))
					.name(rs.getString(4))
					.email(rs.getString(5))
					.create_date(rs.getTimestamp(6).toLocalDateTime())
					.update_date(rs.getTimestamp(7).toLocalDateTime())
					.build();
			}catch(SQLException e){
				System.out.println("해당 아이디로 조회한 데이터가 없습니다.");
				//user = null;
			}catch(Exception e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		
		return user;
	}
	
	public ArrayList<User> getUserAll(){
		String sql = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<User> userList = new ArrayList<User>();
		
		try {
			con = pool.getConnection(); // 쿼리 (select) 자바에서 데이터베이스로 연결문
			sql = "select * from user_mst"; 
			pstmt = con.prepareStatement(sql); // 쿼리 작성문
			rs = pstmt.executeQuery(); // 쿼리 실행문(결과문)
						
			while(rs.next()) {
				User user = User.builder() 
						.user_code(rs.getInt(1))
						.username(rs.getString(2))
						.password(rs.getString(3))
						.name(rs.getString(4))
						.email(rs.getString(5))
						.create_date(rs.getTimestamp(6).toLocalDateTime())
						.update_date(rs.getTimestamp(7).toLocalDateTime())
						.build();
				userList.add(user);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		
		return userList;
	}
}
