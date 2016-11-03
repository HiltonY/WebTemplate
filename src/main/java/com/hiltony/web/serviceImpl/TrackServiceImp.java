package com.hiltony.web.serviceImpl;

import com.hiltony.web.mapper.LocationMapper;
import com.hiltony.web.model.Location;
import com.hiltony.web.model.Track;
import com.hiltony.web.service.TrackService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by YX on 2016/10/26.
 *
 */
@Service("trackService")
public class TrackServiceImp implements TrackService {

    @Resource
    private LocationMapper locationMapper ;
    @Override
    public Map<Integer,List<Location>> getTrackListByMemberId(Location location) {
        List<Location> locationList = locationMapper.getLocationList(location);
        if (locationList.size()==0){
            return null;
        }
        List<List<Location>> resultList = new ArrayList<>();
        Map<Integer,List<Location>> resultMap = new HashMap<>();

        Location pre = locationList.get(0);
        for (Location loca:locationList){
            if (loca==pre){
                //初始楼层
                loca.setUpOrDown(0);
            }
            else {
                //判断当前楼层和之前楼层的关系
                if(loca.getFloor()>pre.getFloor()){
                    pre.setUpOrDown(1);
                }
                else if (loca.getFloor()<pre.getFloor()){
                    pre.setUpOrDown(-1);
                }
                else {
                    pre.setUpOrDown(0);
                }
                pre=loca;
            }
            if (resultList.get(loca.getFloor())==null){
                resultList.set(loca.getFloor(),new ArrayList<Location>());
            }
            resultList.get(loca.getFloor()).add(loca);
        }

        for (Integer i =0;i<resultList.size();i++){
            if (resultList.get(i)!=null) {
                resultMap.put(i, resultList.get(i));
            }
        }
        return resultMap;
    }

    public Map<Integer,List<Location>> getIntimeTrackList(Location location) {
        List<Location> locationList = locationMapper.getIntimeLocationList(location);

        if (locationList.size()==0){
            return null;
        }
        List<List<Location>> resultList = new ArrayList<>();
        Map<Integer,List<Location>> resultMap = new HashMap<>();

        for (Location loca:locationList){
            if (resultList.get(loca.getFloor())==null){
                resultList.set(loca.getFloor(),new ArrayList<Location>());
            }
            resultList.get(loca.getFloor()).add(loca);
        }

        for (Integer i =0;i<resultList.size();i++){
            if (resultList.get(i)!=null) {
                resultMap.put(i, resultList.get(i));
            }
        }
        return resultMap;

    }
}
