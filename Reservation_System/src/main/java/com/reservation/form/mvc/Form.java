package com.reservation.form.mvc;

import java.time.LocalDate;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

public class Form {
	
	@Size(min = 1 ,message = "is required")
	@NotNull(message = "is required")
	private String name;
	
	@Pattern(regexp = "^([a-zA-Z0-9_\\-\\.]+)@([a-zA-Z0-9_\\-\\.]+)\\.([a-zA-Z]{2,5})$", message = "Enter proper address")
	@NotNull(message = "is required")
	private String email;
	
	private String roomtype = "no";
	
	@DateTimeFormat(pattern = "yyyy-MM-dd", iso = DateTimeFormat.ISO.DATE)
	@NotNull(message = "Please provide a date")
	private LocalDate arrivaldate;

	@DateTimeFormat(pattern = "yyyy-MM-dd", iso = DateTimeFormat.ISO.DATE)
	@NotNull(message = "Please provide a date")
	private LocalDate departuredate;
	private int numberofguests =1;
	
//	@Size(min = 5,max = 5,message = "Invalid Train Number")
	@NotNull(message = "is Required")
	private int trainnumber;
	private String specialrequests;
	private Map<String,String> rooms;
	
	public Form(){
		rooms = new HashMap<>();
		rooms.put("no",null);
		rooms.put("Single Bed", "Single Bed");
		rooms.put("Double Bed", "Double Bed");
	}
	
	
	
	public Map<String, String> getRooms() {
		return rooms;
	}



	public void setRooms(Map<String, String> rooms) {
		this.rooms = rooms;
	}



	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRoomtype() {
		return roomtype;
	}
	public void setRoomtype(String roomtype) {
		this.roomtype = roomtype;
	}
	public LocalDate getArrivaldate() {
		return arrivaldate;
	}
	public void setArrivaldate(LocalDate arrivaldate) {
		this.arrivaldate = arrivaldate;
	}
	public LocalDate getDeparturedate() {
		return departuredate;
	}
	public void setDeparturedate(LocalDate departuredate) {
		this.departuredate = departuredate;
	}
	public int getNumberofguests() {
		return numberofguests;
	}
	public void setNumberofguests(int numberofguests) {
		this.numberofguests = numberofguests;
	}

	public int getTrainnumber() {
		return trainnumber;
	}
	public void setTrainnumber(int trainnumber) {
		this.trainnumber = trainnumber;
	}
	public String getSpecialrequests() {
		return specialrequests;
	}
	public void setSpecialrequests(String specialrequests) {
		this.specialrequests = specialrequests;
	}
	
	
}
