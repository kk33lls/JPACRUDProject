package com.skilldistillery.fourteeners.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Fourteener {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	@Column(name="elevation_in_feet")
	private int elevation;
	
	@Column(name="elevation_gain_in_feet")
	private Integer elevationGain;
	
	@Column(name="distance_in_miles")
	private Double distance;
	
	@Column(name="difficulty_ranking")
	private String ranking;
	
	@Column(name="estimated_duration_in_hours")
	private Double duration;

	public Fourteener() {
		super();
	}


	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public int getElevation() {
		return elevation;
	}



	public void setElevation(int elevation) {
		this.elevation = elevation;
	}



	public Integer getElevationGain() {
		return elevationGain;
	}



	public void setElevationGain(Integer elevationGain) {
		this.elevationGain = elevationGain;
	}



	public Double getDistance() {
		return distance;
	}



	public void setDistance(Double distance) {
		this.distance = distance;
	}



	public String getRanking() {
		return ranking;
	}



	public void setRanking(String ranking) {
		this.ranking = ranking;
	}



	public Double getDuration() {
		return duration;
	}



	public void setDuration(Double duration) {
		this.duration = duration;
	}



	@Override
	public String toString() {
		return "Fourteener [id=" + id + ", name=" + name + ", elevation=" + elevation + ", elevationGain="
				+ elevationGain + ", distance=" + distance + ", ranking=" + ranking + ", duration=" + duration + "]";
	}
	
	
}
