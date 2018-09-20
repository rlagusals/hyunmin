package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import member.MemberVO;


public class DB {
	DBOpen dbopen = null;
	DBClose dbclose = null;
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	StringBuffer sql = null;
	public DB() {
		dbopen = new DBOpen();
		dbclose = new DBClose();
	}
	public int insert(MemberVO m)	{
	
	int count = 0;
	
	try {
		con = dbopen.getConnection();
		sql = new StringBuffer();
		sql = sql.append("insert into custom_01 (p_id, _pw, c_name, c_email, c_tel)");
		
		pstmt = con.prepareStatement(sql.toString());
		pstmt.setString(1, m.getId());
		pstmt.setString(2, m.getPw());
		pstmt.setString(3, m.getName());
		pstmt.setString(4, m.getEmail());
		pstmt.setString(5, m.getPhone());
		
		count = pstmt.executeUpdate();
		
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		dbclose.close(con, pstmt);
	}
	return count;
	}
	public ArrayList<MemberVO> list(){
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		
		try {
			con = dbopen.getConnection();
			
			sql = new StringBuffer();
			sql.append("select * from custom_01");
			pstmt = con.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			
			while(rs.next()==true) {
				MemberVO m = new MemberVO();
				m.setId(rs.getString("p_id"));
				m.setPw(rs.getString("p_pw"));
				m.setName(rs.getString("c_name"));
				m.setEmail(rs.getString("c_email"));
				m.setPhone(rs.getString("c_tel"));
						
				list.add(m);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbclose.close(con, pstmt, rs);
		}
		return list;
	}
	
}
