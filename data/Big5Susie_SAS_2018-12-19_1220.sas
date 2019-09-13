%macro removeOldFile(bye); %if %sysfunc(exist(&bye.)) %then %do; proc delete data=&bye.; run; %end; %mend removeOldFile; %removeOldFile(work.redcap); data REDCAP; %let _EFIERR_ = 0;
infile 'Big5Susie_DATA_NOHDRS_2018-12-19_1220.csv' delimiter = ',' MISSOVER DSD lrecl=32767 firstobs=1 ; 
	informat record_id $500. ;
	informat redcap_survey_identifier $500. ;
	informat my_first_instrument_timestamp $500. ;
	informat group best32. ;
	informat year_school best32. ;
	informat stud_age best32. ;
	informat stud_education best32. ;
	informat mil_background best32. ;
	informat fam_dentist best32. ;
	informat schools_applied best32. ;
	informat schools_accepted best32. ;
	informat reapply_vcu best32. ;
	informat stud_gpa best32. ;
	informat grad_gpa_2 best32. ;
	informat dat_score $500. ;
	informat plans best32. ;
	informat residency best32. ;
	informat other_plans $5000. ;
	informat gender best32. ;
	informat race best32. ;
	informat fac_dept best32. ;
	informat years_on_search best32. ;
	informat age_faculty best32. ;
	informat life_part best32. ;
	informat little_concern_others best32. ;
	informat always_prepared best32. ;
	informat stressed_easily best32. ;
	informat rich_vocab best32. ;
	informat dont_talk best32. ;
	informat interested_people best32. ;
	informat leave_belongings best32. ;
	informat relaxed_most_of_time best32. ;
	informat difficulty_abstract best32. ;
	informat comfortable_people best32. ;
	informat insult best32. ;
	informat attention_details best32. ;
	informat worry best32. ;
	informat vivid_imagination best32. ;
	informat keep_background best32. ;
	informat sympathize best32. ;
	informat make_mess best32. ;
	informat seldom_blue best32. ;
	informat not_interested_abstract best32. ;
	informat start_convos best32. ;
	informat not_interested_others_probs best32. ;
	informat chores_right_away best32. ;
	informat easily_disturbed best32. ;
	informat excellent_ideas best32. ;
	informat little_say best32. ;
	informat soft_heart best32. ;
	informat forget_to_put_things_v_0 best32. ;
	informat upset_easily best32. ;
	informat bad_imagination best32. ;
	informat talk_diff_people best32. ;
	informat not_interested_people best32. ;
	informat like_order best32. ;
	informat change_mood best32. ;
	informat quick_understand best32. ;
	informat no_attention best32. ;
	informat take_time_others best32. ;
	informat shirk_duties best32. ;
	informat freq_mood_swings best32. ;
	informat difficult_words best32. ;
	informat center_attention best32. ;
	informat feel_emotions best32. ;
	informat follow_sched best32. ;
	informat irritated_easily best32. ;
	informat time_reflecting best32. ;
	informat quiet_strangers best32. ;
	informat people_feel_ease best32. ;
	informat exacting_in_work best32. ;
	informat feel_blue best32. ;
	informat full_ideas best32. ;
	informat extraversion_score best32. ;
	informat agreeable_score best32. ;
	informat conscientiousness best32. ;
	informat emot_stability best32. ;
	informat intellect_score best32. ;
	informat my_first_instrument_complete best32. ;

	format record_id $500. ;
	format redcap_survey_identifier $500. ;
	format my_first_instrument_timestamp $500. ;
	format group best12. ;
	format year_school best12. ;
	format stud_age best12. ;
	format stud_education best12. ;
	format mil_background best12. ;
	format fam_dentist best12. ;
	format schools_applied best12. ;
	format schools_accepted best12. ;
	format reapply_vcu best12. ;
	format stud_gpa best12. ;
	format grad_gpa_2 best12. ;
	format dat_score $500. ;
	format plans best12. ;
	format residency best12. ;
	format other_plans $5000. ;
	format gender best12. ;
	format race best12. ;
	format fac_dept best12. ;
	format years_on_search best12. ;
	format age_faculty best12. ;
	format life_part best12. ;
	format little_concern_others best12. ;
	format always_prepared best12. ;
	format stressed_easily best12. ;
	format rich_vocab best12. ;
	format dont_talk best12. ;
	format interested_people best12. ;
	format leave_belongings best12. ;
	format relaxed_most_of_time best12. ;
	format difficulty_abstract best12. ;
	format comfortable_people best12. ;
	format insult best12. ;
	format attention_details best12. ;
	format worry best12. ;
	format vivid_imagination best12. ;
	format keep_background best12. ;
	format sympathize best12. ;
	format make_mess best12. ;
	format seldom_blue best12. ;
	format not_interested_abstract best12. ;
	format start_convos best12. ;
	format not_interested_others_probs best12. ;
	format chores_right_away best12. ;
	format easily_disturbed best12. ;
	format excellent_ideas best12. ;
	format little_say best12. ;
	format soft_heart best12. ;
	format forget_to_put_things_v_0 best12. ;
	format upset_easily best12. ;
	format bad_imagination best12. ;
	format talk_diff_people best12. ;
	format not_interested_people best12. ;
	format like_order best12. ;
	format change_mood best12. ;
	format quick_understand best12. ;
	format no_attention best12. ;
	format take_time_others best12. ;
	format shirk_duties best12. ;
	format freq_mood_swings best12. ;
	format difficult_words best12. ;
	format center_attention best12. ;
	format feel_emotions best12. ;
	format follow_sched best12. ;
	format irritated_easily best12. ;
	format time_reflecting best12. ;
	format quiet_strangers best12. ;
	format people_feel_ease best12. ;
	format exacting_in_work best12. ;
	format feel_blue best12. ;
	format full_ideas best12. ;
	format extraversion_score best12. ;
	format agreeable_score best12. ;
	format conscientiousness best12. ;
	format emot_stability best12. ;
	format intellect_score best12. ;
	format my_first_instrument_complete best12. ;

input
		record_id $
		redcap_survey_identifier $
		my_first_instrument_timestamp $
		group
		year_school
		stud_age
		stud_education
		mil_background
		fam_dentist
		schools_applied
		schools_accepted
		reapply_vcu
		stud_gpa
		grad_gpa_2
		dat_score $
		plans
		residency
		other_plans $
		gender
		race
		fac_dept
		years_on_search
		age_faculty
		life_part
		little_concern_others
		always_prepared
		stressed_easily
		rich_vocab
		dont_talk
		interested_people
		leave_belongings
		relaxed_most_of_time
		difficulty_abstract
		comfortable_people
		insult
		attention_details
		worry
		vivid_imagination
		keep_background
		sympathize
		make_mess
		seldom_blue
		not_interested_abstract
		start_convos
		not_interested_others_probs
		chores_right_away
		easily_disturbed
		excellent_ideas
		little_say
		soft_heart
		forget_to_put_things_v_0
		upset_easily
		bad_imagination
		talk_diff_people
		not_interested_people
		like_order
		change_mood
		quick_understand
		no_attention
		take_time_others
		shirk_duties
		freq_mood_swings
		difficult_words
		center_attention
		feel_emotions
		follow_sched
		irritated_easily
		time_reflecting
		quiet_strangers
		people_feel_ease
		exacting_in_work
		feel_blue
		full_ideas
		extraversion_score
		agreeable_score
		conscientiousness
		emot_stability
		intellect_score
		my_first_instrument_complete
;
if _ERROR_ then call symput('_EFIERR_',"1");
run;

proc contents;run;


data redcap;
	set redcap;
	label record_id='Record ID';
	label redcap_survey_identifier='Survey Identifier';
	label my_first_instrument_timestamp='Survey Timestamp';
	label group='Please indicate your affiliation with the dental school:';
	label year_school='What year are you in dental school?';
	label stud_age='What is your age?';
	label stud_education='What is the highest level of education you have achieved prior to dental school?';
	label mil_background='Do you have a military background?';
	label fam_dentist='Do you have any family members who are dentists?';
	label schools_applied='Roughly how many schools did you apply to for dental school?';
	label schools_accepted='Roughly how many schools were you accepted to attend?';
	label reapply_vcu='Did you ever reapply to VCU?';
	label stud_gpa='Roughly, what was your undergraduate GPA?';
	label grad_gpa_2='Roughly, what was your graduate/professional GPA?';
	label dat_score='Roughly, what was your DAT score?';
	label plans='What are your plans following graduation?';
	label residency='Which residency are you most interested in:';
	label other_plans='Please describe your plans following graduation:';
	label gender='What is your gender?';
	label race='What is your ethnic/racial background?';
	label fac_dept='What department are you primarily affiliated with?';
	label years_on_search='How many years have you been on  Admissions Committee?';
	label age_faculty='What is your age?';
	label life_part='Am the life of the party';
	label little_concern_others='Feel little concern for others.';
	label always_prepared='Am always prepared.';
	label stressed_easily='Get stressed out easily.';
	label rich_vocab='Have a rich vocabulary.';
	label dont_talk='Don''t talk a lot.';
	label interested_people='Am interested in people.';
	label leave_belongings='Leave my belongings around.';
	label relaxed_most_of_time='Am relaxed most of the time.';
	label difficulty_abstract='Have difficulty understanding abstract ideas.';
	label comfortable_people='Feel comfortable around people.';
	label insult='Insult people.';
	label attention_details='Pay attention to details.';
	label worry='Worry about things.';
	label vivid_imagination='Have a vivid imagination.';
	label keep_background='Keep in the background.';
	label sympathize='Sympathize with others'' feelings.';
	label make_mess='Make a mess of things.';
	label seldom_blue='Seldom feel blue.';
	label not_interested_abstract='Am not interested in abstract ideas.';
	label start_convos='Start conversations.';
	label not_interested_others_probs='Am not interested in other people''s problems.';
	label chores_right_away='Get chores done right away.';
	label easily_disturbed='Am easily disturbed.';
	label excellent_ideas='Have excellent ideas.';
	label little_say='Have little to say.';
	label soft_heart='Have a soft heart.';
	label forget_to_put_things_v_0='Often forget to put things back in their proper place.';
	label upset_easily='Get upset easily.';
	label bad_imagination='Do not have a good imagination.';
	label talk_diff_people='Talk to a lot of different people at parties.';
	label not_interested_people='Am not really interested in others.';
	label like_order='Like order.';
	label change_mood='Change my mood a lot.';
	label quick_understand='Am quick to understand things.';
	label no_attention='Don''t like to draw attention to myself.';
	label take_time_others='Take time out for others.';
	label shirk_duties='Shirk my duties.';
	label freq_mood_swings='Have frequent mood swings.';
	label difficult_words='Use difficult words.';
	label center_attention='Don''t mind being the center of attention.';
	label feel_emotions='Feel others'' emotions.';
	label follow_sched='Follow a schedule.';
	label irritated_easily='Get irritated easily.';
	label time_reflecting='Spend time reflecting on things.';
	label quiet_strangers='Am quiet around strangers.';
	label people_feel_ease='Make people feel at ease.';
	label exacting_in_work='Am exacting in my work.';
	label feel_blue='Often feel blue.';
	label full_ideas='Am full of ideas.';
	label extraversion_score='Extraversion Score:';
	label agreeable_score='Agreeableness Score:';
	label conscientiousness='Conscientiousness Score';
	label emot_stability='Emotional Stability Score';
	label intellect_score='Intellect/Imagination Score';
	label my_first_instrument_complete='Complete?';
	run;

proc format;
	value group_ 1='Dental Student' 2='Faculty Member (on Admissions Committee)' 
		3='Other';
	value year_school_ 1='D1 (Class of 2022)' 2='D2 (Class of 2021)' 
		3='D3 (Class of 2020)' 4='D4 (Class of 2019)';
	value stud_age_ 1='20-25' 2='26-30' 
		3='31-35' 4='35+';
	value stud_education_ 1='Bachelor''s degree (e.g. BA, BS)' 2='Master''s degree (e.g. MA, MS, MEd)' 
		3='Professional degree (e.g. MD, DVM)' 4='Doctorate (e.g. PhD, EdD)' 
		5='Foreign dental degree';
	value mil_background_ 1='Yes' 0='No';
	value fam_dentist_ 1='Yes' 0='No';
	value reapply_vcu_ 1='Yes' 0='No';
	value plans_ 1='Private practice' 2='Academia' 
		3='Public practice [FQHC]' 4='Corporate practice' 
		5='Residency' 6='Other';
	value residency_ 1='Advanced Education in General Dentistry' 2='Dental Public Health' 
		3='Endodontics' 4='General Practice Residency' 
		5='Oral and Maxillofacial Radiology' 6='Oral and Maxillofacial Surgery' 
		7='Oral and Maxillofacial Pathology' 8='Orthodontics' 
		9='Pediatric Dentistry' 10='Periodontics' 
		11='Prosthodontics';
	value gender_ 1='Male' 2='Female' 
		3='Prefer not to answer';
	value race_ 1='Black/African American' 2='White/Caucasian' 
		3='Asian American/Pacific Islander' 4='Hispanic' 
		5='American Indian/Native Alaskan';
	value fac_dept_ 1='Endodontics' 2='General Practice' 
		3='Oral Health Promotion and Community Outreach' 4='Oral Surgery' 
		5='Orthodontics' 6='Pediatrics' 
		7='Periodontics' 8='Prosthodontics' 
		9='Other';
	value years_on_search_ 1='0-2 years' 2='3-5 years' 
		3='6+ years';
	value age_faculty_ 1='30-40' 2='41-50' 
		3='51-60' 4='60+';
	value life_part_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value little_concern_others_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value always_prepared_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value stressed_easily_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value rich_vocab_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value dont_talk_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value interested_people_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value leave_belongings_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value relaxed_most_of_time_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value difficulty_abstract_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value comfortable_people_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value insult_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value attention_details_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value worry_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value vivid_imagination_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value keep_background_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value sympathize_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value make_mess_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value seldom_blue_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value not_interested_abstract_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value start_convos_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value not_interested_others_probs_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value chores_right_away_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value easily_disturbed_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value excellent_ideas_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value little_say_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value soft_heart_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value forget_to_put_things_v_0_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value upset_easily_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value bad_imagination_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value talk_diff_people_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value not_interested_people_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value like_order_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value change_mood_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value quick_understand_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value no_attention_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value take_time_others_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value shirk_duties_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value freq_mood_swings_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value difficult_words_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value center_attention_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value feel_emotions_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value follow_sched_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value irritated_easily_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value time_reflecting_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value quiet_strangers_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value people_feel_ease_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value exacting_in_work_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value feel_blue_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value full_ideas_ 1='Very Inaccurate' 2='Moderately Inaccurate' 
		3='Neither Accurate nor Inaccurate' 4='Moderately Accurate' 
		5='Very Accurate';
	value my_first_instrument_complete_ 0='Incomplete' 1='Unverified' 
		2='Complete';
	run;

data redcap;
	set redcap;

	format group group_.;
	format year_school year_school_.;
	format stud_age stud_age_.;
	format stud_education stud_education_.;
	format mil_background mil_background_.;
	format fam_dentist fam_dentist_.;
	format reapply_vcu reapply_vcu_.;
	format plans plans_.;
	format residency residency_.;
	format gender gender_.;
	format race race_.;
	format fac_dept fac_dept_.;
	format years_on_search years_on_search_.;
	format age_faculty age_faculty_.;
	format life_part life_part_.;
	format little_concern_others little_concern_others_.;
	format always_prepared always_prepared_.;
	format stressed_easily stressed_easily_.;
	format rich_vocab rich_vocab_.;
	format dont_talk dont_talk_.;
	format interested_people interested_people_.;
	format leave_belongings leave_belongings_.;
	format relaxed_most_of_time relaxed_most_of_time_.;
	format difficulty_abstract difficulty_abstract_.;
	format comfortable_people comfortable_people_.;
	format insult insult_.;
	format attention_details attention_details_.;
	format worry worry_.;
	format vivid_imagination vivid_imagination_.;
	format keep_background keep_background_.;
	format sympathize sympathize_.;
	format make_mess make_mess_.;
	format seldom_blue seldom_blue_.;
	format not_interested_abstract not_interested_abstract_.;
	format start_convos start_convos_.;
	format not_interested_others_probs not_interested_others_probs_.;
	format chores_right_away chores_right_away_.;
	format easily_disturbed easily_disturbed_.;
	format excellent_ideas excellent_ideas_.;
	format little_say little_say_.;
	format soft_heart soft_heart_.;
	format forget_to_put_things_v_0 forget_to_put_things_v_0_.;
	format upset_easily upset_easily_.;
	format bad_imagination bad_imagination_.;
	format talk_diff_people talk_diff_people_.;
	format not_interested_people not_interested_people_.;
	format like_order like_order_.;
	format change_mood change_mood_.;
	format quick_understand quick_understand_.;
	format no_attention no_attention_.;
	format take_time_others take_time_others_.;
	format shirk_duties shirk_duties_.;
	format freq_mood_swings freq_mood_swings_.;
	format difficult_words difficult_words_.;
	format center_attention center_attention_.;
	format feel_emotions feel_emotions_.;
	format follow_sched follow_sched_.;
	format irritated_easily irritated_easily_.;
	format time_reflecting time_reflecting_.;
	format quiet_strangers quiet_strangers_.;
	format people_feel_ease people_feel_ease_.;
	format exacting_in_work exacting_in_work_.;
	format feel_blue feel_blue_.;
	format full_ideas full_ideas_.;
	format my_first_instrument_complete my_first_instrument_complete_.;
	run;

proc contents data=redcap;
proc print data=redcap;
run;
quit;