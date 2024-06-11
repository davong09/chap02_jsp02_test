package com.javalab.vo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*********************************************
 * 영화 자바빈즈(도메인 클래스)
 * @author 홍길동
 * 2024.06.11
 * 도서 정보를 저장하는 자바빈즈
 * - 롬복 애노테이션으로 간단하게 구현
 * - 자바빈즈의 직렬화시 안정성 확보
 *********************************************/

@NoArgsConstructor		// 기본 생성자
@AllArgsConstructor		// 오버로딩생성자
@Getter					// 게터 메소드
@Setter					// 세터 메소드
@ToString				// ToString() 메소드

public class Book implements Serializable {
	private static final long serialVersionUID = 1L;
	private String title;
	private String author;
	private int publicationYear;

}
