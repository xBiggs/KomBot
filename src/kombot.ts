import * as path from 'node:path';
import { Database } from 'bun:sqlite';
import { Type, Static } from '@sinclair/typebox';
import { Value } from '@sinclair/typebox/value';

export namespace KomBot {
  const db = new Database(path.join(import.meta.dir, 'mk9.sqlite'), { readonly: true });

  const FrameDataSchema = Type.Object({
    fighter: Type.String(),
    command: Type.String(),
    name: Type.String(),
    execution: Type.String(),
    startup: Type.String(),
    level: Type.String(),
    block: Type.String(),
    hit: Type.String(),
    blockcancel: Type.String(),
    hitcancel: Type.String(),
    notes: Type.String(),
    image: Type.String(),
  } as const);

  export type FrameData = Static<typeof FrameDataSchema>;

  const FrameDataQuery = db.query(`SELECT ${(Object.keys(FrameDataSchema.properties).join(', '))} FROM framedata WHERE fighter = $fighter AND command = $command;`);

  export const GetFrameData = (fighter: string, command: string): FrameData => {
    const framedata = FrameDataQuery.get({$fighter: fighter, $command: command});
    if (!Value.Check(FrameDataSchema, framedata)) throw Error('FrameDataSchema Validation Failed.');
    return framedata;
  }

  const CommandsSchema = Type.Array(Type.Object({command: Type.String()}), {minItems: 1});

  const CommandsQuery = db.query(`SELECT command FROM framedata WHERE fighter = $fighter;`);

  export const GetCommands = (fighter: string): string[] => {
    const commands = CommandsQuery.all({$fighter: fighter});
    if (!Value.Check(CommandsSchema, commands)) throw Error('CommandsSchema Validation Failed.');
    return commands.map(row => row.command);
  }

  export const Alias = new Map<string, string>([
    ['baraka', 'baraka'],

    ['csz', 'csz'],

    ['cyrax', 'cyrax'],
    ['rax', 'cyrax'],

    ['ermac', 'ermac'],
    ['mac', 'ermac'],

    ['freddy', 'freddy'],

    ['jade', 'jade'],

    ['jax', 'jax'],

    ['johnnycage', 'johnnycage'],
    ['johnny', 'johnnycage'],
    ['cage', 'johnnycage'],
    ['jc', 'johnnycage'],

    ['kabal', 'kabal'],
    ['god', 'kabal'],

    ['kano', 'kano'],
    ['kenshi', 'kenshi'],
    ['scrub', 'kenshi'],

    ['kitana', 'kitana'],
    ['kit', 'kitana'],

    ['kratos', 'kratos'],

    ['kunglao', 'kunglao'],
    ['kung', 'kunglao'],
    ['lao', 'kunglao'],
    ['kl', 'kunglao'],

    ['liukang', 'liukang'],
    ['liu', 'liukang'],
    ['kang', 'liukang'],
    ['lk', 'liukang'],

    ['mileena', 'mileena'],
    ['mil', 'mileena'],

    ['nightwolf', 'nightwolf'],
    ['nw', 'nightwolf'],
    ['wolf', 'nightwolf'],

    ['noobsaibot', 'noobsaibot'],
    ['noob', 'noobsaibot'],
    ['saibot', 'noobsaibot'],

    ['quanchi', 'quanchi'],
    ['quan', 'quanchi'],

    ['raiden', 'raiden'],
    ['rain', 'rain'],

    ['reptile', 'reptile'],
    ['rep', 'reptile'],

    ['scorpion', 'scorpion'],
    ['scorp', 'scorpion'],

    ['sektor', 'sektor'],

    ['shangtsung', 'shangtsung'],
    ['shang', 'shangtsung'],

    ['sheeva', 'sheeva'],

    ['sindel', 'sindel'],
    ['sin', 'sindel'],
    ['sexdel', 'sindel'],

    ['skarlet', 'skarlet'],
    ['skar', 'skarlet'],
    ['scarlet', 'skarlet'],
    ['scar', 'skarlet'],

    ['smoke', 'smoke'],
    ['gay', 'smoke'],

    ['sonya', 'sonya'],

    ['stryker', 'stryker'],

    ['subzero', 'subzero'],
    ['sub', 'subzero'],
    ['sz', 'subzero'],
  ]);

  export const Fighter = new Map<string, string>([
    ['baraka', 'Baraka'],
    ['csz', 'CSZ'],
    ['cyrax', 'Cyrax'],
    ['ermac', 'Ermac'],
    ['freddy', 'Freddy'],
    ['jade', 'Jade'],
    ['jax', 'Jax'],
    ['johnnycage', 'Johnny Cage'],
    ['kabal', 'Kabal'],
    ['kano', 'Kano'],
    ['kenshi', 'Kenshi'],
    ['kitana', 'Kitana'],
    ['kratos', 'Kratos'],
    ['kunglao', 'Kung Lao'],
    ['liukang', 'Liu Kang'],
    ['mileena', 'Mileena'],
    ['nightwolf', 'Nightwolf'],
    ['noobsaibot', 'Noob Saibot'],
    ['quanchi', 'Quan Chi'],
    ['raiden', 'Raiden'],
    ['rain', 'Rain'],
    ['reptile', 'Reptile'],
    ['scorpion', 'Scorpion'],
    ['sektor', 'Sektor'],
    ['shangtsung', 'Shang Tsung'],
    ['sheeva', 'Sheeva'],
    ['sindel', 'Sindel'],
    ['skarlet', 'Skarlet'],
    ['smoke', 'Smoke'],
    ['sonya', 'Sonya'],
    ['stryker', 'Stryker'],
    ['subzero', 'Sub-Zero'],
  ]);
};

export const GetFrameData = KomBot.GetFrameData;

export const GetCommands = KomBot.GetCommands;

export const Alias = KomBot.Alias;

export const Fighter = KomBot.Fighter;
