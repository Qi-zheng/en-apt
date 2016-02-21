package com.en.room.entity;

public class Cities {
	public Integer id;
	public String name;
	public Double dis;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Double getDis() {
		return dis;
	}
	public void setDis(Double dis) {
		this.dis = dis;
	}
	@Override
	public String toString() {
		return "Cities [id=" + id + ", name=" + name + ", dis=" + dis + "]";
	}
}
