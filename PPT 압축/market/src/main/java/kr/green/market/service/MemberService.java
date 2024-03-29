package kr.green.market.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import kr.green.market.vo.AddressListVO;
import kr.green.market.vo.MemberVO;
import kr.green.market.vo.SellerVO;

public interface MemberService {

	MemberVO getMember(String id);

	void signup(MemberVO mVo);

	MemberVO signin(MemberVO mVo);

	MemberVO modify(MemberVO mVo, String oldPassword);

	boolean updateUserToSession(HttpServletRequest r, MemberVO oVo);

	MemberVO idFind(String name, String email);

	String getVal(String str);

	boolean checkMember(String id, String email);

	String createPw();

	void modify(String id, String email, String newPw);

	void sendMail(String email, String title, String contents);

	Integer getSellerNo(String id);

	ArrayList<AddressListVO> getAddressList(String id);

	Integer addAddress(AddressListVO aVo);

	SellerVO getSeller(Integer item_no);

	boolean deleteMember(String id, String password);

	SellerVO getSeller(String id);

	SellerVO addSeller(SellerVO sVo);

	SellerVO modifySeller(SellerVO sVo);

}
