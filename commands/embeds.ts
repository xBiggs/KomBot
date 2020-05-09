import Discord = require("discord.js");
import { SELECTOR_LINK, MK9_MK9TE_IMAGE_LINK } from './links';

export const selectorEmbed = new Discord.MessageEmbed()
    .setColor('DARK_GOLD')
    .setTitle('__MK9 Selector__')
    .setURL(SELECTOR_LINK)
    .setDescription('This software is a custom launcher for the MK9 Trilogy Edition Mod. It allows you to switch between the Trilogy Edition Mod and Vanilla MK9 with the click of a button.')
    .setThumbnail(MK9_MK9TE_IMAGE_LINK)
    .addField('Instructions', 'From a CLEAN MK9 installation, download the Installer below and run it.')
    .setFooter('NOTE: To update from a previous version first launch your Selector and click the Uninstall/Restore button (TE logo with an X through it).' +
                'This should return you to a CLEAN MK9 install. After that, download the new installer above and run it.' +
                'This method only works if you originally installed TE via the Installer (!selector) download.\n\n' +
                'MK9 Selector was originally made by AaronPC. The project is now maintained by Biggs.');

export const helpEmbed = new Discord.MessageEmbed()
    .setColor('RED')
    .setThumbnail(MK9_MK9TE_IMAGE_LINK)
    .addFields(
        {name: 'SYNTAX:', value: '```!<character> <command>\n!te <character> <command>```', inline: true},
        {name: 'EXAMPLE:', value: '```!scorpion 1\n!te scorpion 1```', inline: true},
        {name: 'To view all commands for a character:', value: '```!<character>```'},
        {name: 'Characters:', value: '```Baraka, CSZ, Cyrax, Ermac, Freddy, Jade, Jax, Cage, Kabal, Kano, Kenshi, Kitana, Kratos, Lao, Kang, Mileena, Nightwolf, Noob, Quan, Raiden, Reptile, Rain, Scorpion, Sektor, Shang, Sheeva, Sindel, Skarlet, Smoke, Sonya, Stryker, Subzero```'},
        {name: 'MK9 Selector (Unofficial TE Mod Installer/Launcher):', value: '```!selector```'}
    )
    .setFooter('KomBot was originally created by AaronPC. It has since been entirely recreated by Biggs');

export const teErrorEmbed = new Discord.MessageEmbed()
    .setColor('DARK_GOLD')
    .setDescription('Not Found. Try: `!help`');

export const mk9ErrorEmbed = new Discord.MessageEmbed()
    .setColor('RED')
    .setDescription('Not Found. Try: `!help`');

export const teCommandEmbed = new Discord.MessageEmbed()
        .setColor('DARK_GOLD')
        .setDescription('TE commands have not been added yet. Try again later.');