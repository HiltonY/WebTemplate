package com.hiltony.web.serviceImpl;

import com.hiltony.web.mapper.LocationMapper;
import com.hiltony.web.model.Location;
import com.hiltony.web.model.Track;
import com.hiltony.web.service.TrackService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;

/**
 * Created by YX on 2016/10/26.
 */
@Service("trackService")
public class TrackServiceImp implements TrackService {

    @Resource
    private LocationMapper locationMapper;

    @Override
    public Map<String, List<Location>> getTrackListByMemberId(Location location) {
        List<Location> locationList = locationMapper.getLocationList(location);
        if (locationList.size() == 0) {
            return null;
        }
        List<List<Location>> resultList = new ArrayList<>();
        Map<String, List<Location>> resultMap = new TreeMap<>();

        Location pre = locationList.get(0);
        locationList.get(0).setUpOrDown(0);
        resultMap.put(pre.getFloor().toString(),new ArrayList<>());
        resultMap.get(pre.getFloor().toString()).add(pre);
        for (int i = 1; i < locationList.size(); i++) {
            Location loca = locationList.get(i);

            //判断当前楼层和之前楼层的关系
            if (loca.getFloor() > pre.getFloor()) {
                pre.setUpOrDown(1);
            } else if (loca.getFloor() < pre.getFloor()) {
                pre.setUpOrDown(-1);
            } else {
                pre.setUpOrDown(0);
            }
            resultMap.putIfAbsent(loca.getFloor().toString(), new ArrayList<>());
            resultMap.get(loca.getFloor().toString()).add(loca);
            pre = loca;


        }
        return resultMap;
    }

    public Map<String, List<Location>> getIntimeTrackList(Location location) {
        List<Location> locationList = locationMapper.getIntimeLocationList(location);

        if (locationList.size() == 0) {
            return null;
        }
        Map<String, List<Location>> resultMap = new TreeMap<>();

        for (Location loca : locationList) {
            resultMap.putIfAbsent(loca.getFloor().toString(), new ArrayList<>());
            resultMap.get(loca.getFloor().toString()).add(loca);
        }

        return resultMap;

    }
}
