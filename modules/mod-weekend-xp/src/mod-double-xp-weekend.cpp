#include "Configuration/Config.h"
#include "ScriptMgr.h"
#include "Player.h"
#include "Chat.h"
#include <time.h>

using namespace Acore::ChatCommands;

enum WeekendXP
{
    SETTING_WEEKEND_XP_RATE = 0,

    LANG_CMD_WEEKEND_XP_SET   = 11120,
    LANG_CMD_WEEKEND_XP_ERROR = 11121,

    WD_FRIDAY   = 5,
    WD_SATURDAY = 6,
    WD_SUNDAY   = 0
};

class DoubleXpWeekend : public PlayerScript
{
public:
    DoubleXpWeekend() : PlayerScript("DoubleXpWeekend") { }

    void OnLogin(Player* player) override
    {
        if (sConfigMgr->GetOption<bool>("XPWeekend.Announce", false))
        {
            if (IsEventActive())
            {
                uint32 loc = player->GetSession()->GetSessionDbLocaleIndex();
                if (loc == 3)
                    ChatHandler(player->GetSession()).PSendSysMessage("Es ist Wochenende! Deine Erfahrung wurde auf %g gesetzt.", GetExperienceRate(player));
                else
                    ChatHandler(player->GetSession()).PSendSysMessage("It's the weekend! Your XP rate has been set to %g.", GetExperienceRate(player));
            }
            else
            {
                uint32 loc = player->GetSession()->GetSessionDbLocaleIndex();
                if (loc == 3)
                    ChatHandler(player->GetSession()).PSendSysMessage("Dieser Server nutzt das |cff4CFF00Double XP Weekend |rModul.");
                else
                    ChatHandler(player->GetSession()).PSendSysMessage("This server is running the |cff4CFF00Double XP Weekend |rmodule.");
            }
        }
    }
           

    void OnGiveXP(Player* player, uint32& amount, Unit* victim, uint8 /*xpSource*/) override
    {
        if (!IsEventActive())
        {
            return;
        }

        if (sConfigMgr->GetOption<bool>("XPWeekend.QuestOnly", false) && victim && victim->GetTypeId() == TYPEID_UNIT && !victim->ToCreature()->hasLootRecipient())
        {
            return;
        }

        if (player->getLevel() >= sConfigMgr->GetOption<uint32>("XPWeekend.MaxLevel", 80))
        {
            return;
        }

        amount *= GetExperienceRate(player);
    }

    float GetExperienceRate(Player * player) const
    {
        float rate = sConfigMgr->GetOption<float>("XPWeekend.xpAmount", 1);

        // Prevent returning 0% rate.
        return rate ? rate : 1;
    }

    bool IsEventActive() const
    {
        if (sConfigMgr->GetOption<bool>("XPWeekend.AlwaysEnabled", false))
            return true;
            
        if (!sConfigMgr->GetOption<bool>("XPWeekend.Enabled", false))
            return false;

        time_t t = time(nullptr);
        tm* now = localtime(&t);

        return now->tm_wday == WD_FRIDAY || now->tm_wday == WD_SATURDAY || now->tm_wday == WD_SUNDAY;
    }
};

void AdddoublexpScripts()
{
    new DoubleXpWeekend();
}
