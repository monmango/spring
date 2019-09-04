package controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.PersonDAO;
import dto.PersonDTO;

/*
REpresentational State Transfer(표현 상태 전이, REST)
API를 통해 프로그램들은 의사소통을 한다. 그리고 REST는 개발자가 API를 만들 때 준수해야 할 규칙이다.
이런 규칙들을 통해 특정 URL에 접근해서 데이터들을 가져올 수 있다.
GET(/myrest/person/list)				자료 조회용
GET(/myrest/person/list/3)				자료 조회용
DELETE(/myrest/person/3)				자료 삭제
POST(/myrest/person/)+데이터				자료 등록
PUT(/myrest/person/update)+데이터			자료 수정

@PathVariable-URI의 경로에서 원하는 데이터를 추출하는 용도로 사용
@RequesBody-전송된 JSON데이터를 객체로 변환해 주는 어노테이션으로 @ModelAndView와 유사한 역할을 하지만 JSON에서 사용된다는 점이 차이다.
*/
@Controller
public class PersonController {

	private PersonDAO dao;

	public PersonController() {
	}

	public void setDao(PersonDAO dao) {
		this.dao = dao;
	}

	// http://localhost:8090/myrest/person/list
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public @ResponseBody List<PersonDTO> listMethod() {
		System.out.println("여기");
		return dao.list();
	}

	// http://localhost:8090/myrest/person/list/2
	@RequestMapping(value = "/list/{ss}", method = RequestMethod.GET)
	public @ResponseBody PersonDTO listMethod(@PathVariable("ss") int num) {
		return dao.list(num);
	}

	// 1 http://localhost:8090/myrest/person/list/2/이영희
	/*
	 * @RequestMapping(value = "/list/{num}/{name}", method = RequestMethod.GET)
	 * public @ResponseBody PersonDTO listMethod(@PathVariable("num") int
	 * num, @PathVariable("name") String name) { PersonDTO dto = new PersonDTO();
	 * dto.setNum(num); dto.setName(name); return dao.list(dto); }
	 */

	// 2 http://localhost:8090/myrest/person/list/1/홍길동
	@RequestMapping(value = "/list/{num}/{name}", method = RequestMethod.GET)
	public @ResponseBody PersonDTO listMethod(PersonDTO dto) {
		return dao.list(dto);
	}
	// 1번 과 2번은 같은 메소드이며 차이점은 각각의 값을 설정하는 것과 DTO로 담는 것의 차이

	@RequestMapping(value = "/", method = RequestMethod.POST)
	public ResponseEntity<String> insertMethod(@RequestBody PersonDTO dto) {
		ResponseEntity<String> entity = null; // @RequestBody 로 받을 때 필요함
		try {
			dao.register(dto);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			System.out.println(e.toString()); // 현재 값 콘솔창 출력
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

	// http://localhost:8090/myrest/person/update
	@RequestMapping(value = "/update", method = RequestMethod.PUT)
	public ResponseEntity<String> updateMethod(@RequestBody PersonDTO dto) {
		ResponseEntity<String> entity = null;
		try {
			dao.update(dto);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);// 자동적으로 200번이 넘어감
		} catch (Exception e) {
			System.out.println(e.toString());
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	
	// http://localhost:8090/myrest/person/3
		@RequestMapping(value = "/{num}", method = RequestMethod.DELETE)
		public ResponseEntity<String> updateMethod(@PathVariable("num") int num) {
			ResponseEntity<String> entity = null;
			try {
				dao.delete(num);
				entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);// 자동적으로 200번이 넘어감
			} catch (Exception e) {
				System.out.println(e.toString());
				entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
			}
			return entity;
		}
}


/*rest 사용시 상태값은 저장할 수 없다.
섹션이나 로그인은 사용할 수없다.*/