#include <map>
#include "Log.h"
#include "Config.h"
#include "ScriptMgr.h"
#include "Unit.h"
#include "Player.h"
#include "Pet.h"
#include "Map.h"
#include "Group.h"
#include "InstanceScript.h"
#include "Chat.h"
#include <math.h>
#include <unordered_map>

bool SoloCraftEnable = 1;
float SoloCraftRaidHealthMult = 1.75;

class SolocraftRaidConfig : public WorldScript
{
public:
    SolocraftRaidConfig() : WorldScript("SolocraftRaidConfig") {}

    void OnBeforeConfigLoad(bool reload) override
    {
        if (!reload) {
            // Load Configuration Settings
            SetInitialWorldSettings();
        }
    }

    // Load Configuration Settings
    void SetInitialWorldSettings()
    {
        //Enable Disable
        SoloCraftEnable = sConfigMgr->GetOption<bool>("SolocraftRaid.Enable", 1);

		//Balancing
        SoloCraftRaidHealthMult = sConfigMgr->GetOption<float>("SoloCraftRaid.Health.Mult", 1.75);
    }
};

class solocraftraid_player_instance_handler : public PlayerScript {

public:

    solocraftraid_player_instance_handler() : PlayerScript("solocraftraid_player_instance_handler") {}

    void OnMapChanged(Player *player) override {
        if (sConfigMgr->GetOption<bool>("SolocraftRaid.Enable", true))
        {
            Map *map = player->GetMap();
            ApplyBuffs(player, map);
        }
    }

private:

	std::map<uint32, float> _unitDifficulty;

    // Apply the player buffs
    void ApplyBuffs(Player* player, Map* map)
    {
	    //Check whether to buff the player or check to debuff back to normal
	    if (map->IsRaid())
	    {
            //Check Database for a current dungeon entry
            QueryResult result = CharacterDatabase.Query("SELECT `GUID`, `Health` FROM `custom_solocraftraid_character_stats` WHERE GUID = {}", player->GetGUID().GetCounter());

            if (!result)
            {
                player->SetModifierValue(UNIT_MOD_HEALTH, BASE_VALUE, player->GetMaxHealth() * SoloCraftRaidHealthMult); //replaces base hp at max lvl
                player->UpdateMaxHealth(); //will use our values we just set (update base health and buffs)

                // Set player health
                player->SetFullHealth();//defined in Unit.h line 1524

                // Set Pet Health
                player->CastSpell(player, 6962, true);

                // Save Player Dungeon Offsets to Database
                CharacterDatabase.Execute("REPLACE INTO custom_solocraftraid_character_stats (GUID, Health) VALUES ({}, {})", player->GetGUID().GetCounter(), SoloCraftRaidHealthMult);
            }
		}
		else
		{
			ClearBuffs(player, map); //Check to revert player back to normal - Moving this here fixed logout and login while in instance buff and debuff issues
		}
	}

    void ClearBuffs(Player* player, Map* map)
    {

		//Database query to get offset from the last instance player exited
		QueryResult result = CharacterDatabase.Query("SELECT `GUID`, `HEALTH` FROM `custom_solocraftraid_character_stats` WHERE GUID = {}", player->GetGUID().GetCounter());
		if (result)
		{
            player->SetModifierValue(UNIT_MOD_HEALTH, BASE_VALUE, 0); //replaces base hp at max lvl
            player->UpdateMaxHealth(); //will use our values we just set (update base health and buffs)

            // Set player health
            player->SetFullHealth();//defined in Unit.h line 1524

            // Set Pet Health
            player->CastSpell(player, 6962, true);

			//Remove database entry as the player is no longer in an instance
			CharacterDatabase.Execute("DELETE FROM custom_solocraftraid_character_stats WHERE GUID = {}", player->GetGUID().GetCounter());
		}
    }
};

void AddSolocraftRaidScripts()
{
    new SolocraftRaidConfig();
    new solocraftraid_player_instance_handler();
}
