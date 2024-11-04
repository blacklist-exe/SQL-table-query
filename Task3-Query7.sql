ALTER TABLE Faction ADD COLUMN Favourite_Skill_ID INT;

-- Update each faction with the respective favourite skill
UPDATE Faction SET Favourite_Skill_ID = (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Fireball') WHERE Faction_Name = 'School of Magicians';
UPDATE Faction SET Favourite_Skill_ID = (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Lunging Strike') WHERE Faction_Name = 'Warriors United';
UPDATE Faction SET Favourite_Skill_ID = (SELECT Skill_ID FROM Skill WHERE Skill_Name = 'Steal') WHERE Faction_Name = 'Rogues Guild';

-- foreign key constraint
ALTER TABLE Faction ADD CONSTRAINT fk_favourite_skill FOREIGN KEY (Favourite_Skill_ID) REFERENCES Skill(Skill_ID);

SELECT Faction.Faction_Name, Skill.Skill_Name AS 'Favourite Skill Name'
FROM Faction
JOIN Skill ON Faction.Favourite_Skill_ID = Skill.Skill_ID;