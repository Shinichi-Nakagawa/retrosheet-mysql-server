-- events index
ALTER TABLE events ADD INDEX index_bat_id(BAT_ID,GAME_ID);
ALTER TABLE events ADD INDEX index_resp_bat_id(RESP_BAT_ID,GAME_ID);
ALTER TABLE events ADD INDEX index_bat_on_deck_id(BAT_ON_DECK_ID,GAME_ID);
ALTER TABLE events ADD INDEX index_bat_in_hold_id(BAT_IN_HOLD_ID,GAME_ID);
ALTER TABLE events ADD INDEX index_pit_id(PIT_ID,GAME_ID);
ALTER TABLE events ADD INDEX index_resp_pit_id(RESP_PIT_ID,GAME_ID);
ALTER TABLE events ADD INDEX index_pos2_fld_id(POS2_FLD_ID,GAME_ID);
ALTER TABLE events ADD INDEX index_pos3_fld_id(POS3_FLD_ID,GAME_ID);
ALTER TABLE events ADD INDEX index_pos4_fld_id(POS4_FLD_ID,GAME_ID);
ALTER TABLE events ADD INDEX index_pos5_fld_id(POS5_FLD_ID,GAME_ID);
ALTER TABLE events ADD INDEX index_pos6_fld_id(POS6_FLD_ID,GAME_ID);
ALTER TABLE events ADD INDEX index_pos7_fld_id(POS7_FLD_ID,GAME_ID);
ALTER TABLE events ADD INDEX index_pos8_fld_id(POS8_FLD_ID,GAME_ID);
ALTER TABLE events ADD INDEX index_pos9_fld_id(POS9_FLD_ID,GAME_ID);
ALTER TABLE events ADD INDEX index_base1_run_id(BASE1_RUN_ID,GAME_ID);
ALTER TABLE events ADD INDEX index_base2_run_id(BASE2_RUN_ID,GAME_ID);
ALTER TABLE events ADD INDEX index_base3_run_id(BASE3_RUN_ID,GAME_ID);
ALTER TABLE events ADD INDEX index_run1_resp_pit_id(RUN1_RESP_PIT_ID,GAME_ID);
ALTER TABLE events ADD INDEX index_run2_resp_pit_id(RUN2_RESP_PIT_ID,GAME_ID);
ALTER TABLE events ADD INDEX index_run3_resp_pit_id(RUN3_RESP_PIT_ID,GAME_ID);
ALTER TABLE events ADD INDEX index_removed_for_pr_run1_id(REMOVED_FOR_PR_RUN1_ID,GAME_ID);
ALTER TABLE events ADD INDEX index_removed_for_pr_run2_id(REMOVED_FOR_PR_RUN2_ID,GAME_ID);
ALTER TABLE events ADD INDEX index_removed_for_pr_run3_id(REMOVED_FOR_PR_RUN3_ID,GAME_ID);
ALTER TABLE events ADD INDEX index_removed_for_ph_bat_id(REMOVED_FOR_PH_BAT_ID,GAME_ID);
ALTER TABLE events ADD INDEX index_run1_resp_cat_id(RUN1_RESP_CAT_ID,GAME_ID);
ALTER TABLE events ADD INDEX index_run2_resp_cat_id(RUN2_RESP_CAT_ID,GAME_ID);
ALTER TABLE events ADD INDEX index_run3_resp_cat_id(RUN3_RESP_CAT_ID,GAME_ID);

-- games index

ALTER TABLE games ADD INDEX index_game_dt(GAME_DT);
ALTER TABLE games ADD INDEX index_win_pit_id(WIN_PIT_ID, GAME_DT);
ALTER TABLE games ADD INDEX index_lose_pit_id(LOSE_PIT_ID, GAME_DT);
ALTER TABLE games ADD INDEX index_save_pit_id(SAVE_PIT_ID, GAME_DT);
ALTER TABLE games ADD INDEX index_gwrbi_bat_id(GWRBI_BAT_ID, GAME_DT);
ALTER TABLE games ADD INDEX index_away_lineup1_bat_id(AWAY_LINEUP1_BAT_ID, GAME_DT);
ALTER TABLE games ADD INDEX index_away_lineup2_bat_id(AWAY_LINEUP2_BAT_ID, GAME_DT);
ALTER TABLE games ADD INDEX index_away_lineup3_bat_id(AWAY_LINEUP3_BAT_ID, GAME_DT);
ALTER TABLE games ADD INDEX index_away_lineup4_bat_id(AWAY_LINEUP4_BAT_ID, GAME_DT);
ALTER TABLE games ADD INDEX index_away_lineup5_bat_id(AWAY_LINEUP5_BAT_ID, GAME_DT);
ALTER TABLE games ADD INDEX index_away_lineup6_bat_id(AWAY_LINEUP6_BAT_ID, GAME_DT);
ALTER TABLE games ADD INDEX index_away_lineup7_bat_id(AWAY_LINEUP7_BAT_ID, GAME_DT);
ALTER TABLE games ADD INDEX index_away_lineup8_bat_id(AWAY_LINEUP8_BAT_ID, GAME_DT);
ALTER TABLE games ADD INDEX index_away_lineup9_bat_id(AWAY_LINEUP9_BAT_ID, GAME_DT);
ALTER TABLE games ADD INDEX index_home_lineup1_bat_id(HOME_LINEUP1_BAT_ID, GAME_DT);
ALTER TABLE games ADD INDEX index_home_lineup2_bat_id(HOME_LINEUP2_BAT_ID, GAME_DT);
ALTER TABLE games ADD INDEX index_home_lineup3_bat_id(HOME_LINEUP3_BAT_ID, GAME_DT);
ALTER TABLE games ADD INDEX index_home_lineup4_bat_id(HOME_LINEUP4_BAT_ID, GAME_DT);
ALTER TABLE games ADD INDEX index_home_lineup5_bat_id(HOME_LINEUP5_BAT_ID, GAME_DT);
ALTER TABLE games ADD INDEX index_home_lineup6_bat_id(HOME_LINEUP6_BAT_ID, GAME_DT);
ALTER TABLE games ADD INDEX index_home_lineup7_bat_id(HOME_LINEUP7_BAT_ID, GAME_DT);
ALTER TABLE games ADD INDEX index_home_lineup8_bat_id(HOME_LINEUP8_BAT_ID, GAME_DT);
ALTER TABLE games ADD INDEX index_home_lineup9_bat_id(HOME_LINEUP9_BAT_ID, GAME_DT);
ALTER TABLE games ADD INDEX index_away_finish_pit_id(AWAY_FINISH_PIT_ID, GAME_DT);
ALTER TABLE games ADD INDEX index_home_finish_pit_id(HOME_FINISH_PIT_ID, GAME_DT);

-- rosters index
ALTER TABLE rosters ADD INDEX index_full_name_tx(FIRST_NAME_TX,LAST_NAME_TX);
ALTER TABLE rosters ADD INDEX index_full_name_tx_year(FIRST_NAME_TX,LAST_NAME_TX,YEAR);

ALTER TABLE rosters ADD INDEX index_last_name_tx(LAST_NAME_TX);
ALTER TABLE rosters ADD INDEX index_first_name_tx(FIRST_NAME_TX);

