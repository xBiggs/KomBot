import { Client, Events, GatewayIntentBits } from 'discord.js';
import { Type } from '@sinclair/typebox';
import { Value } from '@sinclair/typebox/value';

import { Embed } from './embed';
import { Alias } from './kombot';

const EnviromentSchema = Type.Object({
  TOKEN: Type.Readonly(Type.String()),
  PREFIX: Type.Readonly(Type.String()),
});

const env = Value.Check(EnviromentSchema, process.env) ? process.env : (() => {throw Error('EnviromentSchema Validation Failed.')})();

try {
  const discord = new Client({
    intents: [
      GatewayIntentBits.Guilds,
      GatewayIntentBits.GuildMessages,
      GatewayIntentBits.MessageContent,
    ],
  } as const);
  discord.once(Events.ClientReady, client => console.log(`Ready! Logged in as ${client.user.tag}`));
  discord.on('messageCreate', (message) => {
    if (!message.content.startsWith(env.PREFIX)) return;
    const commands = message.content.toLowerCase().replace(env.PREFIX, '').trimEnd().split(' ').filter((command => command !== ''));
    if (commands.length <= 0) return;
    const character = Alias.get(commands.at(0) ?? '');
    const command = commands.at(1);
    if (character) message.channel.send({embeds: [(!command) ? Embed.Commands(character) : Embed.FrameData(character, command ?? '')]});
    else switch(commands[0]) {
      case 'selector': { message.channel.send({embeds: [Embed.Selector]}); } break;
      case 'help': { message.channel.send({embeds: [Embed.Help]}); } break;
      case 'te': { message.channel.send({embeds: [Embed.TECommand]}); } break;
      default: { message.channel.send({embeds: [Embed.MK9Error]}); } break;
    }
  });
  discord.login(env.TOKEN);
} catch(e) {
  console.error(e);
}
