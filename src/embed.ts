import { EmbedBuilder } from 'discord.js';
import { PrismaClient } from '@prisma/client';
import { Fighter } from './alias.js';

const SELECTOR_LINK = 'https://drive.google.com/file/d/17sNwaJwUAmwIh9MYOf6bRd3YKK-7G2xP/view?usp=sharing';
const MK9_MK9TE_IMAGE_LINK = 'https://imgur.com/xFndxks.png';
const MK9_SPREADSHEET_LINK = 'https://drive.google.com/file/d/1XgADp5_ec_4XkzsGj9H3mfMiyb1nZmvL/view?usp=sharing';
// const TE_SPREADSHEET_LINK = '';

const prisma = new PrismaClient();

export const FrameDataEmbed = async (fighter: string, command: string) => {
  try {
    const query = await prisma.framedata.findUniqueOrThrow({
      where: {
        fighter_command: {
          fighter,
          command,
        },
      },
    });
    const embed = new EmbedBuilder()
      .setColor(0xE74C3C)
      .setURL(MK9_SPREADSHEET_LINK);
    (query.name !== '~') ? embed.setTitle(`__MK9 ${Fighter.get(query.fighter) ?? ''} ${query.command} ${query.name}__`) : embed.setTitle(`__MK9 ${Fighter.get(query.fighter) ?? ''} ${query.command}__`);
    (query.level !== '~') ? embed.addFields({name: 'Hit Level:', value: `${query.level}`, inline: true}) : false;
    (query.execution !== '~') ? embed.addFields({name: 'Execution:', value: `${query.execution}`, inline: true}) : false;
    (query.startup !== '~') ? embed.addFields({name: 'Startup:', value: `${query.startup}`, inline: true}) : false;
    (query.block !== '~') ? embed.addFields({name: 'On Block:', value: `${query.block}`, inline: true}) : false;
    (query.hit !== '~') ? embed.addFields({name: 'On Hit:', value: `${query.hit}`, inline: true}) : false;
    (query.blockcancel !== '~') ? embed.addFields({name: 'Block Cancel Adv:', value: `${query.blockcancel}`, inline: true}) : false;
    (query.hitcancel !== '~') ? embed.addFields({name: 'Hit Cancel Adv:', value: `${query.hitcancel}`, inline: true}) : false;
    (query.notes !== '~') ? embed.setFooter({text: `${query.notes}`}) : false;
    (query.image !== '~') ? embed.setImage(`${query.image}`) : false;
    return embed;
  } catch (e) {
    const char = fighter.split(' ').join('').split('-').join('').toLowerCase();
    return new EmbedBuilder()
      .setColor(0xE74C3C)
      .setDescription('Not Found. Try: `!' + char + '`');
  }
}

export const CommandsEmbed = async (fighter: string) => {
  try {
    const query = await prisma.framedata.findMany({
      where: {
        fighter,
      },
      select: {
        command: true,
      },
    });
    let commands = '';
    query.map(element => commands += ' `' + element.command + '`');
    return new EmbedBuilder()
      .setColor(0xE74C3C)
      .setTitle(`MK9 ${fighter} Commands`)
      .setDescription(commands);
  } catch (e) {
    console.error((e as Error).message);
  }
}

export const SelectorEmbed = new EmbedBuilder()
  .setColor(0xA84300)
  .setTitle('__MK9 Selector__')
  .setURL(SELECTOR_LINK)
  .setDescription('This software is a custom launcher for the MK9 Trilogy Edition Mod. It allows you to switch between the Trilogy Edition Mod and Vanilla MK9 with the click of a button.')
  .setThumbnail(MK9_MK9TE_IMAGE_LINK)
  .addFields({
    name: 'Instructions',
    value: 'From a CLEAN MK9 installation, download the Installer below and run it.',
  })
  .setFooter({
    text: 'NOTE: To update from a previous version first launch your Selector and click the Uninstall/Restore button (TE logo with an X through it).' +
    'This should return you to a CLEAN MK9 install. After that, download the new installer above and run it.' +
    'This method only works if you originally installed TE via the Installer (!selector) download.\n\n' +
    'MK9 Selector was originally made by AaronPC. The project is now maintained by Biggs.',
  });

export const HelpEmbed = new EmbedBuilder()
  .setColor(0xE74C3C)
  .setThumbnail(MK9_MK9TE_IMAGE_LINK)
  .addFields(
    {name: 'SYNTAX:', value: '```!<character> <command>\n!te <character> <command>```', inline: true},
    {name: 'EXAMPLE:', value: '```!scorpion 1\n!te scorpion 1```', inline: true},
    {name: 'To view all commands for a character:', value: '```!<character>```'},
    {name: 'Characters:', value: '```Baraka, CSZ, Cyrax, Ermac, Freddy, Jade, Jax, Cage, Kabal, Kano, Kenshi, Kitana, Kratos, Lao, Kang, Mileena, Nightwolf, Noob, Quan, Raiden, Reptile, Rain, Scorpion, Sektor, Shang, Sheeva, Sindel, Skarlet, Smoke, Sonya, Stryker, Subzero```'},
    {name: 'MK9 Selector (Unofficial TE Mod Installer/Launcher):', value: '```!selector```'}
  )
  .setFooter({
    text: 'KomBot was originally created by AaronPC. It has since been entirely recreated by Biggs',
  });

export const TEErrorEmbed = new EmbedBuilder()
  .setColor(0xA84300)
  .setDescription('Not Found. Try: `!help`');

export const MK9ErrorEmbed = new EmbedBuilder()
  .setColor(0xE74C3C)
  .setDescription('Not Found. Try: `!help`');

export const TECommandEmbed = new EmbedBuilder()
  .setColor(0xA84300)
  .setDescription('TE commands have not been added yet. Try again later.');
