package com.hiltony.web.serviceImpl;

import com.hiltony.web.mapper.LocationMapper;
import com.hiltony.web.model.Location;
import com.hiltony.web.model.Track;
import com.hiltony.web.service.TrackService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by YX on 2016/10/26.
 *
 */
@Service("trackService")
public class TrackServiceImp implements TrackService {

    @Resource
    private LocationMapper locationMapper ;
    @Override
    public List<Track> getTrackListByMemberId(Location location) {
        List<Location> locationList = locationMapper.getLocationList(location);
        List<Track> result = new ArrayList<>();
        int floor = 0;
        Track track = new Track();
        for (Location loca:locationList){
            if (loca.getFloor()>floor){
                floor=loca.getFloor();
                track = new Track();
                track.setFloor(floor);
                track.setLocationList(new ArrayList<>());
                result.add(track);
            }
            track.getLocationList().add(loca);
        }
        return result;
    }
}
