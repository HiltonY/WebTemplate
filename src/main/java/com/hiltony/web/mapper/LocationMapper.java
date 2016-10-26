package com.hiltony.web.mapper;


import com.hiltony.web.model.Location;

import java.util.List;

/**
 * Created by YX on 2016/10/26.
 *
 */
public interface LocationMapper {


    List<Location> getLocationList(Location location);

    int addLocation(Location location);

    int updateLocation(Location location);
}
