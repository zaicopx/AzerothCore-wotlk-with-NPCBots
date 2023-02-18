/*
 * This file is part of the AzerothCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Affero General Public License as published by the
 * Free Software Foundation; either version 3 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "the_black_morass.h"
#include "MoveSplineInit.h"
#include "SmartAI.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"

enum medivhSays
{
    SAY_ENTER                   = 0,
    SAY_DEATH                   = 5,
    SAY_WIN                     = 6,
    SAY_ORCS_ENTER              = 7,

    SAY_ORCS_ANSWER             = 0
};

enum medivhSpells
{
    SPELL_MANA_SHIELD           = 31635,
    SPELL_MEDIVH_CHANNEL        = 31556,
    SPELL_BLACK_CRYSTAL         = 32563,
    SPELL_PORTAL_CRYSTALS       = 32564,
    SPELL_BANISH_PURPLE         = 32566,
    SPELL_BANISH_GREEN          = 32567,

    SPELL_CORRUPT               = 31326,
    SPELL_CORRUPT_AEONUS        = 37853,
};

enum medivhMisc
{
    NPC_DP_EMITTER_STALKER      = 18582,
    NPC_DP_CRYSTAL_STALKER      = 18553,
    NPC_SHADOW_COUNCIL_ENFORCER = 17023,
    GO_DARK_PORTAL              = 185103,

    EVENT_CHECK_HEALTH_25       = 1,
    EVENT_CHECK_HEALTH_50       = 2,
    EVENT_CHECK_HEALTH_75       = 3,
    EVENT_SUMMON_CRYSTAL        = 4,
    EVENT_SUMMON_FLYING_CRYSTAL = 5,

    EVENT_OUTRO_1               = 10,
    EVENT_OUTRO_2               = 11,
    EVENT_OUTRO_3               = 12,
    EVENT_OUTRO_4               = 13,
    EVENT_OUTRO_5               = 14,
    EVENT_OUTRO_6               = 15,
    EVENT_OUTRO_7               = 16,
    EVENT_OUTRO_8               = 17
};

class NpcRunToHome : public BasicEvent
{
public:
    NpcRunToHome(Creature& owner) : _owner(owner) { }

    bool Execute(uint64 /*eventTime*/, uint32 /*updateTime*/) override
    {
        _owner.GetMotionMaster()->MoveTargetedHome();
        return true;
    }

private:
    Creature& _owner;
};

struct npc_medivh_bm : public ScriptedAI
{
    npc_medivh_bm(Creature* creature) : ScriptedAI(creature)
    {
        _instance = creature->GetInstanceScript();

        _groundArray.clear();
        _airArray.clear();

        _groundArray.push_back(G3D::Vector3(creature->GetPositionX() + 8.0f, creature->GetPositionY(), creature->GetPositionZ()));
        _airArray.push_back(G3D::Vector3(creature->GetPositionX(), creature->GetPositionY(), creature->GetPositionZ()));

        for (uint8 i = 0; i < 10; ++i)
        {
            _groundArray.push_back(G3D::Vector3(creature->GetPositionX() + 8.0f * cos(2.0f * M_PI * i / 10.0f), creature->GetPositionY() + 8.0f * std::sin(2.0f * M_PI * i / 10.0f), creature->GetPositionZ()));
        }

        for (uint8 i = 0; i < 40; ++i)
        {
            _airArray.push_back(G3D::Vector3(creature->GetPositionX() + i * 0.25f * cos(2.0f * M_PI * i / 10.0f), creature->GetPositionY() + i * 0.25f * std::sin(2.0f * M_PI * i / 10.0f), creature->GetPositionZ() + i / 4.0f));
        }

        for (uint8 i = 40; i < 80; ++i)
        {
            _airArray.push_back(G3D::Vector3(creature->GetPositionX() + 10.0f * cos(2.0f * M_PI * i / 10.0f), creature->GetPositionY() + 10.0f * std::sin(2.0f * M_PI * i / 10.0f), creature->GetPositionZ() + i / 4.0f));
        }
    }

    void Reset() override
    {
        events.Reset();
        me->CastSpell(me, SPELL_MANA_SHIELD, true);

        if (_instance->GetData(TYPE_AEONUS) != DONE)
        {
            me->CastSpell(me, SPELL_MEDIVH_CHANNEL, false);
        }
    }

    void JustSummoned(Creature* summon) override
    {
        _instance->SetGuidData(DATA_SUMMONED_NPC, summon->GetGUID());

        if (summon->GetEntry() == NPC_DP_CRYSTAL_STALKER)
        {
            summon->DespawnOrUnsummon(25000);
            summon->CastSpell(summon, RAND(SPELL_BANISH_PURPLE, SPELL_BANISH_GREEN), true);
            summon->GetMotionMaster()->MoveSplinePath(&_airArray);
        }
        else if (summon->GetEntry() == NPC_DP_EMITTER_STALKER)
        {
            summon->CastSpell(summon, SPELL_BLACK_CRYSTAL, true);
            Movement::MoveSplineInit init(summon);
            init.MovebyPath(_groundArray);
            init.SetCyclic();
            init.Launch();
        }
    }

    void SummonedCreatureDespawn(Creature* summon) override
    {
        _instance->SetGuidData(DATA_DELETED_NPC, summon->GetGUID());
    }

    void MoveInLineOfSight(Unit* who) override
    {
        if (!events.Empty() || _instance->GetData(TYPE_AEONUS) == DONE)
        {
            return;
        }

        if (who->GetTypeId() == TYPEID_PLAYER && me->IsWithinDistInMap(who, 20.0f))
        {
            Talk(SAY_ENTER);
            _instance->SetData(DATA_MEDIVH, 1);

            me->CastSpell(me, SPELL_MEDIVH_CHANNEL, false);

            events.ScheduleEvent(EVENT_CHECK_HEALTH_75, 500);
            events.ScheduleEvent(EVENT_CHECK_HEALTH_50, 500);
            events.ScheduleEvent(EVENT_CHECK_HEALTH_25, 500);
            events.ScheduleEvent(EVENT_SUMMON_CRYSTAL, 2000);
            events.ScheduleEvent(EVENT_SUMMON_CRYSTAL, 4000);
            events.ScheduleEvent(EVENT_SUMMON_CRYSTAL, 6000);
            events.ScheduleEvent(EVENT_SUMMON_FLYING_CRYSTAL, 8000);
        }
    }

    void AttackStart(Unit* ) override { }

    void DoAction(int32 param) override
    {
        if (param == ACTION_OUTRO)
        {
            events.Reset();
            events.ScheduleEvent(EVENT_OUTRO_1, 4000);
            me->InterruptNonMeleeSpells(true);

            me->SummonGameObject(GO_DARK_PORTAL, -2086.0f, 7125.6215f, 30.5f, 6.148f, 0.0f, 0.0f, 0.0f, 0.0f, 0);
        }
    }

    void JustDied(Unit* /*killer*/) override
    {
        me->SetRespawnTime(DAY);
        events.Reset();
        Talk(SAY_DEATH);
    }

    void UpdateAI(uint32 diff) override
    {
        events.Update(diff);
        switch (uint32 eventId = events.ExecuteEvent())
        {
            case EVENT_CHECK_HEALTH_25:
            case EVENT_CHECK_HEALTH_50:
            case EVENT_CHECK_HEALTH_75:
                if (_instance->GetData(DATA_SHIELD_PERCENT) <= eventId * 25)
                {
                    Talk(eventId + 1);
                    break;
                }
                events.ScheduleEvent(eventId, 500);
                break;
            case EVENT_SUMMON_CRYSTAL:
                me->SummonCreature(NPC_DP_EMITTER_STALKER, me->GetPositionX() + 8.0f, me->GetPositionY(), me->GetPositionZ());
                break;
            case EVENT_SUMMON_FLYING_CRYSTAL:
                me->CastSpell(me, SPELL_PORTAL_CRYSTALS, true);
                events.ScheduleEvent(EVENT_SUMMON_FLYING_CRYSTAL, 1000);
                break;
            case EVENT_OUTRO_1:
                me->SetFacingTo(6.21f);
                Talk(SAY_WIN);
                events.ScheduleEvent(EVENT_OUTRO_2, 17000);
                break;
            case EVENT_OUTRO_2:
                me->SetFacingTo(3.07f);
                events.ScheduleEvent(EVENT_OUTRO_3, 2000);
                break;
            case EVENT_OUTRO_3:
                SummonOrcs(-2046.158f, -3.0f, 37000, 30000, true);
                events.ScheduleEvent(EVENT_OUTRO_4, 2000);
                break;
            case EVENT_OUTRO_4:
                SummonOrcs(-2055.97f, -2.0f, 33000, 28000, false);
                events.ScheduleEvent(EVENT_OUTRO_5, 2000);
                break;
            case EVENT_OUTRO_5:
                SummonOrcs(-2064.0f, -1.5f, 29000, 26000, false);
                events.ScheduleEvent(EVENT_OUTRO_6, 2000);
                break;
            case EVENT_OUTRO_6:
                SummonOrcs(-2074.35f, -0.1f, 26000, 24000, false);
                events.ScheduleEvent(EVENT_OUTRO_7, 7000);
                break;
            case EVENT_OUTRO_7:
                Talk(SAY_ORCS_ENTER);
                events.ScheduleEvent(EVENT_OUTRO_8, 7000);
                break;
            case EVENT_OUTRO_8:
                if (Creature* cr = me->FindNearestCreature(NPC_SHADOW_COUNCIL_ENFORCER, 20.0f))
                {
                    cr->SetFacingTo(3.07f);
                    cr->AI()->Talk(SAY_ORCS_ANSWER);
                }
                break;
        }
    }

    void SummonOrcs(float x, float y, uint32 duration, uint32 homeTime, bool first)
    {
        for (uint8 i = 0; i < 6; ++i)
        {
            if (Creature* cr = me->SummonCreature(NPC_SHADOW_COUNCIL_ENFORCER, -2091.731f, 7133.083f - 3.0f * i, 34.589f, 0.0f))
            {
                cr->GetMotionMaster()->MovePoint(0, (first && i == 3) ? x + 2.0f : x, cr->GetPositionY() + y, cr->GetMapHeight(x, cr->GetPositionY() + y, cr->GetPositionZ(), true));
                cr->m_Events.AddEvent(new NpcRunToHome(*cr), cr->m_Events.CalculateTime(homeTime + urand(0, 2000)));
                cr->DespawnOrUnsummon(duration + urand(0, 2000));
            }
        }
    }

private:
    InstanceScript* _instance;
    EventMap _events;
    Movement::PointsArray _groundArray;
    Movement::PointsArray _airArray;
};

enum timeRift
{
    EVENT_SUMMON_AT_RIFT        = 1,
    EVENT_CHECK_DEATH           = 2
};

struct npc_time_rift : public NullCreatureAI
{
    npc_time_rift(Creature* creature) : NullCreatureAI(creature)
    {
        _instance = creature->GetInstanceScript();
    }

    void Reset() override
    {
        if (_instance->GetData(DATA_RIFT_NUMBER) >= 18)
        {
            me->DespawnOrUnsummon(30000);
            return;
        }

        events.ScheduleEvent(EVENT_SUMMON_AT_RIFT, 16000);
        events.ScheduleEvent(EVENT_CHECK_DEATH, 8000);
    }

    void SetGUID(ObjectGuid guid, int32) override
    {
        _riftKeeperGUID = guid;
    }

    void DoSummonAtRift(uint32 entry)
    {
        Position pos = me->GetNearPosition(10.0f, 2 * M_PI * rand_norm());

        if (Creature* summon = me->SummonCreature(entry, pos, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 150000))
            if (_instance)
            {
                if (Unit* medivh = ObjectAccessor::GetUnit(*me, _instance->GetGuidData(DATA_MEDIVH)))
                {
                    float o = medivh->GetAngle(summon) + frand(-1.0f, 1.0f);
                    summon->SetHomePosition(medivh->GetPositionX() + 14.0f * cos(o), medivh->GetPositionY() + 14.0f * std::sin(o), medivh->GetPositionZ(), summon->GetAngle(medivh));
                    summon->GetMotionMaster()->MoveTargetedHome(true);
                    summon->SetReactState(REACT_DEFENSIVE);
                }
            }
    }

    void DoSelectSummon()
    {
        uint32 entry = RAND(NPC_INFINITE_ASSASIN, NPC_INFINITE_WHELP, NPC_INFINITE_CRONOMANCER, NPC_INFINITE_EXECUTIONER, NPC_INFINITE_VANQUISHER);
        if (entry == NPC_INFINITE_WHELP)
        {
            DoSummonAtRift(entry);
            DoSummonAtRift(entry);
            DoSummonAtRift(entry);
        }
        else
        {
            DoSummonAtRift(entry);
        }
    }

    void UpdateAI(uint32 diff) override
    {
        events.Update(diff);
        switch (events.ExecuteEvent())
        {
            case EVENT_SUMMON_AT_RIFT:
                DoSelectSummon();
                events.ScheduleEvent(EVENT_SUMMON_AT_RIFT, 15000);
                break;
            case EVENT_CHECK_DEATH:
                if (!me->HasUnitState(UNIT_STATE_CASTING))
                {
                    Creature* riftKeeper = ObjectAccessor::GetCreature(*me, _riftKeeperGUID);
                    if (!riftKeeper || !riftKeeper->IsAlive())
                    {
                        _instance->SetData(DATA_RIFT_KILLED, 1);

                        me->DespawnOrUnsummon(0);
                        break;
                    }
                    else
                    {
                        me->CastSpell(riftKeeper, SPELL_RIFT_CHANNEL, false);
                    }
                }
                events.ScheduleEvent(EVENT_CHECK_DEATH, 500);
                break;
        }
    }

private:
    EventMap _events;
    InstanceScript* _instance;
    ObjectGuid _riftKeeperGUID;
};

struct npc_black_morass_summoned_add : public SmartAI
{
    npc_black_morass_summoned_add(Creature* creature) : SmartAI(creature)
    {
    }

    void EnterEvadeMode(EvadeReason why) override
    {
        SmartAI::EnterEvadeMode(why);

        me->GetMotionMaster()->MoveTargetedHome(true);
    }
};

class spell_black_morass_corrupt_medivh : public AuraScript
{
    PrepareAuraScript(spell_black_morass_corrupt_medivh);

    bool Load() override
    {
        _ticks = 0;
        return true;
    }

    void PeriodicTick(AuraEffect const* /*aurEff*/)
    {
        if (++_ticks >= 3)
        {
            _ticks = 0;

            if (InstanceScript* instance = GetUnitOwner()->GetInstanceScript())
            {
                instance->SetData(DATA_DAMAGE_SHIELD, m_scriptSpellId == SPELL_CORRUPT_AEONUS ? 2 : 1);
            }
        }
    }

    void Register() override
    {
        OnEffectPeriodic += AuraEffectPeriodicFn(spell_black_morass_corrupt_medivh::PeriodicTick, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL);
    }

private:
    uint8 _ticks = 0;
};

void AddSC_the_black_morass()
{
    RegisterTheBlackMorassCreatureAI(npc_medivh_bm);
    RegisterTheBlackMorassCreatureAI(npc_time_rift);
    RegisterTheBlackMorassCreatureAI(npc_black_morass_summoned_add);

    RegisterSpellScript(spell_black_morass_corrupt_medivh);
}
