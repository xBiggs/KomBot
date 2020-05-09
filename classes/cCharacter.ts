import Discord = require("discord.js");
import { FrameData } from '../interfaces/iFrameData';
import { MK9_SPREADSHEET_LINK, TE_SPREADSHEET_LINK } from '../commands/links';

export class Character {
    name: string;
    framedata: FrameData[];

    constructor(name: string) {
        this.name = name;
        const filename: string = name.split(' ').join('').split('-').join('').toLowerCase(); 
        this.framedata = require(`../json/${filename}.json`);
    }

    getFrameData(command: string): Discord.MessageEmbed {

        const data: FrameData = this.framedata.find(element => element.command === command);

        if (data) {
            const embed: Discord.MessageEmbed = new Discord.MessageEmbed().setColor('RED');
            if (data.name !== '~') {
                embed.setTitle(`__MK9 ${this.name} ${data.command} ${data.name}__`)
            } else {
                embed.setTitle(`__MK9 ${this.name} ${data.command}__`)
            }

            embed.setURL(MK9_SPREADSHEET_LINK);
            if (data.level !== '~') {
                embed.addField('Hit Level:', `${data.level}`, true);
            } if (data.execution !== '~') {
                embed.addField('Execution:', `${data.execution}`, true);
            } if (data.startup !== '~') {
                embed.addField('Startup:', `${data.startup}`, true);
            } if (data.block !== '~') {
                embed.addField('On Block:', `${data.block}`, true);
            } if (data.hit !== '~') {
                embed.addField('On Hit:', `${data.hit}`, true);
            } if (data.blockCancel !== '~') {
                embed.addField('Block Cancel Adv:', `${data.blockCancel}`, true);
            } if (data.hitCancel !== '~') {
                embed.addField('Hit Cancel Adv:', `${data.hitCancel}`, true);
            } if (data.notes !== '~') {
                embed.setFooter(`${data.notes}`);
            } if (data.image !== '~') {
                embed.setImage(`${data.image}`);
            }
            return embed;
        } else {
            const char: string = this.name.split(' ').join('').split('-').join('').toLowerCase();
            const embed: Discord.MessageEmbed = new Discord.MessageEmbed()
                .setColor('RED')
                .setDescription('Not Found. Try: `!' + char + '`');
            return embed;
        }

    }

    getCommands(): Discord.MessageEmbed {
        let commands: string = '';
        this.framedata.map(element => commands += ' `' + element.command + '`');
        const embed: Discord.MessageEmbed = new Discord.MessageEmbed()
            .setColor('RED')
            .setTitle(`MK9 ${this.name} Commands`)
            .setDescription(commands);
        return embed;
    }
}

export class TECharacter extends Character {

    readonly version: string = '2.50';

    getFrameData(command: string): Discord.MessageEmbed {

        const data: FrameData = this.framedata.find(element => element.command === command);

        if (data) {
            const embed: Discord.MessageEmbed = new Discord.MessageEmbed().setColor('RED');
            if (data.name !== '~') {
                embed.setTitle(`__MK9TE v${this.version} ${this.name} ${data.command} ${data.name}__`)
            } else {
                embed.setTitle(`__MK9TE v${this.version} ${this.name} ${data.command}__`)
            }

            embed.setURL(TE_SPREADSHEET_LINK)
            .addFields(
                { name: 'Execution:', value: `${data.execution}`, inline: true },
                { name: 'Startup:', value: `${data.startup}`, inline: true },
                { name: 'On Block:', value: `${data.block}`, inline: true },
                { name: 'On Hit:', value: `${data.hit}`, inline: true },
                { name: 'Block Cancel Adv:', value: `${data.blockCancel}`, inline: true },
                { name: 'Hit Cancel Adv:', value: `${data.hitCancel}`, inline: true }
            )
            if (data.notes !== '~') {
                embed.setFooter(`${data.notes}`);
            }
            if (data.image !== '~') {
                embed.setImage(`${data.image}`);
            }
            return embed;
        } else {
            const char: string = this.name.split(' ').join('').split('-').join('').toLowerCase();
            const embed: Discord.MessageEmbed = new Discord.MessageEmbed()
                .setColor('RED')
                .setDescription('Not Found. Try: `!te ' + char + '`');
            return embed;
        }

    }

    getCommands(): Discord.MessageEmbed {
        let commands: string = '';
        this.framedata.map(element => commands += ' `' + element.command + '`');
        const embed: Discord.MessageEmbed = new Discord.MessageEmbed()
            .setColor('DARK_GOLD')
            .setTitle(`MK9TE v${this.version} ${this.name} Commands`)
            .setDescription(commands);
        return embed;
    }
}
