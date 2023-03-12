#include "bot_ai.h"
#include "botcommon.h"
#include "botdatamgr.h"
#include "botgossip.h"
#include "botspell.h"
#include "bottext.h"
#include "botmgr.h"
#include "Creature.h"
#include "Log.h"
#include "Player.h"
#include "ScriptedGossip.h"
#include "ScriptMgr.h"
#include <botdatamgr.cpp>
using namespace lfg;
/*
NPCbot giver NPC by Trickerer (<https://github.com/trickerer/> <onlysuffering@gmail.com>)
Complete - 100%
*/

#define HIRE GOSSIP_SENDER_BOTGIVER_HIRE
#define HIRE_CLASS GOSSIP_SENDER_BOTGIVER_HIRE_CLASS
#define HIRE_ENTRY GOSSIP_SENDER_BOTGIVER_HIRE_ENTRY
#define HIRE_RAID_GROUP GOSSIP_SENDER_BOTGIVER_HIRE_RAID_GROUP
#define HIRE_RAID_GROUP_10 GOSSIP_SENDER_BOTGIVER_HIRE_RAID_GROUP_10
#define HIRE_RAID_GROUP_25 GOSSIP_SENDER_BOTGIVER_HIRE_RAID_GROUP_25
#define HIRE_RAID_GROUP_40 GOSSIP_SENDER_BOTGIVER_HIRE_RAID_GROUP_40

class script_bot_giver : public CreatureScript
{
public:
    script_bot_giver() : CreatureScript("script_bot_giver") { }

    //struct bot_giver_AI : public CreatureAI
    //{
    //    bot_giver_AI(Creature* creature) : CreatureAI(creature) {}

    //    void UpdateAI(uint32 /*diff*/) override {}

        bool OnGossipHello(Player* player, Creature* me) override
        {
            if (!BotMgr::IsNpcBotModEnabled())
            {
                player->PlayerTalkClass->SendCloseGossip();
                return true;
            }

            if (me->isMoving())
                me->BotStopMovement();

            AddGossipItemFor(player, GOSSIP_ICON_TALK, bot_ai::LocalizedNpcText(player, BOT_TEXT_BOTGIVER_SERVICE), HIRE, GOSSIP_ACTION_INFO_DEF + 1);

            if (!player->HaveBot())
                AddGossipItemFor(player, GOSSIP_ICON_TALK, bot_ai::LocalizedNpcText(player, BOT_TEXT_BOTGIVER_HIRE_RAID), HIRE_RAID_GROUP, GOSSIP_ACTION_INFO_DEF + 1);

            AddGossipItemFor(player, GOSSIP_ICON_CHAT, bot_ai::LocalizedNpcText(player, BOT_TEXT_NEVERMIND), 0, GOSSIP_ACTION_INFO_DEF + 2);

            player->PlayerTalkClass->SendGossipMenu(GOSSIP_BOTGIVER_GREET, me->GetGUID());
            return true;
        }

        //bool OnGossipSelect(Player* player, uint32 /*menuId*/, uint32 gossipListId) override
        bool OnGossipSelect(Player* player, Creature* me, uint32 sender, uint32 action) override
        {
            if (!BotMgr::IsNpcBotModEnabled())
            {
                player->PlayerTalkClass->SendCloseGossip();
                return true;
            }

            //uint32 sender = player->PlayerTalkClass->GetGossipOptionSender(gossipListId);
            //uint32 action = player->PlayerTalkClass->GetGossipOptionAction(gossipListId);

            player->PlayerTalkClass->ClearMenus();
            bool subMenu = false;

            uint32 gossipTextId = GOSSIP_BOTGIVER_GREET;

            switch (sender)
            {
                case 0: //exit
                    break;
                case 1: //BACK: return to main menu
                    return OnGossipHello(player, me);
                case HIRE:
                {
                    gossipTextId = GOSSIP_BOTGIVER_HIRE;

                    if (player->GetNpcBotsCount() >= BotMgr::GetMaxNpcBots())
                    {
                        WhisperTo(player, me, bot_ai::LocalizedNpcText(player, BOT_TEXT_BOTGIVER_TOO_MANY_BOTS).c_str());
                        break;
                    }

                    subMenu = true;

                    uint8 availCount = 0;
                    std::array<uint32, BOT_CLASS_END> npcbot_count_per_class{ 0 };

                    {
                        std::unique_lock<std::shared_mutex> lock(*BotDataMgr::GetLock());
                        for (Creature const* bot : BotDataMgr::GetExistingNPCBots())
                        {
                            if (!bot->IsAlive() || bot->IsTempBot() || bot->IsWandererBot() || bot->GetBotAI()->GetBotOwnerGuid() || bot->HasAura(BERSERK))
                                continue;
                            if (BotMgr::FilterRaces() && bot->GetBotClass() < BOT_CLASS_EX_START && (bot->GetRaceMask() & RACEMASK_ALL_PLAYABLE) &&
                                !(bot->GetRaceMask() & ((player->GetRaceMask() & RACEMASK_ALLIANCE) ? RACEMASK_ALLIANCE : RACEMASK_HORDE)))
                                continue;

                            ++npcbot_count_per_class[bot->GetBotClass()];
                        }
                    }

                    for (uint8 botclass = BOT_CLASS_WARRIOR; botclass < BOT_CLASS_END; ++botclass)
                    {
                        if (!BotMgr::IsClassEnabled(botclass))
                            continue;

                        if (player->HaveBot() && BotMgr::GetMaxClassBots())
                        {
                            uint8 count = 0;
                            BotMap const* map = player->GetBotMgr()->GetBotMap();
                            for (BotMap::const_iterator itr = map->begin(); itr != map->end(); ++itr)
                                if (itr->second->GetBotClass() == botclass)
                                    ++count;
                            if (count >= BotMgr::GetMaxClassBots())
                                continue;
                        }

                        uint32 textId;
                        switch (botclass)
                        {
                            case BOT_CLASS_WARRIOR:     textId = BOT_TEXT_CLASS_WARRIOR_PLU;        break;
                            case BOT_CLASS_PALADIN:     textId = BOT_TEXT_CLASS_PALADIN_PLU;        break;
                            case BOT_CLASS_MAGE:        textId = BOT_TEXT_CLASS_MAGE_PLU;           break;
                            case BOT_CLASS_PRIEST:      textId = BOT_TEXT_CLASS_PRIEST_PLU;         break;
                            case BOT_CLASS_WARLOCK:     textId = BOT_TEXT_CLASS_WARLOCK_PLU;        break;
                            case BOT_CLASS_DRUID:       textId = BOT_TEXT_CLASS_DRUID_PLU;          break;
                            case BOT_CLASS_DEATH_KNIGHT:textId = BOT_TEXT_CLASS_DEATH_KNIGHT_PLU;   break;
                            case BOT_CLASS_ROGUE:       textId = BOT_TEXT_CLASS_ROGUE_PLU;          break;
                            case BOT_CLASS_SHAMAN:      textId = BOT_TEXT_CLASS_SHAMAN_PLU;         break;
                            case BOT_CLASS_HUNTER:      textId = BOT_TEXT_CLASS_HUNTER_PLU;         break;
                            case BOT_CLASS_BM:          textId = BOT_TEXT_CLASS_BM_PLU;             break;
                            case BOT_CLASS_SPHYNX:      textId = BOT_TEXT_CLASS_SPHYNX_PLU;         break;
                            case BOT_CLASS_ARCHMAGE:    textId = BOT_TEXT_CLASS_ARCHMAGE_PLU;       break;
                            case BOT_CLASS_DREADLORD:   textId = BOT_TEXT_CLASS_DREADLORD_PLU;      break;
                            case BOT_CLASS_SPELLBREAKER:textId = BOT_TEXT_CLASS_SPELLBREAKER_PLU;   break;
                            case BOT_CLASS_DARK_RANGER: textId = BOT_TEXT_CLASS_DARK_RANGER_PLU;    break;
                            case BOT_CLASS_NECROMANCER: textId = BOT_TEXT_CLASS_NECROMANCER_PLU;    break;
                            case BOT_CLASS_SEA_WITCH:   textId = BOT_TEXT_CLASS_SEAWITCH_PLU;       break;
                            default:                    textId = 0;                                 break;
                        }

                        if (!textId)
                            continue;

                        std::ostringstream bclass;
                        bclass << npcbot_count_per_class[botclass] << " " << bot_ai::LocalizedNpcText(player, textId) << " (" << BotMgr::GetNpcBotCostStr(player->GetLevel(), botclass) << ")";

                        AddGossipItemFor(player, GOSSIP_ICON_TALK, bclass.str(), HIRE_CLASS, GOSSIP_ACTION_INFO_DEF + botclass);

                        if (++availCount >= BOT_GOSSIP_MAX_ITEMS - 1) //back
                            break;
                    }

                    if (availCount == 0)
                        gossipTextId = GOSSIP_BOTGIVER_HIRE_EMPTY;

                    AddGossipItemFor(player, GOSSIP_ICON_CHAT, bot_ai::LocalizedNpcText(player, BOT_TEXT_NEVERMIND), 0, GOSSIP_ACTION_INFO_DEF + 1);

                    break;
                }
                case HIRE_CLASS:
                {
                    gossipTextId = GOSSIP_BOTGIVER_HIRE_CLASS;

                    uint8 botclass = action - GOSSIP_ACTION_INFO_DEF;

                    uint32 cost = BotMgr::GetNpcBotCost(player->GetLevel(), botclass);
                    if (!player->HasEnoughMoney(cost))
                    {
                        WhisperTo(player, me, bot_ai::LocalizedNpcText(player, BOT_TEXT_HIREFAIL_COST).c_str());
                        break;
                    }

                    subMenu = true;

                    uint8 availCount = 0;

                    //go through bots map to find what bots are available
                    std::unique_lock<std::shared_mutex> lock(*BotDataMgr::GetLock());
                    NpcBotRegistry const& allBots = BotDataMgr::GetExistingNPCBots();
                    for (NpcBotRegistry::const_iterator ci = allBots.begin(); ci != allBots.end(); ++ci)
                    {
                        Creature const* bot = *ci;
                        bot_ai const* ai = bot->GetBotAI();
                        if (bot->GetBotClass() != botclass || !bot->IsAlive() || ai->IsTempBot() || bot->IsWandererBot() || ai->GetBotOwnerGuid() || bot->HasAura(BERSERK))
                            continue;
                        if (BotMgr::FilterRaces() && botclass < BOT_CLASS_EX_START && (bot->GetRaceMask() & RACEMASK_ALL_PLAYABLE) &&
                            !(bot->GetRaceMask() & ((player->GetRaceMask() & RACEMASK_ALLIANCE) ? RACEMASK_ALLIANCE : RACEMASK_HORDE)))
                            continue;

                        std::ostringstream message1;
                        message1 << bot_ai::LocalizedNpcText(player, BOT_TEXT_BOTGIVER_WISH_TO_HIRE_) << bot->GetName() << '?';

                        std::ostringstream info_ostr;
                        uint32 raceTextId;
                        switch (bot->GetRace())
                        {
                            case RACE_HUMAN:        raceTextId = BOT_TEXT_RACE_HUMAN;   break;
                            case RACE_ORC:          raceTextId = BOT_TEXT_RACE_ORC;     break;
                            case RACE_DWARF:        raceTextId = BOT_TEXT_RACE_DWARF;   break;
                            case RACE_NIGHTELF:     raceTextId = BOT_TEXT_RACE_NELF;    break;
                            case RACE_UNDEAD_PLAYER:raceTextId = BOT_TEXT_RACE_UNDEAD;  break;
                            case RACE_TAUREN:       raceTextId = BOT_TEXT_RACE_TAUREN;  break;
                            case RACE_GNOME:        raceTextId = BOT_TEXT_RACE_GNOME;   break;
                            case RACE_TROLL:        raceTextId = BOT_TEXT_RACE_TROLL;   break;
                            case RACE_BLOODELF:     raceTextId = BOT_TEXT_RACE_BELF;    break;
                            case RACE_DRAENEI:      raceTextId = BOT_TEXT_RACE_DRAENEI; break;
                            default:                raceTextId = BOT_TEXT_RACE_UNKNOWN; break;
                        }
                        info_ostr << bot->GetName() << " (" << (
                            bot->GetGender() == GENDER_MALE ? bot_ai::LocalizedNpcText(player, BOT_TEXT_GENDER_MALE) + ' ' :
                            bot->GetGender() == GENDER_FEMALE ? bot_ai::LocalizedNpcText(player, BOT_TEXT_GENDER_FEMALE) + ' ' :
                            "") << bot_ai::LocalizedNpcText(player, raceTextId) << ')';

                        player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, GOSSIP_ICON_TALK, info_ostr.str(),
                            HIRE_ENTRY, GOSSIP_ACTION_INFO_DEF + bot->GetEntry(), message1.str(), cost, false);

                        if (++availCount >= BOT_GOSSIP_MAX_ITEMS - 1) //back
                            break;
                    }

                    if (availCount == 0)
                        gossipTextId = GOSSIP_BOTGIVER_HIRE_EMPTY;

                    AddGossipItemFor(player, GOSSIP_ICON_CHAT, bot_ai::LocalizedNpcText(player, BOT_TEXT_BACK), HIRE, GOSSIP_ACTION_INFO_DEF + 1);

                    break;
                }
                case HIRE_ENTRY:
                {
                    uint32 entry = action - GOSSIP_ACTION_INFO_DEF;
                    Creature const* bot = BotDataMgr::FindBot(entry);
                    if (!bot)
                    {
                        //possible but still
                        LOG_ERROR("entities.unit", "HIRE_NBOT_ENTRY: bot {} not found!", entry);
                        break;
                    }

                    bot_ai const* ai = bot->GetBotAI();
                    if (bot->IsInCombat() || !bot->IsAlive() || bot_ai::CCed(bot) || ai->IsDuringTeleport() ||
                        bot->HasUnitState(UNIT_STATE_CASTING) || ai->GetBotOwnerGuid() || bot->HasAura(BERSERK))
                    {
                        //TC_LOG_ERROR("entities.unit", "HIRE_NBOT_ENTRY: bot %u (%s) is unavailable all of the sudden!", entry);
                        std::ostringstream failMsg;
                        failMsg << bot->GetName() << bot_ai::LocalizedNpcText(player, BOT_TEXT_BOTGIVER__BOT_BUSY);
                        WhisperTo(player, me, failMsg.str().c_str());
                        break;
                    }

                    //laways returns true
                    bot->GetBotAI()->OnGossipSelect(player, me, GOSSIP_SENDER_HIRE, GOSSIP_ACTION_INFO_DEF);

                    if (player->HaveBot() && player->GetBotMgr()->GetBot(bot->GetGUID()))
                        WhisperTo(player, me, bot_ai::LocalizedNpcText(player, BOT_TEXT_BOTGIVER_HIRESUCCESS).c_str());

                    break;
                }
                case HIRE_RAID_GROUP:
                {
                    gossipTextId = GOSSIP_BOTGIVER_HIRE;

                    if (player->GetNpcBotsCount() >= BotMgr::GetMaxNpcBots())
                    {
                        WhisperTo(player, me, bot_ai::LocalizedNpcText(player, BOT_TEXT_BOTGIVER_TOO_MANY_BOTS).c_str());
                        break;
                    }

                    subMenu = true;

                    std::ostringstream message1;
                    message1 << bot_ai::LocalizedNpcText(player, BOT_TEXT_BOTGIVER_WISH_TO_HIRE_) << '?';

                    player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, GOSSIP_ICON_TALK, "Hire 10 bots",
                        HIRE_RAID_GROUP_10, GOSSIP_ACTION_INFO_DEF, message1.str(), BotMgr::GetNpcBotCost(player->GetLevel(), BOT_CLASS_NONE)*9, false);

                    player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, GOSSIP_ICON_TALK, "Hire 25 bots",
                        HIRE_RAID_GROUP_25, GOSSIP_ACTION_INFO_DEF, message1.str(), BotMgr::GetNpcBotCost(player->GetLevel(), BOT_CLASS_NONE)*24, false);

                    player->PlayerTalkClass->GetGossipMenu().AddMenuItem(-1, GOSSIP_ICON_TALK, "Hire 40 bots",
                        HIRE_RAID_GROUP_40, GOSSIP_ACTION_INFO_DEF, message1.str(), BotMgr::GetNpcBotCost(player->GetLevel(), BOT_CLASS_NONE)*39, false);

                    AddGossipItemFor(player, GOSSIP_ICON_CHAT, bot_ai::LocalizedNpcText(player, BOT_TEXT_BACK), HIRE, GOSSIP_ACTION_INFO_DEF + 1);
                }
                case HIRE_RAID_GROUP_10:
                case HIRE_RAID_GROUP_25:
                case HIRE_RAID_GROUP_40:
                {
                    uint8 botsAmount;
                    uint8 tanksAmount;
                    uint8 offTanksAmount;
                    uint8 healersAmount;
                    uint8 dpsAmount;
                    if (sender == HIRE_RAID_GROUP_10)
                    {
                        botsAmount = 9;
                        tanksAmount = 1;
                        offTanksAmount = 1;
                        healersAmount = 2;
                        dpsAmount = 5;
                    }
                    else if (sender == HIRE_RAID_GROUP_25)
                    {
                        botsAmount = 24;
                        tanksAmount = 1;
                        offTanksAmount = 2;
                        healersAmount = 4;
                        dpsAmount = 17;
                    }
                    else if (sender == HIRE_RAID_GROUP_40)
                    {
                        botsAmount = 39;
                        tanksAmount = 1;
                        offTanksAmount = 2;
                        healersAmount = 9;
                        dpsAmount = 27;
                    }
                    else
                        break;

                    uint32 botCost = BotMgr::GetNpcBotCost(player->GetLevel(), BOT_CLASS_NONE)* botsAmount;

                    if (!player->HasEnoughMoney(botCost))
                    {
                        WhisperTo(player, me, bot_ai::LocalizedNpcText(player, BOT_TEXT_HIREFAIL_COST).c_str());
                        break;
                    }

                    LfgGuidList tankPlayers, offTankPlayers, healPlayers, dpsPlayers;

                    if (botsAmount > 0)
                    {
                        NpcBotRegistry allBots = _existingBots;
                        while (botsAmount > 0)
                        {
                            //Group is full or not enough bots
                            if (botsAmount == 0 || allBots.size() == 0)
                            {
                                if (allBots.size() == 0)
                                    LOG_ERROR("entities.unit", "HIRE_NBOT_ENTRY: Not enough NPC-Bots spawned for dungeon finder!");

                                break;
                            }

                            //Better way for this?
                            NpcBotRegistry::const_iterator ci = allBots.begin();
                            std::advance(ci, urand(0, allBots.size() - 1));
                            Creature const* bot = *ci;
                            bot_ai const* ai = bot->GetBotAI();

                            if (!bot)
                            {
                                //possible but still
                                allBots.erase(bot);
                                LOG_ERROR("entities.unit", "HIRE_NBOT_ENTRY: bot %u not found!", bot->GetEntry());
                                continue;
                            }

                            //Bot is busy, don't Add it
                            if (bot->IsInCombat() || !bot->IsAlive() || bot_ai::CCed(bot) || ai->IsDuringTeleport() ||
                                bot->HasUnitState(UNIT_STATE_CASTING) || ai->GetBotOwnerGuid() || bot->HasAura(BERSERK) || ai->IsWanderer())
                            {
                                allBots.erase(bot);
                                continue;
                            }

                            //Bot faction is not the same as player
                            if (BotMgr::FilterRaces())
                            {
                                if (BotMgr::FilterRaces() && bot->GetBotClass() < BOT_CLASS_EX_START && (bot->GetRaceMask() & RACEMASK_ALL_PLAYABLE) &&
                                    !(bot->GetRaceMask() & ((player->GetRaceMask() & RACEMASK_ALLIANCE) ? RACEMASK_ALLIANCE : RACEMASK_HORDE)))
                                {
                                    allBots.erase(bot);
                                    continue;
                                }
                            }

                            BotMgr* mgr = player->GetBotMgr();
                            if (!mgr)
                                mgr = new BotMgr(player);

                            uint8 botclass = bot->GetBotClass();
                            //Add Tank
                            if (tankPlayers.size() < tanksAmount)
                            {
                                if (botclass == BOT_CLASS_WARRIOR || botclass == BOT_CLASS_PALADIN ||
                                    (botclass == BOT_CLASS_DEATH_KNIGHT && player->GetLevel() >= 55) ||
                                    botclass == BOT_CLASS_DRUID)
                                {
                                    Unit* cre = ObjectAccessor::GetUnit(*bot, bot->GetGUID());
                                    Creature* newBot = cre->ToCreature();
                                    mgr->AddBot(newBot, false);
                                    //Fill players variables
                                    tankPlayers.push_back(newBot->GetGUID());
                                    //Set bot talents and erase it from list
                                    mgr->SetRandomBotTalentsForGroup(bot, BOT_ROLE_TANK);
                                    allBots.erase(bot);
                                    //LOG_ERROR("entities.unit", "HIRE_NBOT_ENTRY: bot %s hired as tank!", bot->GetName().c_str());
                                    continue;
                                }
                            }
                            //Add Off-Tank
                            if (offTankPlayers.size() < offTanksAmount)
                            {
                                if (botclass == BOT_CLASS_WARRIOR || botclass == BOT_CLASS_PALADIN ||
                                    (botclass == BOT_CLASS_DEATH_KNIGHT && player->GetLevel() >= 55) ||
                                    botclass == BOT_CLASS_DRUID)
                                {
                                    Unit* cre = ObjectAccessor::GetUnit(*bot, bot->GetGUID());
                                    Creature* newBot = cre->ToCreature();
                                    mgr->AddBot(newBot, false);
                                    //Fill players variables
                                    offTankPlayers.push_back(newBot->GetGUID());
                                    //Set bot talents and erase it from list
                                    mgr->SetRandomBotTalentsForGroup(bot, BOT_ROLE_TANK_OFF);
                                    allBots.erase(bot);
                                    //LOG_ERROR("entities.unit", "HIRE_NBOT_ENTRY: bot %s hired as tank!", bot->GetName().c_str());
                                    continue;
                                }
                            }
                            //Add Heal
                            else if (healPlayers.size() < healersAmount)
                            {
                                if (botclass == BOT_CLASS_PALADIN || botclass == BOT_CLASS_PRIEST ||
                                    botclass == BOT_CLASS_SHAMAN || botclass == BOT_CLASS_DRUID)
                                {
                                    Unit* cre = ObjectAccessor::GetUnit(*bot, bot->GetGUID());
                                    Creature* newBot = cre->ToCreature();
                                    mgr->AddBot(newBot, false);
                                    //Fill players variables
                                    healPlayers.push_back(newBot->GetGUID());
                                    //Set bot talents and erase it from list
                                    mgr->SetRandomBotTalentsForGroup(bot, BOT_ROLE_HEAL);
                                    allBots.erase(bot);
                                    //LOG_ERROR("entities.unit", "HIRE_NBOT_ENTRY: bot %s hired as heal!", bot->GetName());
                                    continue;
                                }
                            }
                            else if (dpsPlayers.size() < dpsAmount)
                            {
                                if (botclass == BOT_CLASS_WARRIOR || botclass == BOT_CLASS_PALADIN ||
                                    botclass == BOT_CLASS_HUNTER || botclass == BOT_CLASS_ROGUE ||
                                    botclass == BOT_CLASS_PRIEST || botclass == BOT_CLASS_SHAMAN ||
                                    (botclass == BOT_CLASS_DEATH_KNIGHT && player->GetLevel() >= 55) ||
                                    botclass == BOT_CLASS_MAGE || botclass == BOT_CLASS_WARLOCK ||
                                    botclass == BOT_CLASS_DRUID)
                                {
                                    Unit* cre = ObjectAccessor::GetUnit(*bot, bot->GetGUID());
                                    Creature* newBot = cre->ToCreature();
                                    //Fill players variables
                                    mgr->AddBot(newBot, false);
                                    dpsPlayers.push_back(newBot->GetGUID());
                                    //Set bot talents and erase it from list
                                    mgr->SetRandomBotTalentsForGroup(bot, BOT_ROLE_DPS);
                                    allBots.erase(bot);
                                    //LOG_ERROR("entities.unit", "HIRE_NBOT_ENTRY: bot %s hired as dps!", bot->GetName());
                                    continue;
                                }
                            }
                            botsAmount--;
                        }
                    }
                    player->ModifyMoney(-botCost);
                }
            }

            if (subMenu)
                player->PlayerTalkClass->SendGossipMenu(gossipTextId, me->GetGUID());
            else
                player->PlayerTalkClass->SendCloseGossip();

            return true;
        }

        void WhisperTo(Player* player, Creature* me, char const* message)
        {
            me->Whisper(message, LANG_UNIVERSAL, player);
        }
    //};

    //CreatureAI* GetAI(Creature* creature) const override
    //{
    //    return new bot_giver_AI(creature);
    //}
};

void AddSC_script_bot_giver()
{
    new script_bot_giver();
}
