package org.personal.messenger.database;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.personal.messenger.model.Message;
import org.personal.messenger.model.Profile;

public class DataBaseClass {
	private static Map<Long, Message> messages = new HashMap();
	private static Map<Long, Profile> profiles = new HashMap();

	public static Map<Long, Message> getMesssages() {
		messages.put(1L, new Message(1, "Friend", new Date(), "adadhwal@tk20.com"));
		messages.put(2L, new Message(2, "Friend", new Date(), "rahulk@tk20.com"));
		return messages;
	}

	public static Map<Long, Profile> getProfiles() {
		profiles.put(1L, new Profile(1, 2, 1, "ambrish", "dadhwal", new Date(), "adadhwal@tk20.com"));
		profiles.put(2L, new Profile(2, 4, 2, "rahul", "kumar", new Date(), "rahul@tk20.com"));
		return profiles;
	}
}
