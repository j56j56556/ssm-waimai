package com.homework.foshan.mybatis;

import com.homework.foshan.object.Business;
import com.homework.foshan.object.User;

public interface UserMapper {
	public User findUserByName(String name);
	public Business findBusByName(String name);
	public void addUser(User user);
}
