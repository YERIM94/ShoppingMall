package net.e4net.s1.shop.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

import lombok.EqualsAndHashCode;
import net.e4net.eiwaf.common.AbstractVO;

/**
 * 로그인 DataVO.
 * @author E4NET
 * @version 1.0
 */

@EqualsAndHashCode(callSuper=false)
public class goodsRegisterDVO extends AbstractVO  {

	private static final long serialVersionUID = -850700320290647312L;
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	Date date = new Date();
	String curDate = format.format(date).toString();
	
	private int gds_sno; // 상품 고유번호
	private String gds_nm;// 상품명
	private String catg_no;// 카테고리 번호
	private String selr_usr_no;// 판매자고유번호
	private String gds_amt;// 상품가격
	private int gds_qtt;// 상품수량
	private String gds_sell_qtt;// 판매된 수량 
	private String gds_cls_dt;// 판매종료일자
	private String gds_shpp_cost;// 배송비용
	private String gds_desc;//상품설명
	private String buy_yn;// 판매여부(판매상태)
	private String buy_cncl_dt; //판매중지일자
	private String reg_dtm = curDate; //등록일자
	
	public int getGds_sno() {
		return gds_sno;
	}
	public void setGds_sno(int gds_sno) {
		this.gds_sno = gds_sno;
	}
	public String getGds_nm() {
		return gds_nm;
	}
	public void setGds_nm(String gds_nm) {
		this.gds_nm = gds_nm;
	}
	public String getCatg_no() {
		return catg_no;
	}
	public void setCatg_no(String catg_no) {
		this.catg_no = catg_no;
	}
	public String getSelr_usr_no() {
		return selr_usr_no;
	}
	public void setSelr_usr_no(String selr_usr_no) {
		this.selr_usr_no = selr_usr_no;
	}
	public String getGds_amt() {
		return gds_amt;
	}
	public void setGds_amt(String gds_amt) {
		this.gds_amt = gds_amt;
	}
	public int getGds_qtt() {
		return gds_qtt;
	}
	public void setGds_qtt(int gds_qtt) {
		this.gds_qtt = gds_qtt;
	}
	public String getGds_sell_qtt() {
		return gds_sell_qtt;
	}
	public void setGds_sell_qtt(String gds_sell_qtt) {
		this.gds_sell_qtt = gds_sell_qtt;
	}
	public String getGds_cls_dt() {
		return gds_cls_dt;
	}
	public void setGds_cls_dt(String gds_cls_dt) {
		this.gds_cls_dt = gds_cls_dt;
	}
	public String getGds_shpp_cost() {
		return gds_shpp_cost;
	}
	public void setGds_shpp_cost(String gds_shpp_cost) {
		this.gds_shpp_cost = gds_shpp_cost;
	}
	public String getGds_desc() {
		return gds_desc;
	}
	public void setGds_desc(String gds_desc) {
		this.gds_desc = gds_desc;
	}
	public String getBuy_yn() {
		return buy_yn;
	}
	public void setBuy_yn(String buy_yn) {
		this.buy_yn = buy_yn;
	}
	public String getBuy_cncl_dt() {
		return buy_cncl_dt;
	}
	public void setBuy_cncl_dt(String buy_cncl_dt) {
		this.buy_cncl_dt = buy_cncl_dt;
	}
	public String getReg_dtm() {
		return reg_dtm;
	}
	public void setReg_dtm(String reg_dtm) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String curDate = format.format(date).toString();
		this.reg_dtm = curDate;
	}
	
	
}
