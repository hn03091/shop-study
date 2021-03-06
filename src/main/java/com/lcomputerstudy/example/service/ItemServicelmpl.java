package com.lcomputerstudy.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lcomputerstudy.example.domain.Board;
import com.lcomputerstudy.example.domain.BoardFile;
import com.lcomputerstudy.example.domain.Item;

import com.lcomputerstudy.example.domain.Page;
import com.lcomputerstudy.example.domain.Product;
import com.lcomputerstudy.example.domain.Sold;
import com.lcomputerstudy.example.mapper.ItemMapper;

@Service("ItemServiceImpl")
public class ItemServicelmpl implements ItemService {
	
	@Autowired ItemMapper itemmapper;
	
	
	
	/*****대분류*****/
	@Override
	public List<Item> getItemList(){
		return itemmapper.getItemList();
	}
	@Override //대분류 카테고리 상세정보
	public Item itemsetDetail(Item item){
		return itemmapper.itemsetDetail(item);
	}
	@Override //대분류 카테고리 등록
	public void itemInsert(Item item){
		itemmapper.itemInsert(item);
	}
	@Override //대분류 카테고리 수정
	public void itemsetUpdate(Item item) {
		itemmapper.itemsetUpdate(item);
	}
	@Override //대분류 카테고리 삭제
	public void itemsetDelete(Item item) {
		itemmapper.itemsetDelete(item);
	}
	
	
	/*****주문관리*****/
	@Override
	public List<Sold> getSoldList(){
		return itemmapper.getSoldList();	
	}
	
	/***** 상품 *****/
	@Override
	public List<Product> getProductList(){
		return itemmapper.getProductList();
	}
	
	@Override //상품등록
	public void productInsert(Product product) { 
		itemmapper.productInsert(product);
	}
	@Override // 상품 수정
	public void productsetUpdate(Product product) {
		itemmapper.productsetUpdate(product);
	}
	@Override // 상품 삭제
	public void productsetDelete(Product product) {
		itemmapper.productsetDelete(product);
	}
	@Override //상품 파일 등록
	public void fileNames(Product product) {
		itemmapper.fileNames(product);
	} 
	@Override //상품상세정보
	public Product productsetDetail(Product product) {
		return itemmapper.productsetDetail(product);
	}
	@Override //상품 이미지 파일 삭제
	public void productfileDelete(BoardFile boardfile){
		itemmapper.productfileDelete(boardfile);
	}
	@Override //상품이미지만 불러오기
	public List<Product> productsetfileUpdate(Product product){
		return itemmapper.productsetfileUpdate(product);
	}
	@Override
	public List<Product> selectProduct(Page page){
		return itemmapper.selectProduct(page);
	}
	@Override
	public int countProduct(Page page) {
		return itemmapper.countProduct(page);
	}
	/////////////////////
	@Override
	public List<Product> getproductList2(Product product){
		return itemmapper.getproductList2(product);
	}
	@Override
	public List<Sold> getbuyList(Sold sold){
		return itemmapper.getbuyList(sold);
	}
	@Override
	public void insertSold(Sold sold) {
		itemmapper.insertSold(sold);
	}
	
	@Override //상품 상세 정보
	public Product productdetail(Product product) {
		return itemmapper.productdetail(product);
	}
	
	@Override
	public List<Product> getsoldTotal(){
		return itemmapper.getsoldTotal();				
	}
}
