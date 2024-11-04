SELECT Quest.Quest_Name, NPC.First_Name
FROM NPC_Quest
JOIN NPC ON NPC.NPC_ID = NPC_Quest.NPC_ID
JOIN Quest ON Quest.Quest_ID = NPC_Quest.Quest_ID
JOIN Location ON NPC.Location_ID = Location.Location_ID
WHERE Location.Location_Name = 'Arcane Capital';