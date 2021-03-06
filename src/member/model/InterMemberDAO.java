package member.model;

import java.sql.SQLException;
import java.util.HashMap;

public interface InterMemberDAO {

	// 회원가입(insert)
	int registerMember(MemberVO membervo) throws SQLException;

	// ID중복 검사 (userid가 중복이 없어서 사용가능하다라면 true, userid가 이미 존재하여 사용 불가능하면 false 를 리턴) 
	boolean idDuplicateCheck(String userid) throws SQLException;

	// 아이디와 암호를 입력받아서 그 회원에 대한 정보를 리턴(로그인처리)
	MemberVO selectOneMember(HashMap<String, String> paraMap) throws SQLException;
	
	// 비밀번호 변경
	String selectPasswd(String userid) throws SQLException;

	// 비밀번호 변경
	int updatePasswd(String userid, String newPassword) throws SQLException;

	// 개인정보 수정
	int updateInfo(MemberVO membervo) throws SQLException;

	// 아이디 찾기(성명, 휴대폰번호를 입력받아서 해당 사용자의 아이디를 알려준다.)
	String findUserid(HashMap<String, String> paraMap) throws SQLException;

	// 비밀번호 찾기(아이디, 이메일을 입력받아서 해당 사용자가 존재하는지 유무를 알려준다.)
	boolean isUserExist(HashMap<String, String> paraMap) throws SQLException;

	// 암호 변경 하기
	int pwdUpdate(String pwd, String userid) throws SQLException;

	// 회원탈퇴
	int deleteMember(MemberVO membervo) throws SQLException;

	// 포인트 확인
	int checkPoints(HashMap<String, String> paramap) throws SQLException;
}

