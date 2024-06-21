#include "map.h"
#include "Log.h"
#include "Config.h"
#include "ScriptMgr.h"
#include "Unit.h"

bool RaidAdjustmentEnabled;
float RaidAdjustmentMeleeDamageMult;
float RaidAdjustmentSpellDamageMult;

class RaidAdjustmentConfig : public WorldScript
{
public:
    RaidAdjustmentConfig() : WorldScript("RaidAdjustmentConfig") {}

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
        RaidAdjustmentEnabled = sConfigMgr->GetOption<bool>("RaidAdjustment.Enable", 1);

		//Balancing
        RaidAdjustmentMeleeDamageMult = sConfigMgr->GetOption<float>("RaidAdjustment.DamageTaken.Melee", 0.75);
        RaidAdjustmentSpellDamageMult = sConfigMgr->GetOption<float>("RaidAdjustment.DamageTaken.Spell", 0.75);
    }
};

class raidadjustment_player_unit_script : public UnitScript {
public:

    raidadjustment_player_unit_script() : UnitScript("raidadjustment_player_unit_script") { }

    void ModifySpellDamageTaken(Unit* target, Unit* attacker, int32& damage, SpellInfo const* spellInfo) override
    {
        if (!RaidAdjustmentEnabled || !target)
            return;

        if (!target->GetMap()->IsRaid())
        {
            return;
        }

        if (target->GetTypeId() != TYPEID_PLAYER && !target->IsNPCBotOrPet())
        {
            return;
        }

        damage *= RaidAdjustmentMeleeDamageMult;
    }
    void ModifyMeleeDamage(Unit* target, Unit* attacker, uint32& damage) override
    {
        if (!RaidAdjustmentEnabled || !target)
            return;

        if (!target->GetMap()->IsRaid())
        {
            return;
        }

        if (target->GetTypeId() != TYPEID_PLAYER && !target->IsNPCBotOrPet())
        {
            return;
        }

        damage *= RaidAdjustmentSpellDamageMult;
    }
};

void AddRaidAdjustmentScripts()
{
    new RaidAdjustmentConfig();
    new raidadjustment_player_unit_script();
}
