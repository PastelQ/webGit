package student;

import java.util.Date;

//DAO(Data Access   Object): DB에 접근용도의 클래스
/*DTO(Data Transfer Object): Data를 전송역할하는 클래스
                             읽기getter. 설정setter */
/*VO(Value Object) : Value을 보관. 읽기전용getter 
                     불변의 특징. 
                     hashCode()오버라이딩, equals()오버라이딩   */

public class StudentDTO extends Object{
	//field [접제] [modifier] 타입 필드명[=초기값]
	private String stuNo;  //학번 "0012345"  
	private String stuName;//학생명  "홍길동"
	private Date enrollmentDate;//입학일
	
	//constructor [접제] 클래스명(){}
	public StudentDTO() {}
	public StudentDTO(String stuNo,String stuName,Date enrollmentDate){
		this.stuNo = stuNo;
		this.stuName = stuName;
		this.enrollmentDate = enrollmentDate;
	}
	public String getStuNo() {
		return stuNo;
	}
	public void setStuNo(String stuNo) {
		this.stuNo = stuNo;
	}
	public String getStuName() {
		return stuName;
	}
	public void setStuName(String stuName) {
		this.stuName = stuName;
	}
	public Date getEnrollmentDate() {
		return enrollmentDate;
	}
	public void setEnrollmentDate(Date enrollmentDate) {
		this.enrollmentDate = enrollmentDate;
	}
	@Override
	public String toString() {
		return "StudentDTO [stuNo=" + stuNo + ", stuName=" + stuName + ", enrollmentDate=" + enrollmentDate + "]";
	}
	
	//method [접제] [modifier] 리턴타입 메서드명(파라미터리스트){}
	//getter

	
//	@Override
//	public String toString() {
//		return "학번="+stuNo+"/학생명="+stuName+"/입학일="+this.enrollmentDate;
//	}
	
	
}









