START TRANSACTION;

-- Insert unique values into Faction
INSERT INTO Faction (Faction_Code, Faction_Name, Faction_Motto) VALUES
('MAG', 'School of Magicians', 'Always a spell for the job'),
('WAR', 'Warriors United', 'Ready for war!'),
('ROG', 'Rogues Guild', 'Never get caught');

-- Insert unique values into Skill
INSERT INTO Skill (Skill_Name, Skill_Type) VALUES
('Ice Blast', 'Magic'),
('Thunder Bolt', 'Magic'),
('Arcane Storm', 'Magic'),
('Water Torrent', 'Magic'),
('Fireball', 'Magic'),
('Heart Strike', 'Melee'),
('Cleave', 'Melee'),
('Lunging Strike', 'Melee'),
('Overpower', 'Melee'),
('Backstab', 'Melee'),
('Hamstring', 'Melee'),
('Eye Gouge', 'Melee'),
('Steal', 'Non Lethal'),
('Sap', 'Non Lethal');

-- Insert unique values into Quest
INSERT INTO Quest (Quest_Name) VALUES
('Kill the dragon lord: Aegeras'),
('Clear the training room of summoned creatures'),
('Capture a storm giant'),
('Research the blue crystal');

-- Insert unique values into Region
INSERT INTO Region (Region_Code, Region_Name, Region_Type) VALUES
('ARC', 'Arcanum', 'Large Scale City'),
('HER', 'Herodi', 'Magical Demiplane');

-- Insert unique values into Location
INSERT INTO Location (Location_Name, Region_ID) VALUES
('Warriors HQ', (SELECT Region_ID FROM Region WHERE Region_Code = 'ARC')),
('The Void', (SELECT Region_ID FROM Region WHERE Region_Code = 'HER')),
('Arena Pits', (SELECT Region_ID FROM Region WHERE Region_Code = 'ARC')),
('Poor Quarter', (SELECT Region_ID FROM Region WHERE Region_Code = 'ARC')),
('Arcane Capital', (SELECT Region_ID FROM Region WHERE Region_Code = 'ARC'));

-- After inserting into the main tables, insert into the NPC table
-- Use the previously inserted Faction_ID and Location_ID to match with the new NPC record
INSERT INTO NPC (First_Name, Last_Name, Gender, Faction_ID, Location_ID) VALUES
('Adelina', 'Dragonscream', 'F', (SELECT Faction_ID FROM Faction WHERE Faction_Code = 'MAG'), (SELECT Location_ID FROM Location WHERE Location_Name = 'Warriors HQ')),
('Adelina', 'Dragonscream', 'F', (SELECT Faction_ID FROM Faction WHERE Faction_Code = 'WAR'), (SELECT Location_ID FROM Location WHERE Location_Name = 'Warriors HQ')),
('Adelina', 'Dragonscream', 'F', (SELECT Faction_ID FROM Faction WHERE Faction_Code = 'MAG'), (SELECT Location_ID FROM Location WHERE Location_Name = 'Warriors HQ')),
('Adelina', 'Dragonscream', 'F', (SELECT Faction_ID FROM Faction WHERE Faction_Code = 'WAR'), (SELECT Location_ID FROM Location WHERE Location_Name = 'Warriors HQ')),
('Agaell', 'Clavira', 'F', (SELECT Faction_ID FROM Faction WHERE Faction_Code = 'MAG'), (SELECT Location_ID FROM Location WHERE Location_Name = 'The Void')),
('Alicia', 'Stormmane', 'F', (SELECT Faction_ID FROM Faction WHERE Faction_Code = 'WAR'), (SELECT Location_ID FROM Location WHERE Location_Name = 'Arena Pits')),
('Alicia', 'Stormmane', 'F', (SELECT Faction_ID FROM Faction WHERE Faction_Code = 'WAR'), (SELECT Location_ID FROM Location WHERE Location_Name = 'Arena Pits')),
('Cara', 'the Menace', 'F', (SELECT Faction_ID FROM Faction WHERE Faction_Code = 'ROG'), (SELECT Location_ID FROM Location WHERE Location_Name = 'Poor Quarter')),
('Cara', 'the Menace', 'F', (SELECT Faction_ID FROM Faction WHERE Faction_Code = 'WAR'), (SELECT Location_ID FROM Location WHERE Location_Name = 'Poor Quarter')),
('Cara', 'the Menace', 'F', (SELECT Faction_ID FROM Faction WHERE Faction_Code = 'ROG'), (SELECT Location_ID FROM Location WHERE Location_Name = 'Poor Quarter')),
('Cara', 'the Menace', 'F', (SELECT Faction_ID FROM Faction WHERE Faction_Code = 'WAR'), (SELECT Location_ID FROM Location WHERE Location_Name = 'Poor Quarter')),
('Cara', 'the Menace', 'F', (SELECT Faction_ID FROM Faction WHERE Faction_Code = 'WAR'), (SELECT Location_ID FROM Location WHERE Location_Name = 'Poor Quarter')),
('Cara', 'the Menace', 'F', (SELECT Faction_ID FROM Faction WHERE Faction_Code = 'ROG'), (SELECT Location_ID FROM Location WHERE Location_Name = 'Poor Quarter')),
('Cara', 'the Menace', 'F', (SELECT Faction_ID FROM Faction WHERE Faction_Code = 'WAR'), (SELECT Location_ID FROM Location WHERE Location_Name = 'Poor Quarter')),
('Cara', 'the Menace', 'F', (SELECT Faction_ID FROM Faction WHERE Faction_Code = 'ROG'), (SELECT Location_ID FROM Location WHERE Location_Name = 'Poor Quarter')),
('Davis', 'Smokes', 'M', (SELECT Faction_ID FROM Faction WHERE Faction_Code = 'ROG'), (SELECT Location_ID FROM Location WHERE Location_Name = 'Poor Quarter')),
('Davis', 'Smokes', 'M', (SELECT Faction_ID FROM Faction WHERE Faction_Code = 'ROG'), (SELECT Location_ID FROM Location WHERE Location_Name = 'Poor Quarter')),
('Davis', 'Smokes', 'M', (SELECT Faction_ID FROM Faction WHERE Faction_Code = 'ROG'), (SELECT Location_ID FROM Location WHERE Location_Name = 'Poor Quarter')),
('Pikipius', 'Tepewrick', 'M', (SELECT Faction_ID FROM Faction WHERE Faction_Code = 'MAG'), (SELECT Location_ID FROM Location WHERE Location_Name = 'Arcane Capital')),
('Pikipius', 'Tepewrick', 'M', (SELECT Faction_ID FROM Faction WHERE Faction_Code = 'MAG'), (SELECT Location_ID FROM Location WHERE Location_Name = 'Arcane Capital')),
('Pikipius', 'Tepewrick', 'M', (SELECT Faction_ID FROM Faction WHERE Faction_Code = 'MAG'), (SELECT Location_ID FROM Location WHERE Location_Name = 'Arcane Capital')),
('Pikipius', 'Tepewrick', 'M', (SELECT Faction_ID FROM Faction WHERE Faction_Code = 'MAG'), (SELECT Location_ID FROM Location WHERE Location_Name = 'Arcane Capital')),
('Pikipius', 'Tepewrick', 'M', (SELECT Faction_ID FROM Faction WHERE Faction_Code = 'WAR'), (SELECT Location_ID FROM Location WHERE Location_Name = 'Arcane Capital')),
('Pikipius', 'Tepewrick', 'M', (SELECT Faction_ID FROM Faction WHERE Faction_Code = 'WAR'), (SELECT Location_ID FROM Location WHERE Location_Name = 'Arcane Capital')),
('Pikipius', 'Tepewrick', 'M', (SELECT Faction_ID FROM Faction WHERE Faction_Code = 'WAR'), (SELECT Location_ID FROM Location WHERE Location_Name = 'Arcane Capital'));

-- Then you would insert into the NPC_Skill and NPC_Quest junction tables
-- This requires selecting the NPC_ID from the NPC table and Skill_ID or Quest_ID from the Skill or Quest table

INSERT INTO NPC_Skill (NPC_ID, Skill_ID) VALUES
(1, (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Hamstring')),
(2, (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Hamstring')),
(3, (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Water Torrent')),
(4, (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Water Torrent')),
(5, (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Fireball')),
(6, (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Heart Strike')),
(7, (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Cleave')),
(8, (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Lunging Strike')),
(9, (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Overpower')),
(10, (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Hamstring')),
(11, (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Backstab')),
(12, (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Lunging Strike')),
(13, (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Overpower')),
(14, (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Hamstring')),
(15, (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Backstab')),
(16, (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Steal')),
(17, (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Eye Gouge')),
(18, (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Sap')),
(19, (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Fireball')),
(20, (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Ice Blast')),
(21, (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Thunder Bolt')),
(22, (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Heart Strike')),
(23, (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Water Torrent')),
(24, (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Arcane Storm')),
(25, (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Overpower'));

-- Similarly, insert into the NPC_Quest table
INSERT INTO NPC_Quest (NPC_ID, Quest_ID) VALUES
(1, (SELECT Quest_ID FROM Quest WHERE Quest_Name = 'Kill the dragon lord: Aegeras')),
(2, (SELECT Quest_ID FROM Quest WHERE Quest_Name = 'Kill the dragon lord: Aegeras')),
(3, (SELECT Quest_ID FROM Quest WHERE Quest_Name = 'Kill the dragon lord: Aegeras')),
(4, (SELECT Quest_ID FROM Quest WHERE Quest_Name = 'Kill the dragon lord: Aegeras')),
(5, (SELECT Quest_ID FROM Quest WHERE Quest_Name = 'Clear the training room of summoned creatures')),
(6, (SELECT Quest_ID FROM Quest WHERE Quest_Name = 'Capture a storm giant')),
(7, (SELECT Quest_ID FROM Quest WHERE Quest_Name = 'Capture a storm giant')),
(19, (SELECT Quest_ID FROM Quest WHERE Quest_Name = 'Research the blue crystal')),
(20, (SELECT Quest_ID FROM Quest WHERE Quest_Name = 'Research the blue crystal')),
(21, (SELECT Quest_ID FROM Quest WHERE Quest_Name = 'Research the blue crystal')),
(22, (SELECT Quest_ID FROM Quest WHERE Quest_Name = 'Research the blue crystal')),
(23, (SELECT Quest_ID FROM Quest WHERE Quest_Name = 'Research the blue crystal')),
(24, (SELECT Quest_ID FROM Quest WHERE Quest_Name = 'Research the blue crystal')),
(25, (SELECT Quest_ID FROM Quest WHERE Quest_Name = 'Research the blue crystal'));

COMMIT;