-- Leader_Kyaru
-- Author: liuxi
--------------------------------------------------------------
INSERT INTO Types (Type, Kind)
VALUES	('LEADER_PCR_KYARU',		'KIND_LEADER'	),
		('TRAIT_LEADER_PCR_KYARU',	'KIND_TRAIT'	),
		('TRAIT_AGENDA_PCR_KYARU',	'KIND_TRAIT'	);

INSERT INTO Leaders (LeaderType, Name, InheritFrom, SceneLayers)
VALUES ('LEADER_PCR_KYARU', 'LOC_LEADER_PCR_KYARU_NAME', 'LEADER_DEFAULT', 4);

INSERT INTO CivilizationLeaders (CivilizationType, LeaderType, CapitalName)
VALUES ('CIVILIZATION_PrincessConnectRedive', 'LEADER_PCR_KYARU', 'LOC_CITY_NAME_PrincessConnectRedive_1');

INSERT INTO LeaderQuotes (LeaderType, Quote)
VALUES ('LEADER_PCR_KYARU', 'LOC_PEDIA_LEADERS_PAGE_PCR_KYARU_QUOTE');

INSERT INTO AiLists (LeaderType, AgendaType, ListType, System)
VALUES	('TRAIT_LEADER_PCR_KYARU',	NULL,	'PCRCivics',								'Civics'		),
		('TRAIT_LEADER_PCR_KYARU',	NULL,	'PCRTechs',									'Technologies'	),
		('TRAIT_LEADER_PCR_KYARU',	NULL,	'PCRWonders',								'Buildings'		),
		(NULL,	'TRAIT_AGENDA_PCR_KYARU',	'EnvironmentLoverEnvironmentPreference',	'PseudoYields'	);

--------------------------------------------------------------
INSERT INTO Traits (TraitType, Name, Description)
VALUES	('TRAIT_LEADER_PCR_KYARU',	'LOC_TRAIT_LEADER_PCR_KYARU_NAME',	'LOC_TRAIT_LEADER_PCR_KYARU_DESCRIPTION'),
		('TRAIT_AGENDA_PCR_KYARU',	'LOC_AGENDA_PCR_KYARU_NAME',		'LOC_AGENDA_PCR_KYARU_DESCRIPTION'		);

INSERT INTO LeaderTraits (LeaderType, TraitType)
VALUES	('LEADER_PCR_KYARU',	'TRAIT_LEADER_PCR_KYARU'				),
		('LEADER_PCR_KYARU',	'TRAIT_LEADER_LOW_RELIGIOUS_PREFERENCE'	);

INSERT INTO TraitModifiers (TraitType, ModifierId)
VALUES	('TRAIT_LEADER_PCR_KYARU',	'MODIFIER_KYARU_SCIENCE1'		),
		('TRAIT_LEADER_PCR_KYARU',	'MODIFIER_KYARU_SCIENCE2'		),
		('TRAIT_LEADER_PCR_KYARU',	'MODIFIER_KYARU_CULTURE1'		),
		('TRAIT_LEADER_PCR_KYARU',	'MODIFIER_KYARU_CULTURE2'		),
		('TRAIT_LEADER_PCR_KYARU',	'MODIFIER_KYARU_AMENITIES1'		),
		('TRAIT_LEADER_PCR_KYARU',	'MODIFIER_KYARU_AMENITIES2'		),
		('TRAIT_LEADER_PCR_KYARU',	'MODIFIER_KYARU_AMENITIES3'		),
		('TRAIT_LEADER_PCR_KYARU',	'MODIFIER_KYARU_AMENITIES4'		),
		('TRAIT_LEADER_PCR_KYARU',	'MODIFIER_KYARU_SPY_CAPACITY'	),
		('TRAIT_LEADER_PCR_KYARU',	'MODIFIER_KYARU_SPY_UNIT'		);

INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
VALUES (
	'MODIFIER_KYARU_SCIENCE1',
	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',
	'DISTRICT_IS_CHARMING_CITY_CENTER'
),(
	'MODIFIER_KYARU_SCIENCE2',
	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',
	'DISTRICT_IS_BREATHTAKING_CITY_CENTER'
),(
	'MODIFIER_KYARU_CULTURE1',
	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',
	'DISTRICT_IS_CHARMING_CITY_CENTER'
),(
	'MODIFIER_KYARU_CULTURE2',
	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',
	'DISTRICT_IS_BREATHTAKING_CITY_CENTER'
),(
	'MODIFIER_KYARU_AMENITIES1',
	'MODIFIER_PLAYER_CITIES_ADJUST_POLICY_AMENITY',
	'DISTRICT_IS_CHARMING_CITY_CENTER'
),(
	'MODIFIER_KYARU_AMENITIES2',
	'MODIFIER_PLAYER_CITIES_ADJUST_POLICY_AMENITY',
	'DISTRICT_IS_BREATHTAKING_CITY_CENTER'
),(
	'MODIFIER_KYARU_AMENITIES3',
	'MODIFIER_PLAYER_CITIES_ADJUST_POLICY_AMENITY',
	'DISTRICT_IS_UNINVITING_CITY_CENTER'
),(
	'MODIFIER_KYARU_AMENITIES4',
	'MODIFIER_PLAYER_CITIES_ADJUST_POLICY_AMENITY',
	'DISTRICT_IS_DISGUSTING_CITY_CENTER'
),(
	'MODIFIER_KYARU_SPY_CAPACITY',
	'MODIFIER_PLAYER_GRANT_SPY',
	'PLAYER_HAS_GUILDS_CIVIC_PCR'
);

INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, RunOnce, Permanent)
VALUES (
	'MODIFIER_KYARU_SPY_UNIT',
	'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL',
	'PLAYER_HAS_GUILDS_CIVIC_AND_CAPITAL_PCR',
	1, 1
);

INSERT INTO ModifierArguments (ModifierId, Name, Value)
VALUES	('MODIFIER_KYARU_SCIENCE1',			'YieldType',		'YIELD_SCIENCE'	),
		('MODIFIER_KYARU_SCIENCE1',			'Amount',			7				),
		('MODIFIER_KYARU_SCIENCE2',			'YieldType',		'YIELD_SCIENCE'	),
		('MODIFIER_KYARU_SCIENCE2',			'Amount',			8				),
		('MODIFIER_KYARU_CULTURE1',			'YieldType',		'YIELD_CULTURE'	),
		('MODIFIER_KYARU_CULTURE1',			'Amount',			7				),
		('MODIFIER_KYARU_CULTURE2',			'YieldType',		'YIELD_CULTURE'	),
		('MODIFIER_KYARU_CULTURE2',			'Amount',			8				),
		('MODIFIER_KYARU_AMENITIES1',		'Amount',			1				),
		('MODIFIER_KYARU_AMENITIES2',		'Amount',			1				),
		('MODIFIER_KYARU_AMENITIES3',		'Amount',			-1				),
		('MODIFIER_KYARU_AMENITIES4',		'Amount',			-1				),
		('MODIFIER_KYARU_SPY_CAPACITY',		'Amount',			1				),
		('MODIFIER_KYARU_SPY_UNIT',			'UnitType',			'UNIT_SPY'		),
		('MODIFIER_KYARU_SPY_UNIT',			'Amount',			1				);

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
VALUES	('DISTRICT_IS_CHARMING_CITY_CENTER',		'REQUIREMENTSET_TEST_ALL'	),
		('DISTRICT_IS_BREATHTAKING_CITY_CENTER',	'REQUIREMENTSET_TEST_ALL'	),
		('DISTRICT_IS_UNINVITING_CITY_CENTER',		'REQUIREMENTSET_TEST_ALL'	),
		('DISTRICT_IS_DISGUSTING_CITY_CENTER',		'REQUIREMENTSET_TEST_ALL'	),
		('PLAYER_HAS_GUILDS_CIVIC_PCR',				'REQUIREMENTSET_TEST_ALL'	),
		('PLAYER_HAS_GUILDS_CIVIC_AND_CAPITAL_PCR',	'REQUIREMENTSET_TEST_ALL'	);

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
VALUES	('DISTRICT_IS_CHARMING_CITY_CENTER',		'REQUIRES_PLOT_HAS_CITY_CENTER_PCR'		),
		('DISTRICT_IS_CHARMING_CITY_CENTER',		'REQUIRES_PLOT_CHARMING_APPEAL_PCR'		),
		('DISTRICT_IS_BREATHTAKING_CITY_CENTER',	'REQUIRES_PLOT_HAS_CITY_CENTER_PCR'		),
		('DISTRICT_IS_BREATHTAKING_CITY_CENTER',	'REQUIRES_PLOT_BREATHTAKING_APPEAL_PCR'	),
		('DISTRICT_IS_UNINVITING_CITY_CENTER',		'REQUIRES_PLOT_HAS_CITY_CENTER_PCR'		),
		('DISTRICT_IS_UNINVITING_CITY_CENTER',		'REQUIRES_PLOT_UNINVITING_APPEAL_PCR'	),
		('DISTRICT_IS_DISGUSTING_CITY_CENTER',		'REQUIRES_PLOT_HAS_CITY_CENTER_PCR'		),
		('DISTRICT_IS_DISGUSTING_CITY_CENTER',		'REQUIRES_PLOT_DISGUSTING_APPEAL_PCR'	),
		('PLAYER_HAS_GUILDS_CIVIC_PCR',				'REQUIRES_PLAYER_HAS_GUILDS_PCR'		),
		('PLAYER_HAS_GUILDS_CIVIC_AND_CAPITAL_PCR',	'REQUIRES_PLAYER_HAS_GUILDS_PCR'		),
		('PLAYER_HAS_GUILDS_CIVIC_AND_CAPITAL_PCR',	'REQUIRES_CAPITAL_CITY'					);

INSERT INTO Requirements (RequirementId, RequirementType)
VALUES	('REQUIRES_PLOT_HAS_CITY_CENTER_PCR',		'REQUIREMENT_PLOT_DISTRICT_TYPE_MATCHES'),
		('REQUIRES_PLOT_BREATHTAKING_APPEAL_PCR',	'REQUIREMENT_PLOT_IS_APPEAL_BETWEEN'	),
		('REQUIRES_PLOT_CHARMING_APPEAL_PCR',		'REQUIREMENT_PLOT_IS_APPEAL_BETWEEN'	),
		('REQUIRES_PLOT_UNINVITING_APPEAL_PCR',		'REQUIREMENT_PLOT_IS_APPEAL_BETWEEN'	),
		('REQUIRES_PLOT_DISGUSTING_APPEAL_PCR',		'REQUIREMENT_PLOT_IS_APPEAL_BETWEEN'	),
		('REQUIRES_PLAYER_HAS_GUILDS_PCR',			'REQUIREMENT_PLAYER_HAS_CIVIC'			);

INSERT INTO RequirementArguments (RequirementId, Name, Value)
VALUES	('REQUIRES_PLOT_HAS_CITY_CENTER_PCR',		'DistrictType',		'DISTRICT_CITY_CENTER'	),
		('REQUIRES_PLOT_BREATHTAKING_APPEAL_PCR',	'MinimumAppeal',	4						),
		('REQUIRES_PLOT_CHARMING_APPEAL_PCR',		'MinimumAppeal',	2						),
		('REQUIRES_PLOT_UNINVITING_APPEAL_PCR',		'MaximumAppeal',	-2						),
		('REQUIRES_PLOT_DISGUSTING_APPEAL_PCR',		'MaximumAppeal',	-4						),
		('REQUIRES_PLAYER_HAS_GUILDS_PCR',			'CivicType',		'CIVIC_GUILDS'			);

--------------------------------------------------------------
INSERT INTO Agendas (AgendaType, Name, Description)
VALUES ('AGENDA_PCR_KYARU', 'LOC_AGENDA_PCR_KYARU_NAME', 'LOC_AGENDA_PCR_KYARU_DESCRIPTION');

INSERT INTO HistoricalAgendas (LeaderType, AgendaType)
VALUES ('LEADER_PCR_KYARU', 'AGENDA_PCR_KYARU');

INSERT INTO AgendaPreferredLeaders (AgendaType, LeaderType, PercentageChance)
VALUES ('AGENDA_NUKE_LOVER', 'LEADER_PCR_KYARU', 40);

INSERT INTO ExclusiveAgendas (AgendaOne, AgendaTwo)
VALUES	('AGENDA_PCR_KYARU', 'AGENDA_FUN_LOVING'		),
		('AGENDA_PCR_KYARU', 'AGENDA_ENVIRONMENTALIST'	),
		('AGENDA_PCR_KYARU', 'AGENDA_EXPLOITATIVE'		);

INSERT INTO AgendaTraits (AgendaType, TraitType)
VALUES	('AGENDA_PCR_KYARU', 'TRAIT_AGENDA_PCR_KYARU');

INSERT INTO TraitModifiers (TraitType, ModifierId)
VALUES	('TRAIT_AGENDA_PCR_KYARU',	'AGENDA_KYARU_SATISFIED'	),
		('TRAIT_AGENDA_PCR_KYARU',	'AGENDA_KYARU_UNSATISFIED'	);

INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
VALUES (
	'AGENDA_KYARU_SATISFIED',
	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',
	'PLAYER_HAS_HIGH_HAPPINESS'
),(
	'AGENDA_KYARU_UNSATISFIED',
	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',
	'PLAYER_HAS_LOW_HAPPINESS'
);

INSERT INTO ModifierArguments (ModifierId, Name, Value)
VALUES	('AGENDA_KYARU_SATISFIED',		'InitialValue',					1																),
		('AGENDA_KYARU_SATISFIED',		'IncrementValue',				1																),
		('AGENDA_KYARU_SATISFIED',		'IncrementTurns',				3																),
		('AGENDA_KYARU_SATISFIED',		'MaxValue',						12																),
		('AGENDA_KYARU_SATISFIED',		'StatementKey',					'LOC_DIPLO_KUDO_LEADER_PCR_KYARU_REASON_AGENDA_HIGH_HAPPINESS'	),
		('AGENDA_KYARU_SATISFIED',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_KYARU_HIGH_HAPPINESS'						),
		('AGENDA_KYARU_UNSATISFIED',	'InitialValue',					-10																),
		('AGENDA_KYARU_UNSATISFIED',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_PCR_KYARU_REASON_AGENDA_LOW_HAPPINESS'),
		('AGENDA_KYARU_UNSATISFIED',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_KYARU_LOW_HAPPINESS'						);

INSERT INTO ModifierStrings (ModifierId, Context, Text)
VALUES	('AGENDA_KYARU_SATISFIED',		'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_KYARU_UNSATISFIED',	'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');