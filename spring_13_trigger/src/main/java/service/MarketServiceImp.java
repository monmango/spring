package service;

import java.util.List;

import dao.MarketDAO;
import dto.ItemDTO;
import dto.SalesDTO;
import dto.WarehouseDTO;


//http://localhost:8090/mytrigger/itemList.do
public class MarketServiceImp implements MarketService{

	private MarketDAO dao;
	
	public MarketServiceImp() {}
	
	public void setDao(MarketDAO dao) {
		this.dao = dao;
	}
	
	@Override
	public void insertProcess(WarehouseDTO dto) {
		
	}

	@Override
	public void salesInsertProcess(SalesDTO dto) {
		
	}

	@Override
	public List<ItemDTO> itemSelectProcess() {
		return dao.itemSelectMethod();
	}

	@Override
	public List<String> pnameSelectProcess() {
		return null;
	}

}// end class
