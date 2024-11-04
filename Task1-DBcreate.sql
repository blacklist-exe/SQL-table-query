CREATE DATABASE GameData;
USE GameData;

-- Faction table
CREATE TABLE Faction (
    Faction_ID INT AUTO_INCREMENT PRIMARY KEY,
    Faction_Code VARCHAR(10) UNIQUE NOT NULL,
    Faction_Name VARCHAR(255) NOT NULL,
    Faction_Motto VARCHAR(255)
);

-- Skill table
CREATE TABLE Skill (
    Skill_ID INT AUTO_INCREMENT PRIMARY KEY,
    Skill_Name VARCHAR(255) NOT NULL,
    Skill_Type VARCHAR(255) NOT NULL
);

-- Quest table
CREATE TABLE Quest (
    Quest_ID INT AUTO_INCREMENT PRIMARY KEY,
    Quest_Name VARCHAR(255) NOT NULL
);

-- Region table
CREATE TABLE Region (
    Region_ID INT AUTO_INCREMENT PRIMARY KEY,
    Region_Code VARCHAR(10) UNIQUE NOT NULL,
    Region_Name VARCHAR(255) NOT NULL,
    Region_Type VARCHAR(255)
);

-- Location table
CREATE TABLE Location (
    Location_ID INT AUTO_INCREMENT PRIMARY KEY,
    Location_Name VARCHAR(255) NOT NULL,
    Region_ID INT,
    FOREIGN KEY (Region_ID) REFERENCES Region(Region_ID)
);

-- NPC table
CREATE TABLE NPC (
    NPC_ID INT AUTO_INCREMENT PRIMARY KEY,
    First_Name VARCHAR(255) NOT NULL,
    Last_Name VARCHAR(255) NOT NULL,
    Gender CHAR(1),
    Faction_ID INT,
    Location_ID INT,
    FOREIGN KEY (Faction_ID) REFERENCES Faction(Faction_ID),
    FOREIGN KEY (Location_ID) REFERENCES Location(Location_ID)
);

-- NPC to Skill many-to-many relationship table
CREATE TABLE NPC_Skill (
    NPC_ID INT,
    Skill_ID INT,
    PRIMARY KEY (NPC_ID, Skill_ID),
    FOREIGN KEY (NPC_ID) REFERENCES NPC(NPC_ID),
    FOREIGN KEY (Skill_ID) REFERENCES Skill(Skill_ID)
);

-- NPC to Quest many-to-many relationship table
CREATE TABLE NPC_Quest (
    NPC_ID INT,
    Quest_ID INT,
    PRIMARY KEY (NPC_ID, Quest_ID),
    FOREIGN KEY (NPC_ID) REFERENCES NPC(NPC_ID),
    FOREIGN KEY (Quest_ID) REFERENCES Quest(Quest_ID)
);
