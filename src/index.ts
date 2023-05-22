import 'dotenv/config';
import { Client, Events, GatewayIntentBits } from 'discord.js';

import { CommandsEmbed, FrameDataEmbed, HelpEmbed, MK9ErrorEmbed, SelectorEmbed, TECommandEmbed } from './embed.js';
import { Alias } from './alias.js';

if (!process.env.TOKEN) throw Error('Missing TOKEN enviroment variable.');
if (!process.env.PREFIX) throw Error('Missing PREFIX enviroment variable.');
const prefix = process.env.PREFIX;

const client = new Client({
  intents: [
    GatewayIntentBits.Guilds,
    GatewayIntentBits.GuildMessages,
    GatewayIntentBits.MessageContent,
  ],
});

client.once(Events.ClientReady, c => console.log(`Ready! Logged in as ${c.user.tag}`));

client.on('messageCreate', async (message) => {
  if (!message.content.startsWith(prefix)) return;
  const commands = message.content.replace(prefix, '').trimEnd().split(' ').filter((command => command !== ''));
  if (commands.length <= 0) return;

  const character = Alias.get(commands.at(0) ?? '');
  const command = commands.at(1);
  if (character) (!command) ? message.channel.send({embeds: [await CommandsEmbed(character)]}) : message.channel.send({embeds: [await FrameDataEmbed(character, command ?? '')]});
  else switch(commands[0]) {
    case 'selector': {
      message.channel.send({embeds: [SelectorEmbed]});
    } break;
    case 'help': {
      message.channel.send({embeds: [HelpEmbed]});
    } break;
    case 'te': {
      if (!commands.at(1)) return;
      message.channel.send({embeds: [TECommandEmbed]});
    } break;
    default: {
      message.channel.send({embeds: [MK9ErrorEmbed]});
    } break;
  }
});

client.login(process.env.TOKEN);
