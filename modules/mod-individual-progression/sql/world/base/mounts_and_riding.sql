-- Re-enable Summon Felsteed (Warlock)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry` IN (3631, 4487, 4488, 4489, 4490);

-- Riding Skills
UPDATE npc_trainer SET MoneyCost=800000, ReqLevel=30 WHERE SpellID=33388;
UPDATE npc_trainer SET MoneyCost=10000000 WHERE SpellID=33391;
UPDATE npc_trainer SET MoneyCost=50000000 WHERE SpellID=34090;
UPDATE npc_trainer SET MoneyCost=100000000 WHERE SpellID=34091;
DELETE FROM npc_trainer WHERE SpellID=23214;
DELETE FROM npc_trainer WHERE SpellID=34767;
DELETE FROM npc_trainer WHERE SpellID=23161;
 