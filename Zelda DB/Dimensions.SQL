CREATE VIEW "vw_dim_games" AS
SELECT 
    Game_ID,
    Game_Name,
    Game_Description,
    Publisher_Name,
    Developer_Company,
    released_date
FROM "silver_games"
WHERE ChangeEffectiveTo = '9999-12-31 23:59:59';


CREATE VIEW "vw_dim_characters" AS
SELECT 
    Character_ID,
    Character_Name,
    Character_Description,
    Character_Gender,
    Character_Race
FROM "silver_character"
WHERE ChangeEffectiveTo = '9999-12-31 23:59:59';


CREATE VIEW "vw_dim_dungeons" AS
SELECT 
    Dungeon_ID,
    Dungeon_Name,
    Dungeon_Description
FROM "silver_dungeons"
WHERE ChangeEffectiveTo = '9999-12-31 23:59:59';


CREATE VIEW "vw_dim_bosses" AS
SELECT 
    Boss_ID,
    Boss_Name,
    Boss_Description
FROM "silver_Bosses"
WHERE ChangeEffectiveTo = '9999-12-31 23:59:59';


CREATE VIEW "vw_dim_monsters" AS
SELECT 
    Monster_ID,
    Monster_Name,
    Monster_Description
FROM "silver_monsters"
WHERE ChangeEffectiveTo = '9999-12-31 23:59:59';


CREATE VIEW "vw_dim_items" AS
SELECT 
    Item_ID,
    Item_Name,
    Item_description
FROM "silver_items"
WHERE ChangeEffectiveTo = '9999-12-31 23:59:59';


CREATE VIEW "vw_dim_places" AS
SELECT 
    Place_ID,
    Place_Name,
    Place_Description
FROM "silver_places"
WHERE ChangeEffectiveTo = '9999-12-31 23:59:59';


CREATE VIEW "vw_dim_staff" AS
SELECT 
    Staff_ID,
    Staff_Name
FROM "silver_staff"
WHERE ChangeEffectiveTo = '9999-12-31 23:59:59';