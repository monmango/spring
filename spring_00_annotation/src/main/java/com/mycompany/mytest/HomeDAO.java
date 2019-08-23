package com.mycompany.mytest;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

// <bena id="homeDAO" class="com.mycompany.mytest.HomeDAO"></bean>

@Repository("homeDAO")
public class HomeDAO {

	public List<HomeDTO> getAllData() {
		System.out.println("HomeDAO getAllData()");
		return new ArrayList<HomeDTO>();
	}
}// end class
