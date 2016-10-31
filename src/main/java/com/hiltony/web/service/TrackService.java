package com.hiltony.web.service;

import com.hiltony.web.model.Location;
import com.hiltony.web.model.Member;
import com.hiltony.web.model.Track;

import java.util.List;

/**
 * Created by YX on 2016/10/23.
 *
 */
public interface TrackService {

    List<Track> getTrackListByMemberId(Location location);

    List<Track> getIntimeTrackList(Location location);

}
