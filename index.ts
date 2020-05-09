// File: index.ts
// Author: Biggs
// Description: MK9 Frame Data Discord Bot
// Date: 4/26/2020

import Discord = require("discord.js");
import { TOKEN, PREFIX } from './config';
import { MK9Characters }  from './commands/characters';
import { selectorEmbed, mk9ErrorEmbed, teErrorEmbed, helpEmbed, teCommandEmbed } from './commands/embeds';

const Client = new Discord.Client();

Client.once('ready', () => {
    console.log(`Logged in as ${Client.user.tag}!`);
});

Client.login(TOKEN);

Client.on('message', message => {

    // Checks to see if PREFIX appears as the first word
    if (!message.content.startsWith(PREFIX) || message.author.bot) return;

    // Removes PREFIX from commmand input argument
    const args: string[] = message.content.slice(PREFIX.length).split(/ +/);
    const commands: string[] = args.map(element => element.toLowerCase());
    console.log(commands);

    // Top Level Bot Commands
    if (!commands[0]) return;

    // MK9 Characters
    const character: string = Object.keys(MK9Characters).find(key => key === commands[0]);
    if (character) {

        if (commands[1]) {
            message.channel.send(MK9Characters[character].getFrameData(commands[1]));
        } else {
            message.channel.send(MK9Characters[character].getCommands());
        }

    } else {

        switch(commands[0]) {

            case 'selector':
                message.channel.send(selectorEmbed);
            break;
    
            case 'help':
                message.channel.send(helpEmbed);
            break;
    
            // TE Commands
            case 'te':
                if (!commands[1]) return; 
                message.channel.send(teCommandEmbed);
                // TE Characters
            break;
    
            default:
                message.channel.send(mk9ErrorEmbed);
            break;
        }

    }

});