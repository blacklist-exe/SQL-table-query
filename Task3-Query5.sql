SELECT Quest.Quest_Name, NPC.First_Name
FROM NPC_Quest
JOIN NPC ON NPC.NPC_ID = NPC_Quest.NPC_ID
JOIN Quest ON Quest.Quest_ID = NPC_Quest.Quest_ID
JOIN Faction ON NPC.Faction_ID = Faction.Faction_ID
JOIN Location ON NPC.Location_ID = Location.Location_ID
JOIN Region ON Location.Region_ID = Region.Region_ID
WHERE Faction.Faction_Name = 'Warriors United'
AND Region.Region_Type = 'Large Scale City';