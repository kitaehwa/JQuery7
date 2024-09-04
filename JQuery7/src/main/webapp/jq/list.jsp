<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// list.jsp 페이지 실행 -> DB에서 정보가져오기 -> JSON
	//		-> JSON -> 화면에 출력
%>
<%
		// 디비 연결 정보 
		final String DRIVER_NAME="com.mysql.cj.jdbc.Driver";
		final String DBURL="jdbc:mysql://localhost:3306/jspdb";
		final String DBID = "root";
		final String DBPW = "1234";
		
		// 1. 드라이버 로드
		Class.forName(DRIVER_NAME);
		System.out.println("드라이버 로드 성공!");
		
		// 2. 디비 연결
		 Connection con =
		DriverManager.getConnection(DBURL, DBID, DBPW);
		System.out.println("디비 로드 성공!");
		System.out.println("con : "+con);
		
		// 3. SQL 구문 & pstmt 객체
		String sql
		="select * from itwill_member";
		//="select * from itwill_member where id !=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
				
		//pstmt.setString(1,"admin");
		
		// 4. SQL 실행
		ResultSet rs = pstmt.executeQuery();
		
		// 5. 데이터 처리(DB -> JSON)
		//ArrayList memberList = new ArrayList();
		JSONArray memberList = new JSONArray();
		while(rs.next()){
				// rs -> DTO(JSON)
				JSONObject dto = new JSONObject();
				dto.put("id", rs.getString("id")); // "id":"itwill"
				dto.put("pw", rs.getString("pw")); // "pw":"itwill"
				dto.put("email", rs.getString("email")); // "email":"itwill"
				
				memberList.add(dto);
			}
%>
<%=memberList%>