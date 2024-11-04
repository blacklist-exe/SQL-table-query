SELECT Location.Location_Name, COUNT(NPC_Quest.Quest_ID) AS 'Number of quests'
FROM Location
LEFT JOIN NPC ON NPC.Location_ID = Location.Location_ID
LEFT JOIN NPC_Quest ON NPC.NPC_ID = NPC_Quest.NPC_ID
GROUP BY Location.Location_Name;
