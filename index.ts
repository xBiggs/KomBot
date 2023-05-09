import 'dotenv/config';
import { Client, Events, GatewayIntentBits } from 'discord.js';

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

client.on('messageCreate', message => {
  if (!message.content.startsWith(prefix)) return;
  const command = message.content.replace(prefix, '').trimEnd();
  console.log(command);
});

client.login(process.env.TOKEN);
