SELECT NPC.First_Name, NPC.Last_Name, NPC.Gender, Faction.Faction_Code
FROM NPC
JOIN Faction ON NPC.Faction_ID = Faction.Faction_ID
WHERE Faction.Faction_Name = 'Rogues Guild'
ORDER BY NPC.First_Name ASC;