package com.homework.foshan.mybatis;

import java.util.List;

import com.homework.foshan.object.Food;
import com.homework.foshan.object.Query1;

public interface FoodMapper {
	public List<Food> findfoodbybusid(int id);
	public List<Integer> findfoodidbybusid(int id);
	public void addfood(Food food);
	public void deletefood(int fid);
	public void updatefood(Food food);
}	
