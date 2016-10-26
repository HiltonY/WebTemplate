package com.hiltony.web.serviceImpl;

import com.hiltony.web.mapper.LocationMapper;
import com.hiltony.web.model.Location;
import com.hiltony.web.model.Track;
import com.hiltony.web.service.TrackService;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by YX on 2016/10/26.
 */
public class TrackServiceImp implements TrackService {

    @Resource
    private LocationMapper locationMapper ;
    @Override
    public List<Track> getTrackListByMemberId(Location location) {
        List<Location> locationList = locationMapper.getLocationList(location);
        List<Track> result = new ArrayList<>();
        for (Location loca:locationList){

        }
        return result;
    }
}
