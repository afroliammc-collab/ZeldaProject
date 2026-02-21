-- 1. Which staff member worked on the most games?
CREATE VIEW "vw_analytical_staff_most_games" AS
SELECT 
    ss.Staff_ID,
    ss.Staff_Name,
    COUNT(lg.Game_ID) AS Number_of_Games
FROM "silver_staff" ss
INNER JOIN "link_staff_games" lsg ON ss.Staff_ID = lsg.Staff_ID
WHERE ss.ChangeEffectiveTo = '9999-12-31 23:59:59'
GROUP BY ss.Staff_ID, ss.Staff_Name
ORDER BY Number_of_Games DESC;


-- 2. Monsters appearing in at least 3 games
CREATE VIEW "vw_analytical_monsters_min_3_games" AS
SELECT 
    sm.Monster_ID,
    sm.Monster_Name,
    sm.Monster_Description,
    COUNT(lmg.Game_ID) AS Number_of_Games
FROM "silver_monsters" m
INNER JOIN "link_monster_games" lmg ON sm.Monster_ID = lmg.Monster_ID
WHERE sm.ChangeEffectiveTo = '9999-12-31 23:59:59'
GROUP BY sm.Monster_ID, sm.Monster_Name, sm.Monster_Description
HAVING COUNT(lmg.Game_ID) >= 3
ORDER BY Number_of_Games DESC;



CREATE VIEW "vw_analytical_items_by_game_count" AS
SELECT 
    i.Item_ID,
    i.Item_Name,
    i.Item_description,
    COUNT(lig.Game_ID) AS Number_of_Games
FROM "silver_items" i
INNER JOIN "link_item_games" lig ON i.Item_ID = lig.Item_ID
WHERE i.ChangeEffectiveTo = '9999-12-31 23:59:59'
GROUP BY i.Item_ID, i.Item_Name, i.Item_description
ORDER BY Number_of_Games DESC;