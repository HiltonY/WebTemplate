package com.hiltony.web.service;

import com.hiltony.web.model.Location;

import java.util.List;

/**
 * Created by YX on 2016/10/23.
 *
 */
public interface LocationService {

    List<Location> getLocationList(Location location);

    int addLocation(Location location);

    int updateLocation(Location location);
}
