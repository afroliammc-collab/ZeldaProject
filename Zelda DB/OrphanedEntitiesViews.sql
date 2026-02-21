CREATE VIEW "vw_dq_boss_game_orphans" AS
SELECT lbg.Boss_ID, lbg.Game_ID, 'Boss has no valid Game link' AS DQ_Issue
FROM "link_boss_games" lbg
LEFT JOIN "silver_games" sg ON sg.Game_ID = lbg.Game_ID
WHERE sg.Game_ID IS NULL;


CREATE VIEW "vw_dq_boss_dungeon_orphans" AS
SELECT lbd.Boss_ID, lbd.Dungeon_ID, 'Boss has no valid Dungeon link' AS DQ_Issue
FROM "link_boss_dungeons" lbd
LEFT JOIN "silver_dungeons" sd ON sd.Dungeon_ID = lbd.Dungeon_ID
WHERE sd.Dungeon_ID IS NULL;


CREATE VIEW "vw_dq_character_game_orphans" AS
SELECT lcg.Character_ID, lcg.Game_ID, 'Character has no valid Game link' AS DQ_Issue
FROM "link_character_games" lcg
LEFT JOIN "silver_games" sg ON sg.Game_ID = lcg.Game_ID
WHERE sg.Game_ID IS NULL;


CREATE VIEW "vw_dq_dungeon_game_orphans" AS
SELECT ldg.Dungeon_ID, ldg.Game_ID, 'Dungeon has no valid Game link' AS DQ_Issue
FROM "link_dungeon_games" ldg
LEFT JOIN "silver_games" sg ON sg.Game_ID = ldg.Game_ID
WHERE sg.Game_ID IS NULL;


CREATE VIEW "vw_dq_monster_game_orphans" AS
SELECT lmg.Monster_ID, lmg.Game_ID, 'Monster has no valid Game link' AS DQ_Issue
FROM "link_monster_games" lmg
LEFT JOIN "silver_games" sg ON sg.Game_ID = lmg.Game_ID
WHERE sg.Game_ID IS NULL;


CREATE VIEW "vw_dq_item_game_orphans" AS
SELECT lig.Item_ID, lig.Game_ID, 'Item has no valid Game link' AS DQ_Issue
FROM "link_item_games" lig
LEFT JOIN "silver_games" sg ON sg.Game_ID = lig.Game_ID
WHERE sg.Game_ID IS NULL;


CREATE VIEW "vw_dq_place_game_orphans" AS
SELECT lpg.Place_ID, lpg.Game_ID, 'Place has no valid Game link' AS DQ_Issue
FROM "link_place_games" lpg
LEFT JOIN "silver_games" sg ON sg.Game_ID = lpg.Game_ID
WHERE sg.Game_ID IS NULL;


CREATE VIEW "vw_dq_place_character_orphans" AS
SELECT lpc.Place_ID, lpc.Character_ID, 'Place has no valid Character link' AS DQ_Issue
FROM "link_place_characters" lpc
LEFT JOIN "silver_character" sc ON sc.Character_ID = lpc.Character_ID
WHERE sc.Character_ID IS NULL;


CREATE VIEW "vw_dq_staff_game_orphans" AS
SELECT lsg.Staff_ID, lsg.Game_ID, 'Staff has no valid Game link' AS DQ_Issue
FROM "link_staff_games" lsg
LEFT JOIN "silver_games" sg ON sg.Game_ID = lsg.Game_ID
WHERE sg.Game_ID IS NULL;