/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RACES` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `track` varchar(3) NOT NULL,
  `track_canonical` varchar(3) NOT NULL,
  `track_state` varchar(3) DEFAULT NULL,
  `track_country` varchar(3) NOT NULL,
  `track_name` varchar(80) NOT NULL,
  `number` tinyint(2) DEFAULT NULL,
  `breed` varchar(15) DEFAULT NULL,
  `type` varchar(75) DEFAULT NULL,
  `code` varchar(3) DEFAULT NULL,
  `race_name` varchar(100) DEFAULT NULL,
  `grade` tinyint(1) DEFAULT NULL,
  `black_type` varchar(45) DEFAULT NULL,
  `conditions` text,
  `min_claim` int(10) DEFAULT NULL,
  `max_claim` int(10) DEFAULT NULL,
  `restrictions` varchar(45) DEFAULT NULL,
  `min_age` smallint(6) DEFAULT NULL,
  `max_age` smallint(6) DEFAULT NULL,
  `age_code` varchar(15) DEFAULT NULL,
  `sexes` tinyint(1) DEFAULT NULL,
  `sexes_code` varchar(45) DEFAULT NULL,
  `female_only` tinyint(1) DEFAULT NULL,
  `state_bred` tinyint(1) DEFAULT NULL,
  `distance_text` varchar(100) DEFAULT NULL,
  `distance_compact` varchar(15) DEFAULT NULL,
  `feet` smallint(6) DEFAULT NULL,
  `furlongs` decimal(5,2) DEFAULT NULL,
  `exact` tinyint(1) DEFAULT NULL,
  `run_up` smallint(6) DEFAULT NULL,
  `temp_rail` smallint(6) DEFAULT NULL,
  `surface` varchar(45) DEFAULT NULL,
  `course` varchar(45) DEFAULT NULL,
  `track_condition` varchar(25) DEFAULT NULL,
  `scheduled_surface` varchar(45) DEFAULT NULL,
  `scheduled_course` varchar(45) DEFAULT NULL,
  `off_turf` tinyint(1) DEFAULT NULL,
  `format` varchar(5) DEFAULT NULL,
  `track_record_holder` varchar(45) DEFAULT NULL,
  `track_record_time` varchar(15) DEFAULT NULL,
  `track_record_millis` bigint(11) DEFAULT NULL,
  `track_record_date` date DEFAULT NULL,
  `purse` int(11) DEFAULT NULL,
  `purse_text` varchar(25) DEFAULT NULL,
  `available_money` varchar(100) DEFAULT NULL,
  `purse_enhancements` varchar(200) DEFAULT NULL,
  `value_of_race` varchar(500) DEFAULT NULL,
  `weather` varchar(25) DEFAULT NULL,
  `wind_speed` smallint(3) DEFAULT NULL,
  `wind_direction` varchar(15) DEFAULT NULL,
  `post_time` varchar(15) DEFAULT NULL,
  `start_comments` varchar(100) DEFAULT NULL,
  `timer` varchar(15) DEFAULT NULL,
  `dead_heat` tinyint(1) DEFAULT NULL,
  `number_of_runners` tinyint(2) DEFAULT NULL,
  `final_time` varchar(15) DEFAULT NULL,
  `final_millis` bigint(11) DEFAULT NULL,
  `total_wps_pool` int(20) DEFAULT NULL,
  `footnotes` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_RACES_date_track_number` (`date`,`track`,`number`),
  KEY `idx_RACES_track_canonical` (`track_canonical`),
  KEY `idx_RACES_track_state` (`track_state`),
  KEY `idx_RACES_track_country` (`track_country`),
  KEY `idx_RACES_breed` (`breed`),
  KEY `idx_RACES_type` (`type`),
  KEY `idx_RACES_code` (`code`),
  KEY `idx_RACES_grade` (`grade`),
  KEY `idx_RACES_black_type` (`black_type`),
  KEY `idx_RACES_restrictions` (`restrictions`),
  KEY `idx_RACES_age_code` (`age_code`),
  KEY `idx_RACES_sexes_code` (`sexes_code`),
  KEY `idx_RACES_sexes` (`sexes`),
  KEY `idx_RACES_female_only` (`female_only`),
  KEY `idx_RACES_state_bred` (`state_bred`),
  KEY `idx_RACES_distance_compact` (`distance_compact`),
  KEY `idx_RACES_feet` (`feet`),
  KEY `idx_RACES_furlongs` (`furlongs`),
  KEY `idx_RACES_exact` (`exact`),
  KEY `idx_RACES_surface` (`surface`),
  KEY `idx_RACES_course` (`course`),
  KEY `idx_RACES_track_condition` (`track_condition`),
  KEY `idx_RACES_off_turf` (`off_turf`),
  KEY `idx_RACES_format` (`format`),
  KEY `idx_RACES_track_record_millis` (`track_record_millis`),
  KEY `idx_RACES_purse` (`purse`),
  KEY `idx_RACES_number_of_runners` (`number_of_runners`),
  KEY `idx_RACES_total_wps_pool` (`total_wps_pool`),
  KEY `idx_RACES_dead_heat` (`dead_heat`),
  KEY `idx_RACES_post_time` (`post_time`),
  KEY `idx_RACES_final_millis` (`final_millis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `STARTERS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `race_id` int(11) NOT NULL,
  `last_raced_date` date DEFAULT NULL,
  `last_raced_days_since` smallint(5) DEFAULT NULL,
  `last_raced_track` varchar(3) DEFAULT NULL,
  `last_raced_track_canonical` varchar(3) DEFAULT NULL,
  `last_raced_track_state` varchar(3) DEFAULT NULL,
  `last_raced_track_country` varchar(3) DEFAULT NULL,
  `last_raced_track_name` varchar(80) DEFAULT NULL,
  `last_raced_number` tinyint(2) DEFAULT NULL,
  `last_raced_position` tinyint(2) DEFAULT NULL,
  `program` varchar(15) DEFAULT NULL,
  `entry` tinyint(1) DEFAULT NULL,
  `entry_program` varchar(15) DEFAULT NULL,
  `horse` varchar(45) NOT NULL,
  `jockey_first` varchar(100) DEFAULT NULL,
  `jockey_last` varchar(100) DEFAULT NULL,
  `trainer_first` varchar(100) DEFAULT NULL,
  `trainer_last` varchar(100) DEFAULT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `weight` smallint(3) DEFAULT NULL,
  `jockey_allowance` smallint(2) DEFAULT NULL,
  `medication_equipment` varchar(15) DEFAULT NULL,
  `claim_price` int(10) DEFAULT NULL,
  `claimed` tinyint(1) DEFAULT NULL,
  `new_trainer_name` varchar(100) DEFAULT NULL,
  `new_owner_name` varchar(100) DEFAULT NULL,
  `pp` tinyint(2) DEFAULT NULL,
  `finish_position` tinyint(2) DEFAULT NULL,
  `official_position` tinyint(2) DEFAULT NULL,
  `position_dead_heat` tinyint(1) DEFAULT NULL,
  `wagering_position` tinyint(2) DEFAULT NULL,
  `winner` tinyint(1) DEFAULT NULL,
  `disqualified` tinyint(1) DEFAULT NULL,
  `odds` decimal(10,2) DEFAULT NULL,
  `choice` tinyint(2) DEFAULT NULL,
  `favorite` tinyint(1) DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `race_id_fk_idx` (`race_id`),
  KEY `idx_STARTERS_last_raced_date` (`last_raced_date`),
  KEY `idx_STARTERS_last_raced_days_since` (`last_raced_days_since`),
  KEY `idx_STARTERS_last_raced_track` (`last_raced_track`),
  KEY `idx_STARTERS_last_raced_track_canonical` (`last_raced_track_canonical`),
  KEY `idx_STARTERS_last_raced_track_state` (`last_raced_track_state`),
  KEY `idx_STARTERS_last_raced_position` (`last_raced_position`),
  KEY `idx_STARTERS_entry` (`entry`),
  KEY `idx_STARTERS_horse` (`horse`),
  KEY `idx_STARTERS_jockey_first_jockey_last` (`jockey_last`,`jockey_first`),
  KEY `idx_STARTERS_trainer_first_trainer_last` (`trainer_last`,`trainer_first`),
  KEY `idx_STARTERS_weight` (`weight`),
  KEY `idx_STARTERS_claim_price` (`claim_price`),
  KEY `idx_STARTERS_claimed` (`claimed`),
  KEY `idx_STARTERS_pp` (`pp`),
  KEY `idx_STARTERS_finish_position` (`finish_position`),
  KEY `idx_STARTERS_official_position` (`official_position`),
  KEY `idx_STARTERS_position_dead_heat` (`position_dead_heat`),
  KEY `idx_STARTERS_wagering_position` (`wagering_position`),
  KEY `idx_STARTERS_odds` (`odds`),
  KEY `idx_STARTERS_choice` (`choice`),
  KEY `idx_STARTERS_favorite` (`favorite`),
  CONSTRAINT `race_starter` FOREIGN KEY (`race_id`) REFERENCES `RACES` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `BREEDING` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `starter_id` int(11) NOT NULL,
  `horse` varchar(45) NOT NULL,
  `color` varchar(25) DEFAULT NULL,
  `sex` varchar(15) DEFAULT NULL,
  `sire` varchar(45) DEFAULT NULL,
  `dam` varchar(45) DEFAULT NULL,
  `dam_sire` varchar(45) DEFAULT NULL,
  `foaling_date` date DEFAULT NULL,
  `foaling_location` varchar(100) DEFAULT NULL,
  `breeder` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `starter_breeding_idx` (`starter_id`),
  KEY `idx_BREEDING_horse` (`horse`),
  KEY `idx_BREEDING_sire` (`sire`),
  KEY `idx_BREEDING_dam` (`dam`),
  KEY `idx_BREEDING_dam_sire` (`dam_sire`),
  CONSTRAINT `starter_breeding` FOREIGN KEY (`starter_id`) REFERENCES `STARTERS` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `CANCELLED` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason` varchar(45) DEFAULT NULL,
  `date` date NOT NULL,
  `track` varchar(3) NOT NULL,
  `track_canonical` varchar(3) NOT NULL,
  `track_state` varchar(3) DEFAULT NULL,
  `track_country` varchar(3) NOT NULL,
  `track_name` varchar(80) NOT NULL,
  `number` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_CANCELLED_date_track_number` (`date`,`track`,`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `EQUIP` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `starter_id` int(11) NOT NULL,
  `code` char(1) DEFAULT NULL,
  `text` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `starter_idx` (`starter_id`),
  KEY `idx_EQUIP_code` (`code`),
  CONSTRAINT `starter_equip` FOREIGN KEY (`starter_id`) REFERENCES `STARTERS` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `EXOTICS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `race_id` int(11) NOT NULL,
  `unit` decimal(5,2) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `winning_numbers` varchar(100) DEFAULT NULL,
  `payoff` decimal(12,2) DEFAULT NULL,
  `odds` decimal(10,2) DEFAULT NULL,
  `number_correct` varchar(100) DEFAULT NULL,
  `pool` decimal(12,2) DEFAULT NULL,
  `carryover` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `race_exotics_idx` (`race_id`),
  KEY `idx_EXOTICS_name` (`name`),
  KEY `idx_EXOTICS_pool` (`pool`),
  KEY `idx_EXOTICS_carryover` (`carryover`),
  KEY `idx_EXOTICS_payoff` (`payoff`),
  KEY `idx_EXOTICS_odds` (`odds`),
  CONSTRAINT `race_exotics` FOREIGN KEY (`race_id`) REFERENCES `RACES` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `FRACTIONALS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `race_id` int(11) NOT NULL,
  `point` tinyint(1) NOT NULL,
  `text` varchar(15) NOT NULL,
  `compact` varchar(15) NOT NULL,
  `feet` smallint(6) NOT NULL,
  `furlongs` decimal(5,2) NOT NULL,
  `time` varchar(15) DEFAULT NULL,
  `millis` bigint(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `race_fractionals_idx` (`race_id`),
  KEY `idx_FRACTIONALS_point` (`point`),
  KEY `idx_FRACTIONALS_compact` (`compact`),
  KEY `idx_FRACTIONALS_feet` (`feet`),
  KEY `idx_FRACTIONALS_furlongs` (`furlongs`),
  KEY `idx_FRACTIONALS_millis` (`millis`),
  CONSTRAINT `race_fractionals` FOREIGN KEY (`race_id`) REFERENCES `RACES` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `INDIV_FRACTIONALS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `starter_id` int(11) NOT NULL,
  `point` tinyint(1) NOT NULL,
  `text` varchar(15) NOT NULL,
  `compact` varchar(15) NOT NULL,
  `feet` smallint(6) NOT NULL,
  `furlongs` decimal(5,2) NOT NULL,
  `time` varchar(15) DEFAULT NULL,
  `millis` bigint(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `starter_fractionals_idx` (`starter_id`),
  KEY `idx_INDIV_FRACTIONALS_point` (`point`),
  KEY `idx_INDIV_FRACTIONALS_compact` (`compact`),
  KEY `idx_INDIV_FRACTIONALS_feet` (`feet`),
  KEY `idx_INDIV_FRACTIONALS_furlongs` (`furlongs`),
  KEY `idx_INDIV_FRACTIONALS_millis` (`millis`),
  CONSTRAINT `starter_fractionals` FOREIGN KEY (`starter_id`) REFERENCES `STARTERS` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `INDIV_RATINGS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `starter_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `text` varchar(100) DEFAULT NULL,
  `value` double DEFAULT NULL,
  `extra` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `starter_rating_idx` (`starter_id`),
  CONSTRAINT `starter_rating` FOREIGN KEY (`starter_id`) REFERENCES `STARTERS` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `INDIV_SPLITS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `starter_id` int(11) NOT NULL,
  `point` tinyint(1) NOT NULL,
  `text` varchar(25) NOT NULL,
  `compact` varchar(35) NOT NULL,
  `feet` smallint(6) NOT NULL,
  `furlongs` decimal(5,2) NOT NULL,
  `time` varchar(15) DEFAULT NULL,
  `millis` bigint(11) DEFAULT NULL,
  `from_point` tinyint(1) DEFAULT NULL,
  `from_text` varchar(15) DEFAULT NULL,
  `from_compact` varchar(15) DEFAULT NULL,
  `from_feet` smallint(6) DEFAULT NULL,
  `from_furlongs` decimal(5,2) DEFAULT NULL,
  `from_time` varchar(15) DEFAULT NULL,
  `from_millis` bigint(11) DEFAULT NULL,
  `to_point` tinyint(1) DEFAULT NULL,
  `to_text` varchar(15) DEFAULT NULL,
  `to_compact` varchar(15) DEFAULT NULL,
  `to_feet` smallint(6) DEFAULT NULL,
  `to_furlongs` decimal(5,2) DEFAULT NULL,
  `to_time` varchar(15) DEFAULT NULL,
  `to_millis` bigint(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `starter_splits_idx` (`starter_id`),
  KEY `idx_INDIV_SPLITS_point` (`point`),
  KEY `idx_INDIV_SPLITS_compact` (`compact`),
  KEY `idx_INDIV_SPLITS_feet` (`feet`),
  KEY `idx_INDIV_SPLITS_furlongs` (`furlongs`),
  KEY `idx_INDIV_SPLITS_millis` (`millis`),
  KEY `idx_INDIV_SPLITS_from_point` (`from_point`),
  KEY `idx_INDIV_SPLITS_from_compact` (`from_compact`),
  KEY `idx_INDIV_SPLITS_from_feet` (`from_feet`),
  KEY `idx_INDIV_SPLITS_from_furlongs` (`from_furlongs`),
  KEY `idx_INDIV_SPLITS_from_millis` (`from_millis`),
  KEY `idx_INDIV_SPLITS_to_point` (`to_point`),
  KEY `idx_INDIV_SPLITS_to_compact` (`to_compact`),
  KEY `idx_INDIV_SPLITS_to_feet` (`to_feet`),
  KEY `idx_INDIV_SPLITS_to_furlongs` (`to_furlongs`),
  KEY `idx_INDIV_SPLITS_to_millis` (`to_millis`),
  CONSTRAINT `starter_splits` FOREIGN KEY (`starter_id`) REFERENCES `STARTERS` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `MEDS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `starter_id` int(11) NOT NULL,
  `code` char(1) DEFAULT NULL,
  `text` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `starter_fk_idx` (`starter_id`),
  KEY `idx_MEDS_code` (`code`),
  CONSTRAINT `starter_meds` FOREIGN KEY (`starter_id`) REFERENCES `STARTERS` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `POINTS_OF_CALL` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `starter_id` int(11) NOT NULL,
  `point` tinyint(1) NOT NULL,
  `text` varchar(15) NOT NULL,
  `compact` varchar(15) NOT NULL,
  `feet` smallint(6) DEFAULT NULL,
  `furlongs` decimal(5,2) DEFAULT NULL,
  `position` tinyint(2) DEFAULT NULL,
  `len_ahead_text` varchar(15) DEFAULT NULL,
  `len_ahead` decimal(5,2) DEFAULT NULL,
  `tot_len_bhd_text` varchar(15) DEFAULT NULL,
  `tot_len_bhd` decimal(5,2) DEFAULT NULL,
  `wide` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `starter_points_of_call_idx` (`starter_id`),
  KEY `idx_POINTS_OF_CALL_point` (`point`),
  KEY `idx_POINTS_OF_CALL_compact` (`compact`),
  KEY `idx_POINTS_OF_CALL_feet` (`feet`),
  KEY `idx_POINTS_OF_CALL_furlongs` (`furlongs`),
  KEY `idx_POINTS_OF_CALL_position` (`position`),
  KEY `idx_POINTS_OF_CALL_len_ahead` (`len_ahead`),
  KEY `idx_POINTS_OF_CALL_tot_len_bhd` (`tot_len_bhd`),
  CONSTRAINT `starter_points_of_call` FOREIGN KEY (`starter_id`) REFERENCES `STARTERS` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `RATINGS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `race_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `text` varchar(100) DEFAULT NULL,
  `value` double DEFAULT NULL,
  `extra` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `race_rating_idx` (`race_id`),
  CONSTRAINT `race_rating` FOREIGN KEY (`race_id`) REFERENCES `RACES` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SCRATCHES` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `race_id` int(11) NOT NULL,
  `horse` varchar(45) NOT NULL,
  `reason` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `race_scratches_idx` (`race_id`),
  KEY `idx_SCRATCHES_horse` (`horse`),
  CONSTRAINT `race_scratches` FOREIGN KEY (`race_id`) REFERENCES `RACES` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SPLITS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `race_id` int(11) NOT NULL,
  `point` tinyint(1) NOT NULL,
  `text` varchar(25) NOT NULL,
  `compact` varchar(35) NOT NULL,
  `feet` smallint(6) NOT NULL,
  `furlongs` decimal(5,2) NOT NULL,
  `time` varchar(15) DEFAULT NULL,
  `millis` bigint(11) DEFAULT NULL,
  `from_point` tinyint(1) DEFAULT NULL,
  `from_text` varchar(15) DEFAULT NULL,
  `from_compact` varchar(15) DEFAULT NULL,
  `from_feet` smallint(6) DEFAULT NULL,
  `from_furlongs` decimal(5,2) DEFAULT NULL,
  `from_time` varchar(15) DEFAULT NULL,
  `from_millis` bigint(11) DEFAULT NULL,
  `to_point` tinyint(1) DEFAULT NULL,
  `to_text` varchar(15) DEFAULT NULL,
  `to_compact` varchar(15) DEFAULT NULL,
  `to_feet` smallint(6) DEFAULT NULL,
  `to_furlongs` decimal(5,2) DEFAULT NULL,
  `to_time` varchar(15) DEFAULT NULL,
  `to_millis` bigint(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `race_splits_idx` (`race_id`),
  KEY `idx_SPLITS_point` (`point`),
  KEY `idx_SPLITS_compact` (`compact`),
  KEY `idx_SPLITS_feet` (`feet`),
  KEY `idx_SPLITS_furlongs` (`furlongs`),
  KEY `idx_SPLITS_millis` (`millis`),
  KEY `idx_SPLITS_from_point` (`from_point`),
  KEY `idx_SPLITS_from_compact` (`from_compact`),
  KEY `idx_SPLITS_from_feet` (`from_feet`),
  KEY `idx_SPLITS_from_furlongs` (`from_furlongs`),
  KEY `idx_SPLITS_from_millis` (`from_millis`),
  KEY `idx_SPLITS_to_point` (`to_point`),
  KEY `idx_SPLITS_to_compact` (`to_compact`),
  KEY `idx_SPLITS_to_feet` (`to_feet`),
  KEY `idx_SPLITS_to_furlongs` (`to_furlongs`),
  KEY `idx_SPLITS_to_millis` (`to_millis`),
  CONSTRAINT `race_splits` FOREIGN KEY (`race_id`) REFERENCES `RACES` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `WPS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `starter_id` int(11) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `unit` decimal(5,2) DEFAULT NULL,
  `payoff` decimal(12,2) DEFAULT NULL,
  `odds` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `starter_wps_idx` (`starter_id`),
  KEY `idx_WPS_type` (`type`),
  KEY `idx_WPS_payoff` (`payoff`),
  KEY `idx_WPS_odds` (`odds`),
  CONSTRAINT `starter_wps` FOREIGN KEY (`starter_id`) REFERENCES `STARTERS` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;