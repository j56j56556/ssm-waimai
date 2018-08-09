package com.homework.foshan.mybatis;

import java.util.List;

import com.homework.foshan.object.*;;

public interface BusinessMapper {
	public List<Business> findBusinessall();
	public Business findBusinessbyid(int id);
	public Business findBusinessbyName(String name);
	public List<Business> findLimitBusiness(QueryLimitPage p1);
}
