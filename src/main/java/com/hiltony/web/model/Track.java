package com.hiltony.web.model;

import java.util.List;

/**
 * Created by YX on 2016/10/25.
 *
 */
public class Track {

    private Integer floor;

    private List<Location> locationList;

    public Integer getFloor() {
        return floor;
    }

    public void setFloor(Integer floor) {
        this.floor = floor;
    }

    public List<Location> getLocationList() {
        return locationList;
    }

    public void setLocationList(List<Location> locationList) {
        this.locationList = locationList;
    }
}
