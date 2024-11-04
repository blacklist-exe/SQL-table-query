-- Change the data type for Gender
ALTER TABLE NPC MODIFY COLUMN Gender CHAR(6);

-- Update the Gender values
UPDATE NPC SET Gender = CASE WHEN Gender = 'M' THEN 'Male' WHEN Gender = 'F' THEN 'Female' END;

SELECT First_Name, Last_Name, Gender
FROM NPC;
