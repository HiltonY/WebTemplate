package com.hiltony.web.service;

import com.hiltony.web.model.Location;
import com.hiltony.web.model.Member;
import com.hiltony.web.model.Track;

import java.util.List;
import java.util.Map;

/**
 * Created by YX on 2016/10/23.
 *
 */
public interface TrackService {

    Map<Integer,List<Location>> getTrackListByMemberId(Location location);

    Map<Integer,List<Location>> getIntimeTrackList(Location location);

}
