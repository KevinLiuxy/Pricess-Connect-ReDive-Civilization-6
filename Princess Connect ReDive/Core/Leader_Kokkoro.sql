-- Leader_Kokkoro
-- Author: liuxi
--------------------------------------------------------------
INSERT INTO Types (Type, Kind)
VALUES	('LEADER_PCR_KOKKORO',										'KIND_LEADER'	),
		('TRAIT_LEADER_PCR_KOKKORO',								'KIND_TRAIT'	),
		('TRAIT_AGENDA_PCR_KOKKORO',								'KIND_TRAIT'	),
		('MODIFIER_KOKKORO_APOSTLE_UNLIMITED_PROMOTION_CHOICES',	'KIND_MODIFIER'	);

INSERT INTO Leaders (LeaderType, Name, InheritFrom, SceneLayers)
VALUES ('LEADER_PCR_KOKKORO', 'LOC_LEADER_PCR_KOKKORO_NAME', 'LEADER_DEFAULT', 4);

INSERT INTO CivilizationLeaders (CivilizationType, LeaderType, CapitalName)
VALUES ('CIVILIZATION_PrincessConnectRedive', 'LEADER_PCR_KOKKORO', 'LOC_CITY_NAME_PrincessConnectRedive_1');

INSERT INTO LeaderQuotes (LeaderType, Quote)
VALUES ('LEADER_PCR_KOKKORO', 'LOC_PEDIA_LEADERS_PAGE_PCR_KOKKORO_QUOTE');

INSERT INTO AiLists (LeaderType, AgendaType, ListType, System)
VALUES	('TRAIT_LEADER_PCR_KOKKORO',	NULL,	'PCRCivics',								'Civics'		),
		('TRAIT_LEADER_PCR_KOKKORO',	NULL,	'PCRTechs',									'Technologies'	),
		('TRAIT_LEADER_PCR_KOKKORO',	NULL,	'PCRWonders',								'Buildings'		),
		(NULL,	'TRAIT_AGENDA_PCR_KOKKORO',		'EnvironmentLoverEnvironmentPreference',	'PseudoYields'	);

--------------------------------------------------------------
INSERT INTO Traits (TraitType, Name, Description)
VALUES	('TRAIT_LEADER_PCR_KOKKORO',	'LOC_TRAIT_LEADER_PCR_KOKKORO_NAME',	'LOC_TRAIT_LEADER_PCR_KOKKORO_DESCRIPTION'	),
		('TRAIT_AGENDA_PCR_KOKKORO',	'LOC_AGENDA_PCR_KOKKORO_NAME',			'LOC_AGENDA_PCR_KOKKORO_DESCRIPTION'		);

INSERT INTO LeaderTraits (LeaderType, TraitType)
VALUES	('LEADER_PCR_KOKKORO',	'TRAIT_LEADER_PCR_KOKKORO'					),
		('LEADER_PCR_KOKKORO',	'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV'			),
		('LEADER_PCR_KOKKORO',	'TRAIT_LEADER_LOW_CITY_STATE_PREFERENCE_WAR');

INSERT INTO TraitModifiers (TraitType, ModifierId)
VALUES	('TRAIT_LEADER_PCR_KOKKORO',	'MODIFIER_KOKKORO_GOVERNMENT_SLOT'		),
		('TRAIT_LEADER_PCR_KOKKORO',	'MODIFIER_KOKKORO_FOREST_SHRINE_FAITH'	),
		('TRAIT_LEADER_PCR_KOKKORO',	'MODIFIER_KOKKORO_FOREST_SHRINE_FOOD'	),
		('TRAIT_LEADER_PCR_KOKKORO',	'MODIFIER_KOKKORO_FOREST_UNIT_HEALING'	),
		('TRAIT_LEADER_PCR_KOKKORO',	'MODIFIER_KOKKORO_APOSTLE_PROMOTION'	);

INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
VALUES (
	'MODIFIER_KOKKORO_FOREST_SHRINE_FAITH',
	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',
	'UNIMPROVED_FOREST_ADJACENT_TO_SHRINE'
),(
	'MODIFIER_KOKKORO_FOREST_SHRINE_FOOD',
	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',
	'UNIMPROVED_FOREST_ADJACENT_TO_SHRINE'
),(
	'MODIFIER_KOKKORO_FOREST_UNIT_HEALING',
	'MODIFIER_PLAYER_UNITS_ADJUST_HEAL_PER_TURN',
	'PLOT_HAS_FOREST_REQUIREMENTS_PCR'
),(
	'MODIFIER_KOKKORO_APOSTLE_PROMOTION',
	'MODIFIER_KOKKORO_APOSTLE_UNLIMITED_PROMOTION_CHOICES',
	NULL
);

INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId)
VALUES (
	'MODIFIER_KOKKORO_GOVERNMENT_SLOT',
	'MODIFIER_PLAYER_CULTURE_ADJUST_GOVERNMENT_SLOTS_MODIFIER',
	'PLAYER_HAS_MYSTICISM_CIVIC_PCR'
);

INSERT INTO ModifierArguments (ModifierId, Name, Value)
VALUES	('MODIFIER_KOKKORO_GOVERNMENT_SLOT',		'GovernmentSlotType',	'SLOT_WILDCARD'	),
		('MODIFIER_KOKKORO_FOREST_SHRINE_FAITH',	'YieldType',			'YIELD_FAITH'	),
		('MODIFIER_KOKKORO_FOREST_SHRINE_FAITH',	'Amount',				3				),
		('MODIFIER_KOKKORO_FOREST_SHRINE_FOOD',		'YieldType',			'YIELD_FOOD'	),
		('MODIFIER_KOKKORO_FOREST_SHRINE_FOOD',		'Amount',				1				),
		('MODIFIER_KOKKORO_FOREST_UNIT_HEALING',	'Amount',				15				),
		('MODIFIER_KOKKORO_FOREST_UNIT_HEALING',	'Type',					'ALL'			),
		('MODIFIER_KOKKORO_APOSTLE_PROMOTION',		'UnitType',				'UNIT_APOSTLE'	);

INSERT INTO DynamicModifiers(ModifierType, CollectionType, EffectType)
VALUES ('MODIFIER_KOKKORO_APOSTLE_UNLIMITED_PROMOTION_CHOICES', 'COLLECTION_OWNER', 'EFFECT_GRANT_UNIT_TYPE_UNLIMITED_PROMOTION_CHOICES');

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
VALUES	('PLAYER_HAS_MYSTICISM_CIVIC_PCR',			'REQUIREMENTSET_TEST_ALL'	),
		('UNIMPROVED_FOREST_ADJACENT_TO_SHRINE',	'REQUIREMENTSET_TEST_ALL'	),
		('PLOT_HAS_FOREST_REQUIREMENTS_PCR',		'REQUIREMENTSET_TEST_ALL'	);

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
VALUES	('PLAYER_HAS_MYSTICISM_CIVIC_PCR',			'REQUIRES_PLAYER_HAS_MYSTICISM_PCR'		),
		('UNIMPROVED_FOREST_ADJACENT_TO_SHRINE',	'REQUIRES_PLOT_ADJACENT_TO_SHRINE_PCR'	),
		('UNIMPROVED_FOREST_ADJACENT_TO_SHRINE',	'REQUIRES_PLOT_HAS_FOREST_PCR'			),
		('UNIMPROVED_FOREST_ADJACENT_TO_SHRINE',	'REQUIRES_PLOT_HAS_NO_IMPROVEMENTS_PCR'	),
		('PLOT_HAS_FOREST_REQUIREMENTS_PCR',		'REQUIRES_PLOT_HAS_FOREST_PCR'			);

INSERT INTO Requirements (RequirementId, RequirementType, Inverse)
VALUES	('REQUIRES_PLAYER_HAS_MYSTICISM_PCR',		'REQUIREMENT_PLAYER_HAS_CIVIC',						0	),
		('REQUIRES_PLOT_ADJACENT_TO_SHRINE_PCR',	'REQUIREMENT_PLOT_ADJACENT_BUILDING_TYPE_MATCHES',	0	),
		('REQUIRES_PLOT_HAS_FOREST_PCR',			'REQUIREMENT_PLOT_FEATURE_TYPE_MATCHES',			0	),
		('REQUIRES_PLOT_HAS_NO_IMPROVEMENTS_PCR',	'REQUIREMENT_PLOT_HAS_ANY_IMPROVEMENT',				1	);

INSERT INTO RequirementArguments (RequirementId, Name, Value)
VALUES	('REQUIRES_PLAYER_HAS_MYSTICISM_PCR',		'CivicType',		'CIVIC_MYSTICISM'	),
		('REQUIRES_PLOT_ADJACENT_TO_SHRINE_PCR',	'BuildingType',		'BUILDING_SHRINE'	),
		('REQUIRES_PLOT_ADJACENT_TO_SHRINE_PCR',	'MaxRange',			1					),
		('REQUIRES_PLOT_HAS_FOREST_PCR',			'FeatureType',		'FEATURE_FOREST'	);

--------------------------------------------------------------
INSERT INTO Agendas (AgendaType, Name, Description)
VALUES ('AGENDA_PCR_KOKKORO', 'LOC_AGENDA_PCR_KOKKORO_NAME', 'LOC_AGENDA_PCR_KOKKORO_DESCRIPTION');

INSERT INTO HistoricalAgendas (LeaderType, AgendaType)
VALUES ('LEADER_PCR_KOKKORO', 'AGENDA_PCR_KOKKORO');

INSERT INTO ExclusiveAgendas (AgendaOne, AgendaTwo)
VALUES	('AGENDA_PCR_KOKKORO',	'AGENDA_DEVOUT'				),
		('AGENDA_PCR_KOKKORO',	'AGENDA_ENVIRONMENTALIST'	),
		('AGENDA_PCR_KOKKORO',	'AGENDA_EXPLOITATIVE'		);

INSERT INTO AgendaTraits (AgendaType, TraitType)
VALUES ('AGENDA_PCR_KOKKORO', 'TRAIT_AGENDA_PCR_KOKKORO');

INSERT INTO TraitModifiers (TraitType, ModifierId)
VALUES	('TRAIT_AGENDA_PCR_KOKKORO', 'AGENDA_KOKKORO_SATISFIED'		),
		('TRAIT_AGENDA_PCR_KOKKORO', 'AGENDA_KOKKORO_UNSATISFIED'	);

INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
VALUES (
	'AGENDA_KOKKORO_SATISFIED',
	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',
	'PLAYER_HAS_HIGH_FAITH'
),(
	'AGENDA_KOKKORO_UNSATISFIED',
	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',
	'PLAYER_HAS_LOW_FAITH'
);

INSERT INTO ModifierArguments (ModifierId, Name, Value)
VALUES	('AGENDA_KOKKORO_SATISFIED',		'InitialValue',					6													),
		('AGENDA_KOKKORO_SATISFIED',		'StatementKey',					'LOC_DIPLO_KUDO_LEADER_PCR_KOKKORO_REASON_ANY'		),
		('AGENDA_KOKKORO_SATISFIED',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_KOKKORO_HIGH_FAITH'				),
		('AGENDA_KOKKORO_UNSATISFIED',		'InitialValue',					-6													),
		('AGENDA_KOKKORO_UNSATISFIED',		'StatementKey',					'LOC_DIPLO_WARNING_LEADER_PCR_KOKKORO_REASON_ANY'	),
		('AGENDA_KOKKORO_UNSATISFIED',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_KOKKORO_LOW_FAITH'				);

INSERT INTO ModifierStrings (ModifierId, Context, Text)
VALUES	('AGENDA_KOKKORO_SATISFIED',	'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_KOKKORO_UNSATISFIED',	'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');