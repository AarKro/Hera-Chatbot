package hera.events.commands;

import com.sedmelluq.discord.lavaplayer.track.AudioTrack;
import hera.enums.BoundChannel;
import hera.events.Command;
import hera.events.eventSupplements.MessageSender;
import hera.music.GuildAudioPlayerManager;
import org.apache.commons.lang3.ArrayUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import sx.blah.discord.handle.impl.events.guild.channel.message.MessageReceivedEvent;

public class Move extends Command {

    private static final Logger LOG = LoggerFactory.getLogger(hera.events.commands.Move.class);

    private static Move instance;

    public static Move getInstance() {
        if (instance == null)
            instance = new Move();
        return instance;
    }

    private MessageSender ms;
    private GuildAudioPlayerManager gapm;

    // constructor
    private Move() {
        super(null, 2, false);
        this.ms = MessageSender.getInstance();
        this.gapm = GuildAudioPlayerManager.getInstance();
    }

    @Override
    protected void commandBody(String[] params, MessageReceivedEvent e) {
        LOG.debug("Start of: Move.execute");
        try {
            int songToMove = Integer.parseInt(params[0]);
            int position = Integer.parseInt(params[1]);
            int queueLength = gapm.getGuildAudioPlayer(e.getGuild()).scheduler.getQueue().length;

            LOG.debug("Relevant parameters for command move: songToMove: " + songToMove + ", position: " + position + ", queueLength: " + queueLength);

            if (songToMove <= queueLength && songToMove > 0 && position <= queueLength && position > 0) {

                AudioTrack[] queue = gapm.getGuildAudioPlayer(e.getGuild()).scheduler.getQueue();
                AudioTrack trackToMove = queue[songToMove - 1];

                queue = ArrayUtils.insert(position - 1, queue, trackToMove.makeClone());
                queue = ArrayUtils.removeElement(queue, trackToMove);

                gapm.getGuildAudioPlayer(e.getGuild()).scheduler.setQueueAfterMove(queue);

                ms.sendMessage(BoundChannel.MUSIC.getBoundChannel(), "", "Song " + trackToMove.getInfo().title + " moved");
                LOG.info(e.getAuthor() + " moved song " + trackToMove.getInfo().title);

            } else {
                ms.sendMessage(BoundChannel.MUSIC.getBoundChannel(), "", songToMove + " or " + position + " is not a valid song ID.");
                LOG.debug(e.getAuthor() + " used a invalid song ID. Used song IDs: " + songToMove + ", " + position);
            }

        } catch (NumberFormatException e2) {
            ms.sendMessage(BoundChannel.MUSIC.getBoundChannel(), "", "One of the provided song IDs is not a number");
            LOG.error("One of the provided song IDs is not a number, songID1: " + params[0] + ", songID2: " + params[1]);
            LOG.error(e2.getMessage() + " : " + e2.getCause());
        }

        LOG.debug("End of: Move.execute");
    }
}
