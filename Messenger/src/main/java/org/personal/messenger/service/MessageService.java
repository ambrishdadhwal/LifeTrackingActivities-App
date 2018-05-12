package org.personal.messenger.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.personal.messenger.database.DataBaseClass;
import org.personal.messenger.model.Message;

public class MessageService {

	private Map<Long, Message> messages = DataBaseClass.getMesssages();

	public MessageService() {
		messages = DataBaseClass.getMesssages();
	}

	public List<Message> getAllMessages() {
		return new ArrayList<Message>(messages.values());
		/*
		 * Message message = new Message(1, "hello", new Date(), "ambrish"); Message
		 * message1 = new Message(2, "hi", new Date(), "rahul"); List<Message> messages
		 * = new ArrayList<Message>(); messages.add(message); messages.add(message1);
		 * return messages;
		 */
	}

	public List<String> getCategory() {
		List<String> category = new ArrayList<String>();
		category.add("Friend");
		category.add("Sleep");
		category.add("Study");
		category.add("Roaming");
		return category;
	}

	public Message getMessage(long id) {
		return messages.get(id);
	}

	public Message addMessage(Message message) {
		message.setId(messages.size() + 1);
		message.setCreated(new Date());
		messages.put(message.getId(), message);
		return message;
	}

	public Message updateMessage(Message message) {
		if (message.getId() <= 0)
			return null;
		messages.put(message.getId(), message);
		return message;
	}

	public Message removeMessage(long id) {
		return messages.remove(id);
	}
}
