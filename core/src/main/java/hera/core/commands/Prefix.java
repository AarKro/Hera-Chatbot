package hera.core.commands;

import discord4j.core.event.domain.message.MessageCreateEvent;
import discord4j.core.object.entity.Guild;
import discord4j.core.object.entity.Member;
import discord4j.core.object.entity.MessageChannel;
import hera.core.HeraUtil;
import hera.core.messages.HeraMsgSpec;
import hera.core.messages.MessageSender;
import hera.database.entities.GuildSetting;
import hera.database.entities.Localisation;
import hera.database.types.GuildSettingKey;
import hera.database.types.LocalisationKey;
import reactor.core.publisher.Mono;

import java.awt.*;
import java.util.List;

import static hera.store.DataStore.STORE;

public class Prefix {
	public static Mono<Void> execute(MessageCreateEvent event, Guild guild, Member member, MessageChannel channel, List<String> params) {
		List<GuildSetting> gsList = STORE.guildSettings().forGuildAndKey(guild.getId().asLong(), GuildSettingKey.COMMAND_PREFIX);

		if (gsList.isEmpty()) {
			STORE.guildSettings().add(new GuildSetting(guild.getId().asLong(), GuildSettingKey.COMMAND_PREFIX, params.get(0)));
		} else {
			GuildSetting gs = gsList.get(0);
			gs.setValue(params.get(0));
			STORE.guildSettings().update(gs);
		}

		Localisation message = HeraUtil.getLocalisation(LocalisationKey.COMMAND_PREFIX, guild);
		return MessageSender.send(HeraMsgSpec.getDefaultSpec(channel).setDescription(String.format(message.getValue(), params.get(0)))).then();
	}
}
