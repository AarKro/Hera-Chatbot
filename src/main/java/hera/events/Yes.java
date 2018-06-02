package hera.events;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import hera.misc.MessageSender;
import hera.misc.VoteManager;
import sx.blah.discord.handle.impl.events.guild.channel.message.MessageReceivedEvent;

public class Yes implements Command {

	private static final Logger LOG = LoggerFactory.getLogger(Yes.class);
	
	private static Yes instance;

	public static Yes getInstance() {
		if (instance == null) {
			instance = new Yes();
		}
		return instance;
	}

	private MessageSender ms;
	private VoteManager vm;

	// default constructor
	private Yes() {
		this.ms = MessageSender.getInstance();
		this.vm = VoteManager.getInstance();
	}

	public void execute(MessageReceivedEvent e) {
		LOG.debug("Start of: Yes.execute");
		if (vm.isVoteActive()) {
			if (!vm.hasAlreadyVoted(e.getAuthor())) {
				vm.addUserToAlreadyVoted(e.getAuthor());
				vm.setCountYes(vm.getCountYes() + 1);
				LOG.info(e.getAuthor() + " voted yes on the currently active vote");
			} else {
				ms.sendMessage(e.getChannel(), "", "You have already voted!");
				LOG.debug(e.getAuthor() + " tried to vote yes on a vote that was already voted on");
			}
		} else {
			ms.sendMessage(e.getChannel(), "There is no active vote to vote on", "Type $vote <topic> to start a vote.");
			LOG.debug(e.getAuthor() + " tried to vote yes on a non existing vote");
		}
		LOG.debug("End of: Yes.execute");
	}
}
