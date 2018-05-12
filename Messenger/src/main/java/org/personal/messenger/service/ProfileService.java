package org.personal.messenger.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.personal.messenger.database.DataBaseClass;
import org.personal.messenger.model.Message;
import org.personal.messenger.model.Profile;

import db.utils.DBUtility;

public class ProfileService {
	private Map<Long, Profile> profiles = DataBaseClass.getProfiles();

	public ProfileService() {
	}

	public Profile getProfile(int username, int password) {
		new DBUtility().setLoginFlag(true);
		if (username == 1 && password == 2)
			return new Profile(1, 2, 1, "ambrish", "dadhwal", new Date(), "adadhwal@tk20.com");
		else if (username == 3 && password == 4)
			return profiles.get(2);

		return null;
	}

	public List<String> getCounts() {
		List<String> counts = new ArrayList<>();
		counts.add(profiles.size() + "");
		counts.add(DataBaseClass.getMesssages().size() + "");
		return counts;
	}

	public List<Profile> getProfiles() {
		return new ArrayList<Profile>(profiles.values());
	}

	public Profile addProfile(Profile profile) {
		System.out.println(profile);
		profile.setId(profiles.size() + 1);
		profiles.put(profiles.size() + 1L, profile);
		return profile;
	}

	public Profile getUser(long username) {
		return profiles.get(username);
	}

	public Profile updateMessage(Profile profile) {
		if (profile.getId() <= 0)
			return null;
		profiles.put(profile.getId(), profile);
		return profile;
	}

	public Profile removeMessage(long id) {
		return profiles.remove(id);
	}

}
