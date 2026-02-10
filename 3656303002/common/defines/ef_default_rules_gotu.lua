NDefines.NPolitics.BASE_POLITICAL_POWER_INCREASE = 2.2

--Production
NDefines.NProduction.MINIMUM_NUMBER_OF_FACTORIES_TAKEN_BY_CONSUMER_GOODS_PERCENT = 0.00	-- The minimum number of factories we have to put on consumer goods, in percent.
NDefines.NProduction.MAX_CIV_FACTORIES_PER_LINE = 12	-- Max number of factories that can be assigned a single production line.
NDefines.NProduction.BASE_COUNTRY_ENERGY_PRODUCTION = 30.0 			-- The base energy production of a country
NDefines.NProduction.BASE_FACTORY_SPEED = 4 					-- Base factory speed multiplier (how much hoi3 style IC each factory gives).
NDefines.NProduction.BASE_FACTORY_SPEED_MIL = 3 				-- Base factory speed multiplier (how much hoi3 style IC each factory gives).
NDefines.NProduction.BASE_NAVAL_EQUIPMENT_CONVERSION_IC_COST_FACTOR = 0.2       -- Fraction of the hull industry cost which is always included in the refitting cost.
NDefines.NProduction.BASE_LAND_EQUIPMENT_CONVERSION_IC_COST_FACTOR = 0.2        -- Fraction of the chassis industry cost which is always included in the conversion cost.
--Tech
NDefines.NTechnology.BASE_RESEARCH_POINTS_SAVED = 20.0		-- Base amount of research points a country can save per slot.

--Buildings
NDefines.NBuildings.MAX_SHARED_SLOTS = 80
NDefines.NBuildings.MAX_BUILDING_LEVELS = 50



--Military
NDefines.NMilitary.LAND_AIR_COMBAT_STR_DAMAGE_MODIFIER = 0.03    -- air global strength damage modifier
NDefines.NMilitary.LAND_AIR_COMBAT_ORG_DAMAGE_MODIFIER = 0.07    	-- air global organization damage modifier
NDefines.NMilitary.ARMOR_VS_AVERAGE = 0.4			                -- how to weight in highest armor & pen vs the division average
NDefines.NMilitary.PEN_VS_AVERAGE = 0.4
NDefines.NMilitary.PIERCING_THRESHOLDS = {	-- Our piercing / their armor must be this value to deal damage fraction equal to the index in the array below [higher number = higher penetration]. If armor is 0, 1.00 will be returned.
		1.00,
		0.95,
		0.90,
		0.85,
		0.80,
		0.75,
		0.70,
		0.65,
		0.60,
		0.55,					
		0.50,
		0.00, --there isn't much point setting this higher than 0
}
NDefines.NMilitary.PIERCING_THRESHOLD_DAMAGE_VALUES = {	-- 0 armor will always receive maximum damage (so add overmatching at your own peril). the system expects at least 2 values, with no upper limit.
		1.00,
		0.95,
		0.90,
		0.85,
		0.80,
		0.75,
		0.70,
		0.65,
		0.60,
		0.55,					
		0.50,
		0.50,
}
NDefines.NMilitary.COST_INCREASE_PER_ACTIVE_MEDAL = 0.0		-- Additional cost factor per active medal
NDefines.NMilitary.COMBAT_MINIMUM_TIME = 8			-- Shortest time possible for a combat in hours
NDefines.NMilitary.LAND_AIR_COMBAT_MAX_PLANES_PER_ENEMY_WIDTH = 2 -- how many CAS/TAC can enter a combat depending on enemy width there
NDefines.NMilitary.PREFERRED_TACTIC_CHARACTER_SKILL_LEVEL_REQUIRED = 3 -- Which level a field marhal or general has to be before they can pick their preferred tactic
NDefines.NMilitary.ENCIRCLED_PENALTY = -0.5                      	-- penalty when completely encircled
NDefines.NMilitary.UNIT_EXPERIENCE_PER_COMBAT_HOUR = 0.0002
NDefines.NMilitary.MAX_OUT_OF_SUPPLY_DAYS = 25 				   -- how many days of shitty supply until max penalty achieved
NDefines.NMilitary.FLANKED_PROVINCES_COUNT = 2					-- Attacker has to attack from that many provinces for the attack to be considered as flanking
NDefines.NMilitary.UNIT_LEADER_USE_NONLINEAR_XP_GAIN = false       -- Whether unit leader XP gain is scaled by 1/<nr_of_traits>
NDefines.NMilitary.UNIT_LEADER_TRAIT_SLOT_PER_LEVEL = { 			-- num extra traits on each level
		1.0, -- field marshal
		1.0, -- corps commander
		0.5, -- navy general
		1.0, -- operative
	}

--Air

NDefines.NAir.HOURS_DELAY_AFTER_EACH_COMBAT = 6 --Vanilla 4 - How many hours needs the wing to be ready for the next combat. Use for tweaking if combats happens too often. (generally used as double because of roundtrip)
NDefines.NAir.COMBAT_MULTIPLANE_CAP = 3.0						-- How many planes can shoot at each plane on other side ( if there are 100 planes we are atttacking COMBAT_MULTIPLANE_CAP * 100 of our planes can shoot )
NDefines.NAir.COMBAT_DAMAGE_SCALE = 0.7							-- Higher value = more shot down planes

NDefines.NAir.AIR_WING_XP_LOSS_WHEN_KILLED = 200									--if a plane dies, the game assumes that a pilot with this amount of xp died and recalcs average.
NDefines.NAir.AIR_WING_XP_AIR_VS_AIR_COMBAT_GAIN = 0.6 							--Wings in combat gain extra XP
NDefines.NAir.CAS_NIGHT_ATTACK_FACTOR = 0.01                      -- CAS damaged get multiplied by this in land combats at night

NDefines.NAir.MISSION_EFFICIENCY_MULT_AT_LACK_OF_FUEL = 0.10 				-- multiplier for mission efficiency when a base lacks fuel

NDefines.NAir.BIGGEST_AGILITY_FACTOR_DIFF = 3.0					-- biggest factor difference in agility for doing damage (caps to this)
NDefines.NAir.BIGGEST_SPEED_FACTOR_DIFF = 2.5					-- biggest factor difference in speed for doing damage (caps to this)
NDefines.NAir.COMBAT_BETTER_AGILITY_DAMAGE_REDUCTION = 0.25 	-- How much the better agility (than opponent's) can reduce their damage to us.
NDefines.NAir.COMBAT_BETTER_SPEED_DAMAGE_INCREASE = 0.45 		-- How much the better Speed (than opponent's) can reduce increase our damage to them.
																-- Both of these defines are combined with their sister FACTOR_DIFF defines to create defense or offensive buffs
																-- In both cases the maximum bonus or reduction is (BIGGEST_X_FACTOR_DIFF - 1) * COMBAT_BETTER_X_DAMAGE_Y * Damage


--Diplomacy

NDefines.NDiplomacy.PEACE_TIMED_EFFECT_LENGTH_WAR_REPARATION = 10
NDefines.NDiplomacy.VOLUNTEERS_PER_TARGET_PROVINCE = 0
NDefines.NDiplomacy.VOLUNTEERS_PER_COUNTRY_ARMY = 0
NDefines.NDiplomacy.VOLUNTEERS_DIVISIONS_REQUIRED = 30

--Doctrines

NDefines.NDoctrines.DEFAULT_REWARD_MASTERY = 75.0                         -- How much mastery is required for unlocking a doctrine reward, if no override is set
NDefines.NDoctrines.TRAINING_MASTERY_GAIN_FACTOR = 0.2                     -- How much training contributes to doctrine mastery relative to combat/missions
NDefines.NDoctrines.MAX_MONTHLY_MASTERY_GAIN = 100.0                        -- Monthly mastery gain will not exceed this value
NDefines.NDoctrines.MIN_MASTERY_GAIN_PER_DAY = 0.1                         -- If we have any mastery gain, it will be boosted to be at least this much per day (lower cap)
NDefines.NDoctrines.MASTERY_BANK_MAX = 300.0                              -- The maximum amount of mastery that can be banked

--Countries
NDefines.NCountry.AIR_VOLUNTEER_BASES_CAPACITY_LIMIT = 0.0
NDefines.NCountry.AIR_VOLUNTEER_PLANES_RATIO = 0.0


--Krzysztof--
	--Ogólne--

	NDefines.NNavy.NAVAL_COMBAT_PLANE_MIN_STACKING_PENALTY = 400                        -- How many planes flying in a naval combat before penalties are introduced
    NDefines.NNavy.NAVAL_COMBAT_PLANE_STACKING_PENALTY_EFFECT = 0.005                    -- Each plane above the optimal amount decreases the amount of airplanes being able to takeoff by such %. Subject to diminishing returns
    NDefines.NNavy.SHIP_SILHOUETTE_VALUE_PLANES_CAPITAL = 10                        -- For dynamic plane efficacy, silhouette value (nominally in planes, but very abstract)
    NDefines.NNavy.SHIP_SILHOUETTE_VALUE_PLANES_SCREEN = 5                        -- As Above. This one would be nice to split by type, but that's problematic.
    NDefines.NNavy.SHIP_SILHOUETTE_VALUE_PLANES_CARRIER = 16                        -- As Above
    NDefines.NNavy.SHIP_SILHOUETTE_VALUE_PLANES_SUPPORT = 3                        -- As Above
    NDefines.NNavy.SHIP_SILHOUETTE_VALUE_PLANES_CONVOY = 4                        -- As Above
    NDefines.NNavy.SHIP_SILHOUETTE_VALUE_PLANES_SUBMARINE = 7                        -- As Above
	NDefines.NAir.CARRIER_COMBAT_DAMAGE_STATS_MULTIPLIER = 0.5
	NDefines.NNavy.COMBAT_DAMAGE_TO_STR_FACTOR = 0.6								-- casting damage value to ship strength multiplier. Use it ot balance the game difficulty.
	NDefines.NNavy.COMBAT_DAMAGE_TO_ORG_FACTOR = 1.0							-- casting damage value to ship organisation multiplier. Use it to balance the game difficulty.
	NDefines.NNavy.COMBAT_MIN_HIT_CHANCE = 0.001
	NDefines.NNavy.COMBAT_TORPEDO_CRITICAL_CHANCE = 0.05
	NDefines.NNavy.COMBAT_EVASION_TO_HIT_CHANCE_TORPEDO_MULT = 40.0	
	NDefines.NNavy.NAVY_MAX_XP = 100
	NDefines.NNavy.COMBAT_ON_THE_WAY_INIT_DISTANCE_BALANCE = 0.25				-- Value to balance initial distance to arrive for ships that are "on the way"
	NDefines.NNavy.COMBAT_CHASE_RESIGNATION_HOURS = 8								-- Before we resign chasing enemy, give them some minimum time so the combat doesn't end instantly.
	NDefines.NNavy.MISSION_MAX_REGIONS = 6									-- Limit of the regions that can be assigned to naval mission. Set to 0 for unlimited.
	NDefines.NNavy.DOMINANCE_CONTROLLED_THRESHOLD_RATIO = 0.70 -- Percentage of needed dominance control over enemies for you and friendlies to control a strategic sea region
	NDefines.NNavy.DECRYPTION_SPOTTING_BONUS = 0.35
	--Shore--
	NDefines.NNavy.SHORE_BOMBARDMENT_CAP = 0.5								
	NDefines.NNavy.HEAVY_GUN_ATTACK_TO_SHORE_BOMBARDMENT						= 0.025  -- heavy gun attack value is divided by this value * 100 and added to shore bombardment modifier
	NDefines.NNavy.LIGHT_GUN_ATTACK_TO_SHORE_BOMBARDMENT						= 0.00005 -- light gun attack value is divided by this value * 100 and added to shore bombardment modifier	
	--aa--
	NDefines.NNavy.ANTI_AIR_TARGETING = 0.8                                       -- how good ships are at hitting aircraft
	NDefines.NNavy.ANTI_AIR_ATTACK_TO_AMOUNT = 0.02								-- Balancing value to convert equipment stat anti_air_attack to the random % value of airplanes being hit.
	NDefines.NNavy.ANTI_AIR_POW_ON_INCOMING_AIR_DAMAGE							= 0.225	-- received air damage is calculated using following: 1 - ( (ship_anti_air + fleet_anti_air * SHIP_TO_FLEET_ANTI_AIR_RATIO )^ANTI_AIR_POW_ON_INCOMING_AIR_DAMAGE ) * ANTI_AIR_MULT_ON_INCOMING_AIR_DAMAGE
	NDefines.NNavy.ANTI_AIR_MULT_ON_INCOMING_AIR_DAMAGE							= 0.18
	NDefines.NNavy.MAX_ANTI_AIR_REDUCTION_EFFECT_ON_INCOMING_AIR_DAMAGE 		= 0.75	-- damage reduction for incoming air attacks is clamped to this value at maximum.
	NDefines.NNavy.ANTI_AIR_TARGETTING_TO_CHANCE = 0.25						-- Balancing value to convert averaged equipment stats (anti_air_targetting and naval_strike_agility) to probability chances of airplane being hit by navies AA.
	--Paliwo--
	NDefines.NNavy.OUT_OF_FUEL_SPEED_FACTOR = -0.80
	NDefines.NNavy.OUT_OF_FUEL_RANGE_FACTOR = 0
	NDefines.NNavy.OUT_OF_FUEL_ATTACK_FACTOR = -0.7
	NDefines.NNavy.OUT_OF_FUEL_TORPEDO_FACTOR = -0.99
	
	--underway--	
	NDefines.NNavy.UNDERWAY_REPLENISHMENT_RANGE_FACTOR = 0.4			-- bonus factor applied to task force's range when underway replenishment is activated (e.g. 0.2 means +20%)
	NDefines.NNavy.UNDERWAY_REPLENISHMENT_CONVOY_COST_PER_FUEL = 0.12	-- Cost in convoys for underway replenishment multiplied by max daily fuel consumption (rounded up)
	
	
	--Suby--
	NDefines.NNavy.NAVAL_COMBAT_SUB_DETECTION_FACTOR                = 1.0      -- balance value for sub detection in combat by ships
	NDefines.NNavy.DEPTH_CHARGES_HIT_CHANCE_MULT 					= 1.1 		-- multiplies hit chance of small guns
	NDefines.NNavy.DEPTH_CHARGES_DAMAGE_MULT 						= 0.8 		-- multiplies damage of depth charges
	NDefines.NNavy.DEPTH_CHARGES_HIT_PROFILE 						= 100.0	-- hit profile for depth charges
	NDefines.NNavy.CONVOY_HIT_PROFILE								= 85.0 	-- convoys has this contant hit profile
	
	NDefines.NNavySUBMARINE_ESCAPE_RATIOS = { -- subs will escape battle in convoy raid if there are enemies that can attack
		1000,  -- do not engage
		6.0,   -- low
		3.0,   -- medium
		2.0,   -- high
		0.1,   -- I am death incarnate!
	}

	NDefines.NNavy.MIN_GUN_COOLDOWN = 0.1											-- minimum cooldown for a gun
	
--Positioning--
	NDefines.NNavy.BASE_POSITIONING												= 1.0	-- base value for positioning
	NDefines.NNavy.HIGHER_SHIP_RATIO_POSITIONING_PENALTY_FACTOR					= 0.25 -- if one side has more ships than the other, that side will get this penalty for each +100% ship ratio it has
	NDefines.NNavy.MAX_POSITIONING_PENALTY_FROM_HIGHER_SHIP_RATIO				= 1.0  -- maximum penalty to get from larger fleets
	MIN_SHIPS_FOR_HIGHER_SHIP_RATIO_PENALTY                        				= 4    -- the minimum fleet size in ships that a fleet must be before having the large fleet penalty applied to them
	NDefines.NNavy.HIGHER_CARRIER_RATIO_POSITIONING_PENALTY_FACTOR				= 0.2  -- penalty if other side has stronger carrier air force
	NDefines.NNavy.MAX_CARRIER_RATIO_POSITIONING_PENALTY_FACTOR 				= 0.2  -- max penalty from stronger carrier air force
	NDefines.NNavy.POSITIONING_PENALTY_FOR_SHIPS_JOINED_COMBAT_AFTER_IT_STARTS	= 0.02 -- each ship that joins the combat will have this penalty to be added into positioning
	NDefines.NNavy.MAX_POSITIONING_PENALTY_FOR_NEWLY_JOINED_SHIPS 				= 2.0  -- the accumulated penalty from new ships will be clamped to this value
	NDefines.NNavy.POSITIONING_PENALTY_HOURLY_DECAY_FOR_NEWLY_JOINED_SHIPS		= 0.05 -- the accumulated penalty from new ships will decay hourly by this value
	
	NDefines.NNavy.DAMAGE_PENALTY_ON_MINIMUM_POSITIONING 						= 0.5	-- damage penalty at 0% positioning
	NDefines.NNavy.SCREENING_EFFICIENCY_PENALTY_ON_MINIMUM_POSITIONING			= 0.5  -- screening efficiency (screen to capital ratio) at 0% positioning
	NDefines.NNavy.AA_EFFICIENCY_PENALTY_ON_MINIMUM_POSITIONING					= 0.7  -- AA penalty at 0% positioning
	NDefines.NNavy.SHIP_TO_FLEET_ANTI_AIR_RATIO									= 0.35	-- total sum of fleet's anti air will be multiplied with this ratio and added to calculations anti-air of individual ships while air damage reduction
	--Screening-
	NDefines.NNavy.SCREEN_RATIO_FOR_FULL_SCREENING_FOR_CAPITALS 				= 4.0	-- this screen ratio to num capital/carriers is needed for full screening beyond screen line
	NDefines.NNavy.SCREEN_RATIO_FOR_FULL_SCREENING_FOR_CONVOYS 					= 0.5	-- this screen ratio to num convoys is needed for full screening beyond screen line
	NDefines.NNavy.CAPITAL_RATIO_FOR_FULL_SCREENING_FOR_CARRIERS 				= 4.0  -- this capital ratio to num carriers is needed for full screening beyond screen line
	NDefines.NNavy.CAPITAL_RATIO_FOR_FULL_SCREENING_FOR_CONVOYS 				= 0.25  -- this capital ratio to num convoys is needed for full screening beyond screen line
	
	--HIT PROFILES--
	NDefines.NNavy.GUN_HIT_PROFILES = { -- hit profiles for guns, if target ih profile is lower the gun will have lower accuracy
		80.0,	-- big guns
		100.0,	-- torpedoes
		45.0,	-- small guns
	}
NDefines.NNavy.BASE_GUN_COOLDOWNS = { -- number of hours for a gun to be ready after shooting
		1.0,	-- big guns
		6.0,	-- torpedoes
		1.0,	-- small guns
	}
	
	NDefines.NNavy.HIT_PROFILE_MULT 												= 100.0  	-- multiplies hit profile of every ship
	NDefines.NNavy.HIT_PROFILE_SPEED_FACTOR											= 0.5		-- factors speed value when determining it profile (Vis * HIT_PROFILE_MULT * Ship Hit Profile Mult)
	NDefines.NNavy.HIT_PROFILE_SPEED_BASE											= 20		-- Base value added to hitprofile speed calulation
	
--Armor--
	NDefines.NNavy.NAVY_PIERCING_THRESHOLDS = {					-- Our piercing / their armor must be this value to deal damage fraction equal to the index in the array below [higher number = higher penetration]. If armor is 0, 1.00 will be returned.
		2.0,
		1.5,
		1.0,
		0.9,
		0.8,
		0.7,
		0.6,
		0.5,
		0.4,
		0.3,
		0.2,
		0.1,

	}

	NDefines.NNavy.NAVY_PIERCING_THRESHOLD_CRITICAL_VALUES = {	-- 0 armor will always receive maximum damage (so add overmatching at your own peril). the system expects at least 2 values, with no upper limit.
		3.0,
		2.0,
		1.0,
		0.7,
		0.5,
		0.3,
		0.15,
		0.08,
		0.04,
		0.01,
		0.0,
		0.0,
		
 -- For criticals, you could reduce crit chance unlike damage in army combat, but we do not for now.
	}

	NDefines.NNavy.NAVY_PIERCING_THRESHOLD_DAMAGE_VALUES = {	-- 0 armor will always receive maximum damage (so add overmatching at your own peril). the system expects at least 2 values, with no upper limit.
		2.5,
		1.8,
		1.0,
		0.8,
		0.8,
		0.7,
		0.6,
		0.5,
		0.4,
		0.3,
		0.2,
		0.1,
	}

							
