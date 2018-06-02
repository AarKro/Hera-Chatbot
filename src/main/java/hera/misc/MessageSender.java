package hera.misc;

import java.awt.Color;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import sx.blah.discord.api.internal.json.objects.EmbedObject;
import sx.blah.discord.handle.obj.IChannel;
import sx.blah.discord.util.EmbedBuilder;

public class MessageSender {
	
	private static final Logger LOG = LoggerFactory.getLogger(MessageOfTheDayManager.class);
	
	private static MessageSender instance;
	
	public static MessageSender getInstance() {
		if (instance == null) {
			instance = new MessageSender();
		}
		return instance;
	}
	
	
	// default constructor
	private MessageSender() { }

	public void sendMessage(IChannel channel, String title, String message) {
		LOG.debug("Start of: MessageSender.sendMessage");
		if(channel != null) {
			EmbedBuilder eb = new EmbedBuilder();
			eb.withColor(Color.ORANGE);
			eb.withTitle(title);
			eb.appendDesc(message);
			
			EmbedObject em = eb.build();
			
			try {
				channel.sendMessage(em);
				LOG.debug("Sent message: " + message);
			} catch (Exception e) {
				LOG.error("Message could not be sent");
				LOG.error("Channel trying to post to: " + channel.getName() + ", " + channel.getLongID() + ", Message causing error: " + message);
				LOG.error(e.getMessage() + " : " + e.getCause());
			}
		} else {
			LOG.debug("Channel binding is missing");
		}
		LOG.debug("End of: MessageSender.sendMessage");
	}
}
