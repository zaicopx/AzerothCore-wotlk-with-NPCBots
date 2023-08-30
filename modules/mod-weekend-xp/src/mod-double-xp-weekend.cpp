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

class weekendxp_commandscript : public CommandScript
{
public:
    weekendxp_commandscript() : CommandScript("weekendxp_commandscript") { }

    ChatCommandTable GetCommands() const override
    {
        static ChatCommandTable commandTable =
        {
            { "weekendxp rate", HandleSetXPBonusCommand, SEC_PLAYER, Console::No },
        };

        return commandTable;
    }

    static bool HandleSetXPBonusCommand(ChatHandler* handler, float rate)
    {
        Player* player = handler->GetPlayer();

        float maxRate = sConfigMgr->GetOption<float>("XPWeekend.MaxAllowedRate", 2);

        if (!rate || rate > maxRate)
        {
            handler->PSendSysMessage(LANG_CMD_WEEKEND_XP_ERROR, maxRate);
            handler->SetSentErrorMessage(true);
            return true;
        }

        player->UpdatePlayerSetting("mod-double-xp-weekend", SETTING_WEEKEND_XP_RATE, rate);
        handler->PSendSysMessage(LANG_CMD_WEEKEND_XP_SET, rate);

        return true;
    }
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
                ChatHandler(player->GetSession()).PSendSysMessage("Es ist Wochenende! Deine Erfahrung wurde auf %g gesetzt.", GetExperienceRate(player));
            }
            else
            {
                ChatHandler(player->GetSession()).PSendSysMessage("Dieser Server nutzt das |cff4CFF00Double XP Weekend |rModul.");
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
        float rate = sConfigMgr->GetOption<float>("XPWeekend.xpAmount", 2);

        float individualRate = player->GetPlayerSetting("mod-double-xp-weekend", SETTING_WEEKEND_XP_RATE).value;

        // If individualxp setting is enabled... and a rate was set, overwrite it.
        if (sConfigMgr->GetOption<bool>("XPWeekend.IndividualXPEnabled", false) && individualRate)
        {
            rate = individualRate;
        }

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
    new weekendxp_commandscript();
}
