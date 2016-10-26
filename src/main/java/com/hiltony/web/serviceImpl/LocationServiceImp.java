package com.hiltony.web.serviceImpl;

import com.hiltony.web.mapper.LocationMapper;
import com.hiltony.web.model.Location;
import com.hiltony.web.service.LocationService;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by YX on 2016/10/26.
 */
public class LocationServiceImp implements LocationService {

    @Resource
    private LocationMapper locationMapper;
    @Override
    public List<Location> getLocationList(Location location) {
        return null;
    }

    @Override
    public int addLocation(Location location) {
        return 0;
    }

    @Override
    public int updateLocation(Location location) {
        return 0;
    }
}
