import { EmbedBuilder } from 'discord.js';

import { KomBot } from './kombot';

export namespace Embed {
  const LINK = {
    SELECTOR: 'https://mega.nz/file/kuljyAKY#nCPo5L1je1ypN2Rd5dbUIiS3cHLFMhoMkVaBz58-vuI',
    IMAGE: 'https://imgur.com/xFndxks.png',
    SPREADSHEET: 'https://drive.google.com/file/d/1XgADp5_ec_4XkzsGj9H3mfMiyb1nZmvL/view?usp=sharing',
    // TE_SPREADSHEET: '',
  } as const;

  export const TEError = new EmbedBuilder()
    .setColor(0xA84300)
    .setDescription('Not Found. Try: `!help`');

  export const MK9Error = new EmbedBuilder()
    .setColor(0xE74C3C)
    .setDescription('Not Found. Try: `!help`');

  export const TECommand = new EmbedBuilder()
    .setColor(0xA84300)
    .setDescription('TE commands have not been added yet. Try again later.');

  export const Help = new EmbedBuilder()
    .setColor(0xE74C3C)
    .setThumbnail(LINK.IMAGE)
    .addFields(
      {name: 'SYNTAX:', value: '```!<character> <command>\n!te <character> <command>```', inline: true},
      {name: 'EXAMPLE:', value: '```!scorpion 1\n!te scorpion 1```', inline: true},
      {name: 'To view all commands for a character:', value: '```!<character>```'},
      {name: 'Characters:', value: '```Baraka, CSZ, Cyrax, Ermac, Freddy, Jade, Jax, Cage, Kabal, Kano, Kenshi, Kitana, Kratos, Lao, Kang, Mileena, Nightwolf, Noob, Quan, Raiden, Reptile, Rain, Scorpion, Sektor, Shang, Sheeva, Sindel, Skarlet, Smoke, Sonya, Stryker, Subzero```'},
      {name: 'MK9 Selector (Unofficial TE Mod Installer/Launcher):', value: '```!selector```'},
    )
    .setFooter({text: 'KomBot was originally created by AaronPC. It has since been entirely recreated by Biggs'});

  export const Selector = new EmbedBuilder()
    .setColor(0xA84300)
    .setTitle('__MK9 Selector__')
    .setURL(LINK.SELECTOR)
    .setDescription('This software is a custom launcher for the MK9 Trilogy Edition Mod. It allows you to switch between the Trilogy Edition Mod and Vanilla MK9 with the click of a button.')
    .setThumbnail(LINK.IMAGE)
    .addFields({
      name: 'Instructions',
      value: 'From a CLEAN MK9 installation, download the Installer below and run it.',
    })
    .setFooter({text: 'NOTE: To update from a previous version first launch your Selector and click the Uninstall/Restore button (TE logo with an X through it). This should return you to a CLEAN MK9 install. After that, download the new installer above and run it. This method only works if you originally installed TE via the Installer (!selector) download.\n\n MK9 Selector was originally made by AaronPC. The project is now maintained by Biggs.'});

  export const FrameData = (fighter: string, command: string) => {
    try {
      const framedata = KomBot.GetFrameData(fighter, command);
      return new EmbedBuilder()
        .setColor(0xE74C3C)
        .setURL(LINK.SPREADSHEET)
        .setTitle((framedata.name !== '~') ? `__MK9 ${KomBot.Fighter.get(framedata.fighter) ?? ''} ${framedata.command} ${framedata.name}__` : `__MK9 ${KomBot.Fighter.get(framedata.fighter) ?? ''} ${framedata.command}__`)
        .addFields((framedata.level !== '~') ? [{name: 'Hit Level:', value: framedata.level, inline: true}] : [])
        .addFields((framedata.execution !== '~') ? [{name: 'Execution:', value: framedata.execution, inline: true}] : [])
        .addFields((framedata.startup !== '~') ? [{name: 'Startup:', value: framedata.startup, inline: true}] : [])
        .addFields((framedata.block !== '~') ? [{name: 'On Block:', value: framedata.block, inline: true}] : [])
        .addFields((framedata.hit !== '~') ? [{name: 'On Hit:', value: framedata.hit, inline: true}] : [])
        .addFields((framedata.blockcancel !== '~') ? [{name: 'Block Cancel Adv:', value: framedata.blockcancel, inline: true}] : [])
        .addFields((framedata.hitcancel !== '~') ? [{name: 'Hit Cancel Adv:', value: framedata.hitcancel, inline: true}] : [])
        .setFooter((framedata.notes !== '~') ? {text: framedata.notes} : null)
        .setImage((framedata.image !== '~') ? framedata.image : null);
    } catch(e) {
      return new EmbedBuilder()
        .setColor(0xE74C3C)
        .setDescription(`Not Found. Try: \`!${fighter.split(' ').join('').split('-').join('').toLowerCase()}\``);
    }
  }

  export const Commands = (fighter: string) => {
    try {
      const commands = KomBot.GetCommands(fighter);
      return new EmbedBuilder()
        .setColor(0xE74C3C)
        .setTitle(`MK9 ${fighter} Commands`)
        .setDescription(commands.map(command => ` \`${command}\``).join());
    } catch(e) {
      console.error(e);
      return MK9Error;
    }
  }
};

export const TEError = Embed.TEError;

export const MK9Error = Embed.MK9Error;

export const TECommand = Embed.TECommand;

export const Help = Embed.Help;

export const Selector = Embed.Selector;

export const FrameData = Embed.FrameData;

export const Commands = Embed.Commands;
