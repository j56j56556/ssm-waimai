package com.homework.foshan.object;

import java.util.List;

public class Query1 {
	private int userid;
	private List<Integer> foodsid;
	private int state;
	private int classify;
	private int newclassify;
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getUserid() {
		return userid;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getState() {
		return state;
	}
	public void setFoodsid(List<Integer> foodsid) {
		this.foodsid = foodsid;
	}
	public List<Integer> getFoodsid() {
		return foodsid;
	}
	public void setClassify(int classify) {
		this.classify = classify;
	}
	public int getClassify() {
		return classify;
	}
	public void setNewclassify(int newclassify) {
		this.newclassify = newclassify;
	}
	public int getNewclassify() {
		return newclassify;
	}
}
