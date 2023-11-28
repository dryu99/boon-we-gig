--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.4 (Ubuntu 15.4-1.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "from_ip_address", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--

COPY "pgsodium"."key" ("id", "status", "created", "expires", "key_type", "key_id", "key_context", "name", "associated_data", "raw_key", "raw_key_nonce", "parent_key", "comment", "user_data") FROM stdin;
\.


--
-- Data for Name: kysely_migration; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."kysely_migration" ("name", "timestamp") FROM stdin;
20231108T094428-create_initial-tables	2023-11-13T09:51:21.132Z
20231108T133827-update_unique_constraints-music_event	2023-11-13T09:51:21.432Z
20231109T054819-add_new_cols-venue	2023-11-13T09:51:21.736Z
20231116T172038-add_local_name_col-venue	2023-11-16T17:24:41.724Z
20231119T064440-add_rec_col-music_event	2023-11-19T07:04:34.010Z
20231119T134011-move_rec_col-music_event,music_artist	2023-11-19T14:10:59.658Z
20231121T043830-add_new_rec_links_col-music_artist	2023-11-21T05:12:33.932Z
20231121T145523-add_slug_col-venue	2023-11-22T09:58:11.216Z
20231122T033956-make_name_col_not_null-venue	2023-11-22T09:58:11.596Z
20231122T035508-add_map_col-venue	2023-11-22T09:58:12.040Z
20231123T022100-add_unique_constraint-music_artist	2023-11-23T13:58:51.951Z
20231124T080328-add_slug_col-music_event	2023-11-25T10:11:03.331Z
20231125T110822-add_slug_col-music_artist	2023-11-26T07:15:17.592Z
\.


--
-- Data for Name: kysely_migration_lock; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."kysely_migration_lock" ("id", "is_locked") FROM stdin;
migration_lock	0
\.


--
-- Data for Name: music_artist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."music_artist" ("id", "name", "review_status", "created_at", "updated_at", "genre", "instagram_id", "instagram_username", "youtube_id", "spotify_id", "country", "is_recommended", "recommended_links", "slug") FROM stdin;
980cba62-d705-471d-856b-f3923983a892	최첨단맨	PENDING	2023-11-26 16:01:03.505757+00	2023-11-26 16:01:03.505757+00	\N	\N	\N	\N	\N	\N	f	\N	980cba62-d705
e7fa2207-6aad-435a-ac0e-03aee9958c37	숨비	PENDING	2023-11-26 16:01:03.535538+00	2023-11-26 16:01:03.535538+00	\N	\N	\N	\N	\N	\N	f	\N	e7fa2207-6aad
17b4e103-d55b-4582-a62e-67dbc627f2da	The Sound	PENDING	2023-11-26 16:01:11.895968+00	2023-11-26 16:01:11.895968+00	\N	\N	\N	\N	\N	\N	f	\N	the-sound-17b4e103
a17f72d4-b2f2-48e0-9fc2-f350ea349daf	The Reseters	PENDING	2023-11-26 16:01:11.895968+00	2023-11-26 16:01:11.895968+00	\N	\N	\N	\N	\N	\N	f	\N	the-reseters-a17f72d4
6783bdec-c739-4c69-a445-fb9bd6dab31f	초록불꽃소년단	PENDING	2023-11-26 16:01:11.895968+00	2023-11-26 16:01:11.895968+00	\N	\N	\N	\N	\N	\N	f	\N	6783bdec-c739
66a34375-709b-4d8f-9836-ab1c59c6b061	서울 돌망치	PENDING	2023-11-26 16:01:11.895968+00	2023-11-26 16:01:11.895968+00	\N	\N	\N	\N	\N	\N	f	\N	66a34375-709b
3b81990f-8c9f-401b-ad32-abc0eee9aafc	AKW	PENDING	2023-11-26 16:01:11.895968+00	2023-11-26 16:01:11.895968+00	\N	\N	\N	\N	\N	\N	f	\N	akw-3b81990f
6172cbf9-59e3-432b-adf9-040a21455e2b	하지	PENDING	2023-11-26 16:01:27.240067+00	2023-11-26 16:01:27.240067+00	\N	\N	\N	\N	\N	\N	f	\N	6172cbf9-59e3
715787f9-4745-4426-851a-359d19e7a5f5	배영경	PENDING	2023-11-26 16:01:43.600679+00	2023-11-26 16:01:43.600679+00	\N	\N	\N	\N	\N	\N	f	\N	715787f9-4745
bf9d11be-490f-47ef-b8da-81ab57a6af4f	황성월	PENDING	2023-11-26 16:02:30.579915+00	2023-11-26 16:02:30.579915+00	\N	\N	\N	\N	\N	\N	f	\N	bf9d11be-490f
ac3c6fa3-b716-412d-8bdf-a2dcd64adaa9	다함	PENDING	2023-11-26 16:02:30.579915+00	2023-11-26 16:02:30.579915+00	\N	\N	\N	\N	\N	\N	f	\N	ac3c6fa3-b716
681c678f-fa60-45cf-9541-c9e8affd2a74	이상웅	PENDING	2023-11-26 16:02:30.579915+00	2023-11-26 16:02:30.579915+00	\N	\N	\N	\N	\N	\N	f	\N	681c678f-fa60
45ff775f-e38c-49ef-9ad8-d129e6650fd0	RUX	PENDING	2023-11-26 16:03:00.687112+00	2023-11-26 16:03:00.687112+00	\N	\N	\N	\N	\N	\N	f	\N	rux-45ff775f
505d4d2b-f2ad-44bf-a6a1-a9bf1b468663	Quite Nice Noise	PENDING	2023-11-26 16:03:00.687112+00	2023-11-26 16:03:00.687112+00	\N	\N	\N	\N	\N	\N	f	\N	quite-nice-noise-505d4d2b
80298a21-ffde-4402-b25c-bc38c95c4a1c	Idiots	PENDING	2023-11-26 16:03:00.687112+00	2023-11-26 16:03:00.687112+00	\N	\N	\N	\N	\N	\N	f	\N	idiots-80298a21
c4400729-d4e4-49b7-82af-47e945a0924e	Sunn-Row w/ WeDaBand	PENDING	2023-11-26 16:03:00.687112+00	2023-11-26 16:03:00.687112+00	\N	\N	\N	\N	\N	\N	f	\N	c4400729-d4e4
55789c89-97ab-4d9d-a3a4-2974b5fc96a3	18Fevers	PENDING	2023-11-26 16:03:00.687112+00	2023-11-26 16:03:00.687112+00	\N	\N	\N	\N	\N	\N	f	\N	18fevers-55789c89
50725c30-a53b-4959-bead-0b6be716fdf7	Mooii	PENDING	2023-11-26 16:03:00.687112+00	2023-11-26 16:03:00.687112+00	\N	\N	\N	\N	\N	\N	f	\N	mooii-50725c30
ae1db839-3b31-49cc-9284-ce990ac9a984	@gongdyuk	PENDING	2023-11-26 16:03:33.740995+00	2023-11-26 16:03:33.740995+00	\N	\N	\N	\N	\N	\N	f	\N	ae1db839-3b31
181f4dc4-d383-4f39-97b9-43729abbcade	@hzpotto_	PENDING	2023-11-26 16:03:33.740995+00	2023-11-26 16:03:33.740995+00	\N	\N	\N	\N	\N	\N	f	\N	181f4dc4-d383
5197dc60-d961-4ddc-975a-227a82150d96	@ksvox	PENDING	2023-11-26 16:03:33.740995+00	2023-11-26 16:03:33.740995+00	\N	\N	\N	\N	\N	\N	f	\N	5197dc60-d961
9c1e0fd7-fa34-4855-8131-d30d56351573	크라잉넛	PENDING	2023-11-26 16:03:54.093792+00	2023-11-26 16:03:54.093792+00	\N	\N	\N	\N	\N	\N	f	\N	9c1e0fd7-fa34
dda63f99-e41d-42c1-a822-0bf6f14c7d69	노브레인	PENDING	2023-11-26 16:03:54.093792+00	2023-11-26 16:03:54.093792+00	\N	\N	\N	\N	\N	\N	f	\N	dda63f99-e41d
4bf2e123-b5b7-458a-ad0a-44feb37f60c5	아워에이지	PENDING	2023-11-19 16:00:18.286955+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	4bf2e123-b5b7
2a68ed87-d839-48fb-aa15-fee654da76f9	로우하이로우	PENDING	2023-11-19 16:00:18.286955+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	2a68ed87-d839
9e6d7302-665d-46b1-a076-44214ce23b4f	Yvzk	PENDING	2023-11-19 16:00:45.613173+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	yvzk-9e6d7302
64b959a4-2fd7-4bd2-b4b6-66321cfd0cad	HANASH	PENDING	2023-11-19 16:00:45.613173+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	hanash-64b959a4
2e17860a-c6fa-45f2-9b72-19e161917dc3	링종 (백화수복 따숩게)	PENDING	2023-11-19 16:01:05.564628+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	2e17860a-c6fa
2d80e42d-48cd-4c56-9a50-6d1105c8e6c8	남민오	PENDING	2023-11-19 16:01:42.461354+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	2d80e42d-48cd
ceea48c1-9039-42df-8d7b-f44b93c35f7d	최성	PENDING	2023-11-19 16:01:42.461354+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2nhAF2r3N5cIoquPv6AkMm	\N	f	\N	ceea48c1-9039
6ce8f249-44b7-4587-b148-8843223afa27	최태현	PENDING	2023-11-19 16:01:42.461354+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1THa6hX6X7j3wvGW19n6cH	\N	f	\N	6ce8f249-44b7
5c42966f-6d6e-43ff-a662-0611419fc45d	도깨비	PENDING	2023-11-19 16:01:42.461354+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	5c42966f-6d6e
00d818c9-52d7-4a29-bfa8-4e058be50b40	모토코	PENDING	2023-11-19 16:01:42.461354+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	00d818c9-52d7
f80c166e-ec24-4386-8853-e1f006e96241	이승규x김나경	PENDING	2023-11-19 16:01:42.461354+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	f80c166e-ec24
7329a243-a70b-48a0-a0ee-68f019a5b5da	미카미 신야	PENDING	2023-11-19 16:01:42.461354+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	7329a243-a70b
76efdc1e-f15c-4e3f-b377-3aec273ecded	요정 마리첼	PENDING	2023-11-19 16:01:42.461354+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	76efdc1e-f15c
14d419ef-e625-4c5e-9b15-69fffacae370	도라비디오	PENDING	2023-11-19 16:01:42.461354+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	14d419ef-e625
38f5e5d5-6cc1-4baf-af5b-7b026e3e6357	감기약에 취한 쓰렉	PENDING	2023-11-19 16:02:21.279294+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	38f5e5d5-6cc1
023e1229-a322-487f-bdb4-82521a6d04a5	R419	PENDING	2023-11-27 16:00:23.653498+00	2023-11-27 16:00:23.653498+00	\N	\N	\N	\N	\N	\N	f	\N	r419-023e1229
39ed4612-3c95-4ad6-8fe3-799133d7af6f	HAMMERING	PENDING	2023-11-27 16:00:23.653498+00	2023-11-27 16:00:23.653498+00	\N	\N	\N	\N	\N	\N	f	\N	hammering-39ed4612
4b221f1a-e201-4611-85e6-1050f62604b7	NUCLEARIDIOTS	PENDING	2023-11-27 16:00:23.653498+00	2023-11-27 16:00:23.653498+00	\N	\N	\N	\N	\N	\N	f	\N	nuclearidiots-4b221f1a
c937e41f-d52f-4053-b8fe-6ea956453aa5	FLINT	PENDING	2023-11-27 16:00:23.653498+00	2023-11-27 16:00:23.653498+00	\N	\N	\N	\N	\N	\N	f	\N	flint-c937e41f
47e673c6-0f4a-46e2-a46c-5baa661cdee0	THEJAXX	PENDING	2023-11-27 16:00:23.653498+00	2023-11-27 16:00:23.653498+00	\N	\N	\N	\N	\N	\N	f	\N	thejaxx-47e673c6
7f7ffadc-ee94-424a-9c8b-21d477e6a9b7	데디오레디오	PENDING	2023-11-27 16:00:38.269408+00	2023-11-27 16:00:38.269408+00	\N	\N	\N	\N	\N	\N	f	\N	7f7ffadc-ee94
c611e19e-31a5-4d79-97fd-6f6a1a56506f	콤아겐즈	PENDING	2023-11-27 16:00:38.269408+00	2023-11-27 16:00:38.269408+00	\N	\N	\N	\N	\N	\N	f	\N	c611e19e-31a5
6cb400ab-3d49-48eb-bf3c-cfdc8a517776	썬더스	PENDING	2023-11-27 16:00:38.269408+00	2023-11-27 16:00:38.269408+00	\N	\N	\N	\N	\N	\N	f	\N	6cb400ab-3d49
0a444ce6-1217-473e-bd79-4e7665dd3f90	킹스턴 루디스카	PENDING	2023-11-27 16:01:35.851626+00	2023-11-27 16:01:35.851626+00	\N	\N	\N	\N	\N	\N	f	\N	0a444ce6-1217
7313d7e5-8de4-4171-8abd-1e08ec1b261c	DJ SKA CHAMPION	PENDING	2023-11-27 16:01:35.851626+00	2023-11-27 16:01:35.851626+00	\N	\N	\N	\N	\N	\N	f	\N	dj-ska-champion-7313d7e5
8a7e76b4-513b-443c-bb92-8370ea344602	DJ SGSY	PENDING	2023-11-27 16:01:35.851626+00	2023-11-27 16:01:35.851626+00	\N	\N	\N	\N	\N	\N	f	\N	dj-sgsy-8a7e76b4
a91bf9a9-5e5d-4daa-9565-1c37c28e56a7	아시아닉	PENDING	2023-11-27 16:01:44.153193+00	2023-11-27 16:01:44.153193+00	\N	\N	\N	\N	\N	\N	f	\N	a91bf9a9-5e5d
18facae7-3806-4cf4-87f6-43696ddb26b9	프림	PENDING	2023-11-27 16:01:44.153193+00	2023-11-27 16:01:44.153193+00	\N	\N	\N	\N	\N	\N	f	\N	18facae7-3806
f7db0a2f-ddac-4cd2-9e6c-5ea2db47c392	WITHUS	PENDING	2023-11-27 16:01:44.153193+00	2023-11-27 16:01:44.153193+00	\N	\N	\N	\N	\N	\N	f	\N	withus-f7db0a2f
267e726c-64de-4bb8-ad66-bf3ef082a784	용용	PENDING	2023-11-27 16:02:25.09193+00	2023-11-27 16:02:25.09193+00	\N	\N	\N	\N	\N	\N	f	\N	267e726c-64de
b3860cf3-e483-450c-8652-acb4185e3f1d	R.O.R.O	PENDING	2023-11-24 05:24:35.655826+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	r.o.r.o-b3860cf3
7af8fbc8-e06a-4b9f-bd15-62e3ece24b81	프레스리	PENDING	2023-11-24 05:24:53.103602+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	7af8fbc8-e06a
2fb7d0b6-8c3d-4e64-b42b-09d82f9e78cc	아랑고고장구단	PENDING	2023-11-24 05:24:53.103602+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	2fb7d0b6-8c3d
678f725e-467a-4892-a7bb-f968e7722bbd	뽕짝마니아	PENDING	2023-11-24 05:24:53.103602+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	678f725e-467a
33c8b384-0e74-4bfa-8bb7-1326fec7612c	DJ C-man	PENDING	2023-11-24 05:24:53.103602+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	dj-c-man-33c8b384
3b06d70d-2efb-45dd-835c-ef76ade0a861	타이거디스코	PENDING	2023-11-24 05:24:53.103602+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	3b06d70d-2efb
bd41a60e-d73a-4759-9b63-ce930be6f5c3	테크노각설 싯시	PENDING	2023-11-24 05:24:53.103602+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	bd41a60e-d73a
1a427bfe-1102-4c31-8801-4c77e72c652f	미미	PENDING	2023-11-24 05:24:53.103602+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	1a427bfe-1102
4b1685d0-d7de-475b-a913-e87911b6aeab	주고받기놀이	PENDING	2023-11-24 05:24:53.103602+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	4b1685d0-d7de
7e3b7b4b-6e2f-4887-b49b-7adfdf4b4992	요한일렉트릭바흐	PENDING	2023-11-24 05:24:53.103602+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	7e3b7b4b-6e2f
367b62f5-2dbb-4030-83d6-9f87a1891b74	팔팔정과 시봉새	PENDING	2023-11-24 05:24:53.103602+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	367b62f5-2dbb
a3ae36b6-5e19-4c9f-841a-ef6ba7d7e1f7	웨스턴카잇	PENDING	2023-11-24 05:25:05.842384+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	a3ae36b6-5e19
39f2e21e-5128-4a64-b275-9cee5ab84f97	앤썸밴드 Andsome Band	PENDING	2023-11-19 16:02:50.258241+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	39f2e21e-5128
844315c0-179d-4207-a0ef-aa4a7724e35e	숨비 Soombee	PENDING	2023-11-19 16:02:50.258241+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	844315c0-179d
b7593f68-dfa8-4ac4-b6c5-59a40a65611e	나준호	PENDING	2023-11-19 16:02:57.808583+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	b7593f68-dfa8
362cf6ab-8a66-4c26-b0d7-a01b7c018dcf	김주원	PENDING	2023-11-19 16:02:57.808583+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	63KpTJ1w9h6cM1AF6SgCCZ	\N	f	\N	362cf6ab-8a66
a729b261-82d3-4f05-8313-4a99d1384a9d	N	PENDING	2023-11-19 16:02:57.808583+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	n-a729b261
538121eb-8853-4dd4-a6b0-a998ca97c377	Bleni	PENDING	2023-11-19 16:02:57.808583+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	bleni-538121eb
8673fab2-96f7-485f-8e97-5a8bb7dbcb99	꼴뚜기들	PENDING	2023-11-13 11:43:48.713717+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	8673fab2-96f7
3f6e37b2-4409-48fc-a1d7-e21595c632dc	이성에	PENDING	2023-11-17 16:05:32.637501+00	2023-11-26 07:15:16.743473+00	rock	\N	\N	@user-co6ct9fu1h	5pOoXXW1K1ii3ygN87rBI4	\N	f	\N	3f6e37b2-4409
de3856f1-aeed-45a8-a57e-0f6813b86f0b	Jonnybirds	PENDING	2023-11-21 16:04:02.901987+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	jonnybirds-de3856f1
b29b3572-d7e8-4690-8ecf-b8c8e1b678e9	The Asianic	PENDING	2023-11-21 16:04:02.901987+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	the-asianic-b29b3572
5fb4c094-c423-4a59-a7b0-80883ab6218a	Se So Neon	PENDING	2023-11-21 16:04:02.924594+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	se-so-neon-5fb4c094
7481ddd9-57e0-41c4-8d73-2cbb9d8ef318	DJ Scouse Ramen	PENDING	2023-11-21 16:04:02.924594+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	dj-scouse-ramen-7481ddd9
77712a29-3c86-41e2-b657-f251b1045e93	indie bands	PENDING	2023-11-17 16:05:31.569748+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	indie-bands-77712a29
f79ed6d3-d723-4e3c-ab84-d0503f1d53a2	Ringo	PENDING	2023-11-13 11:44:32.930168+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	ringo-f79ed6d3
57f06d7f-ef0d-4f62-b258-7fb836edacb7	향	PENDING	2023-11-22 16:03:25.133084+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	57f06d7f-ef0d
3978ea1d-97bb-4c15-a8a0-d78e99e7d65e	종연	PENDING	2023-11-22 16:03:25.150928+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	3978ea1d-97bb
89c2c07e-cd30-4b3a-94e3-07ded27d76a1	랫가일	PENDING	2023-11-22 16:03:40.157859+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	89c2c07e-cd30
74812cb0-4a87-48e2-9f2d-15bf87f77419	Saint	PENDING	2023-11-22 16:03:40.157859+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	saint-74812cb0
aadc34b5-9317-48c5-8a8e-ebf8034a70b8	ye;min	PENDING	2023-11-22 16:03:40.187199+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	aadc34b5-9317
d69380ff-f5ff-4e00-92ce-66dc92fa65cb	AVAN	PENDING	2023-11-22 16:03:40.187199+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	avan-d69380ff
b445259f-b8e4-4a2c-bf3f-e7426184ac29	제이벨 (J BEL)	PENDING	2023-11-22 16:03:40.187199+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	b445259f-b8e4
ba1a183a-8535-4def-a47e-29e777590127	houzintheroom	PENDING	2023-11-22 16:03:40.187199+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	houzintheroom-ba1a183a
7d11ed5e-0c37-40d0-9109-c757ee6c80d9	독립적인고양이 (DocLipCat)	PENDING	2023-11-22 16:03:40.187199+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	7d11ed5e-0c37
b053c598-acae-4e08-a33b-db1f908db59c	Robiq	PENDING	2023-11-22 16:04:20.339854+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	robiq-b053c598
b3a17ded-34eb-4791-b4e7-82a5887a75fe	최지웅	PENDING	2023-11-22 16:04:20.339854+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	b3a17ded-34eb
f12a378c-75e4-4fa2-931a-1f615f654a65	김미경	PENDING	2023-11-22 16:04:20.339854+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	f12a378c-75e4
55f264a9-acce-4460-9417-a607985da026	Lakov	PENDING	2023-11-22 16:04:20.339854+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	lakov-55f264a9
50065c99-23a0-4560-828e-7fa6ec3ffd03	김동현	PENDING	2023-11-22 16:04:20.339854+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	50065c99-23a0
9ebeace3-12b7-45a8-8332-dd472ae3b082	송희란	PENDING	2023-11-22 16:04:20.339854+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	9ebeace3-12b7
8151ddf1-8ef7-4c7c-b72a-ec95eba49c8e	club onair	PENDING	2023-11-22 16:04:20.378679+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	club-onair-8151ddf1
b8a1a002-baa4-4dcf-9cc6-02791c956cbb	야자수	PENDING	2023-11-22 16:03:01.453146+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	@yajasuband	\N	\N	t	\N	b8a1a002-baa4
fefb9110-b217-496f-95fd-60bd71e457ba	킴쿨	PENDING	2023-11-22 16:03:01.453146+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	fefb9110-b217
f1db9691-3a2e-4540-9a9c-28411b1bc0fd	밴드기린	PENDING	2023-11-22 16:03:01.453146+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	f1db9691-3a2e
53bee0aa-84e4-441f-9a2e-e5432e6ba2cc	singer-songwriters	PENDING	2023-11-17 16:05:31.569748+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	singer-songwriters-53bee0aa
7355713e-5667-44d4-af0a-b4e2df43384b	Knock	PENDING	2023-11-16 17:02:47.14848+00	2023-11-26 07:15:16.743473+00	indie	\N	eueuknock	@knock6526	\N	\N	f	\N	knock-7355713e
b5a3b765-cdff-49c1-add3-4809d012f229	안희수	PENDING	2023-11-20 16:04:37.677584+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2Fwxi3YNuEudad5gK11BUo	\N	f	\N	b5a3b765-cdff
077abdb5-dcf2-4901-84bb-da2acd086b09	좋아서하는밴드	PENDING	2023-11-20 16:04:37.849323+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	077abdb5-dcf2
e6c1678b-1790-468a-9592-5448b493e849	1234-Dah!	PENDING	2023-11-20 16:04:54.117091+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	e6c1678b-1790
5ed70927-a59d-40ff-b36c-be2bda4721e2	Cotton Stick	PENDING	2023-11-20 16:04:54.117091+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	cotton-stick-5ed70927
7abaac53-b070-4d20-a5b0-12bd4be5d27d	Nite Echoes	PENDING	2023-11-20 16:04:54.117091+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	nite-echoes-7abaac53
7de5bc68-214b-46b7-97bd-992340bd7c88	KARDI	PENDING	2023-11-13 11:43:36.478825+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	6v8xPUDPu5hQlu0GrYHyOE	\N	f	\N	kardi-7de5bc68
ae2e1427-7991-4efa-9a0f-75b7a161344f	Homeshake	PENDING	2023-11-13 11:43:37.254383+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	homeshake-ae2e1427
d5a38e8d-65c7-452e-af7a-efd032db5239	XYLØ	PENDING	2023-11-13 11:43:38.4486+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	6ioOEWNNGK40H8xrGj6XPW	\N	f	\N	d5a38e8d-65c7
993d6f64-1ba9-429e-b419-f4c4e0014903	류수정	PENDING	2023-11-13 11:43:38.4486+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	6hrti7kBnnfAgy5Mq9wrQc	\N	f	\N	993d6f64-1ba9
22582014-2213-48ac-aa5c-8611634d8730	OneohtrixPointNever	PENDING	2023-11-13 11:43:39.490276+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	oneohtrixpointnever-22582014
42013222-512e-4f37-a851-3c522c129b71	췐췐 (Quan Quan)	PENDING	2023-11-27 16:03:14.412534+00	2023-11-27 16:03:14.412534+00	\N	\N	\N	\N	\N	\N	f	\N	42013222-512e
ebd78719-faa1-4a0b-ae97-590b7c3f3a1a	슈따웨이 (Dizzy Boy)	PENDING	2023-11-27 16:03:14.412534+00	2023-11-27 16:03:14.412534+00	\N	\N	\N	\N	\N	\N	f	\N	ebd78719-faa1
87390906-bd8b-4278-8354-aace8b041dad	후맵네	VALID	2023-11-19 16:24:43.198479+00	2023-11-26 07:15:16.743473+00	funk	\N	whoo_the_spicy	UCoqClQfM69heXh3VjiHq_Bw	6FyCQxdtdThvqFJrXrOHnz	KO	t	\N	87390906-bd8b
416045e2-b110-4944-af9a-e0622c0a1943	Escapingneverland	PENDING	2023-11-13 11:43:48.713717+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	escapingneverland-416045e2
fb360d5b-e91a-465c-8c46-22506cd84fdb	도히	PENDING	2023-11-17 16:05:32.637501+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	fb360d5b-e91a
82ad1e38-de75-4f4c-8ba9-94f3c452dc25	KUROENA	PENDING	2023-11-22 16:00:26.418848+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	kuroena-82ad1e38
8365a478-d56d-45f2-8930-e07252c0a8e6	MATERIALS POUND	PENDING	2023-11-22 16:00:53.396992+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	materials-pound-8365a478
151959c4-b60f-4258-8f9f-9a8624d7b3bf	TURN FOR OUR	PENDING	2023-11-22 16:00:53.396992+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	turn-for-our-151959c4
8c3532d7-09f2-45dc-baf7-c2122d743141	HOUKAGO WARFARE	PENDING	2023-11-22 16:00:53.396992+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	houkago-warfare-8c3532d7
8c9e1da9-735a-4549-aacd-36ce1b80b144	COMBATIVE POST	PENDING	2023-11-22 16:00:53.396992+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	combative-post-8c9e1da9
408d34d2-64db-46f8-8185-2cfcd946e192	END THESE DAYS	PENDING	2023-11-22 16:00:53.396992+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	end-these-days-408d34d2
6c25d8d8-c0bc-42ea-9336-25a980df2287	KRUELTY (from Tokyo, Japan)	PENDING	2023-11-22 16:00:53.396992+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	6c25d8d8-c0bc
565dc6cf-0d46-417b-894f-cbb9b1a0a1c1	18fevers	PENDING	2023-11-22 16:00:53.42863+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	18fevers-565dc6cf
d941c7fd-bb00-441c-ac3c-22f85afdc4e4	burning_hepburn	PENDING	2023-11-22 16:00:53.42863+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	d941c7fd-bb00
ade1d5e7-95c3-40f5-930e-72df935a6fef	seoul_dolmangchi	PENDING	2023-11-22 16:00:53.42863+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	ade1d5e7-95c3
06a3f2a2-d288-49e6-a18c-c1caecaee080	the_reseters_official	PENDING	2023-11-22 16:00:53.42863+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	06a3f2a2-d288
7ad27dbf-8a6f-4513-8c9d-e29f616116ce	thesoundkor	PENDING	2023-11-22 16:00:53.42863+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	thesoundkor-7ad27dbf
817f4ce9-4213-4720-b637-085f8d85456e	cottonstick_official	PENDING	2023-11-22 16:00:53.42863+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	817f4ce9-4213
a1cef91b-5a36-4572-87e6-856165a5ad8e	COGASON	PENDING	2023-11-22 16:01:12.052433+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	cogason-a1cef91b
d82179cb-ac2d-405d-8c34-ca272e2cda45	pigfrog	PENDING	2023-11-22 16:01:12.076117+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	pigfrog-d82179cb
c0ec92a7-a77e-4b9f-b81c-71a37ff6e390	O3ohn	PENDING	2023-11-22 16:01:12.076117+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	o3ohn-c0ec92a7
961663c2-07c6-4fa9-8e4e-327395c446cb	jihynwoo	PENDING	2023-11-22 16:01:12.076117+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	jihynwoo-961663c2
f4975c53-8800-4dd5-8811-c7bc2d5dc62a	Gawthrop	PENDING	2023-11-22 16:01:12.095605+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	gawthrop-f4975c53
577e06f9-cf9c-4e75-af9e-cb0d2b208029	Sunggun Jang	PENDING	2023-11-22 16:01:12.095605+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	sunggun-jang-577e06f9
cd099368-49e9-4c47-81fa-417d49293491	Lovers Rock	PENDING	2023-11-22 16:01:29.413685+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	lovers-rock-cd099368
c5b5874a-5a7c-438c-bcc8-816484c6c8ae	양반들	PENDING	2023-11-22 16:02:25.772306+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	c5b5874a-5a7c
b7512235-89d0-4f7a-b31d-10a2294ba7a1	원호와 타임머신	PENDING	2023-11-22 16:02:25.772306+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	b7512235-89d0
4507d818-4aea-465e-b4b7-85aac75049da	GILA	PENDING	2023-11-22 16:03:01.427252+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	gila-4507d818
0bf0f5bf-05a4-463e-84d9-63203ae931ad	Eddie	PENDING	2023-11-28 16:00:21.963869+00	2023-11-28 16:00:21.963869+00	\N	\N	\N	\N	\N	\N	f	\N	eddie-0bf0f5bf
caffec9f-865b-4525-aa9d-9bb03cedf665	Sodef	PENDING	2023-11-28 16:00:21.963869+00	2023-11-28 16:00:21.963869+00	\N	\N	\N	\N	\N	\N	f	\N	sodef-caffec9f
98c09ef3-62e8-48c7-ac68-52e929dc884c	차차	PENDING	2023-11-28 16:00:21.996735+00	2023-11-28 16:00:21.996735+00	\N	\N	\N	\N	\N	\N	f	\N	98c09ef3-62e8
0854c8b4-0ba2-4dc3-bf9b-3ff1eba6b0d9	적란운	PENDING	2023-11-28 16:00:21.996735+00	2023-11-28 16:00:21.996735+00	\N	\N	\N	\N	\N	\N	f	\N	0854c8b4-0ba2
c8517afb-6aa1-4fab-bc4f-03b33e77746c	놀플라워	PENDING	2023-11-28 16:00:21.996735+00	2023-11-28 16:00:21.996735+00	\N	\N	\N	\N	\N	\N	f	\N	c8517afb-6aa1
fa2c244c-636f-4d6e-bcc6-7057596c8194	벤치위레오	PENDING	2023-11-28 16:00:21.996735+00	2023-11-28 16:00:21.996735+00	\N	\N	\N	\N	\N	\N	f	\N	fa2c244c-636f
7ad0def7-408a-429a-92ed-67559b802041	에이프릴세컨드	PENDING	2023-11-28 16:00:21.996735+00	2023-11-28 16:00:21.996735+00	\N	\N	\N	\N	\N	\N	f	\N	7ad0def7-408a
81085036-2c66-44bd-b2b3-d9d4a7f91102	불고기디스코	PENDING	2023-11-28 16:00:52.276531+00	2023-11-28 16:00:52.276531+00	\N	\N	\N	\N	\N	\N	f	\N	81085036-2c66
85a0c10c-3429-4c9e-aa6f-e229e73d0c78	요정	PENDING	2023-11-28 16:00:52.276531+00	2023-11-28 16:00:52.276531+00	\N	\N	\N	\N	\N	\N	f	\N	85a0c10c-3429
28b6c62e-52a6-4aba-8aeb-0c43ac660b3d	Winsome	PENDING	2023-11-28 16:01:15.062565+00	2023-11-28 16:01:15.062565+00	\N	\N	\N	\N	\N	\N	f	\N	winsome-28b6c62e
2791dc50-a7eb-4e65-98fa-482f63951308	장유경	PENDING	2023-11-16 17:02:47.14848+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	6Oy8fuwy13sMzRv9wvIm3i	\N	f	\N	2791dc50-a7eb
391089ea-2a29-4136-b9f3-0a1661ee283e	LeFleur	PENDING	2023-11-16 17:07:14.791136+00	2023-11-26 07:15:16.743473+00	r&b	\N	\N	@leson_theson	\N	\N	t	\N	lefleur-391089ea
0526cb65-95a1-47da-a54c-f41fead26c08	With O (위드오)	PENDING	2023-11-17 16:05:32.637501+00	2023-11-26 07:15:16.743473+00	rock	\N	\N	\N	\N	\N	f	\N	0526cb65-95a1
c2aa1f44-8260-4255-808c-9bb9ce378126	Metallica	PENDING	2023-11-22 16:05:06.020233+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	metallica-c2aa1f44
a62e8d3a-65cd-43c0-b860-66df94a7a43d	Guns N' Roses	PENDING	2023-11-22 16:05:06.020233+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	a62e8d3a-65cd
2c628769-92f8-4edf-9bd7-d5fd8c4e9f87	블랙우든도어 BLACKWOODENDOOR	PENDING	2023-11-22 16:05:06.043131+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	2c628769-92f8
ecc1e309-293d-428c-be61-7e37dae804e5	포그 Fog	PENDING	2023-11-22 16:05:06.043131+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	ecc1e309-293d
e0b6537f-ee09-4d02-9505-79dec246dc3f	달 Dal	PENDING	2023-11-22 16:05:06.063106+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	e0b6537f-ee09
966be1ad-9a2e-4587-a2da-a2229c1d6e46	magicians	PENDING	2023-11-17 16:05:31.569748+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	magicians-966be1ad
50f45348-bfe5-4f6f-985e-d193e131e6fc	CIFIKA	PENDING	2023-11-13 11:43:39.490276+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	0OK6Xs5X1kHs07y68n65CQ	\N	f	\N	cifika-50f45348
c3f805dd-bd11-4c61-b756-1e89b6487372	Andy Shauf	PENDING	2023-11-13 11:43:40.221786+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	5mFKYdmiYwNJTDtSzgFyQx	\N	f	\N	andy-shauf-c3f805dd
05c4e871-6f92-4094-b191-b82d5be7fd82	도그 라스트 페이지	PENDING	2023-11-13 11:43:44.535595+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	05c4e871-6f92
01b51b32-7053-4a27-96cb-ec3dc93eeed3	뱀파이어 호텔	PENDING	2023-11-13 11:43:44.535595+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	01b51b32-7053
097b275d-8bee-403e-b99f-be4a3f3e2e6e	R4-19	PENDING	2023-11-13 11:43:44.535595+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	4CkVihzKNzsbUT7uFA7B8r	\N	f	\N	r4-19-097b275d
af8f0677-483a-4728-bc41-b7408a950128	에잇틴 에이프릴	PENDING	2023-11-13 11:43:44.535595+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	af8f0677-483a
77aa633b-75e1-4fc5-99b4-8c471b823179	바세린	PENDING	2023-11-13 11:43:44.535595+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	3jJ1rOmznRHDDGnU60vO6i	\N	f	\N	77aa633b-75e1
c0153e16-d8c1-489c-b74a-7544e7c1a587	해머링	PENDING	2023-11-13 11:43:44.535595+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	c0153e16-d8c1
1a793166-1da4-4783-b772-b4fcecaffdb8	청요일	PENDING	2023-11-13 11:43:46.08869+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	7MPTpNtW90oHBEoxezbL9Y	\N	f	\N	1a793166-1da4
9ef26dbe-27be-47cd-8333-79d17a9e11e2	숨비	PENDING	2023-11-13 11:43:46.08869+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	4paglakxQzvjs6oTr1szWq	\N	f	\N	9ef26dbe-27be
2bfba36f-6bc5-442b-a3dc-84bcdcfb2c9d	오칠	PENDING	2023-11-13 11:43:46.08869+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	0bOYSFd6YxYRE6Fojakyaq	\N	f	\N	2bfba36f-6bc5
e31de753-21cb-475d-bc7c-b2ce67a12b33	아톰뮤직하트 X 차승우	PENDING	2023-11-13 11:43:46.08869+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	e31de753-21cb
3680bc6e-533a-4062-ab5e-c1ca466c1a82	Emo Night	PENDING	2023-11-13 11:43:47.155697+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	emo-night-3680bc6e
7e847140-b45f-4804-9919-6e4d5f45b6f3	Rock Party	PENDING	2023-11-13 11:43:47.155697+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	rock-party-7e847140
f9783a5c-246b-4c26-8597-8eead616dacd	Eddie	PENDING	2023-11-13 11:43:49.77194+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	eddie-f9783a5c
ddada18f-e111-4cd8-969b-37a28725a740	Sodef	PENDING	2023-11-13 11:43:49.77194+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	sodef-ddada18f
db6226bb-6b5e-403b-9ca3-9f314ec8a261	Offthetown	PENDING	2023-11-13 11:43:51.304656+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	offthetown-db6226bb
4fef0aff-1264-468d-a07d-8a447fa58711	코지앤노이지	PENDING	2023-11-13 11:43:51.304656+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	4fef0aff-1264
c18bff4f-ec86-4ed4-bd74-7782e24cd0e3	롱아일랜드	PENDING	2023-11-13 11:43:51.304656+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	6ObofSHL1GdRyiWQ1Iheji	\N	f	\N	c18bff4f-ec86
248a0597-01ae-478a-9324-a3925ca099fd	포이즈	PENDING	2023-11-13 11:43:51.304656+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	248a0597-01ae
9d391182-ef59-41cc-a4b3-248270875df2	원일	PENDING	2023-11-13 11:43:54.365698+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	5qGbscGbwspvcVo7cFpnTy	\N	f	\N	9d391182-ef59
b89ccc1d-2541-4e33-80c7-27e4dbcff013	예람	PENDING	2023-11-13 11:43:55.139341+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	6nLDHRdInTXjKLMF8yanTZ	\N	f	\N	b89ccc1d-2541
7792ef92-393a-4fc1-9cec-408f98b22a8f	에디	PENDING	2023-11-13 11:43:56.047404+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	7792ef92-393a
018ec4c9-2659-4b69-affd-e5409c56bcfe	mono4oly	PENDING	2023-11-13 11:44:00.030056+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	mono4oly-018ec4c9
5e22f574-322a-4bea-8dec-edb665199f3d	cdc	PENDING	2023-11-13 11:44:00.030056+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	cdc-5e22f574
5546afea-f51e-4727-a172-5d8ce19758e7	sottogamba_rok	PENDING	2023-11-13 11:44:00.030056+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	5546afea-f51e
8a377e6f-ffd2-42df-bde9-14ee2443c7f7	band_flydaze	PENDING	2023-11-13 11:44:00.030056+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	8a377e6f-ffd2
d87d48de-16ea-4fed-a3e4-c5316ea430b9	Dabda	PENDING	2023-11-13 11:44:00.855549+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	0ndvlJnYkMJZhet7fVhk9C	\N	f	\N	dabda-d87d48de
0ecc61bb-e83a-4104-9829-d910bff79ea5	Escaping Neverland	PENDING	2023-11-13 11:44:01.600775+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	escaping-neverland-0ecc61bb
848a203a-07c7-4625-89ae-87a623e2bc1a	DUOXINI	PENDING	2023-11-13 11:44:05.641824+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	6QO0lWrbN20aOkS7NKtlXM	\N	f	\N	duoxini-848a203a
7ccb00af-936f-4f6e-bdb6-01763192ae6e	CUTT DEEP	PENDING	2023-11-13 11:44:05.641824+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	7a3fis6jBlsSKzGQLcgk3Z	\N	f	\N	cutt-deep-7ccb00af
58b64edc-f248-4e1a-a046-82c12de4d4bf	Spit On My Tomb	PENDING	2023-11-13 11:44:05.641824+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2iPpS8C2sopITvniJou5zv	\N	f	\N	spit-on-my-tomb-58b64edc
f007e7e8-bf5a-4340-8401-f1f4ed7d7123	Turn For Our	PENDING	2023-11-13 11:44:05.641824+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	14Xc09Mqg3L54vGjMDcvSV	\N	f	\N	turn-for-our-f007e7e8
e8eda07a-edd6-4b30-96b5-c73448bd505f	Excused Duty	PENDING	2023-11-13 11:44:05.641824+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	68WE2hZsv6gOqU0kAmJ1hw	\N	f	\N	excused-duty-e8eda07a
d476949a-79f8-419f-b09c-146d6de9d642	ヒゲと味噌汁	PENDING	2023-11-13 11:44:07.599469+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	d476949a-79f8
8cfbd56d-6b6a-4e2b-9305-ef86cb9accfb	なんちゃらアイドル	PENDING	2023-11-13 11:44:07.599469+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	0Tir7YkPE9wVla7Ci1Tiaz	\N	f	\N	8cfbd56d-6b6a
bc4aa871-ea9e-48f5-a70e-72b821a616ec	초록불꽃소년단	PENDING	2023-11-13 11:44:07.599469+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	02lSURBnybQit6FIm8zGDE	\N	f	\N	bc4aa871-ea9e
e93a4e7b-c3a3-428b-8459-5b748169ed54	WinningShot	PENDING	2023-11-13 11:44:07.599469+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	winningshot-e93a4e7b
9dd1c903-348a-499d-aff8-431eb2854ae8	Sweet Gasoline	PENDING	2023-11-13 11:44:07.599469+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	20sMGtypxElJvN9D1VVVm6	\N	f	\N	sweet-gasoline-9dd1c903
420df8a6-949a-499f-a5a9-354d88e0fb43	사막꽃 DESERT FLOWER	PENDING	2023-11-13 11:44:10.497516+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	420df8a6-949a
ec29a808-8638-4ab0-8415-03de7e908280	MYY. (mi ː)	PENDING	2023-11-13 11:44:10.497516+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	ec29a808-8638
7a9116d5-3a02-49fc-9b46-83221e2f1ca7	thejonnybirds	PENDING	2023-11-13 11:44:11.540422+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	thejonnybirds-7a9116d5
6fb9007a-a47d-4656-8d2c-778de9effd7d	mindful_midlife_crisis	PENDING	2023-11-13 11:44:11.540422+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	6fb9007a-a47d
98eccdef-3141-4998-a3a6-4a80dc639095	__.dayoung.__	PENDING	2023-11-13 11:44:13.131509+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	98eccdef-3141
bb1b0508-b27a-464f-9d58-3a819e5c006f	shortsmokes	PENDING	2023-11-13 11:44:13.131509+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	shortsmokes-bb1b0508
08b5dc6d-a781-4104-b653-e00628d53625	augus888888888	PENDING	2023-11-13 11:44:13.131509+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	augus888888888-08b5dc6d
f0836e03-e06a-409b-a776-0dd22e03a2b2	sthmnn	PENDING	2023-11-13 11:44:13.131509+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	sthmnn-f0836e03
b2d1bd4b-a893-4838-a352-9504b7b36738	YOHLU	PENDING	2023-11-13 11:44:14.112635+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	0jGNWHlBqs3In2Ik2AoLIl	\N	f	\N	yohlu-b2d1bd4b
be74c05f-d3dc-41e6-a2d3-74d86ecd49e2	JisokuryClub	PENDING	2023-11-13 11:44:14.112635+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	jisokuryclub-be74c05f
1900d85c-0066-473a-a207-2273a8dd1a4f	팻햄스터	PENDING	2023-11-28 16:01:15.062565+00	2023-11-28 16:01:15.062565+00	\N	\N	\N	\N	\N	\N	f	\N	1900d85c-0066
375c7135-1953-457a-a136-ce0bd6887500	DJ MIXSET TAPE PROJECT	PENDING	2023-11-28 16:01:43.347162+00	2023-11-28 16:01:43.347162+00	\N	\N	\N	\N	\N	\N	f	\N	dj-mixset-tape-project-375c7135
29838beb-b855-4725-9a44-4f1b7c29ce4b	DJ MIXSET TAPE PROJECT	PENDING	2023-11-28 16:01:43.369176+00	2023-11-28 16:01:43.369176+00	\N	\N	\N	\N	\N	\N	f	\N	dj-mixset-tape-project-29838beb
beefb175-f207-494f-b803-e3a832094dca	DJ MIXSET TAPE PROJECT	PENDING	2023-11-28 16:01:43.390907+00	2023-11-28 16:01:43.390907+00	\N	\N	\N	\N	\N	\N	f	\N	dj-mixset-tape-project-beefb175
ef8dbcd3-af96-4275-b780-934a556c850f	폴로디언스	PENDING	2023-11-16 17:02:47.14848+00	2023-11-26 07:15:16.743473+00	indie	\N	\N	\N	\N	\N	t	\N	ef8dbcd3-af96
8fc8b0f0-790e-4366-8ecd-1fd6ab7a4ded	홍시월	PENDING	2023-11-17 16:05:32.637501+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	8fc8b0f0-790e
10f5022a-73c3-460d-8d1e-96012e99c044	사운드힐즈	PENDING	2023-11-13 11:45:13.72786+00	2023-11-26 07:15:16.743473+00	indie	\N	\N	@SOUNDHILLS_MUSIC	\N	\N	f	\N	10f5022a-73c3
c25f761e-9e5a-4897-a49f-4d6586328868	기린(GuiLin)	PENDING	2023-11-23 14:03:09.506803+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	c25f761e-9e5a
67c69d07-3bdc-49d8-b5d4-ecde478daf0c	강주	PENDING	2023-11-23 14:03:10.409207+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	67c69d07-3bdc
44869eba-4e25-4d02-98e6-457f54f6b532	곽푸른하늘	PENDING	2023-11-23 14:03:11.314036+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	44869eba-4e25
935f5fef-e2de-4e33-99ab-b66947153f66	배영경	PENDING	2023-11-23 14:03:12.215083+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	935f5fef-e2de
236e2ce4-eb31-4e4f-a5c9-3f7de3d39b90	제비잼잉	PENDING	2023-11-23 14:03:13.109282+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	236e2ce4-eb31
6bb09fc9-7ef3-4ad6-a862-e9444ae3b761	조선 그루브 유닛	PENDING	2023-11-23 14:03:14.008024+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	6bb09fc9-7ef3
53b73cfd-360a-45b7-bf9c-4d88118b719d	무아[moi]	PENDING	2023-11-23 14:03:14.886869+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	53b73cfd-360a
57d6faeb-0b77-4693-bf30-8ec5ca0ed715	연희별곡	PENDING	2023-11-23 14:03:15.767469+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	57d6faeb-0b77
0eb4d01b-78e0-41a4-be7a-9f9d778caf5f	리플렉스	PENDING	2023-11-25 16:00:27.905971+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	0eb4d01b-78e0
6a220c57-6dbf-4c5e-9310-ba6322e800cb	해리빅버튼	PENDING	2023-11-25 16:00:27.905971+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	6a220c57-6dbf
1dc42c52-3f67-44c3-bb2a-6fba5e710bd7	브로큰발렌타인	PENDING	2023-11-25 16:00:27.905971+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	1dc42c52-3f67
ab9d7d43-b16a-4fbd-bf2f-9bdb78803d01	아뮤하	PENDING	2023-11-25 16:00:27.947806+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	ab9d7d43-b16a
fcf899f6-2a49-49be-8e7d-e8a7e31100c3	차승우	PENDING	2023-11-25 16:00:27.947806+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	fcf899f6-2a49
dba64091-9d6b-46da-a27c-bacb6500b36f	리니어	PENDING	2023-11-25 16:00:27.97496+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	dba64091-9d6b
cb5654a7-ba6c-4890-b7c1-630cab2a8276	랫가일	PENDING	2023-11-25 16:00:27.97496+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	cb5654a7-ba6c
6a923429-4c19-4333-bea6-698ee189f446	Escapingneverland	PENDING	2023-11-25 16:00:27.97496+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	escapingneverland-6a923429
f671cb9d-819e-438f-945f-10dca5787742	Tokyohoneytrap	PENDING	2023-11-25 16:00:27.97496+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	tokyohoneytrap-f671cb9d
398684e6-50a1-477b-924f-c77832dc6534	더구스!	PENDING	2023-11-25 16:00:28.003869+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	398684e6-50a1
9dd82785-bdfb-45b0-b4c0-b216efb859b4	오늘의날씨는	PENDING	2023-11-25 16:00:28.003869+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	9dd82785-bdfb
75e88f63-ab32-4581-869d-2754c7220e19	세로	PENDING	2023-11-25 16:00:28.003869+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	75e88f63-ab32
fde4be42-b62e-4cc7-8417-5b967c3b21a3	sallyeverywhere	PENDING	2023-11-25 16:00:28.003869+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	sallyeverywhere-fde4be42
1c20cd11-d160-4fe0-834b-d8f996a3edc1	곽푸른하늘	PENDING	2023-11-25 16:00:53.535911+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	1c20cd11-d160
6f1a6922-f62e-425e-b2ea-3c54e79b8b26	Ordinary Joe	PENDING	2023-11-25 16:01:53.473035+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	ordinary-joe-6f1a6922
99e25a12-10e1-441e-ac7f-cc5a0b6d6636	Merry hey day	PENDING	2023-11-25 16:01:53.473035+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	merry-hey-day-99e25a12
2dedd083-02cd-4310-b7cb-179adb53b9de	TriceraTops	PENDING	2023-11-25 16:01:53.473035+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	triceratops-2dedd083
4a0ff951-cb92-4843-b28c-24a48f243101	Care Less	PENDING	2023-11-25 16:01:53.473035+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	care-less-4a0ff951
9141ae38-8d81-4766-97ef-1ef68a4953e6	Lautaro Tissera Favaloro	PENDING	2023-11-13 11:44:14.86251+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2nZYjAryMf0u5pR0IBpHZU	\N	f	\N	lautaro-tissera-favaloro-9141ae38
b2c23f32-9148-4b31-a814-49b2bdabbd13	Jeon Yongheon	PENDING	2023-11-13 11:44:17.383261+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	jeon-yongheon-b2c23f32
ff0f5ebb-6762-4c6d-88a7-e9253bc52c0d	불싸조 Bulssazo	PENDING	2023-11-13 11:44:18.102141+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	ff0f5ebb-6762
00400cfa-a7df-4587-a3fe-2ee9905c4cb0	V!SION	PENDING	2023-11-13 11:44:18.852472+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	00400cfa-a7df
94f445bd-a1ed-466c-b04b-6002ecc4aeb8	KISEWA	PENDING	2023-11-13 11:44:19.564242+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	6BNTQSmnVeUVpkkUCDckM9	\N	f	\N	kisewa-94f445bd
4cad6d4b-78d1-4b83-aec1-c436746b9ade	Livigesh	PENDING	2023-11-13 11:44:20.613194+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	68blqlentJRgJfYbDUES94	\N	f	\N	livigesh-4cad6d4b
86d21d5e-f539-47f2-8771-16517828a926	NOI	PENDING	2023-11-13 11:44:21.376208+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	noi-86d21d5e
414017fd-8b43-4255-aae9-97da0648dc20	불싸조	PENDING	2023-11-13 11:44:22.11623+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2LH8edS7dFHXp9vnYdpd17	\N	f	\N	414017fd-8b43
b16f5473-52e9-4354-bce5-784a70a4adb2	@_iamringo	PENDING	2023-11-13 11:44:24.582173+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	b16f5473-52e9
618431a1-8008-4de4-b498-b8851e96dd9a	조(브라)웅	PENDING	2023-11-13 11:44:26.505131+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	618431a1-8008
2e32c986-1f7e-49c1-b086-d0fcb82d0edd	최칠성	PENDING	2023-11-13 11:44:26.505131+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	2e32c986-1f7e
7e8ff5a1-a507-4703-84a0-2108267467cc	미미	PENDING	2023-11-13 11:44:26.505131+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	0gZVNJEwWXiPQS41AMXgWl	\N	f	\N	7e8ff5a1-a507
a535348e-eba0-4b0a-b388-74c41f94ae56	1DB	PENDING	2023-11-28 16:03:44.676717+00	2023-11-28 16:03:44.676717+00	\N	\N	\N	\N	\N	\N	f	\N	1db-a535348e
ca62d2aa-7874-45c3-9119-4835aa0f0eba	신하늘 Shin Haneul	PENDING	2023-11-28 16:03:44.676717+00	2023-11-28 16:03:44.676717+00	\N	\N	\N	\N	\N	\N	f	\N	ca62d2aa-7874
6c9a7d54-bce4-401c-ab27-15e7df7af64b	차세대 Chasedae	PENDING	2023-11-28 16:03:44.703296+00	2023-11-28 16:03:44.703296+00	\N	\N	\N	\N	\N	\N	f	\N	6c9a7d54-bce4
f3982a01-a403-49bf-82fe-d08da85ef8a5	티치 Tiech	PENDING	2023-11-28 16:03:44.703296+00	2023-11-28 16:03:44.703296+00	\N	\N	\N	\N	\N	\N	f	\N	f3982a01-a403
2564ae80-26b7-462e-a43b-c289d66eca8e	양치기소년단 The Shepherd Boiz	PENDING	2023-11-28 16:03:44.725612+00	2023-11-28 16:03:44.725612+00	\N	\N	\N	\N	\N	\N	f	\N	2564ae80-26b7
069c218a-4244-4fee-9db4-da285bd98335	펑크온파이어 Punk On Fire	PENDING	2023-11-28 16:03:44.725612+00	2023-11-28 16:03:44.725612+00	\N	\N	\N	\N	\N	\N	f	\N	069c218a-4244
debeacca-02b1-4678-b01a-4a3257c38b89	품바21 Pumba21	PENDING	2023-11-28 16:03:44.750549+00	2023-11-28 16:03:44.750549+00	\N	\N	\N	\N	\N	\N	f	\N	debeacca-02b1
ecd9ba73-cc9d-40a0-9621-24cdd6467cfa	하즈 Hase	PENDING	2023-11-28 16:03:44.750549+00	2023-11-28 16:03:44.750549+00	\N	\N	\N	\N	\N	\N	f	\N	ecd9ba73-cc9d
dac09c3a-7e68-4dbc-af34-40696e054be3	신타펑크	PENDING	2023-11-20 16:00:28.34881+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2FWJx3jpkPSmSD03yUWUb7	\N	f	\N	dac09c3a-7e68
aa7b6541-de86-4f3d-b915-1e76a1aa0383	셰이디	PENDING	2023-11-20 16:00:28.34881+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2xLXVvHpq6D84ZttZeS7c1	\N	f	\N	aa7b6541-de86
7a1db52a-4181-4956-813d-e0e41ac1c50d	품바21	PENDING	2023-11-20 16:00:28.34881+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	43umtpxZcWPIxx45FzB08I	\N	f	\N	7a1db52a-4181
4c92b742-b648-4ecb-956f-ed6322ad7837	Camarata	PENDING	2023-11-20 16:00:28.596635+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1cX6nzQNWMUL9CqA0AdHaR	\N	f	\N	camarata-4c92b742
df1ff724-f0bd-4fc3-a440-60c8508965bd	fygod Laptopboyboy	PENDING	2023-11-20 16:00:49.115868+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	fygod-laptopboyboy-df1ff724
814e2ae3-ba89-4e87-8a17-2d0582db6a4a	authenticslvt Authenticslvt	PENDING	2023-11-20 16:00:49.115868+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	authenticslvt-authenticslvt-814e2ae3
5530845c-2e6c-4f04-9073-6c166bfba90d	123vertigo	PENDING	2023-11-20 16:00:49.115868+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	123vertigo-5530845c
862d2bdd-88b5-4a49-81bb-7fc060977a42	swingandkickgoing	PENDING	2023-11-20 16:00:49.115868+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	swingandkickgoing-862d2bdd
a0e5629c-9551-4e40-90f8-259332879904	@sunx2g	PENDING	2023-11-20 16:01:16.409278+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	a0e5629c-9551
9af4ce6e-8571-43bf-a92c-403ff5d2617e	매실	PENDING	2023-11-20 16:02:00.515224+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	40MHqwp9gBDIQY8Lxzu3wh	\N	f	\N	9af4ce6e-8571
440c7fd6-0db3-4bb5-a976-ca653dd7c5cb	남경운밴드	PENDING	2023-11-20 16:02:00.761203+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	440c7fd6-0db3
c3e4c7ca-1246-41cc-8f09-75674b100bae	김마스타	PENDING	2023-11-20 16:02:00.761203+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	c3e4c7ca-1246
8c080b88-2791-4332-bb52-34bbfda73b85	mudaeruk	PENDING	2023-11-20 16:02:37.182202+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	mudaeruk-8c080b88
fe262c03-ca55-4852-8577-4d9ac983386b	vestur_official	PENDING	2023-11-20 16:02:37.182202+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	fe262c03-ca55
8746f431-4463-4418-bfc8-84df7f7f0a97	mxnxslxxp	PENDING	2023-11-20 16:02:37.182202+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	mxnxslxxp-8746f431
4313cda8-1c2d-4c68-ac55-0cc838c37760	band.daydream	PENDING	2023-11-20 16:02:37.182202+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	band.daydream-4313cda8
3d67a1c7-8a18-429e-9a79-193f1f607a4b	zeonpasa	PENDING	2023-11-20 16:02:37.182202+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	zeonpasa-3d67a1c7
14361ee3-f66a-49da-9840-cc76d0f89bdb	ironic_hue_	PENDING	2023-11-20 16:02:37.182202+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	14361ee3-f66a
68bc675f-44a7-458d-9a1e-d50f4f7a9299	양희본	PENDING	2023-11-16 17:02:47.14848+00	2023-11-26 07:15:16.743473+00	folk	\N	\N	\N	0vpxiQC28ab1Jz1JqyFQu4	\N	f	\N	68bc675f-44a7
e4240408-b5a7-42a1-b744-bb273fb34378	키키	PENDING	2023-11-17 16:05:30.616433+00	2023-11-26 07:15:16.743473+00	pop	\N	kiki._.00_	@kiki6373	\N	\N	t	\N	e4240408-b5a7
f17f327d-39c1-4d3e-9ce4-4aed6ff74a42	MADDY	PENDING	2023-11-24 05:07:30.958823+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	maddy-f17f327d
79c248dd-2176-4d79-a679-782a3e1a2127	노민수집시프로젝트	PENDING	2023-11-24 05:07:30.958823+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	79c248dd-2176
195721bd-caf8-40dc-9b43-a929ff300e94	REGO	PENDING	2023-11-24 05:07:41.81055+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	rego-195721bd
11d71a37-2774-4e04-b011-6e6ee8f84a89	난파란	PENDING	2023-11-24 05:07:41.81055+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	11d71a37-2774
023471d4-4328-4df1-916d-dba842c029fc	비공정	PENDING	2023-11-24 05:07:41.81055+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	023471d4-4328
a9072be0-c556-4f2b-b859-7e89cc541172	WACK	PENDING	2023-11-24 05:07:41.81055+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	wack-a9072be0
8e6b8f07-efcb-48d6-955a-2dcab829838b	생기스튜디오	PENDING	2023-11-24 05:07:41.835972+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	8e6b8f07-efcb
213908b0-d66d-4ee2-828b-3513aa9d7112	한정인	PENDING	2023-11-24 05:07:41.855141+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	213908b0-d66d
59aa1368-0ad6-493d-94fa-37d62abb1efa	키라라	PENDING	2023-11-24 05:07:41.855141+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	59aa1368-0ad6
b55d87a3-4bc2-4e14-9f7a-02f03c5e038a	기린(GuiLin)	PENDING	2023-11-24 05:07:56.743823+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	b55d87a3-4bc2
211605ca-048c-477a-88c6-70495930dc80	이규철	PENDING	2023-11-24 05:08:17.061534+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	211605ca-048c
a9c4fa7c-8540-49e5-baf0-1125ca6f24a4	스트레이터스 Straighters	PENDING	2023-11-25 16:03:10.263394+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	a9c4fa7c-8540
1e7a3371-9529-4e8d-8fb0-5bd3d714c478	뉴링크 Newlink	PENDING	2023-11-25 16:03:10.263394+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	1e7a3371-9529
7898ed01-d689-41f1-8951-0c59b7c2d6df	M22H2R	PENDING	2023-11-17 16:06:43.964684+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	m22h2r-7898ed01
a6f6a766-afff-4792-9898-05a1151dbed0	Anse	PENDING	2023-11-13 11:44:58.501264+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	anse-a6f6a766
c015dcd1-07b9-4b26-b854-76d909052566	로컬 뮤지션2	PENDING	2023-11-13 11:45:15.704839+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	c015dcd1-07b9
9c88db5e-71f6-4363-8391-54d37bce8b09	사막꽃	PENDING	2023-11-16 17:05:25.372062+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	5KKOFkYJF4GQhPliv1Bvz6	\N	f	\N	9c88db5e-71f6
d6f46f40-e66b-4f6a-965f-2b7b854a465c	비디오로즈	PENDING	2023-11-16 17:05:25.500963+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	7kPlxQmMp2xMNkD7LEbWcg	\N	f	\N	d6f46f40-e66b
ee86a3c3-f586-474e-b5b9-9d7caa6a5af6	조영재 트리오	PENDING	2023-11-16 17:05:25.788057+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	ee86a3c3-f586
33974702-39ba-4c16-8437-daca44194f57	Kyo13	PENDING	2023-11-17 16:05:33.196481+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	kyo13-33974702
dafd0a10-8f37-47b3-bf5b-e05553564cc4	이유림 (YURIM)	PENDING	2023-11-17 16:05:33.196481+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	dafd0a10-8f37
95c373d2-38f0-4e5c-882b-a8f80fc0fa38	살포시	PENDING	2023-11-17 16:05:33.196481+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	95c373d2-38f0
02da2eeb-daff-4d74-b4d5-ee40518a5e0f	oo kiki	PENDING	2023-11-18 16:01:40.697056+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	5yv0T6xsd2eu1MW99dkjbE	\N	f	\N	oo-kiki-02da2eeb
59516289-a573-4c63-967a-894d8cf35053	블루아워	PENDING	2023-11-13 11:43:48.713717+00	2023-11-26 07:15:16.743473+00	indie	\N	\N	\N	\N	\N	f	\N	59516289-a573
fb5e9fe2-7377-453f-94cc-a1c2c66544bd	튜즈데이 비치클럽	PENDING	2023-11-16 17:02:02.094776+00	2023-11-26 07:15:16.743473+00	rock	\N	tuesdaybeachclub	@tuesdaybeachclub_official	3kbrbhnjLCObXwmOsqadXT	\N	t	\N	fb5e9fe2-7377
8a20cd12-5cd2-4683-bb24-ec68e0049034	오예진	PENDING	2023-11-21 16:02:31.840599+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	8a20cd12-5cd2
e0168975-6669-4f8a-9499-ee061b9c0216	다현	PENDING	2023-11-21 16:02:31.840599+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	e0168975-6669
2d354d9b-30fb-420f-8fa9-518fd8cfd9c8	은림	PENDING	2023-11-21 16:02:31.840599+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	2d354d9b-30fb
cb52b83f-09f6-4acb-a12c-ec366c0be00e	시안	PENDING	2023-11-21 16:02:31.870626+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	cb52b83f-09f6
3446f76d-ffc8-4ed2-8f83-592daf03d688	무니	PENDING	2023-11-21 16:02:31.870626+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	3446f76d-ffc8
0925cc60-22d6-49b5-b2b6-c8c38c127925	김윤희	PENDING	2023-11-21 16:02:31.870626+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	0925cc60-22d6
748d6144-5add-448f-a52b-39b9eae992d9	예상	PENDING	2023-11-21 16:02:31.870626+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	748d6144-5add
e5906cc5-d1e7-4dff-9d80-ab9eb9574841	아스라이	PENDING	2023-11-21 16:02:31.870626+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	e5906cc5-d1e7
a7007874-a8af-4d6f-8e18-81600829bb00	Go Straight N’ Turn Right	PENDING	2023-11-21 16:02:54.837689+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	a7007874-a8af
8d34c467-93e4-47d0-bfbe-ff39ba868fb1	The Beatles	PENDING	2023-11-21 16:02:54.837689+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	the-beatles-8d34c467
7f1a1df7-27da-4d5e-aa03-353403a5c787	Sakanaction	PENDING	2023-11-21 16:02:54.837689+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	sakanaction-7f1a1df7
c1f84d65-6c00-4353-b6f2-b2ae0482c0bb	Dosii	PENDING	2023-11-21 16:02:54.837689+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	dosii-c1f84d65
dab4d62a-dca9-4bb8-83b0-c37c669dd762	Red Hot Chili Peppers	PENDING	2023-11-21 16:02:54.837689+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	red-hot-chili-peppers-dab4d62a
4a9012b2-d9b8-49af-b9e7-72efc7c69435	Oasis	PENDING	2023-11-21 16:02:54.837689+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	oasis-4a9012b2
e59df929-e53f-49c0-820b-12a2cbdc3bac	Green Day	PENDING	2023-11-21 16:02:54.837689+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	green-day-e59df929
db6eff74-d996-43be-a832-778d8eac8775	김준서	PENDING	2023-11-21 16:03:14.207253+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	db6eff74-d996
9ebef1e1-4b19-47a3-9ddc-107f926c8a54	AMYlle	PENDING	2023-11-24 05:24:11.361373+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	amylle-9ebef1e1
1ca72db1-9d64-4557-b8cc-8f19e31eef79	Cross X	PENDING	2023-11-24 05:24:11.361373+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	cross-x-1ca72db1
fb01e6e6-f6a8-43f8-8198-965b4e929352	Funkincat	PENDING	2023-11-24 05:24:11.361373+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	funkincat-fb01e6e6
b7fbbc7d-a2ef-4145-8261-a04ed1b5171d	Lieul Lieul	PENDING	2023-11-24 05:24:11.361373+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	lieul-lieul-b7fbbc7d
daefe455-16c8-4f96-b58b-bf88cec01181	천용성 @000yongsung	PENDING	2023-11-24 05:24:22.121754+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	daefe455-16c8
574dc337-a1a8-4e34-93a1-8637cfccc315	선과영 @line_n_circle	PENDING	2023-11-24 05:24:22.121754+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	574dc337-a1a8
002a600d-104d-4eac-8deb-a33240ec05a0	후하 @hoohaa.seoul	PENDING	2023-11-24 05:24:22.121754+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	002a600d-104d
d94ea260-442a-4826-8f3b-b808e544804b	복다진 @dajinn	PENDING	2023-11-24 05:24:22.121754+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	d94ea260-442a
34a2742e-a669-4b80-b272-32a967839a8b	전유동 @jeonyoodong	PENDING	2023-11-24 05:24:22.121754+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	34a2742e-a669
733f7065-504d-4b3d-ab9e-f95a4423588b	보일 @boil____	PENDING	2023-11-24 05:24:22.121754+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	733f7065-504d
4cb80868-b36a-4af3-ab3c-078573c58a49	단편선 @danpyunsun	PENDING	2023-11-24 05:24:22.121754+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	4cb80868-b36a
2dd1417d-c6b0-4f28-b1ff-f9524ca35595	betti blue	PENDING	2023-11-24 05:24:35.655826+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	betti-blue-2dd1417d
25a35db2-f253-4597-9870-3595b0f27e40	Ostirich Effect	PENDING	2023-11-24 05:24:35.655826+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	ostirich-effect-25a35db2
bdfd3893-1c1d-4854-9e71-65698e981b87	고건	PENDING	2023-11-18 16:02:01.696745+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1uoLzmbrkMkIHSbPkm02jb	\N	f	\N	bdfd3893-1c1d
fcee0784-8d9a-4c1c-94e5-1d5234c64aec	기봉	PENDING	2023-11-17 16:05:30.616433+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	fcee0784-8d9a
9f339949-a421-4f12-a41b-895280761415	안지	PENDING	2023-11-24 05:23:52.444655+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	9f339949-a421
1f01dc4a-9144-4104-a73f-02f98f23c2f9	링종 (백화수복 따숩게)	PENDING	2023-11-24 05:23:52.476667+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	1f01dc4a-9144
eb5c897a-0945-4f39-9def-fd8162098646	슈야	PENDING	2023-11-24 05:24:03.399419+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	eb5c897a-0945
16db05f0-2597-4431-82f2-efeb2afc1d90	응한재놀????	PENDING	2023-11-13 11:44:26.505131+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	16db05f0-2597
a6ecd158-826a-4465-bc0e-8dfbde2c903c	쿰바	PENDING	2023-11-13 11:44:26.505131+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2V2xnbqwPhPq5aarf86hQK	\N	f	\N	a6ecd158-826a
34602aee-5320-4e85-ae50-a7fe2081effc	코리아 시스터즈	PENDING	2023-11-13 11:44:28.281809+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	34602aee-5320
2792e498-621c-43d1-834f-9ca77f86f54a	김건호 & 랩봉	PENDING	2023-11-13 11:44:28.281809+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	2792e498-621c
6f61e1a7-7b6a-4c15-83ff-937c34080ef5	호도리 & 전용현	PENDING	2023-11-13 11:44:28.281809+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	6f61e1a7-7b6a
e560cfea-9f19-468b-b03c-721c4ca3d930	코리안 인스팅트	PENDING	2023-11-13 11:44:28.281809+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	e560cfea-9f19
042487c5-932d-4f69-8770-ddfeb24a108e	코리아 브라더스	PENDING	2023-11-13 11:44:28.281809+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	042487c5-932d
9f56ae21-9d52-4571-8db0-1d8be543ba3c	_iamringo	PENDING	2023-11-13 11:44:29.01241+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	9f56ae21-9d52
bb245157-0a0c-43a1-9b65-82f0206eae40	피어리스	PENDING	2023-11-13 11:44:30.560366+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	6ADYo9QnmzyToeKazM3q7Q	\N	f	\N	bb245157-0a0c
ab532a81-95b5-4ca0-b909-41692871707c	김정문 알로에	PENDING	2023-11-13 11:44:30.560366+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	ab532a81-95b5
cff28bdb-4dbb-4fd0-ba39-c2e626d6d257	나드리	PENDING	2023-11-13 11:44:30.560366+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	cff28bdb-4dbb
b89c9515-2ba3-47f5-8e41-3908aab8ea4d	이자녹스	PENDING	2023-11-13 11:44:30.560366+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	b89c9515-2ba3
37fe516b-d16a-44bd-b159-e26a69da7c0e	하세가와 요헤이 aka 양평	PENDING	2023-11-13 11:44:32.173715+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	37fe516b-d16a
73cc1efa-9b2c-4f85-a5bc-acecd78afc64	장기하	PENDING	2023-11-13 11:44:32.173715+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	73cc1efa-9b2c
6f890c3a-90c3-4a2a-a22d-c99d72077de4	타이거디스코	PENDING	2023-11-13 11:44:32.173715+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	6f890c3a-90c3
a251302f-1a4c-4b24-8a0e-bac21b21bb81	카더가든	PENDING	2023-11-13 11:44:32.173715+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	a251302f-1a4c
1cd3178e-7536-4040-aa29-b9edfcf0314c	도중모	PENDING	2023-11-13 11:44:34.301814+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	1cd3178e-7536
32e1f618-1ad5-4160-8f2d-7687c4c62a70	ROP	PENDING	2023-11-13 11:44:34.301814+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	6Utlpv27gNWWcde2FbRutQ	\N	f	\N	rop-32e1f618
252cd9d5-a1e6-4194-8896-caecddd0ab2b	조평재	PENDING	2023-11-13 11:44:34.301814+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	252cd9d5-a1e6
beec0637-7c29-476c-abb7-826798027804	RODEO	PENDING	2023-11-13 11:44:37.280515+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1g3ajXwXHXa0iGFZCnzSfJ	\N	f	\N	rodeo-beec0637
13bdf14f-1bf0-4354-af69-bf09020ac856	해서웨이	PENDING	2023-11-13 11:44:37.988121+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2G2Jiy00NjBxfbex9wXkeN	\N	f	\N	13bdf14f-1bf0
f755d4ec-b96e-439d-bb41-078f10220936	봉제인간	PENDING	2023-11-13 11:44:38.722047+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	3zyq3DzSd4aue9Q7s1qMVu	\N	f	\N	f755d4ec-b96e
97e9acf0-f59f-4cf5-be4a-f12833f6634f	DJ B.RALTA	PENDING	2023-11-13 11:44:39.749643+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	dj-b.ralta-97e9acf0
f778ea9f-85ac-4a1e-b903-27614132afef	DJ SGSY	PENDING	2023-11-13 11:44:39.749643+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	dj-sgsy-f778ea9f
1b0c457f-8cb2-4440-a08e-8cb7f48f44bf	RTRP	PENDING	2023-11-13 11:44:41.041344+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2aEalQ8rmllxKXNxOV5VMR	\N	f	\N	rtrp-1b0c457f
7d047f74-c796-4ebf-b695-c1fbacd46243	IDIOTAPE	PENDING	2023-11-13 11:44:41.041344+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	0OmQCkk1rR3DJ0Y2NRxp6Z	\N	f	\N	idiotape-7d047f74
ef361755-ed02-42e6-a241-9053151ee751	DGURU	PENDING	2023-11-13 11:44:41.041344+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	5e3lkif6GpgNuChJJXIbWC	\N	f	\N	dguru-ef361755
85114869-8212-4063-bf72-784aa178e4b4	안경원 바텐더	PENDING	2023-11-13 11:44:42.322979+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	85114869-8212
8782b0ff-0bb6-42df-81e5-2a4aed492b58	진욱	PENDING	2023-11-13 11:44:42.322979+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	4dGO7RkTYWn8F3xpK8s6mj	\N	f	\N	8782b0ff-0bb6
034a6737-a283-47c9-9637-75901be17146	디그루	PENDING	2023-11-13 11:44:42.322979+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	034a6737-a283
93005626-b025-45c6-97b5-e6a4ef679bf5	DJ BAXA	PENDING	2023-11-13 11:44:43.351726+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	dj-baxa-93005626
2aaf4d3d-8005-4c5b-b746-54d990a26707	DJ JISOO	PENDING	2023-11-13 11:44:43.351726+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	dj-jisoo-2aaf4d3d
b0e7c298-aa17-4e4b-93cc-6e3e97a3c3f9	@acidus.joe	PENDING	2023-11-13 11:44:45.941837+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	b0e7c298-aa17
ec95c68d-7560-49d9-bee9-ec1b84f498eb	@__noimnot	PENDING	2023-11-13 11:44:46.711728+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	ec95c68d-7560
2494a9ab-0cfe-4eb4-9458-dcf92a940665	Balearic Elements	PENDING	2023-11-13 11:44:48.393649+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	balearic-elements-2494a9ab
70d9a4a3-1cf2-49a7-a2d2-dd1a2a2b1b61	Hum Berg	PENDING	2023-11-13 11:44:48.393649+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	hum-berg-70d9a4a3
61d65be8-c919-4488-8e67-06079363ef58	Tomomi	PENDING	2023-11-13 11:44:48.393649+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1WYxjASy7UbbGNJ4IvsFu8	\N	f	\N	tomomi-61d65be8
1cd556d5-2d23-44d7-9b63-60824f03e77a	Mayuko	PENDING	2023-11-13 11:44:48.393649+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2j3yNC3NoRMsGCP7ckAu5z	\N	f	\N	mayuko-1cd556d5
5661882f-19c5-4e90-a6e4-c207a0c11695	lukefunkykid	PENDING	2023-11-13 11:44:49.413221+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	lukefunkykid-5661882f
ec21b260-c873-43d8-82c2-9b5ad4837600	lovegonnalast	PENDING	2023-11-13 11:44:49.413221+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	lovegonnalast-ec21b260
fd61b1b5-06d2-479e-bc74-ba92c81b2dbf	@beatballrecords	PENDING	2023-11-13 11:44:50.419976+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	fd61b1b5-06d2
8b18fc91-0a6e-47b5-8098-80d26e0a6ce2	@anarchy9786	PENDING	2023-11-13 11:44:50.419976+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	8b18fc91-0a6e
69b1fc2f-993a-4767-b34d-a7380e0cdb48	University student bands	PENDING	2023-11-13 11:44:52.533952+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	university-student-bands-69b1fc2f
54de877b-e99e-4518-8803-f15bbda8c402	sonōwave	PENDING	2023-11-13 11:44:53.452983+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	54de877b-e99e
1e270620-4222-4ed6-8b14-9cf4447807de	이카루스	PENDING	2023-11-13 11:44:54.247343+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	1e270620-4222
aee607cc-ef5e-4ba3-b662-98cc969fadbd	Various	PENDING	2023-11-13 11:44:57.027402+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	various-aee607cc
e9a19359-d08d-459f-b579-84e7143126c6	Ronnie	PENDING	2023-11-13 11:44:58.501264+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	ronnie-e9a19359
46ace34c-7d11-452b-be15-c30c55b61508	Roggiestyle	PENDING	2023-11-13 11:44:58.501264+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	roggiestyle-46ace34c
a785a65b-1bfe-475c-8336-78fe58b09b5d	Slack Babbath (Thailand/Busan)	PENDING	2023-11-13 11:44:59.531984+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	a785a65b-1bfe
62b6017d-41f0-46f6-8030-8042b3858a71	Horror Business (Thailand/Busan)	PENDING	2023-11-13 11:44:59.531984+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	62b6017d-41f0
265355a1-66c7-4eb3-a69b-1b3851c0eae0	DJs	PENDING	2023-11-13 11:45:00.259136+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	djs-265355a1
0c93d84a-31cb-4c41-969e-31b7ff19a473	소음발광	PENDING	2023-11-13 11:45:01.94795+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	5DcbkrdjQzNrjzSYLa6QL4	\N	f	\N	0c93d84a-31cb
3072a6d2-1d06-4cf0-b16f-a2cdb64da988	모스크바서핑클럽	PENDING	2023-11-13 11:45:01.94795+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	3072a6d2-1d06
c303f295-4c86-4f57-8ad5-7888f776ea40	엉클밥	PENDING	2023-11-13 11:45:01.94795+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	30Stj3gSFUQVC8mQctYl1u	\N	f	\N	c303f295-4c86
d410ec04-6c16-4aab-85ac-ce6718a8f6d4	KlaFF	PENDING	2023-11-13 11:45:04.543191+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	5D55tA6YhGrkBprBMNlCTE	\N	f	\N	klaff-d410ec04
9c715e7a-ae59-4568-928c-574d3e195a8a	daay_staar	PENDING	2023-11-13 11:45:04.543191+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	9c715e7a-ae59
b45a704b-6665-45cb-9a9e-5afb9df1fb08	권눈썹	PENDING	2023-11-13 11:45:05.924554+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1lUDLCSPqoJztkzx6xddXm	\N	f	\N	b45a704b-6665
5c668e18-eb51-459a-ba28-a86fe14a5be5	칠보장	PENDING	2023-11-13 11:45:05.924554+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	0f0QiE7NrOeua5Lxb64ZDE	\N	f	\N	5c668e18-eb51
2ed8a168-7b44-462c-af8f-a381e346a331	디스펠	PENDING	2023-11-13 11:45:05.924554+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	2ed8a168-7b44
a10e8a62-6736-46d7-a861-004910ab70b9	스톤드 (STONED)	PENDING	2023-11-13 11:45:07.507751+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	a10e8a62-6736
cb158723-0f72-4011-96df-aef8183dfd25	헤드터너 (HeadTurner)	PENDING	2023-11-13 11:45:07.507751+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	cb158723-0f72
2db14890-2885-4b44-acf9-e9de77262544	아크라이트 (Ark Light)	PENDING	2023-11-13 11:45:07.507751+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	2db14890-2885
a4e9f767-603a-4607-a69b-fae40b8ae299	Shelly (셸리) from Japan	PENDING	2023-11-13 11:45:07.507751+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	a4e9f767-603a
6f6f9def-984e-4b3e-b32e-2543493a39e8	The Dumpies	PENDING	2023-11-13 11:45:08.782577+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1aGfytVsiGuB7L0r2bQjJW	\N	f	\N	the-dumpies-6f6f9def
b1551bb1-fd8f-49e2-8a3d-85b7616fa404	Stoned	PENDING	2023-11-13 11:45:08.782577+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	stoned-b1551bb1
9ca27f63-45ca-44df-9321-1d6c77b68f80	Ark Light	PENDING	2023-11-13 11:45:08.782577+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	ark-light-9ca27f63
14871949-b95c-48d1-b4f0-e085ed9ca961	NAHU	PENDING	2023-11-13 11:45:10.931999+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	4M6vTDUbW0Av6ebB5V6ic4	\N	f	\N	nahu-14871949
9cadafd2-b1aa-47af-bdf4-4c94a2eb5e60	MARA	PENDING	2023-11-13 11:45:10.931999+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	3aMlWPULNKDE96qD2jwlkr	\N	f	\N	mara-9cadafd2
53cd46d9-81a8-40e1-9642-b6172db2c084	No Shelter	PENDING	2023-11-13 11:45:10.931999+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	14K2j9PtpEGu0t7kagBTd4	\N	f	\N	no-shelter-53cd46d9
f2e0e10c-73fd-432c-8004-686446e27f68	RedCline	PENDING	2023-11-13 11:45:10.931999+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	redcline-f2e0e10c
cd4e2a8c-dd0e-4ec6-abf0-2b5e44b89603	Holy Mountain	PENDING	2023-11-13 11:45:10.931999+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2WX9kWTsaCOfRd1KWqZTdL	\N	f	\N	holy-mountain-cd4e2a8c
dd9a47ce-a10a-489a-ab5f-05deb8707940	Disspel	PENDING	2023-11-13 11:45:10.931999+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	disspel-dd9a47ce
ac75f137-c083-4a3d-afd5-6cba5e2173b1	올옷(ALLOT)	PENDING	2023-11-13 11:45:13.72786+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	ac75f137-c083
d461104a-a89c-438c-a521-6cea6b02a658	SLOW FLOW	PENDING	2023-11-13 11:45:14.467285+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	3pyAFrGt0trdRlmbABuIwD	\N	f	\N	slow-flow-d461104a
67b151db-84c3-45ed-ab9e-d3edac761c51	로컬 뮤지션1	PENDING	2023-11-13 11:45:15.704839+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	67b151db-84c3
0aebeed0-76ee-4b6e-8b0e-12c296173c12	로컬 뮤지션3	PENDING	2023-11-13 11:45:15.704839+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	0aebeed0-76ee
a462ef90-dccf-401d-a8d8-d3864744bfec	위댄스	PENDING	2023-11-13 11:45:16.716907+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	0d3y5FY3t6piVvJH9umnuM	\N	f	\N	a462ef90-dccf
1c9f63f6-97a5-4ed1-beff-0343416aef9d	미미크리엑스	PENDING	2023-11-13 11:45:16.716907+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	1c9f63f6-97a5
d3fa706a-1675-4129-9741-fed387dd7cc6	코가손	PENDING	2023-11-13 11:45:17.450797+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	3yYt1TEKm3i9L7jznuS1Ju	\N	f	\N	d3fa706a-1675
eb7e3e42-7156-4287-95d3-bf4493591b3e	Liquid Arts	PENDING	2023-11-13 11:45:18.181158+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	liquid-arts-eb7e3e42
40b3f368-7f1c-45bc-acec-5e72ef701282	Rock DJ	PENDING	2023-11-13 11:45:19.795789+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	rock-dj-40b3f368
7ba4b48a-7217-4e8b-b4de-832a5b08886e	Coldchillin	PENDING	2023-11-13 11:45:19.795789+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	coldchillin-7ba4b48a
97215472-3044-45aa-a229-c326b02935a8	So nyun min	PENDING	2023-11-13 11:45:19.795789+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	so-nyun-min-97215472
4478d4ed-2e0d-48bb-b847-37a19f18d596	Wisdom Cloud	PENDING	2023-11-13 11:45:19.795789+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	wisdom-cloud-4478d4ed
55698f96-3059-444c-9414-e872ead6f6e3	워킹애프터유	PENDING	2023-11-14 09:56:21.989856+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	55698f96-3059
95e408cd-fc94-4d55-99db-457443eb5ef6	맥거핀	PENDING	2023-11-14 09:56:21.989856+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	0gnodTptHI3U140iAE7HDl	\N	f	\N	95e408cd-fc94
98cd651e-1761-4e47-b264-b9e46c32fe09	스트레이터스	PENDING	2023-11-14 09:56:23.262429+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	98cd651e-1761
4373dbdd-6636-4822-acba-a603ffaab7ce	크랙베리	PENDING	2023-11-14 09:56:23.262429+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	0rPsKGkMcVmG62pW21ILWK	\N	f	\N	4373dbdd-6636
7a45377a-6bae-4327-a3bb-a7bc555e83a4	스킵잭	PENDING	2023-11-14 09:56:23.262429+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	7a45377a-6bae
dbfa3208-2b4b-42e0-9d60-e32000e0b139	노야	PENDING	2023-11-14 09:56:24.463507+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	dbfa3208-2b4b
6ec149fc-3297-4663-810f-5ae27468415a	레드씨	PENDING	2023-11-14 09:56:24.463507+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	3pBVRgGMEiFRDEuG4sWdQQ	\N	f	\N	6ec149fc-3297
c7cca149-204c-42ce-b689-39b1fa9da69e	페이스투웨이즈	PENDING	2023-11-14 09:56:24.463507+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	c7cca149-204c
0e8e59d7-7810-4cda-a031-be45975cc261	All I Have	PENDING	2023-11-14 09:56:50.670435+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1OfD8tnaZkrdqNtX5PKZC3	\N	f	\N	all-i-have-0e8e59d7
11dbc7d6-fe18-448e-856f-75e15e22f445	Chain Reaction	PENDING	2023-11-14 09:56:50.670435+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2voeq1SXqaRk45wpKHJhgz	\N	f	\N	chain-reaction-11dbc7d6
dbff3bbe-b8a7-40bb-a129-61fa18c5cdfc	End These Days	PENDING	2023-11-14 09:56:50.670435+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	7IGpRnx3xtyarCLMqDR3fP	\N	f	\N	end-these-days-dbff3bbe
c29f2d8b-91ef-47da-a621-27e8a10dee9e	Flush	PENDING	2023-11-14 09:56:50.670435+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	3WanlQjdrG944TvUX4jj0L	\N	f	\N	flush-c29f2d8b
d144599e-0ba1-4f0b-a206-bcc349837e37	Purgatory	PENDING	2023-11-14 09:56:50.670435+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2mGr1nIXByyNAKL1H9VllM	\N	f	\N	purgatory-d144599e
b6c64a98-98b0-4363-8418-f632ea76b1ae	STONED	PENDING	2023-11-14 09:56:52.776356+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	7cwmOB4uBNPGbHpjVGSFeJ	\N	f	\N	stoned-b6c64a98
387fe5c4-7446-4d5c-93d0-dbc1a722663d	HeadTurner	PENDING	2023-11-14 09:56:52.776356+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	headturner-387fe5c4
abf2df37-f087-44eb-b25f-515c5a96f8c6	IWP	PENDING	2023-11-14 09:56:52.776356+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	6yhwljLzm4mdcWK39Xrbxf	\N	f	\N	iwp-abf2df37
79b92397-a4ad-4313-a079-685fd6d71dfa	SHUDO&RUDIES	PENDING	2023-11-14 09:56:52.776356+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	79b92397-a4ad
b7a6c56e-6b3e-439d-8321-2a4453796a62	4Bottles	PENDING	2023-11-14 09:56:52.776356+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2Vqy6ChsCwBww1exikSxpv	\N	f	\N	4bottles-b7a6c56e
8a50f693-051d-4347-8f2a-e3209f0877c0	물들	PENDING	2023-11-14 09:57:07.725194+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	8a50f693-051d
3ff64a3b-c3ee-4405-af5f-818099d87542	장지용	PENDING	2023-11-14 09:57:07.725194+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	0qCYJ7WJ59V9NS2IcdANjt	\N	f	\N	3ff64a3b-c3ee
f2d3e055-d7db-4934-b6e5-f694187eade7	@dydsu	PENDING	2023-11-14 09:57:19.991769+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	f2d3e055-d7db
cedac3e6-4a90-43ef-aefe-a157b9a27b91	에이트레인	PENDING	2023-11-14 09:57:48.280247+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	7D0HzqgqyXHSl3Vp4EC1EL	\N	f	\N	cedac3e6-4a90
5bb5cee0-8a36-4426-be54-2e89d5714792	파네마	PENDING	2023-11-14 09:57:48.948711+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	5bb5cee0-8a36
c6957586-472e-4772-8679-db6b5da0baec	남경운	PENDING	2023-11-14 09:57:49.672636+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2AQUaH4u0H9DcKEpBC0OuY	\N	f	\N	c6957586-472e
9655c82e-caa3-479c-af09-34abcfb635d0	Seed le Moor	PENDING	2023-11-14 10:00:23.683984+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	seed-le-moor-9655c82e
2a30ec9d-15d6-4f81-99ff-5caca257a66d	Mandong	PENDING	2023-11-14 10:00:23.683984+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2Wk4Orq6UQ5KPunF9WHiyd	\N	f	\N	mandong-2a30ec9d
73033f1e-2ba5-4ef2-b363-033bd49cb552	othersmayforgetyoubutnoti	PENDING	2023-11-14 10:00:23.683984+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	3RdjYZZ1tNZQas19kEnlzX	\N	f	\N	othersmayforgetyoubutnoti-73033f1e
d3f51afe-52b6-4f89-8bf1-04dc89fcf910	WACK	PENDING	2023-11-14 10:00:23.683984+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2xZ90sIUz3qPXu5clQEYZr	\N	f	\N	wack-d3f51afe
abb873de-9304-46c5-89f7-ae115ccf299e	The Wons	PENDING	2023-11-14 17:00:43.497836+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	the-wons-abb873de
da953f39-3ccb-45ac-82f4-78ba892cb745	놀플라워	PENDING	2023-11-14 17:01:53.426741+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	3kzonBtu54IfXq7MfB7P08	\N	f	\N	da953f39-3ccb
a76e599c-ccd0-4b6d-9ab5-5d17cab0ad9e	아시아닉	PENDING	2023-11-14 17:01:53.426741+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	7hrYxrbbaa7TtlKqg9iruF	\N	f	\N	a76e599c-ccd0
91614d2f-af8d-4f26-bf01-ef5a3202ea02	이우든	PENDING	2023-11-14 17:01:53.426741+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	5cnw3VpNjXAqiC0DFuJPRa	\N	f	\N	91614d2f-af8d
d952b355-edc4-47f0-9690-c91e9fe43a47	손흥민	PENDING	2023-11-14 17:01:53.73772+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	6AD7yVDSJjoOn1Z2kVzE0w	\N	f	\N	d952b355-edc4
6e61b06a-c230-45b8-b1b0-339ac93ba96a	황희찬	PENDING	2023-11-14 17:01:53.73772+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	6e61b06a-c230
efa3df30-2e3d-414b-9cbb-daf21eee4d3e	나날 (NaaNaL)	PENDING	2023-11-14 17:02:43.253477+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	efa3df30-2e3d
0e6aee71-56c9-410e-952f-06ab072cf291	아크라이트 (ArkLight)	PENDING	2023-11-14 17:02:43.253477+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	0e6aee71-56c9
36c8b89b-734e-4c24-a1a0-f3c5d42dc0b3	유나와 아이도루	PENDING	2023-11-14 17:02:43.253477+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	36c8b89b-734e
8a47dcc6-103b-46ec-9d66-937cca9faa9b	일렉펀트	PENDING	2023-11-14 17:02:43.53382+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	8a47dcc6-103b
636007df-dd08-45c3-9890-1428620810b0	헤드터너	PENDING	2023-11-14 17:02:43.53382+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	636007df-dd08
c5c720a5-28c3-4119-8b51-b7fafb960797	ddbb	PENDING	2023-11-14 17:02:59.308208+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1E4s0fq7husnFP7LVQCtPm	\N	f	\N	ddbb-c5c720a5
866cbb41-884b-4a23-8c4b-54c836ef29d8	Yajasu	PENDING	2023-11-14 17:02:59.308208+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	0RJnS6YtKMaiZl1m9IETdL	\N	f	\N	yajasu-866cbb41
d79f1b3f-7ca5-4b80-a920-4c42b4216fd7	orange flavored cigarettes	PENDING	2023-11-14 17:02:59.308208+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	7j2MvF06WQi6vlFFa7azao	\N	f	\N	orange-flavored-cigarettes-d79f1b3f
11a4e513-2ffc-4ba2-845c-853df6e690fe	류지수	PENDING	2023-11-14 17:03:50.467372+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2C9warht9pHEV4uwzNZwmW	\N	f	\N	11a4e513-2ffc
fd3948be-abf3-4ae0-a294-423a3664f1b1	Daddy O Radio	PENDING	2023-11-14 17:04:49.016241+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2CnlaPaWAPrHEu4TbR0pz9	\N	f	\N	daddy-o-radio-fd3948be
c21b8752-24c6-4d46-baed-b0c6a69ad891	Strange Fruit	PENDING	2023-11-14 17:04:49.157401+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	strange-fruit-c21b8752
717c9b49-cd22-4b18-be6e-be7c7c6e5c4c	JIBIN	PENDING	2023-11-14 17:05:26.681757+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	jibin-717c9b49
0d043f97-0280-4b93-ada0-607b26d29d35	DJ OKAWARI	PENDING	2023-11-15 17:42:59.544634+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	dj-okawari-0d043f97
bf746826-35b2-4328-b832-3a86a251b8b4	Miiro	PENDING	2023-11-15 17:42:59.544634+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	4CadaJC2t5tnQg06HlXVnP	\N	f	\N	miiro-bf746826
2153270b-b729-4ddf-a8f4-d847a972e3bc	hyangni	PENDING	2023-11-15 17:43:59.370847+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	3cJZkGtAEEajyDOnbYe42O	\N	f	\N	hyangni-2153270b
2576eed6-ac84-41a2-96ea-4aca0addb8d3	오부라이트롤	PENDING	2023-11-16 17:01:07.298378+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	2576eed6-ac84
49b57944-2bd8-4d74-ad6d-89b63033fbe4	신호등	PENDING	2023-11-16 17:01:07.298378+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	4Xj0peBt3EZHbdF20JmdWC	\N	f	\N	49b57944-2bd8
cda7d08f-ed13-4d91-92b0-4d7e5f2c8a74	피져	PENDING	2023-11-16 17:01:07.298378+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	cda7d08f-ed13
3c145c9f-97b9-41f6-a6e4-a34f5ff1801f	사랑방선물	PENDING	2023-11-16 17:01:07.298378+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	3c145c9f-97b9
f618e447-c334-4f83-92ec-b4928f4e059c	육구 뿅뿅 노래방	PENDING	2023-11-16 17:01:07.298378+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	f618e447-c334
da78145d-5b52-4cd1-9320-c5e3a358cc72	크리스피	PENDING	2023-11-16 17:02:00.731527+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	da78145d-5b52
61412278-7ae8-4a4e-b7e9-ca1088218332	톡식(TOXIC)	PENDING	2023-11-16 17:02:01.063727+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	61412278-7ae8
6daf1758-852b-48fd-a6fa-0030893f1aac	아워테잎스	PENDING	2023-11-16 17:02:01.321047+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	6daf1758-852b
e6882fb9-bf5f-4d70-aae1-19e59e2c27c9	ANDOR	PENDING	2023-11-16 17:02:01.321047+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1N4zN6Xe63rCtdDUDdnIDL	\N	f	\N	andor-e6882fb9
1be13f19-b014-4530-a22d-3b65f8114d81	도시(dosii)	PENDING	2023-11-16 17:02:01.506866+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	1be13f19-b014
a71631c8-dbac-4bb8-893d-1c2ad17aed00	아디오스오디오	PENDING	2023-11-16 17:02:01.726165+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	a71631c8-dbac
4c6443e7-e0c8-4a7c-a3e6-ab645359985c	이글루베이	PENDING	2023-11-16 17:02:02.303122+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	4C8KZvLXUzzR2lFY580ATb	\N	f	\N	4c6443e7-e0c8
abeeb1ba-89ca-45ab-bacd-1fd2fcfff1e1	REST	PENDING	2023-11-16 17:02:46.482241+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	64MZylzpezMgwfWq1qLmNs	\N	f	\N	rest-abeeb1ba
2224b4a4-db66-4ebf-9e20-c310c92b14c4	물결	PENDING	2023-11-16 17:02:46.482241+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	4kgjOpCeUXNKeud9gNiK30	\N	f	\N	2224b4a4-db66
f07e6b61-7040-4ad1-bcae-8809db437f25	화노	PENDING	2023-11-14 09:56:21.989856+00	2023-11-26 07:15:16.743473+00	rock	\N	\N	UC1a8zgnRWRmhakkzUT33Yuw	\N	\N	t	\N	f07e6b61-7040
fe11003c-c749-4f40-98e7-a4f9edc96bbf	12BH	PENDING	2023-11-16 17:02:46.482241+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2nAQJEx75OzTPM9MyBiORe	\N	f	\N	12bh-fe11003c
69cc10a0-54c9-4dc7-98cb-dde20bc3959e	귀하	PENDING	2023-11-16 17:02:47.634395+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	7m2NlSLe29rSkCS0KQ60om	\N	f	\N	69cc10a0-54c9
0d1a0df0-496d-42aa-bc1f-cbcb29f8f94f	영센	PENDING	2023-11-16 17:02:47.634395+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	0d1a0df0-496d
4a0989b9-e596-469f-9256-06e1e0c17d6c	민물결	PENDING	2023-11-16 17:02:47.634395+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	6CYyF2lNhSUwZHUtlYoJ3r	\N	f	\N	4a0989b9-e596
4540bd67-c793-4d06-b5e5-affb966d783b	원여울	PENDING	2023-11-16 17:02:47.930483+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	4540bd67-c793
fcf92789-6cb1-4d1d-8610-423d38bac1ee	정영지	PENDING	2023-11-16 17:02:47.930483+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	fcf92789-6cb1
4539a68c-1366-41d9-b8de-a72b5ecc3e5a	타일러윤	PENDING	2023-11-16 17:02:47.930483+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	4539a68c-1366
f9dedff4-2687-4353-bea2-6b728cffaf51	양치기소년단	PENDING	2023-11-16 17:02:48.265578+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	f9dedff4-2687
b80dc833-c1bc-4270-a310-85e96cd3e491	더 바이퍼스	PENDING	2023-11-16 17:02:48.265578+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	b80dc833-c1bc
e0d17383-4392-4f67-9077-b5ab26626025	주은	PENDING	2023-11-16 17:02:48.754798+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	26ZtL9aSGIIpXZFI9ZbF0t	\N	f	\N	e0d17383-4392
37272f1c-5e00-4c43-831f-6ce9be7dcada	데님키즈	PENDING	2023-11-16 17:02:48.754798+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	5JcssLw0Skn0meF0EhTwt3	\N	f	\N	37272f1c-5e00
12fdcaa8-58fb-4dcd-b5fd-e8de781a81a0	몽돌	PENDING	2023-11-16 17:02:48.754798+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2qEFLddnfaTXvbc4TxhHAN	\N	f	\N	12fdcaa8-58fb
c9f3464d-44b8-4413-983d-1c72ef130903	길려빈	PENDING	2023-11-16 17:02:49.643625+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	c9f3464d-44b8
34c828c0-bdc6-4fc8-921b-4a25772c1b0b	월야	PENDING	2023-11-16 17:02:49.643625+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	34c828c0-bdc6
b6c5bef0-afab-44ac-8a17-7e6d68f439aa	Rosie	PENDING	2023-11-16 17:02:49.643625+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	rosie-b6c5bef0
0b4b5ecb-b9c6-4720-82dd-bde8fc680a34	나우	PENDING	2023-11-16 17:02:49.643625+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	0b4b5ecb-b9c6
13e10871-67a5-4baa-8ea9-965233aa913e	Dear Bear	PENDING	2023-11-16 17:02:49.643625+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	6n19O9ReWBbru2ChgGljGn	\N	f	\N	dear-bear-13e10871
4ff165c3-4329-4ff1-b3d8-a40ac6075ad1	미루	PENDING	2023-11-16 17:02:50.733346+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1Cpm5SSmduD7ARoeH4BxB7	\N	f	\N	4ff165c3-4329
68a6accd-ce60-4996-adda-a217bb9e391e	금성	PENDING	2023-11-16 17:02:50.733346+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	3jngSi9Tah08tlNdFUfUI6	\N	f	\N	68a6accd-ce60
0ad7775c-50ca-463f-9a5e-cc979a7d18b2	강소년	PENDING	2023-11-16 17:02:50.733346+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	407nkkPFowEP1cwAnuhXux	\N	f	\N	0ad7775c-50ca
54b90aa0-48c2-42dd-9a6c-d5f88249635d	유즈	PENDING	2023-11-16 17:02:50.733346+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	54b90aa0-48c2
6980529a-627c-42e8-b231-7a3305b60c48	곰돌	PENDING	2023-11-16 17:02:50.733346+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	6980529a-627c
9494107e-46c1-4ffd-bded-7e2ab8b95874	토마토	PENDING	2023-11-16 17:03:09.607857+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	9494107e-46c1
4b863d4d-5a1b-4ed2-9428-22eebe7068c2	straighters_official	PENDING	2023-11-16 17:03:10.560969+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	4b863d4d-5a1b
af223e8a-8f36-442b-ba14-62d77bddcf09	band_kiwi	PENDING	2023-11-16 17:03:10.560969+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	af223e8a-8f36
9cc34668-259e-4f50-be91-b6cbfff25f84	band_vias	PENDING	2023-11-16 17:03:10.560969+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	9cc34668-259e
f37d237b-91ca-409a-9b55-3a9e63137784	poomba21st_official	PENDING	2023-11-16 17:03:10.560969+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	f37d237b-91ca
d08feadd-5b05-42aa-9e87-f3b5f8b4a0da	unis_entertainment	PENDING	2023-11-16 17:03:10.560969+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	d08feadd-5b05
c5fa9c4c-b45f-4236-a88d-f26133c559d5	고갱	PENDING	2023-11-16 17:03:48.839288+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	c5fa9c4c-b45f
4497ac2e-efcc-4499-8bfa-b4cc7687162d	다양성	PENDING	2023-11-16 17:03:49.009762+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	4DDdnvSFGWxkJSCjZiRopb	\N	f	\N	4497ac2e-efcc
bb444e3e-f042-4e73-807c-a1b28abeee48	밴드 우물	PENDING	2023-11-16 17:03:49.110769+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	bb444e3e-f042
d99f3c89-fa2a-4da8-8ffa-d720025ec2c7	binbhin	PENDING	2023-11-16 17:03:49.817008+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	binbhin-d99f3c89
e12662d8-ed7f-4ae2-a617-51566188693f	bass_seongjin	PENDING	2023-11-16 17:03:49.817008+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	e12662d8-ed7f
d08753d1-28b8-442e-915c-a7e6a6bddfc8	coda_jieun	PENDING	2023-11-16 17:03:49.817008+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	d08753d1-28b8
954b291c-ac98-4def-a95d-b0c94ade11ed	punkcross	PENDING	2023-11-16 17:03:49.817008+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	punkcross-954b291c
3532dddd-b587-4dbd-845a-00a1729cc452	Fred Hammond	PENDING	2023-11-16 17:03:50.635101+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2ndyVAdV9UqF1XjyTJt484	\N	f	\N	fred-hammond-3532dddd
6f12eb9a-36a4-4aea-9461-af87339266f7	Kirk Franklin	PENDING	2023-11-16 17:03:50.635101+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	4akybxRTGHJZ1DXjLhJ1qu	\N	f	\N	kirk-franklin-6f12eb9a
d24d7c07-8778-46ab-8cbd-2474f3fc17d1	John P Kee	PENDING	2023-11-16 17:03:50.635101+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2FSsG1nb6DuLbAYQZJU3iU	\N	f	\N	john-p-kee-d24d7c07
ad173660-d8cf-44ce-8efa-5093fa7008a7	Byron Cage	PENDING	2023-11-16 17:03:50.635101+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1bxsoj9E6Z2GoHVIswbRez	\N	f	\N	byron-cage-ad173660
cb5a9db3-0cbb-463a-bbb5-6b60c14f6e38	도하늘	PENDING	2023-11-16 17:03:50.792189+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2jVeAtj7Tmt5Dhkeurzsqt	\N	f	\N	cb5a9db3-0cbb
6388510f-1746-40a5-b574-375cfe48fa91	벤치위레오	PENDING	2023-11-16 17:03:50.920007+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	04Gh0VVef3YDxaV2r5Mxbw	\N	f	\N	6388510f-1746
66fc0000-6120-4fe5-bc94-037798ba011f	먼데이프로젝트	PENDING	2023-11-16 17:03:51.065496+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	66fc0000-6120
a6b3b852-bff3-4086-889b-a99d2add49d7	신승은	PENDING	2023-11-16 17:04:21.587565+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	4z5v6JmVbuYYVLwHbJPzIm	\N	f	\N	a6b3b852-bff3
9e49f7e0-1241-4af8-9e85-7fd21b539711	오소영	PENDING	2023-11-16 17:04:21.587565+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	5f7N1DjTC0DJkSSYiM4N8n	\N	f	\N	9e49f7e0-1241
26c49a13-5d29-40c9-b66f-5af06f7441cd	평평과 열대어	PENDING	2023-11-16 17:04:22.015329+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	26c49a13-5d29
b1c964ff-ed0b-4e24-a56a-d4980c328259	지국	PENDING	2023-11-16 17:04:22.015329+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	5WY88tCMFA6J6vqSN3MmDZ	\N	f	\N	b1c964ff-ed0b
5f54899d-1e23-4f14-8a4f-7964f61df0a4	이지구	PENDING	2023-11-16 17:04:22.015329+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1p6vb9G5qhbS5BevtJPq5f	\N	f	\N	5f54899d-1e23
8ffcc6c9-3b0a-4130-a2ac-edf19b9342d6	DJ	PENDING	2023-11-16 17:04:22.208066+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1h0RJBR88FEa9xZs1eB18a	\N	f	\N	dj-8ffcc6c9
810ac4f3-a560-4f88-ba3f-7209ccf4a22d	Laptopboyboy	PENDING	2023-11-16 17:04:22.836127+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	6QFpQlqfXCV7OU3PbZuV9G	\N	f	\N	laptopboyboy-810ac4f3
2629acac-caaf-4fdc-900e-86fcb1a86cbf	Nicholas	PENDING	2023-11-16 17:04:22.836127+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	463udmhkYuIqHLTzAUiY8r	\N	f	\N	nicholas-2629acac
6b02d100-efac-427d-a22b-364e4d049d1c	Authenticslvt	PENDING	2023-11-16 17:04:22.836127+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	authenticslvt-6b02d100
6d9bdd9e-5657-4cbc-90f6-36fb30683b09	110	PENDING	2023-11-16 17:04:22.836127+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	110-6d9bdd9e
47b349f3-b9a3-47e1-8751-bf3973811af9	장명선	PENDING	2023-11-16 17:04:23.657569+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	6BRirj67zyI1xxe01j9JXr	\N	f	\N	47b349f3-b9a3
aa9357b8-ddfe-4e8a-8334-3366d22d575e	PRESENT	PENDING	2023-11-16 17:04:23.657569+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	38KZqTL9wwlmsaGAMbYNws	\N	f	\N	present-aa9357b8
23f933f2-51e3-46a0-a15d-9ec9f49517cd	mermerme	PENDING	2023-11-16 17:04:23.657569+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	43ukUMamqpTHSVtDJEyGXy	\N	f	\N	mermerme-23f933f2
bc3dba87-2a68-4339-8432-e9a6c053d483	OddSong	PENDING	2023-11-16 17:04:23.657569+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	6goMq6LcnFyuHZJcYu7T1E	\N	f	\N	oddsong-bc3dba87
b291e3d0-a16d-465e-b548-5beefdeaf0f0	LL YOON J	PENDING	2023-11-16 17:04:23.657569+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	ll-yoon-j-b291e3d0
8d85d595-71a7-4248-8f0d-a560efd0de00	Heejin Jang	PENDING	2023-11-16 17:04:44.903092+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	6W5e6R8L6fdxKXRJruDMLH	\N	f	\N	heejin-jang-8d85d595
9ddf1b8f-8d6f-45bc-b859-e63d1d2dedfd	Yoosin Kim	PENDING	2023-11-16 17:04:44.903092+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	6EWqXTOlEw2GPJRlawFouf	\N	f	\N	yoosin-kim-9ddf1b8f
e61ad5b1-7036-4547-8c32-535506c83d72	Gisulbu	PENDING	2023-11-16 17:04:44.903092+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	62FA4V1XomKVQTnV36zRPh	\N	f	\N	gisulbu-e61ad5b1
6a8d02f7-e32d-4418-bae7-e5ad436fb744	후하	PENDING	2023-11-16 17:04:45.153518+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	0x5gEKsilj1iNpv0j7EgMz	\N	f	\N	6a8d02f7-e32d
990245de-39e1-4827-967c-f34dfdf58d82	Penten	PENDING	2023-11-16 17:05:24.634583+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1HBxgezteq3GeZriEAR4iP	\N	f	\N	penten-990245de
9aa39301-321a-4e71-ae06-e19730f8df42	안지 X 슬라이드로사	PENDING	2023-11-16 17:05:24.882866+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	9aa39301-321a
caad7831-7c64-4a5f-9d2c-60b956817166	연이홍서	PENDING	2023-11-16 17:05:24.882866+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	caad7831-7c64
938b302f-c252-4ed8-a2ba-bcc40390e423	블루터틀랜드	PENDING	2023-11-16 17:05:25.067554+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	6XcaWLL9I7HNSJZnu262WX	\N	f	\N	938b302f-c252
297a196d-ca19-45be-921b-44ad70d10966	윤숭	PENDING	2023-11-16 17:05:25.192871+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	297a196d-ca19
f85c5d70-05ef-460d-a854-4f4b089923c7	예경	PENDING	2023-11-16 17:02:47.14848+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	f85c5d70-05ef
891ba58c-fa60-46a0-b823-35a8b82700f7	mooii	PENDING	2023-11-21 16:00:52.502508+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	mooii-891ba58c
f26a1d92-528d-409a-895f-a0488dbec5b0	signal_intrusion_official	PENDING	2023-11-21 16:00:52.502508+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	f26a1d92-528d
1e067c01-38bc-4635-b932-7be75638d654	socialclub_hyangwu	PENDING	2023-11-21 16:00:52.502508+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	1e067c01-38bc
a6478ae5-9152-40b9-9351-7230f8bd8e4a	심아일	PENDING	2023-11-16 17:02:50.031502+00	2023-11-26 07:15:16.743473+00	rock	\N	\N	@sim.O	1PVjeeja3aKjY1vI6C8W82	\N	t	\N	a6478ae5-9152
0dc94f88-431f-4f2f-acb8-dbce957cdee6	오한주	PENDING	2023-11-16 17:02:50.031502+00	2023-11-26 07:15:16.743473+00	indie	\N	\N	@tomato_itsme	\N	\N	f	\N	0dc94f88-431f
de2d6fb7-c920-4fbf-ba29-81d6ca2550aa	하지	PENDING	2023-11-16 17:02:49.067805+00	2023-11-26 07:15:16.743473+00	rock	\N	\N	@haziband.official	\N	\N	f	\N	de2d6fb7-c920
555519d2-09e6-4b65-866a-4944a07d49f7	828	PENDING	2023-11-16 17:02:49.067805+00	2023-11-26 07:15:16.743473+00	indie	\N	\N	UCojfesx2rN2eb8AsyvbyZig	\N	\N	t	\N	828-555519d2
ae4d80af-6606-42a4-84bf-742da4e635e2	권결	PENDING	2023-11-16 17:02:50.031502+00	2023-11-26 07:15:16.743473+00	indie	\N	\N	@kwongyeol	0jy3BB8xJVu7fuBeD9OolD	\N	f	\N	ae4d80af-6606
2ddd90f1-4d23-4703-a48d-7785ff3e684e	키아로	PENDING	2023-11-16 17:05:25.630205+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	5shT3F5gGCMtQJB8FNvysd	\N	f	\N	2ddd90f1-4d23
7f140265-f3fa-43b9-a9a1-d2a4a8daa8ba	이루리 (LEE LULI)	PENDING	2023-11-16 17:06:01.953896+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	7f140265-f3fa
97d69c59-4f9a-4c94-8f04-641d8c3591c9	정우(JUNGWOO)	PENDING	2023-11-16 17:06:02.152054+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	97d69c59-4f9a
91debb5c-ff92-403d-ba77-707a9193fb65	NEWTRO	PENDING	2023-11-16 17:06:35.842319+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	newtro-91debb5c
59e795c8-5369-4347-b378-bf855af12207	씬디 프레젠트 Vol. 9	PENDING	2023-11-16 17:06:36.004469+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	59e795c8-5369
e1b8f749-09fc-420a-ad6c-b8611dad326d	VOCAL TECHNIC	PENDING	2023-11-16 17:06:36.248297+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	vocal-technic-e1b8f749
5e096f5e-cb5f-428f-b438-2cb88ccace99	김선	PENDING	2023-11-16 17:06:36.516483+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	0S0cTyI6bRofNdnjsKVbkV	\N	f	\N	5e096f5e-cb5f
9fa0b362-ac44-4d27-83bd-7a7eae105200	찬온	PENDING	2023-11-16 17:06:36.516483+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	9fa0b362-ac44
34cea583-1b73-46fe-bfba-a185e2a3d5ff	유정식	PENDING	2023-11-16 17:06:36.663956+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	72X0msCNny3Qqkp1WCQPcN	\N	f	\N	34cea583-1b73
bbd73964-c62a-4d4e-a064-250ed3bd118d	OFFB	PENDING	2023-11-16 17:06:36.892807+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	offb-bbd73964
6548395e-358f-4ab0-9d6a-2999a81b9fd2	임소정	PENDING	2023-11-16 17:06:37.007358+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1rKpO5H62bXp1wG1A7BUKx	\N	f	\N	6548395e-358f
d4b612a5-93b1-48fa-90b1-875512fdfba0	정새벽	PENDING	2023-11-16 17:06:37.141756+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	d4b612a5-93b1
5139ae3b-e75f-4aab-952e-9b93b9218c6f	Llwyd	PENDING	2023-11-16 17:06:37.343285+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	3KgcgM87HRDj5fXNFFFDM0	\N	f	\N	llwyd-5139ae3b
3bc05f23-d26b-4175-8168-5b5fe191bd88	키스누	PENDING	2023-11-16 17:07:15.065263+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	64A4Dn0L0xf7GTreuOgJ1F	\N	f	\N	3bc05f23-d26b
e3a55ca5-eff5-4562-b14a-4352795022a3	배정찬	PENDING	2023-11-16 17:07:15.167427+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	e3a55ca5-eff5
f16e9851-22b4-4a20-9afb-36c0083e2552	최첨단맨	PENDING	2023-11-16 17:07:15.358134+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	4Plrerc3e2ZuY5kLT2dbRZ	\N	f	\N	f16e9851-22b4
0d9dad98-ab4e-4b0f-aaa5-93bfe57cf650	WindyCity	PENDING	2023-11-16 17:07:16.558817+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	windycity-0d9dad98
8999924e-9d1c-442a-9019-f9566224ebee	Omar & The Eastern Power	PENDING	2023-11-16 17:07:16.558817+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	8999924e-9d1c
2f90a230-d93d-4e91-aafe-a3b503a15753	Ejo & The Midegets	PENDING	2023-11-16 17:07:16.558817+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	2f90a230-d93d
6ea87339-a767-4e0e-8249-4a852e15b32b	Y2k92	PENDING	2023-11-16 17:07:16.558817+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	y2k92-6ea87339
a18d501d-5c35-4ae0-b117-a475f910f9d9	The Godot	PENDING	2023-11-16 17:07:16.558817+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	the-godot-a18d501d
2e300808-02cd-4146-8b2d-7dcbcb73fd5f	Blue Turtle Land	PENDING	2023-11-16 17:07:16.558817+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	030O3Jga53bAbjkbYKJwZy	\N	f	\N	blue-turtle-land-2e300808
8cdbe0b8-b052-4205-9d55-09edfd529e27	yoonsung	PENDING	2023-11-16 17:07:16.558817+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	yoonsung-8cdbe0b8
bec799f9-6023-41e4-b544-3da97b45439c	Luli Lee	PENDING	2023-11-16 17:07:16.736808+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	3h4p2PKHb9JejBCHmWlthK	\N	f	\N	luli-lee-bec799f9
e129f82d-c218-4128-881c-fc860e691116	BEIJO BAE	PENDING	2023-11-16 17:07:17.549735+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	beijo-bae-e129f82d
405db8f2-0da8-409e-b0b8-edea3d748c09	HOGI	PENDING	2023-11-16 17:07:17.549735+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1tUhTGzNHtbmRn5kNFTWeZ	\N	f	\N	hogi-405db8f2
6af99740-6f73-4022-ab4b-b5ec7314ea1f	KARLLLL	PENDING	2023-11-16 17:07:17.549735+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	karllll-6af99740
926e481b-6cea-4088-b6ac-512baa930ee6	NABI	PENDING	2023-11-16 17:07:17.549735+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	5fbvHbelfrzblRvM0o0CXE	\N	f	\N	nabi-926e481b
e8dfbbc1-bba9-495f-a08e-1e07d6d6ae66	ROXY	PENDING	2023-11-16 17:07:17.549735+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	0QAtOlG4BH1dUV1jGD15nJ	\N	f	\N	roxy-e8dfbbc1
582a1a2f-ee4c-44a8-9cc0-2fba92c41ab2	하헌진	PENDING	2023-11-16 17:07:46.039566+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	582a1a2f-ee4c
18b2f03e-3a13-4576-85f7-1fd39a5e7883	김일두	PENDING	2023-11-16 17:07:46.364711+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	18b2f03e-3a13
bfc13906-1a51-4085-b1a8-73412655b560	원호	PENDING	2023-11-16 17:07:46.364711+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	bfc13906-1a51
a089176b-7c2c-4ade-8762-20f09235c7ea	하퍼스	PENDING	2023-11-16 17:07:46.600174+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	7I2S7BUeqWmbzQob9omXeb	\N	f	\N	a089176b-7c2c
54aa2637-b69d-4138-8744-7747cf04084b	더 튜나스	PENDING	2023-11-16 17:07:46.600174+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	7qwj7kKl5ftVIcBx5P5hn6	\N	f	\N	54aa2637-b69d
aedce6ff-b21a-4981-b2ee-f61893705c24	Blues Man 하헌진	PENDING	2023-11-16 17:07:46.752298+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	aedce6ff-b21a
29a765ee-5a60-4e8a-9aab-f4266af8e090	Fat Hamster	PENDING	2023-11-17 16:01:30.449879+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2Hu4VMSHeLo0tKSiRwwy2N	\N	f	\N	fat-hamster-29a765ee
66538aca-986a-4a07-a455-412893a4bc16	KIRARA	PENDING	2023-11-17 16:01:30.449879+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	6Q4tDWdAQdRjV4pAuqiHQW	\N	f	\N	kirara-66538aca
276aff5c-d7c3-44b5-a774-043e6f895f16	PARK Sunju	PENDING	2023-11-17 16:01:30.449879+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1sboouX2a2fuXVKorKMpPU	\N	f	\N	park-sunju-276aff5c
88cc30ca-18a3-474a-844c-908077a9ebcb	정석훈	PENDING	2023-11-17 16:01:46.643033+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1sK6u1AYcW34Kms0OZtnMC	\N	f	\N	88cc30ca-18a3
0c956046-75f5-4da5-9aaa-f8c3feba0665	Mazzika Band	PENDING	2023-11-17 16:01:57.828003+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	mazzika-band-0c956046
97bf2d09-b961-472e-ac1a-a1b1f81d7fe7	LEAFY	PENDING	2023-11-17 16:02:22.538676+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1w2W3b2Z93RMJlygXigbNL	\N	f	\N	leafy-97bf2d09
876e492b-3f12-4d4f-bc21-b617c7ff5d46	HwA	PENDING	2023-11-17 16:02:22.538676+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	0K4py26mnJcM40LhIy5g8q	\N	f	\N	hwa-876e492b
85bbdc37-ccce-4b3c-97ee-586ae55f1afb	김영구 트리오	PENDING	2023-11-17 16:02:22.759377+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	85bbdc37-ccce
31451d20-ed58-44cc-9dfe-21a080841c1e	인절미	PENDING	2023-11-17 16:02:23.153809+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	31451d20-ed58
b16a9c8c-5e08-4a1f-af8a-e6fc2836a021	수수	PENDING	2023-11-17 16:02:23.153809+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	b16a9c8c-5e08
8ba58b10-b583-4b42-864b-0e5b8a52842a	지눅션	PENDING	2023-11-17 16:02:23.153809+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	8ba58b10-b583
fcd754a2-81e8-4dff-a186-b7679840b7df	HAKASEーSUN	PENDING	2023-11-17 16:03:00.105752+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	fcd754a2-81e8
4e610610-2593-4e89-9fec-4a2a275276c4	펑크온파이어	PENDING	2023-11-17 16:03:26.70744+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	4e610610-2593
323ced28-fd46-4fb2-a7d1-75a8ea06406f	더티라콘	PENDING	2023-11-17 16:03:26.70744+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	323ced28-fd46
cd18afb6-213d-45cf-864d-ad555331bad1	스윗가솔린	PENDING	2023-11-17 16:03:26.70744+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	cd18afb6-213d
1f7ec1ef-4642-4df1-a1c1-31b98efc9d5a	왓에버댓민즈	PENDING	2023-11-17 16:03:26.70744+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	1f7ec1ef-4642
e2b2458e-e442-4685-8e46-dd12b646d54a	카크래셔	PENDING	2023-11-17 16:03:26.70744+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	e2b2458e-e442
377fb48c-cfeb-40d3-82f4-5c3376f4558c	몽키갱워	PENDING	2023-11-17 16:03:26.70744+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	377fb48c-cfeb
0bfd39a5-57cb-4acc-9721-195884ed5295	Night safari (from japan shiga)	PENDING	2023-11-17 16:03:27.697324+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	0bfd39a5-57cb
8254bfc6-6039-4056-a149-ce9256076562	Long Time No shit	PENDING	2023-11-17 16:03:27.697324+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	16JYiDBJ5uS39jkpqDVjlM	\N	f	\N	long-time-no-shit-8254bfc6
6d55a00b-ec2c-49e2-b4f8-8f9162b987b7	Smoking goose	PENDING	2023-11-17 16:03:27.697324+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	smoking-goose-6d55a00b
084329e5-4256-4059-9572-141a051594bf	Row Brothers	PENDING	2023-11-17 16:03:27.697324+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	row-brothers-084329e5
d0f7ebb5-5eae-4144-8eda-3aca3e2c3f54	Overhead	PENDING	2023-11-17 16:03:27.697324+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	5S4tv0FFzXA4iQHOVlnj8I	\N	f	\N	overhead-d0f7ebb5
a275e8e7-848d-4304-b1f7-c241a2d9dcab	SKATE-HI	PENDING	2023-11-17 16:03:27.887176+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	skate-hi-a275e8e7
9912a003-059c-445c-9493-5bed4e7c87ce	삵 Sark	PENDING	2023-11-17 16:04:22.18934+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	9912a003-059c
f47150a4-0c4c-4786-a6cf-652a5befef6f	꼬리물기 Gorymurgy	PENDING	2023-11-17 16:04:22.18934+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	f47150a4-0c4c
0865a1b9-380f-4912-a1e2-8f06fda1b84f	신윤수 Shin Yunsu	PENDING	2023-11-17 16:04:22.574711+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	0865a1b9-380f
aa36fd99-800a-4ed0-86bd-5ccbb900ba6f	서정 Seo Jeong	PENDING	2023-11-17 16:04:22.574711+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	aa36fd99-800a
0038d537-a6e3-4ce5-90cc-76bb9879e65f	HASO	PENDING	2023-11-17 16:05:30.930959+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2U5FotTisPNamqiMeazd2y	\N	f	\N	haso-0038d537
4ab89586-8972-40ad-8b42-5333c1b72e27	서정은	PENDING	2023-11-17 16:05:30.930959+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	7zDLAHSj05CS1HJMvb9N28	\N	f	\N	4ab89586-8972
cf77aa9e-f77b-41b7-b420-9b173b0a669a	dabinchi_band	PENDING	2023-11-21 16:00:52.502508+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	cf77aa9e-f77b
c1902a41-2f5f-4303-ac60-2b099059377e	정록	PENDING	2023-11-17 16:05:30.616433+00	2023-11-26 07:15:16.743473+00	rock	\N	\N	@jeongrock_	\N	\N	f	\N	c1902a41-2f5f
7a36788e-26c0-4393-8041-ac51d7a278de	a.eakashicego	PENDING	2023-11-21 16:00:52.502508+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	a.eakashicego-7a36788e
85f9812d-72e6-44b6-a89e-9d37343bb147	thestudiohbc	PENDING	2023-11-21 16:00:52.502508+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	thestudiohbc-85f9812d
70c59463-8934-4393-883a-de76a3a4dc4f	stand-up comedians	PENDING	2023-11-17 16:05:31.569748+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	stand-up-comedians-70c59463
c53b50a0-8cfc-46dd-bc14-2cbc3742da6a	오시원	PENDING	2023-11-17 16:05:33.196481+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	76my7bKYvTtygpl64JylwC	\N	f	\N	c53b50a0-8cfc
88fa93d5-a4b2-4d60-907a-d9fda92e2a18	채정우	PENDING	2023-11-17 16:05:33.924569+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	02E67Eb5OivV4mQiB99h3G	\N	f	\N	88fa93d5-a4b2
d2753a2d-d356-42c3-b5ab-b304c0c08b1a	김덕진	PENDING	2023-11-17 16:05:33.924569+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	d2753a2d-d356
2a321135-d317-4438-873a-9431432100e7	Lowten	PENDING	2023-11-17 16:05:33.924569+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	lowten-2a321135
16be6e3a-1ec2-41fd-ba11-9048e8ac6c30	Flick	PENDING	2023-11-17 16:05:33.924569+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1teuX1qrnlrq9BHjL6PDn4	\N	f	\N	flick-16be6e3a
3ff04a78-c608-4d4f-9d77-1a3ac0046e2e	Rivera&Cuervo	PENDING	2023-11-17 16:05:33.924569+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	3ff04a78-c608
d1eec0c0-e12a-4620-b7a0-288017fb4dc4	퀸샤	PENDING	2023-11-17 16:05:34.51615+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	d1eec0c0-e12a
ef9e380c-1a3c-4196-80d0-ca394ceeeaa9	펭귄이아닙니다	PENDING	2023-11-17 16:05:34.51615+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	ef9e380c-1a3c
48e3e524-675b-4da1-ac03-438fe50dfb48	세로	PENDING	2023-11-17 16:05:34.51615+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1rN14tTmTRIQQMMzcDx4uD	\N	f	\N	48e3e524-675b
0c12a979-9c33-4674-95f7-554fd43c0e85	연님	PENDING	2023-11-17 16:05:34.51615+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	7ugP82j6GKbFW85rWpTIkL	\N	f	\N	0c12a979-9c33
b66d5b77-17dc-49aa-882e-a0d3faf7f1ba	BUTTON	PENDING	2023-11-17 16:05:34.795675+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	5ReklCeeyw5kIkZq6O5U8H	\N	f	\N	button-b66d5b77
724de8b2-ad23-4210-aac2-09031c9cf359	백유경	PENDING	2023-11-17 16:05:35.488205+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	724de8b2-ad23
2d3dee39-5e17-4696-9b0a-cd3ee33f996e	Tidy	PENDING	2023-11-17 16:05:35.488205+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	552QKSqK4wnQ4L0PYZzdsH	\N	f	\N	tidy-2d3dee39
7f774e48-10b2-4ef6-8978-adc8427dd8f7	오닐 (ONiLL)	PENDING	2023-11-17 16:05:35.488205+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	7f774e48-10b2
b626beca-5fcd-4d3a-ba74-3d97c5e083a4	Sun & Mer (해와 바다)	PENDING	2023-11-17 16:05:35.488205+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	b626beca-5fcd
98e3927c-1014-4d03-972a-b35daa12727a	윤형준	PENDING	2023-11-17 16:05:35.965016+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	98e3927c-1014
e83ba170-2ffa-40f6-a6de-912b91ae90d1	보리	PENDING	2023-11-17 16:05:35.965016+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	6WMtzdekwNhWIUk7wcIsmT	\N	f	\N	e83ba170-2ffa
8a3f7622-faa8-439e-8b1c-995a87a34da2	반설희	PENDING	2023-11-17 16:05:35.965016+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2OrXqndtwdKrGTTIAcTPxv	\N	f	\N	8a3f7622-faa8
cf3b8ba2-3cf8-4977-b5b8-7218b4deeda6	단비	PENDING	2023-11-17 16:05:35.965016+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	02Aeoqcv06v1apu0IOCz8O	\N	f	\N	cf3b8ba2-3cf8
50d33602-da6f-4feb-97a2-c57d99d8e654	피아노	PENDING	2023-11-17 16:05:59.852806+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	50d33602-da6f
b82ccb9f-2e8e-4f4e-9a71-5f748675a4f8	피아노(@pianist_boram)	PENDING	2023-11-17 16:05:59.852806+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	b82ccb9f-2e8e
1687e45e-3a68-44ad-a056-80d5ba556903	전호권	PENDING	2023-11-17 16:06:00.00851+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	0GBdellNzP0u6zvytLG3PW	\N	f	\N	1687e45e-3a68
d2115fef-8ad4-4c73-a7a7-79618f386c21	D백강현J	PENDING	2023-11-17 16:06:42.741213+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	d2115fef-8ad4
87b8fe90-677c-4855-a687-5dae3ca146b2	이재와 윤기(Dj)	PENDING	2023-11-17 16:06:42.741213+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	87b8fe90-677c
08011a02-2f19-415a-92da-175ee11180c5	이온과 창성	PENDING	2023-11-17 16:06:42.741213+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	08011a02-2f19
9cdd7eb9-b4ff-4037-97af-f9d86b803131	코리아시스터즈	PENDING	2023-11-17 16:06:43.964684+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	9cdd7eb9-b4ff
f288699c-b7b3-40b9-8f92-2107b455d6ed	스이리	PENDING	2023-11-17 16:06:43.964684+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	f288699c-b7b3
05d995f3-d7dc-4007-a17b-1d694f9a5323	NOTYET	PENDING	2023-11-17 16:06:43.964684+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	notyet-05d995f3
c53b71fc-902f-439c-bb00-bb15bff9968b	ATISMIA	PENDING	2023-11-17 16:06:43.964684+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	atismia-c53b71fc
3343a51a-046d-4932-82d1-1c7ff8bef98d	1002	PENDING	2023-11-17 16:06:43.964684+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	1002-3343a51a
a99b5fd7-07db-4216-9044-2a1af0a66253	GOARIMGO	PENDING	2023-11-17 16:06:43.964684+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	goarimgo-a99b5fd7
be18b5c3-cbfe-44d5-8418-8c23c98bd689	서울뚝배기	PENDING	2023-11-17 16:06:45.206031+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	be18b5c3-cbfe
cc499377-3df0-4f36-9253-e18c720e6379	노인(노이&인간)	PENDING	2023-11-17 16:06:45.206031+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	cc499377-3df0
0b3d5846-6ba8-48a8-a451-32db371a814c	피	PENDING	2023-11-17 16:06:45.206031+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	0b3d5846-6ba8
1613f205-8c54-4256-bb74-db903a8a2592	이종권	PENDING	2023-11-17 16:06:45.206031+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	1613f205-8c54
82f8af92-8884-4f68-9898-430f208daff0	토키야	PENDING	2023-11-17 16:06:45.206031+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	82f8af92-8884
fc79546b-4716-4216-b9c7-9f9cf3d51da8	파올라	PENDING	2023-11-17 16:06:45.206031+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	fc79546b-4716
9a561d8d-e395-46c5-9ea6-57366cd4bf06	니콜	PENDING	2023-11-17 16:06:45.206031+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	9a561d8d-e395
895b667e-f5e2-48c1-b42d-d7acb6409732	팔팔정	PENDING	2023-11-17 16:06:45.206031+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	895b667e-f5e2
fb237ba7-ad42-43c5-8bd3-ccf22db94c39	채현병신	PENDING	2023-11-17 16:06:45.206031+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	fb237ba7-ad42
32e5e7b0-6910-4ac4-bad2-70446084ee4f	시봉새	PENDING	2023-11-17 16:06:45.206031+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	32e5e7b0-6910
7a2d1639-9d4b-4158-ba93-0d7b6c0c079e	먼데이필링	PENDING	2023-11-17 16:07:47.518754+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	7a2d1639-9d4b
15c4d858-9350-4612-9d62-f258a015e8b6	트리케라톱스	PENDING	2023-11-17 16:07:47.518754+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	15c4d858-9350
072c1c73-1837-4eef-9d70-169d7b47ab36	코끼리숨바꼭질	PENDING	2023-11-17 16:07:47.518754+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1uUo43GgNXcMimCswr8JsU	\N	f	\N	072c1c73-1837
9761946d-6c70-47c9-923a-9b27b854041a	Nollflower	PENDING	2023-11-17 16:07:48.071004+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	3kzonBtu54IfXq7MfB7P08	\N	f	\N	nollflower-9761946d
5c27f4aa-58b5-4c80-b7d8-d44ee84bda5a	Lubless	PENDING	2023-11-17 16:07:48.071004+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2jKbzQsaJVGpSxiVV8o13j	\N	f	\N	lubless-5c27f4aa
36c5e3d4-4ef0-48b2-b154-e039a027e129	Vanillare	PENDING	2023-11-17 16:07:48.071004+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1snfnH0w3DHTY1GXJ630Ys	\N	f	\N	vanillare-36c5e3d4
60ec575a-3e42-42af-b799-c0abf99d7b8b	티치	PENDING	2023-11-17 16:07:48.706472+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	60ec575a-3e42
018cc7fb-89ac-4e6a-aebf-69c2a57c64dd	BFG	PENDING	2023-11-17 16:07:48.706472+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	7FgX5gVcs2mAbpNpYwf1WS	\N	f	\N	bfg-018cc7fb
850d0853-7eec-42b9-97d9-c954806cdb9d	이디어츠	PENDING	2023-11-17 16:07:48.706472+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2YjxwZOy5LDPJcXSWXglSN	\N	f	\N	850d0853-7eec
da85f6d0-3f64-4679-b769-d46ffd2a6670	급한노새	PENDING	2023-11-17 16:07:48.706472+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1Sc1el3Xygnijenpj9mkmk	\N	f	\N	da85f6d0-3f64
6272ab7c-7554-4f72-9375-5054bb1451cc	에이프릴 세컨드	PENDING	2023-11-17 16:07:48.88596+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	6272ab7c-7554
4b5b9e94-f7b8-4c21-99a8-88009734cfa2	오렌지팡팡보이즈	PENDING	2023-11-17 16:07:49.222102+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	4b5b9e94-f7b8
df490101-e506-499b-999d-20ce1d951f59	도그라스트페이지	PENDING	2023-11-17 16:07:49.222102+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	df490101-e506
4620e629-47b0-4d63-8559-2bc5c58a3f61	브로큰발렌타인	PENDING	2023-11-17 16:07:49.398555+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	4620e629-47b0
e080ff6f-d422-48ad-a335-d249db3bbc38	KIMBADA 김바다	PENDING	2023-11-17 16:07:49.862825+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	e080ff6f-d422
90ce104b-9abd-48d4-9f1b-e512a67953f4	Broken Valentine 브로큰발렌타인	PENDING	2023-11-17 16:07:49.862825+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	90ce104b-9abd
427efeb9-b62d-4a4b-9575-e81320542d39	OneOff 원오프	PENDING	2023-11-17 16:07:49.862825+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	427efeb9-b62d
a27637e2-e4a8-4479-955a-fb60dfb80005	우륵과 풍각쟁이들	PENDING	2023-11-18 16:00:58.440797+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	a27637e2-e4a8
48d89d4f-9e9d-4d2b-93d3-fe79ffbf4ae5	쾅프로그램	PENDING	2023-11-18 16:00:58.440797+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	48d89d4f-9e9d
d473a9d1-6407-4bcf-97dd-61a536222a9a	더 라우너	PENDING	2023-11-18 16:01:39.674404+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	d473a9d1-6407
2816f91e-8b53-4a16-9efc-36ca602f8d8c	오아잇	PENDING	2023-11-18 16:01:39.674404+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	2816f91e-8b53
8b722eb0-c1bb-467d-8ce3-0a4861c1791d	블랙우든도어	PENDING	2023-11-18 16:01:39.674404+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	8b722eb0-c1bb
1929dd36-dd4a-4889-87a6-108d34b52bba	김목인 Kim Mok In	PENDING	2023-11-18 16:01:40.324706+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	1929dd36-dd4a
309dd6b0-ff61-4e4c-aae7-942712ccddc6	모호 프로젝트 Mohho Project	PENDING	2023-11-18 16:01:40.324706+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	309dd6b0-ff61
116c4647-8323-49b5-aefb-ec83fa139813	선과영 Line and Circle	PENDING	2023-11-18 16:01:40.324706+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	116c4647-8323
b8bef36a-a5f3-4202-8390-7cf35dda8d14	OLNL (오르내림)	PENDING	2023-11-18 16:01:40.697056+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	7oxSPo98DPmtn5iKoOORUX	\N	f	\N	b8bef36a-a5f3
54177e5a-ff62-41ad-9ee1-f74b0b27e5d6	동경야시장	PENDING	2023-11-17 16:05:31.98181+00	2023-11-26 07:15:16.743473+00	\N	\N	westside_marketband	\N	\N	\N	f	\N	54177e5a-ff62
02f23d0b-fdd8-49f4-ba60-fb4cc9d92615	트위키 카야	PENDING	2023-11-17 16:05:31.98181+00	2023-11-26 07:15:16.743473+00	pop	\N	twikykaya	@twikykaya	5JDrli2RvIJR3EkG2Zpw0B	\N	t	\N	02f23d0b-fdd8
29f1a3f3-2c13-42e2-b66b-f1c866aff201	크로커스	PENDING	2023-11-17 16:05:31.98181+00	2023-11-26 07:15:16.743473+00	jazz	\N	crocus___s	\N	\N	\N	f	\N	29f1a3f3-2c13
baf71be6-e036-4a33-862f-79f786d0a9c9	김민서	PENDING	2023-11-18 16:02:01.696745+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	5h9V9ygHZ2vlEm6312DSIk	\N	f	\N	baf71be6-e036
cc0961d2-f1e5-4440-804e-644163106415	김수민	PENDING	2023-11-18 16:02:01.696745+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	6nCdltPEMjAGE7cWvhU8yE	\N	f	\N	cc0961d2-f1e5
47380782-be76-4fc5-8e11-c162fb022f7d	김예진	PENDING	2023-11-18 16:02:01.696745+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	720zwaBVvjF1l9S99mbjJm	\N	f	\N	47380782-be76
04e0a1aa-49a9-4285-9eec-b88fdda76402	류경민	PENDING	2023-11-18 16:02:01.696745+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	04e0a1aa-49a9
428df4c3-6648-48b6-953f-fcc9d9bb9ce6	윤지현	PENDING	2023-11-18 16:02:01.696745+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2owZ9BpTGpGqLAX09wniXb	\N	f	\N	428df4c3-6648
c54de783-1b47-435f-b940-c1587bbb2e28	정성우	PENDING	2023-11-18 16:02:01.696745+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1eUeaOscKBbZsMeTYqSBMT	\N	f	\N	c54de783-1b47
233c395f-de58-436c-a8bf-81bf094ac4e5	정윤정	PENDING	2023-11-18 16:02:01.696745+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	18Zy8VKNXNbx3STmKNomme	\N	f	\N	233c395f-de58
00de4fbe-568e-41d4-a502-d6a80f81a97a	천승민	PENDING	2023-11-18 16:02:01.696745+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	00de4fbe-568e
56a29c2f-f8b5-43df-86e8-d03008410a6f	FISHMANS	PENDING	2023-11-18 16:02:13.92035+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	fishmans-56a29c2f
37af245f-c88b-41e9-a253-2bef0324be1c	포그	PENDING	2023-11-18 16:02:23.738385+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1welQeYVIZbEQaZtZnxRpw	\N	f	\N	37af245f-c88b
d1492c90-b650-4875-9584-f90c7201e160	리니어	PENDING	2023-11-18 16:02:23.738385+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	3Xgz1YyChPi9YOIiOq0xsG	\N	f	\N	d1492c90-b650
d66dad9b-4f9d-4cc1-b144-8f40d1dd968f	릴리잇머신	PENDING	2023-11-18 16:02:23.738385+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	d66dad9b-4f9d
15a8ea4a-2ed0-4ca3-b3f0-d86c5f65564a	NAVI CUTIE PIE MONSTER	PENDING	2023-11-18 16:03:16.585946+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	navi-cutie-pie-monster-15a8ea4a
d3278f88-8327-4b03-8404-95dfcee966f4	박오란	PENDING	2023-11-18 16:03:16.585946+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	d3278f88-8327
9a6e0308-df6c-4869-bb0d-24c7a7ce4a66	SEESEA	PENDING	2023-11-18 16:03:16.585946+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	seesea-9a6e0308
6d6a3699-7e6e-4079-9c1f-9de6f6c9bb89	QUIBBIE	PENDING	2023-11-18 16:03:16.585946+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	quibbie-6d6a3699
1c85e772-1151-41d9-b7b8-227a95b93cbc	INTOXXY	PENDING	2023-11-18 16:03:16.585946+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	intoxxy-1c85e772
1054536e-ddbf-48c2-bcce-80f2bc1832fd	BOBA BEAR	PENDING	2023-11-18 16:03:16.585946+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	boba-bear-1054536e
13256e60-9088-43c8-af28-16e173389862	GCM	PENDING	2023-11-18 16:03:16.585946+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	7auBgz8o8xDUmK71FLf0U4	\N	f	\N	gcm-13256e60
66a7f0b1-e7c1-4c9f-8cdc-4af4fc397fd2	JESTER	PENDING	2023-11-18 16:03:16.585946+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	393cphrlNjYkleAhNOcIy8	\N	f	\N	jester-66a7f0b1
0d2c4880-5cb3-40d2-9893-440de12df006	SECRET GUEST	PENDING	2023-11-18 16:03:16.585946+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	2MrRGbzlm03Olfzrllqge1	\N	f	\N	secret-guest-0d2c4880
1f99a296-5d6d-46a3-b72a-4f4ff2e58cf3	모노폴리 (MONO4OLY)	PENDING	2023-11-18 16:03:25.170999+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	1f99a296-5d6d
d090703f-cfd1-47dc-865a-cde778eae036	허니페퍼 (HONEY PEPPER)	PENDING	2023-11-18 16:03:25.170999+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	d090703f-cfd1
c70730b6-e2e5-4d93-97a9-b09d3a20a3f6	도그라스트페이지 (Dog Last Page)	PENDING	2023-11-18 16:03:25.170999+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	c70730b6-e2e5
c0d43305-a1be-4adf-98af-a315f5ae2287	ROCKET	PENDING	2023-11-13 11:43:48.713717+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	1WAB4gjjNfQpAgT5SoAbRE	\N	f	\N	rocket-c0d43305
5d8c0ace-5114-4154-b65b-c246508b72b7	이븐 이프	PENDING	2023-11-16 17:02:02.094776+00	2023-11-26 07:15:16.743473+00	rock	\N	band_evenif	@bandevenif1434	5Iv53hEJtYYHs8l0DNQHJv	\N	t	\N	5d8c0ace-5114
14895c3a-dbb6-499f-af6f-4633c9eb3ae6	로우브라더스	PENDING	2023-11-21 16:01:07.117855+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	14895c3a-dbb6
46a59372-fed3-4658-8bc9-aa55f39638f4	더사운드	PENDING	2023-11-21 16:01:07.117855+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	46a59372-fed3
2ffb5182-03e0-4265-8069-f58d5fbfdca3	메리헤이데이	PENDING	2023-11-21 16:01:07.117855+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	2ffb5182-03e0
67d94182-8e9f-46e5-bfa4-39757105dd5c	썬더스	PENDING	2023-11-21 16:01:39.224262+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	67d94182-8e9f
6494f050-55e5-46fe-8c6a-8f9b99b52603	콤아겐즈	PENDING	2023-11-21 16:01:39.224262+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	6494f050-55e5
9631fa0a-dafb-4c5d-807e-a18431ff1b0f	YOEL	PENDING	2023-11-21 16:01:47.726878+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	yoel-9631fa0a
b121e902-0357-49a1-b458-2e33c74fd574	HANSY	PENDING	2023-11-21 16:01:47.726878+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	hansy-b121e902
b870c020-b577-445b-89cb-a58e3f934e41	아기	PENDING	2023-11-21 16:01:55.859854+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	b870c020-b577
68b5eb8e-6971-48a1-a622-ef26f077de98	타이거 디스코	PENDING	2023-11-21 16:01:55.859854+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	68b5eb8e-6971
0c33aa95-4abc-42e4-96e5-584a1931dbee	모래	PENDING	2023-11-24 05:24:03.399419+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	0c33aa95-4abc
3d931ecb-4671-473a-b10b-895939a9a914	조종근	PENDING	2023-11-24 05:24:03.399419+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	3d931ecb-4671
251f3ce0-da3c-47c2-8aac-6f86e155f5c3	안규건	PENDING	2023-11-24 05:24:03.399419+00	2023-11-26 07:15:16.743473+00	\N	\N	\N	\N	\N	\N	f	\N	251f3ce0-da3c
\.


--
-- Data for Name: venue; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."venue" ("id", "instagram_username", "review_status", "created_at", "updated_at", "country", "city", "instagram_id", "name", "external_link", "business_address_json", "business_email", "business_phone_number", "local_name", "slug", "external_maps_json") FROM stdin;
22bf8781-f550-49cd-acbc-ddcbd244a3b7	thestudiohbc	VALID	2023-11-13 09:55:38.154149+00	2023-11-22 10:04:10.595827+00	KR	Seoul	34829827810	The Studio HBC	https://open.kakao.com/o/gXLcI3Cd	{"city_name": "Yongsan District", "city_id": 431507426900016, "latitude": 37.51502, "longitude": 127.01648, "street_address": "\\uc11c\\uc6b8 \\uc6a9\\uc0b0\\uad6c \\uc6a9\\uc0b0\\ub3d92\\uac00 39-16 \\uc9c0\\ud5581\\uce35", "zip_code": "04438"}	\N	\N	\N	the-studio-hbc	{"googleMapsUrl":"https://www.google.com/maps/place/The+Studio+HBC/@37.5418683,126.9823394,17z/data=!3m1!4b1!4m6!3m5!1s0x357ca37a7e2b2803:0x665a5edc759ce9f9!8m2!3d37.5418684!4d126.9872103!16s%2Fg%2F11ryljn827?entry=tts","kakaoMapsUrl":"https://place.map.kakao.com/105543311","naverMapsUrl":"https://map.naver.com/p/entry/place/1542575646"}
033b4a23-f135-4b0e-bccc-39cce670b057	hongdaeff	VALID	2023-11-13 09:55:38.154149+00	2023-11-22 10:04:10.01443+00	KR	Seoul	1612217009	Club FF	https://clubff.modoo.at/	{"city_name": "Seoul, Korea", "city_id": 108259475871818, "latitude": 37.5689, "longitude": 126.977, "street_address": "\\uc11c\\uad50\\ub3d9 407-8 B1", "zip_code": null}	\N	\N	클럽 FF 	club-ff	{"googleMapsUrl":"https://www.google.com/maps/place/Club+FF/@37.5502162,126.9197151,17z/data=!3m1!4b1!4m6!3m5!1s0x357c98c551a3b5cf:0x127e441da94c0a2d!8m2!3d37.550212!4d126.92229!16s%2Fg%2F11c5smvbyn?entry=tts","kakaoMapsUrl":"https://place.map.kakao.com/13494735","naverMapsUrl":"https://map.naver.com/p/entry/place/20917624"}
0ba8c57f-6c80-4bf0-8ea4-b1d822fc0935	cafe.idaho	VALID	2023-11-13 09:55:38.154149+00	2023-11-22 10:04:10.317328+00	KR	Seoul	3237687906	Cafe IDAHO	https://linktr.ee/cafeidaho	{"city_name": "Seoul, Korea", "city_id": 108259475871818, "latitude": 37.51502, "longitude": 127.01648, "street_address": "39, \\ub3d9\\uad50\\ub85c, \\ub9c8\\ud3ec\\uad6c", "zip_code": "04018"}	\N	\N	아이다호	cafe-idaho	{"googleMapsUrl":"https://www.google.com/maps/place/Cafe+IDAHO/@37.5527392,126.9040041,17z/data=!3m1!4b1!4m6!3m5!1s0x357c992924537fc5:0x4eb4f49869981fc3!8m2!3d37.552735!4d126.906579!16s%2Fg%2F11dxpg1v7g?entry=tts","kakaoMapsUrl":"https://place.map.kakao.com/590013763","naverMapsUrl":"https://map.naver.com/p/entry/place/38248412"}
41a78e9f-8f24-4704-b6c7-2d3ee5d3482b	club_sharp	VALID	2023-11-13 09:55:38.154149+00	2023-11-22 10:04:10.881271+00	KR	Seoul	3872111936	Club SHARP	https://m.smartstore.naver.com/ggandomet/products/8913993539	{"city_name": "Seoul, Korea", "city_id": 108259475871818, "latitude": 37.51502, "longitude": 127.01648, "street_address": "\\ub9dd\\uc6d0\\ub3d9 384-23", "zip_code": "04018"}	\N	\N	\N	club-sharp	{"googleMapsUrl":"https://www.google.com/maps/place/Club+Sharp/@37.5534928,126.9084695,18.57z/data=!4m6!3m5!1s0x357c991e6073b49f:0xafd82c453ec8309c!8m2!3d37.5535776!4d126.9092268!16s%2Fg%2F11h1mk3x07?entry=tts","kakaoMapsUrl":"https://place.map.kakao.com/527881183","naverMapsUrl":"https://map.naver.com/p/entry/place/342057948"}
93e3b7f5-2667-4fea-b1ef-a7085da031be	seendosi	VALID	2023-11-13 09:55:38.154149+00	2023-11-22 10:04:11.432592+00	KR	Seoul	1797327081	seendosi	https://docs.google.com/forms/d/1ap7CArVYVWMmGQbcYS6_c1gUhb2TCygpEljNaskKhNk	{"city_name": "Seoul, Korea", "city_id": 108259475871818, "latitude": 37.51502, "longitude": 127.01648, "street_address": "\\uc911\\uad6c \\uc218\\ud45c\\ub3d9 11-2", "zip_code": "100-230"}	\N	\N	신도시	seendosi	{"googleMapsUrl":"https://www.google.com/maps/place/Seendosi/@37.5678148,126.9888711,17.46z/data=!4m6!3m5!1s0x357b44300ead5ac9:0xb0210bd95cb5170d!8m2!3d37.5677719!4d126.9907129!16s%2Fg%2F1tfqj9hc?entry=tts","kakaoMapsUrl":"https://place.map.kakao.com/27302182","naverMapsUrl":"https://map.naver.com/p/entry/place/870048846"}
dfe7890d-f2b8-48d8-95d8-04364d5b3641	echo.seoul	VALID	2023-11-13 09:55:38.154149+00	2023-11-22 10:04:12.294123+00	KR	Seoul	44768713112	ECHO	\N	{"city_name": "Seoul, Korea", "city_id": 108259475871818, "latitude": 37.51502, "longitude": 127.01648, "street_address": "hangangdaero 210-1 2F", "zip_code": "04353"}	\N	\N	\N	echo	{"googleMapsUrl":"https://www.google.com/maps/place/%EC%97%90%EC%BD%94+ECHO+%7C+MELODY+BAR/data=!3m1!4b1!4m6!3m5!1s0x357ca3a8da526017:0x6b3e86a32262ad85!8m2!3d37.5370432!4d126.9744386!16s%2Fg%2F11rgmzkdmk?entry=ttu","kakaoMapsUrl":"https://place.map.kakao.com/1517234066","naverMapsUrl":"https://map.naver.com/p/entry/place/1668678201"}
19b867be-7a3c-4c03-b589-69fed6692aa5	salon.moonbow	VALID	2023-11-16 06:52:39.080695+00	2023-11-22 10:04:14.839412+00	KR	Seoul	8668395296	Salon Moonbow	\N	{"city_name": null, "city_id": null, "latitude": null, "longitude": null, "street_address": null, "zip_code": null}	\N	\N	살롱문보우	salon-moonbow	{"googleMapsUrl":"https://www.google.com/maps/place/%EC%82%B4%EB%A1%B1%EB%AC%B8%EB%B3%B4%EC%9A%B0/@37.554076,126.9143283,15z/data=!4m2!3m1!1s0x0:0x6269e4176fe13d4b?sa=X&ved=2ahUKEwj9jYOZmteCAxVctVYBHSowBjsQ_BJ6BAhCEAA","kakaoMapsUrl":"https://place.map.kakao.com/38392222","naverMapsUrl":"https://map.naver.com/p/entry/place/1264465916"}
1da88627-ca2e-448f-ad41-021ca1d2fee8	senggistudio	VALID	2023-11-16 06:52:39.080695+00	2023-11-22 10:04:15.11382+00	KR	Seoul	7199069569	Senggi Studio	http://www.senggistudio.com/	\N	\N	\N	생기스튜디오	senggi-studio	{"googleMapsUrl":"https://www.google.com/maps/place/SENGGI+STUDIO/@37.5538634,126.9285831,15z/data=!4m2!3m1!1s0x0:0x474a7e70b3de7a28?sa=X&ved=2ahUKEwjDvsy5mteCAxXnk1YBHckpC4IQ_BJ6BAhKEAA","kakaoMapsUrl":"https://place.map.kakao.com/2138666623","naverMapsUrl":"https://map.naver.com/p/entry/place/1336128827"}
d3f45139-e3d8-4b82-9d22-ee5c84e6ea3e	kuchucamp_	VALID	2023-11-17 15:58:47.041737+00	2023-11-22 10:04:15.667615+00	KR	Seoul	14288111024	Kuchu Camp	http://kuchu-camp.net/	\N	\N	\N	공중캠프	kuchu-camp	{"googleMapsUrl":"https://www.google.com/maps/place/%EA%B3%B5%EC%A4%91%EC%BA%A0%ED%94%84+%E7%A9%BA%E4%B8%AD%E3%82%AD%E3%83%A3%E3%83%B3%E3%83%97+KUCHU-CAMP/@37.5542617,126.9298296,15z/data=!4m2!3m1!1s0x0:0xe35c9247002f3b6d?sa=X&ved=2ahUKEwigt-Cpm9eCAxX_efUHHQ5qCzoQ_BJ6BAhKEAA","kakaoMapsUrl":"https://place.map.kakao.com/12571532","naverMapsUrl":"https://map.naver.com/p/entry/place/1215598695"}
05a51ca8-6544-4ad1-8782-3415f2599cbe	jebidabang	VALID	2023-11-19 16:17:31.081033+00	2023-11-22 10:04:17.616622+00	KR	Seoul	2216472447	Jebidabang	http://jebidabang.com/	{"city_name": "Seoul, Korea", "city_id": 108259475871818, "latitude": 37.51502, "longitude": 127.01648, "street_address": "24, Wausan-ro, Mapo-gu", "zip_code": "04075"}	\N	\N	제비다방	jebidabang	{"googleMapsUrl":"https://www.google.com/maps/place/%EC%A0%9C%EB%B9%84%EB%8B%A4%EB%B0%A9/data=!4m6!3m5!1s0x357c98ce378bacab:0x50c5d81303cc1bd3!8m2!3d37.54656!4d126.9230958!16s%2Fg%2F1hc3j_y9y?entry=ttu","kakaoMapsUrl":"https://place.map.kakao.com/27194461","naverMapsUrl":"https://map.naver.com/p/entry/place/30830770"}
db7e25ef-6325-410f-91bf-4ed7bf8be0bb	the_vinyl_underground	INVALID	2023-11-13 09:55:39.125964+00	2023-11-22 10:04:17.89326+00	KR	Busan	8985573060	The Vinyl Underground	https://m.youtube.com/@bananamusicfriends/streams	{"city_name": null, "city_id": null, "latitude": null, "longitude": null, "street_address": null, "zip_code": null}	\N	\N	\N	the-vinyl-underground	{}
6900b9c1-1693-4bc6-8cb9-42238ff29322	basement_the_shizzle	VALID	2023-11-13 09:55:39.125964+00	2023-11-22 10:04:18.167831+00	KR	Busan	2053291325	Basement	https://www.facebook.com/groups/basementpub/	{"city_name": null, "city_id": null, "latitude": null, "longitude": null, "street_address": null, "zip_code": null}	\N	\N	\N	basement	{}
f41a2b7b-9a86-42a5-b809-103bcff3dba9	someday_bar	INVALID	2023-11-13 09:55:39.125964+00	2023-11-22 10:04:18.442392+00	KR	Busan	4856459305	Someday	\N	{"city_name": "Busan, South Korea", "city_id": 110643562296368, "latitude": 35.17795, "longitude": 129.07848, "street_address": "\\uae08\\uc815\\uad6c \\uc7a5\\uc804\\ub3d9 416-1(416-1 Jangjeon-dong, Geumjeong-gu)", "zip_code": "46290"}	\N	\N	\N	someday	{}
4aa00acf-67ab-4c50-913a-3246c617ec4f	clubrealize	VALID	2023-11-13 09:55:39.125964+00	2023-11-22 10:04:18.715209+00	KR	Busan	3235507547	Club Realize	http://clubrealize.modoo.at/	{"city_name": "Busan, South Korea", "city_id": 110643562296368, "latitude": 35.1796, "longitude": 129.076, "street_address": "\\uc218\\uc601\\uad6c \\uac10\\ud3ec\\ub85c8\\ubc88\\uae3815", "zip_code": "48277"}	\N	\N	\N	club-realize	{}
a56e4ff9-aea3-40e3-9a6f-1c0fea67c79a	ovantgarde	VALID	2023-11-13 09:55:39.125964+00	2023-11-22 10:04:18.988592+00	KR	Busan	7688067028	Ovantgarde	https://linktr.ee/ovantgarde	{"city_name": null, "city_id": null, "latitude": null, "longitude": null, "street_address": null, "zip_code": null}	\N	\N	\N	ovantgarde	{}
44fc3fb4-1f78-4dfc-a6c1-fa818ecea2ae	yugiche	INVALID	2023-11-16 06:52:44.004672+00	2023-11-22 10:04:19.259928+00	KR	Busan	18644741355	ORGANISM	\N	\N	\N	\N	유기체	organism	{}
62339fbe-f2bf-41f1-93e4-7abf3a87d9e4	ssmadang.cc	INVALID	2023-11-16 06:52:39.080695+00	2023-11-22 09:58:10.115658+00	KR	Chuncheon	2141111595	KT&G Sangsangmadang Chuncheon Arts Center	https://litt.ly/ssmd_cc	\N	\N	\N	상상마당 춘천	kt&g-sangsangmadang-chuncheon-arts-center	\N
95cb4b2e-3963-4ab6-8b89-713d5eb406e6	musinsagarage	VALID	2023-11-13 09:55:38.154149+00	2023-11-22 10:04:09.362484+00	KR	Seoul	52674517330	musinsa garage	http://linktr.ee/musinsagarage	{"city_name": "Seoul, Korea", "city_id": 108259475871818, "latitude": 37.51502, "longitude": 127.01648, "street_address": "\\ub9c8\\ud3ec\\uad6c \\uc794\\ub2e4\\ub9ac\\ub85c 32 B1", "zip_code": null}	\N	\N	무신사 개러지	musinsa-garage	{"googleMapsUrl":"https://www.google.com/maps/place/Musinsa+Garage/data=!4m6!3m5!1s0x357c99e21f281c77:0x37b8cb2577692919!8m2!3d37.5515437!4d126.9197803!16s%2Fg%2F11kc8f_3jc?entry=ttu","kakaoMapsUrl":"https://place.map.kakao.com/1123419577","naverMapsUrl":"https://map.naver.com/p/entry/place/1485838302"}
8f213163-5ac9-4879-9ca6-02cfc11c4b66	strangefruit.seoul	VALID	2023-11-13 09:55:38.154149+00	2023-11-22 10:04:11.156834+00	KR	Seoul	52526487250	Strange Fruit	https://m.facebook.com/strangefruit.seoul/	\N	\N	\N	스트레인지프룻	strange-fruit	{"googleMapsUrl":"https://www.google.com/maps/place/Strange+Fruit/data=!4m6!3m5!1s0x357c98c222924261:0x3d7ea674afd01a9b!8m2!3d37.5562073!4d126.9267788!16s%2Fg%2F11c5s_h07f?entry=ttu","kakaoMapsUrl":"https://place.map.kakao.com/8410605","naverMapsUrl":"https://map.naver.com/p/entry/place/38015320"}
b1354f14-8bc6-4630-895d-97f28b712b9f	channel1969.seoul	VALID	2023-11-13 09:55:38.154149+00	2023-11-22 10:04:11.718768+00	KR	Seoul	2045388969	channel 1969	https://linktr.ee/Channel1969	{"city_name": "Seoul, Korea", "city_id": 108259475871818, "latitude": 37.5689, "longitude": 126.977, "street_address": "\\ub9c8\\ud3ec\\uad6c \\uc5f0\\ub0a8\\ub3d9 227-1", "zip_code": "121-893"}	\N	\N	채널1969	channel-1969	{"googleMapsUrl":"https://www.google.com/maps/place/channel+1969/@37.5619063,126.9269777,15z/data=!4m2!3m1!1s0x0:0x3253f839b13a6516?sa=X&ved=2ahUKEwiz5sjCgteCAxV2cfUHHRJfCyMQ_BJ6BAhQEAA","kakaoMapsUrl":"https://place.map.kakao.com/24063521","naverMapsUrl":"https://map.naver.com/p/entry/place/36010630"}
c4286741-f287-42f9-834c-ad4952b18f17	morene__sukha	VALID	2023-11-13 09:55:38.154149+00	2023-11-22 10:04:12.012094+00	KR	Seoul	5319605251	Morene Sukha	https://linktr.ee/morene_sukha	{"city_name": "Seoul, Korea", "city_id": 108259475871818, "latitude": 37.51502, "longitude": 127.01648, "street_address": "2F, 7, Susaek-ro 4-gil, Seodaemun-gu", "zip_code": "03712"}	\N	\N	모래내 극락	morene-sukha	{"googleMapsUrl":"https://www.google.com/maps/place/%EB%AA%A8%EB%9E%98%EB%82%B4%EA%B7%B9%EB%9D%BD/data=!3m1!4b1!4m6!3m5!1s0x357c9960c1aa7dd9:0x160eb91052c04c71!8m2!3d37.5700168!4d126.9147081!16s%2Fg%2F11vd9pvjqz?entry=ttu","kakaoMapsUrl":"https://place.map.kakao.com/1929678823","naverMapsUrl":"https://map.naver.com/p/entry/place/1598263527"}
17db08c1-1d74-4361-b6f2-8d24598060a2	unplugged_stage	VALID	2023-11-16 06:52:39.080695+00	2023-11-22 10:04:12.886764+00	KR	Seoul	51400950694	Cafe Unplugged	https://linktr.ee/cafe.unplugged	\N	\N	\N	언플러그드	cafe-unplugged	{"googleMapsUrl":"https://www.google.com/maps/place/Cafe+Unplugged/@37.5554289,126.929198,15z/data=!4m2!3m1!1s0x0:0xd21b907482b4abae?sa=X&ved=2ahUKEwi6_oOglteCAxVIaN4KHa8SBSIQ_BJ6BAhAEAA","kakaoMapsUrl":"https://place.map.kakao.com/27301267","naverMapsUrl":"https://map.naver.com/p/entry/place/34016066"}
bbb07824-b660-4f8a-a841-be5b779c5937	youkillbong	VALID	2023-11-16 06:52:39.080695+00	2023-11-22 10:04:13.708297+00	KR	Seoul	10216307478	Yug-Ilbong	https://links.vip/youkillbong	\N	\N	\N	육일봉	yug-ilbong	{"googleMapsUrl":"https://www.google.com/maps/place/Yug-Ilbong/@37.5654653,126.9933588,15z/data=!4m2!3m1!1s0x0:0x713e306e793cff29?sa=X&ved=2ahUKEwi0sbLPl9eCAxVKavUHHYsWC9IQ_BJ6BAhGEAA","kakaoMapsUrl":"https://place.map.kakao.com/683616569","naverMapsUrl":"https://map.naver.com/p/entry/place/1703934087"}
2d722f4d-a824-496b-9de2-813ebc4be4f1	mudaeruk	VALID	2023-11-16 06:52:39.080695+00	2023-11-22 10:04:13.995383+00	KR	Seoul	1072378527	Mudaeruk	https://linktr.ee/mudaeruk	{"city_name": "Seoul, Korea", "city_id": 108259475871818, "latitude": 37.51502, "longitude": 127.01648, "street_address": "\\ub9c8\\ud3ec\\uad6c \\ud1a0\\uc815\\ub85c5\\uae38 12", "zip_code": null}	\N	\N	무대륙	mudaeruk	{"googleMapsUrl":"https://www.google.com/maps/place/mu/@37.5459415,126.9184557,15z/data=!4m2!3m1!1s0x0:0xf3df26bd0a1eccac?sa=X&ved=2ahUKEwiV7cvtl9eCAxVNcfUHHQstCUQQ_BJ6BAhSEAA","kakaoMapsUrl":"https://place.map.kakao.com/7876611","naverMapsUrl":"https://map.naver.com/p/entry/place/31010062"}
379ce164-2bc5-4d25-9557-adf98fdc4bc6	gongsangondo	VALID	2023-11-17 15:58:47.041737+00	2023-11-22 10:04:15.389907+00	KR	Seoul	2326295223	Gong Sang Ondo	https://linktr.ee/gongsangondo	{"city_name": "Seoul, Korea", "city_id": 108259475871818, "latitude": 37.51502, "longitude": 127.01648, "street_address": "\\ub9c8\\ud3ec\\uad6c \\ub3d9\\uad50\\ub85c23\\uae38 40", "zip_code": "03992"}	\N	\N	공상온도	gong-sang-ondo	{"googleMapsUrl":"https://www.google.com/maps/place/%EA%B3%B5%EC%83%81%EC%98%A8%EB%8F%84/@37.5575945,126.9197307,15z/data=!4m2!3m1!1s0x0:0x1b33dc40fc2964c0?sa=X&ved=2ahUKEwiugoHjmteCAxUbrlYBHSkwBg0Q_BJ6BAhJEAA","kakaoMapsUrl":"https://place.map.kakao.com/27379281","naverMapsUrl":"https://map.naver.com/p/entry/place/37438798"}
36023ce6-a3d6-4467-8bb3-081cb204e6e1	club_victim	VALID	2023-11-17 15:58:47.041737+00	2023-11-22 10:04:15.948163+00	KR	Seoul	61689574268	Club Victim	\N	{"city_name": null, "city_id": null, "latitude": null, "longitude": null, "street_address": null, "zip_code": null}	\N	\N	\N	club-victim	{"googleMapsUrl":"https://www.google.com/maps/place/53+Wausan-ro,+Mapo-gu,+Seoul/data=!4m2!3m1!1s0x357c98cff15c776b:0x84b8a9552a2ee10a?sa=X&ved=2ahUKEwjg3PbdndeCAxW0c_UHHaAUCO0Q8gF6BAgPEAA","kakaoMapsUrl":"https://place.map.kakao.com/1739134352","naverMapsUrl":"https://map.naver.com/p/entry/place/37792895"}
7590b1c8-fee7-40ba-8684-eb715dacedb9	spacestation2017	VALID	2023-11-17 15:58:47.041737+00	2023-11-22 10:04:16.509786+00	KR	Seoul	5795231359	Space Station	https://linktr.ee/spacestation.hongdae	{"city_name": "Seoul, Korea", "city_id": 108259475871818, "latitude": 37.51502, "longitude": 127.01648, "street_address": "B1, 144, Eoulmadang-ro,Mapo-gu", "zip_code": "04053"}	\N	\N	우주정거장	space-station	{"googleMapsUrl":"https://www.google.com/maps/place/%ED%99%8D%EB%8C%80+%EC%9A%B0%EC%A3%BC%EC%A0%95%EA%B1%B0%EC%9E%A5/@37.5549892,126.9289772,15z/data=!4m2!3m1!1s0x0:0xf5cb7e0790279ff3?sa=X&ved=2ahUKEwjSjcOrnteCAxU1bvUHHXXrBjgQ_BJ6BAhNEAA","kakaoMapsUrl":"https://place.map.kakao.com/1964441344","naverMapsUrl":"https://map.naver.com/p/entry/place/58461702"}
6b9bbbbf-dabb-465b-8c53-2f1883fbc922	acs.kr	VALID	2023-11-17 15:58:47.041737+00	2023-11-22 10:04:17.068076+00	KR	Seoul	15892990437	ACS	https://forms.gle/951B894PtDpU8rhC7	{"city_name": "Seoul, Korea", "city_id": 108259475871818, "latitude": 37.51502, "longitude": 127.01648, "street_address": "\\uc11c\\uc6b8\\ud2b9\\ubcc4\\uc2dc, \\uc218\\ud45c\\ub85c6\\uae38 10 B1", "zip_code": "04554"}	\N	\N	에이씨YES	acs	{"googleMapsUrl":"https://www.google.com/maps/place//data=!4m5!1m2!2m1!1z7KSR6rWsIOyImO2RnOuhnDbquLggMTAg7KeA7ZWYMey4tQ!3m1!15sCiLspJHqtawg7IiY7ZGc66GcNuq4uCAxMCDsp4DtlZgx7Li1kgEQY29tcG91bmRfc2VjdGlvbuABAA?entry=ttu","kakaoMapsUrl":"https://place.map.kakao.com/1588455849","naverMapsUrl":"https://map.naver.com/p/entry/place/1679293200"}
bd66786f-c8e0-4615-ae2e-af0b8ad0bca5	hukezliveinfo	VALID	2023-11-17 15:58:47.041737+00	2023-11-22 10:04:17.345864+00	KR	Seoul	5643973451	HUKEZ LIVE HALL	https://m.place.naver.com/place/1717890293/home?entry=pll	\N	\N	\N	후케즈	hukez-live-hall	{"googleMapsUrl":"https://www.google.com/maps/place/Hukejeu/data=!4m6!3m5!1s0x357c9f485bcd3871:0x7e5b3fb1f7deaf14!8m2!3d37.5118681!4d126.8932476!16s%2Fg%2F11g0g6596p?entry=ttu","kakaoMapsUrl":"https://place.map.kakao.com/1820434609","naverMapsUrl":"https://map.naver.com/p/entry/place/1717890293"}
c3893cc9-e88f-461c-a784-81e341a2c8f0	rollinghall	VALID	2023-11-16 06:52:39.080695+00	2023-11-22 10:04:12.585532+00	KR	Seoul	1638310834	Rolling Hall	https://link.inpock.co.kr/rollinghall	\N	\N	\N	롤링홀	rolling-hall	{"googleMapsUrl":"https://www.google.com/maps/place/Rolling+Hall/data=!4m14!1m7!3m6!1s0x357c98d04c6b5451:0xb4eb7364af33a4e!2sRolling+Hall!8m2!3d37.5483606!4d126.9200362!16s%2Fg%2F1tcwtns7!3m5!1s0x357c98d04c6b5451:0xb4eb7364af33a4e!8m2!3d37.5483606!4d126.9200362!16s%2Fg%2F1tcwtns7?entry=ttu","kakaoMapsUrl":"https://place.map.kakao.com/7854938","naverMapsUrl":"https://map.naver.com/p/entry/place/11574607"}
24d49261-916c-4f4d-8d20-5d77c5d6e236	space_hangang	VALID	2023-11-16 06:52:39.080695+00	2023-11-22 10:04:13.160817+00	KR	Seoul	33140215587	Space Hangang	https://linktr.ee/spacehangang	{"city_name": null, "city_id": null, "latitude": null, "longitude": null, "street_address": null, "zip_code": null}	\N	\N	스페이스 한강	space-hangang	{"googleMapsUrl":"https://www.google.com/maps/place/Space+Hangang+Live+Club/@37.5532595,126.9276121,15z/data=!4m2!3m1!1s0x0:0x58f4cc31d7fef342?sa=X&ved=2ahUKEwik6bDUlteCAxXogK8BHeikB6cQ_BJ6BAg-EAA","kakaoMapsUrl":"https://place.map.kakao.com/1178862249","naverMapsUrl":"https://map.naver.com/p/entry/place/1991841630"}
c32097e8-abbb-4b61-937a-437705706ba9	club_onair	VALID	2023-11-16 06:52:39.080695+00	2023-11-22 10:04:13.434372+00	KR	Seoul	48208483180	Club ON-AIR	https://linktr.ee/club_onair	{"city_name": "Seoul, Korea", "city_id": 108259475871818, "latitude": 37.51502, "longitude": 127.01648, "street_address": "\\uc11c\\uc6b8\\ud2b9\\ubcc4\\uc2dc \\ub9c8\\ud3ec\\uad6c, \\uc794\\ub2e4\\ub9ac\\ub85c44, 1\\uce35 \\ud074\\ub7fd\\uc628\\uc5d0\\uc5b4", "zip_code": "04038"}	\N	\N	클럽온에어	club-on-air	{"googleMapsUrl":"https://www.google.com/maps/place/%ED%81%B4%EB%9F%BD+%EC%98%A8%EC%97%90%EC%96%B4/@37.5522853,126.9188982,15z/data=!4m2!3m1!1s0x0:0xe22e0ecd778c6b37?sa=X&ved=2ahUKEwjwlfWCl9eCAxWidvUHHX--DIwQ_BJ6BAhCEAA","kakaoMapsUrl":"https://place.map.kakao.com/1897701926","naverMapsUrl":"https://map.naver.com/p/entry/place/1196131538"}
7aa611e8-00d2-4ee9-a7cb-d834914e05a9	kill_the_youtube	VALID	2023-11-16 06:52:39.080695+00	2023-11-22 10:04:14.270394+00	KR	Seoul	52542916050	Kill the youtube	https://linktr.ee/kill_the_youtube	\N	\N	\N	킬더유튜브	kill-the-youtube	{"googleMapsUrl":"https://www.google.com/maps/place/%ED%82%AC%EB%8D%94%EC%9C%A0%ED%8A%9C%EB%B8%8C/@37.5589875,126.9460446,15z/data=!4m2!3m1!1s0x0:0x63ff528af0aff85a?sa=X&ved=2ahUKEwi5q5GZmNeCAxV7s1YBHSYCD0QQ_BJ6BAg3EAA","kakaoMapsUrl":"https://place.map.kakao.com/299516296","naverMapsUrl":"https://map.naver.com/p/entry/place/1564017134"}
0b6efad7-5d7e-45ab-b87f-0a757270a2ef	tonestudio_kr	VALID	2023-11-16 06:52:39.080695+00	2023-11-22 10:04:14.56166+00	KR	Seoul	5507730219	TONE Studio	https://linktr.ee/tonestudio	{"city_name": "Seoul, Korea", "city_id": 108259475871818, "latitude": 37.51502, "longitude": 127.01648, "street_address": "\\ub9c8\\ud3ec\\uad6c \\uc131\\ubbf8\\uc0b0\\ub85c 64-5 \\ud1a4\\uc2a4\\ud29c\\ub514\\uc624 \\ube4c\\ub529", "zip_code": "03999"}	\N	\N	톤스튜디오	tone-studio	{"googleMapsUrl":"https://www.google.com/maps/place/%ED%86%A4%EC%8A%A4%ED%8A%9C%EB%94%94%EC%98%A4/@37.5593385,126.9154517,15z/data=!4m2!3m1!1s0x0:0xc1b5088a364f27f4?sa=X&ved=2ahUKEwikx6GImteCAxV3sFYBHUB_CEUQ_BJ6BAhEEAA","kakaoMapsUrl":"https://place.map.kakao.com/25903348","naverMapsUrl":"https://map.naver.com/p/entry/place/12762159"}
103f128a-3871-47d5-975d-997a6f6bc7cb	petsoundsmusicpub	VALID	2023-11-17 15:58:47.041737+00	2023-11-22 10:04:16.236997+00	KR	Seoul	1550111592	Pet Sounds Music Pub	http://beacons.ai/subriot	{"city_name": "Seoul, Korea", "city_id": 108259475871818, "latitude": 37.51502, "longitude": 127.01648, "street_address": "Seoul Yongsan-Gu Hoenamu-ro 21 (3F) | 5PM-3AM", "zip_code": "04343"}	\N	\N	뮤직펍 펫사운즈	pet-sounds-music-pub	{"googleMapsUrl":"https://www.google.com/maps/place/Pet+sounds/@37.5391661,126.9889974,15z/data=!4m2!3m1!1s0x0:0xe87854ec77c0d48e?sa=X&ved=2ahUKEwjLs7DondeCAxV-ZvUHHZRSDo4Q_BJ6BAhIEAA","kakaoMapsUrl":"https://place.map.kakao.com/24584237","naverMapsUrl":"https://map.naver.com/p/entry/place/35045009"}
fd10a0cc-1c63-460b-aa79-108fb1383dc7	zak_eun_mul	VALID	2023-11-17 15:58:47.041737+00	2023-11-22 10:04:16.788422+00	KR	Seoul	5523339688	Zak Eun Mul	https://url.kr/snkibv	{"city_name": "Seoul, Korea", "city_id": 108259475871818, "latitude": 37.5689, "longitude": 126.977, "street_address": "\\ub300\\ud55c\\ubbfc\\uad6d \\uc11c\\uc6b8\\ud2b9\\ubcc4\\uc2dc \\uc911\\uad6c \\uc744\\uc9c0\\ub85c3\\uac00 285-1", "zip_code": null}	\N	\N	작은물	zak-eun-mul	{"googleMapsUrl":"https://www.google.com/maps/place/%EC%9E%91%EC%9D%80%EB%AC%BC/@37.565998,126.993499,15z/data=!4m2!3m1!1s0x0:0x12eddd5bddd514b3?sa=X&ved=2ahUKEwiRjaf3nteCAxXYNt4KHb9JBvgQ_BJ6BAhEEAA","kakaoMapsUrl":"https://place.map.kakao.com/1902404148","naverMapsUrl":"https://map.naver.com/p/entry/place/1883387105"}
\.


--
-- Data for Name: music_event; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."music_event" ("id", "link", "review_status", "venue_id", "created_at", "updated_at", "start_date_time", "event_type", "is_free", "slug") FROM stdin;
8940a0dd-b29c-4c13-8881-b67b3c35bcf4	https://www.instagram.com/p/C0EbmUipUOP/	PENDING	033b4a23-f135-4b0e-bccc-39cce670b057	2023-11-25 16:00:27.905971+00	2023-11-25 16:00:27.905971+00	2023-12-16 11:30:00+00	CONCERT	f	club-ff-8940a0dd
6548f173-22a2-4d04-b7d3-181d2aa261f5	https://www.instagram.com/p/C0EWHjgJyI8/	PENDING	033b4a23-f135-4b0e-bccc-39cce670b057	2023-11-25 16:00:27.947806+00	2023-11-25 16:00:27.947806+00	2023-11-24 15:00:00+00	CONCERT	f	club-ff-6548f173
abcc719a-ae84-4306-b495-75c1a9f235e9	https://www.instagram.com/p/C0BkVWjLEAl/	PENDING	033b4a23-f135-4b0e-bccc-39cce670b057	2023-11-25 16:00:27.97496+00	2023-11-25 16:00:27.97496+00	2023-12-21 11:00:00+00	CONCERT	f	club-ff-abcc719a
d1df7987-47c9-4467-9375-df46fcc5fe56	https://www.instagram.com/p/C0BHRSArY96/	PENDING	033b4a23-f135-4b0e-bccc-39cce670b057	2023-11-25 16:00:28.003869+00	2023-11-25 16:00:28.003869+00	2023-12-07 11:00:00+00	CONCERT	f	club-ff-d1df7987
a689818f-299d-4d15-bfd8-8478f980b5a1	https://www.instagram.com/p/C0DZiy4JR9H/	PENDING	05a51ca8-6544-4ad1-8782-3415f2599cbe	2023-11-25 16:00:53.535911+00	2023-11-25 16:00:53.535911+00	2023-08-15 11:00:00+00	CONCERT	t	jebidabang-a689818f
bd955f49-4d9e-4ce7-a924-2599c2136289	https://www.instagram.com/p/C0DGbKjywld/	PENDING	36023ce6-a3d6-4467-8bb3-081cb204e6e1	2023-11-25 16:01:53.473035+00	2023-11-25 16:01:53.473035+00	2023-12-01 10:30:00+00	CONCERT	f	club-victim-bd955f49
15978768-8803-440b-8906-623781ef2fac	https://www.instagram.com/p/C0DnY_0LS7n/	PENDING	103f128a-3871-47d5-975d-997a6f6bc7cb	2023-11-25 16:03:10.263394+00	2023-11-25 16:03:10.263394+00	2023-11-25 10:00:00+00	CONCERT	t	pet-sounds-music-pub-15978768
ff7d6ac0-49df-416f-84e4-c1037dc97e05	https://www.instagram.com/p/C0Gk9nKOzkH/	PENDING	0ba8c57f-6c80-4bf0-8ea4-b1d822fc0935	2023-11-26 16:01:03.505757+00	2023-11-26 16:01:03.505757+00	2023-12-02 11:00:00+00	CONCERT	t	cafe-idaho-ff7d6ac0
7e24ab9a-c5a0-4900-b0be-ffad6af9487d	https://www.instagram.com/p/C0GUF22uXoT/	PENDING	0ba8c57f-6c80-4bf0-8ea4-b1d822fc0935	2023-11-26 16:01:03.535538+00	2023-11-26 16:01:03.535538+00	2023-12-01 11:00:00+00	CONCERT	t	cafe-idaho-7e24ab9a
e30320a6-b5db-45b8-866b-8b2726e2faab	https://www.instagram.com/p/C0GHZ9QLaR_/	PENDING	41a78e9f-8f24-4704-b6c7-2d3ee5d3482b	2023-11-26 16:01:11.895968+00	2023-11-26 16:01:11.895968+00	2023-12-23 09:00:00+00	CONCERT	f	club-sharp-e30320a6
88979299-bf34-45e4-b377-df26b34c7cc6	https://www.instagram.com/p/C0GnM3dLyo6/	PENDING	1da88627-ca2e-448f-ad41-021ca1d2fee8	2023-11-26 16:01:27.240067+00	2023-11-26 16:01:27.240067+00	2023-12-29 10:30:00+00	CONCERT	f	senggi-studio-88979299
04436f93-45e2-41fb-9a87-261cb7da806e	https://www.instagram.com/p/C0F5c2XpmTf/	PENDING	05a51ca8-6544-4ad1-8782-3415f2599cbe	2023-11-26 16:01:43.600679+00	2023-11-26 16:01:43.600679+00	2023-10-15 11:00:00+00	CONCERT	t	jebidabang-04436f93
9761df06-0f89-4bd0-845b-028b470ebb66	https://www.instagram.com/p/C0G8EKfJdf2/	PENDING	17db08c1-1d74-4361-b6f2-8d24598060a2	2023-11-26 16:02:30.579915+00	2023-11-26 16:02:30.579915+00	2023-12-09 06:00:00+00	CONCERT	f	cafe-unplugged-9761df06
a0a3cf80-fd56-48e9-bfd9-ed887ada3aa3	https://www.instagram.com/p/C0Gzad9L96B/	PENDING	36023ce6-a3d6-4467-8bb3-081cb204e6e1	2023-11-26 16:03:00.687112+00	2023-11-26 16:03:00.687112+00	2023-12-02 10:30:00+00	CONCERT	f	club-victim-a0a3cf80
a798a510-744b-4f83-971c-31f80e21cc38	https://www.instagram.com/p/C0GvgYILJxj/	PENDING	24d49261-916c-4f4d-8d20-5d77c5d6e236	2023-11-26 16:03:33.740995+00	2023-11-26 16:03:33.740995+00	2023-12-08 11:00:00+00	CONCERT	f	space-hangang-a798a510
20c11434-aee9-4230-ab98-a4c7edcf7c04	https://www.instagram.com/p/C0GkkANLw83/	PENDING	103f128a-3871-47d5-975d-997a6f6bc7cb	2023-11-26 16:03:54.093792+00	2023-11-26 16:03:54.093792+00	2023-11-28 11:00:00+00	CONCERT	f	pet-sounds-music-pub-20c11434
7c8e2038-85da-4901-9786-25e93111c39d	https://www.instagram.com/p/CzX_wfCrYeI/	VALID	17db08c1-1d74-4361-b6f2-8d24598060a2	2023-11-16 17:02:49.648001+00	2023-11-25 10:11:02.546724+00	2023-11-13 11:00:00+00	CONCERT	f	cafe-unplugged-7c8e2038
4081560c-7f34-4c61-8f84-43319bd7b6a3	https://www.instagram.com/p/C0JyOhOJtwn/	PENDING	033b4a23-f135-4b0e-bccc-39cce670b057	2023-11-27 16:00:23.653498+00	2023-11-27 16:00:23.653498+00	2023-12-10 08:20:00+00	CONCERT	f	club-ff-4081560c
f4c44720-f8fe-429b-920c-7f189daf7e11	https://www.instagram.com/p/C0J0R7iJtFp/	PENDING	41a78e9f-8f24-4704-b6c7-2d3ee5d3482b	2023-11-27 16:00:38.269408+00	2023-11-27 16:00:38.269408+00	2023-12-01 11:00:00+00	CONCERT	f	club-sharp-f4c44720
348ad4fe-f94a-4c51-9585-f1af1cccf6c9	https://www.instagram.com/p/C0JCrz5OuT9/	PENDING	c4286741-f287-42f9-834c-ad4952b18f17	2023-11-27 16:01:35.851626+00	2023-11-27 16:01:35.851626+00	2023-11-26 10:00:00+00	CONCERT	f	morene-sukha-348ad4fe
e670a0ef-8edf-4b03-9f7d-e60d818b4ba2	https://www.instagram.com/p/C0JDWkArWmi/	PENDING	17db08c1-1d74-4361-b6f2-8d24598060a2	2023-11-27 16:01:44.153193+00	2023-11-27 16:01:44.153193+00	2023-12-14 11:00:00+00	CONCERT	f	cafe-unplugged-e670a0ef
14f8a3be-c425-4edd-8556-e7956236bf88	https://www.instagram.com/p/C0I8veFLoCQ/	PENDING	c3893cc9-e88f-461c-a784-81e341a2c8f0	2023-11-27 16:02:25.09193+00	2023-11-27 16:02:25.09193+00	2023-12-23 09:00:00+00	CONCERT	f	rolling-hall-14f8a3be
a769a77b-5d4b-42d1-89e2-76b01e2da7d5	https://www.instagram.com/p/C0JUSBTJMNk/	PENDING	fd10a0cc-1c63-460b-aa79-108fb1383dc7	2023-11-27 16:03:14.412534+00	2023-11-27 16:03:14.412534+00	2023-12-03 10:00:00+00	CONCERT	f	zak-eun-mul-a769a77b
94e4f54b-1a92-4e2c-84d7-9dc5cf6bf1a9	https://www.instagram.com/p/C0L1kB6LEWj/	PENDING	033b4a23-f135-4b0e-bccc-39cce670b057	2023-11-28 16:00:21.963869+00	2023-11-28 16:00:21.963869+00	2023-11-30 14:00:00+00	CONCERT	f	club-ff-94e4f54b
488d9ca6-ac12-4f83-a735-1da8a55055c3	https://www.instagram.com/p/C0LdslarxQR/	PENDING	033b4a23-f135-4b0e-bccc-39cce670b057	2023-11-28 16:00:21.996735+00	2023-11-28 16:00:21.996735+00	2023-12-15 10:00:00+00	CONCERT	f	club-ff-488d9ca6
e9c967f3-b663-4541-a18b-2ce37ba5b767	https://www.instagram.com/p/C0KuYfXyR3O/	PENDING	1da88627-ca2e-448f-ad41-021ca1d2fee8	2023-11-28 16:00:52.276531+00	2023-11-28 16:00:52.276531+00	2023-12-15 10:30:00+00	CONCERT	f	senggi-studio-e9c967f3
9d46cb44-dc9b-4cbc-90b0-28b619da4b99	https://www.instagram.com/p/C0LqGvFLs1A/	PENDING	a56e4ff9-aea3-40e3-9a6f-1c0fea67c79a	2023-11-28 16:01:15.062565+00	2023-11-28 16:01:15.062565+00	2023-11-29 12:00:00+00	CONCERT	t	ovantgarde-9d46cb44
0f853f39-d94a-470b-b441-547d8ba3ce46	https://www.instagram.com/p/C0MgRuzJqS_/	PENDING	bbb07824-b660-4f8a-a841-be5b779c5937	2023-11-28 16:01:43.347162+00	2023-11-28 16:01:43.347162+00	2023-12-25 08:00:00+00	CONCERT	t	yug-ilbong-0f853f39
a1a59fdd-ef03-45ae-a124-62733a577e44	https://www.instagram.com/p/C0MgOSnJ8SE/	PENDING	bbb07824-b660-4f8a-a841-be5b779c5937	2023-11-28 16:01:43.369176+00	2023-11-28 16:01:43.369176+00	2023-12-24 08:00:00+00	CONCERT	t	yug-ilbong-a1a59fdd
ce5e1c36-7f45-49a5-97c0-994c5c47b532	https://www.instagram.com/p/C0MgJixp2C9/	PENDING	bbb07824-b660-4f8a-a841-be5b779c5937	2023-11-28 16:01:43.390907+00	2023-11-28 16:01:43.390907+00	2023-12-23 08:00:00+00	CONCERT	t	yug-ilbong-ce5e1c36
c2f5f116-1add-4d3b-a3d4-7602b768989d	https://www.instagram.com/p/CzaotXlRNSS/	VALID	95cb4b2e-3963-4ab6-8b89-713d5eb406e6	2023-11-13 11:43:36.671335+00	2023-11-25 10:11:02.546724+00	2023-12-02 10:00:00+00	CONCERT	f	musinsa-garage-c2f5f116
cf1b884d-a06b-48fb-a33e-ed8c72e4759b	https://www.instagram.com/p/CzYTZ7uxpbG/	VALID	95cb4b2e-3963-4ab6-8b89-713d5eb406e6	2023-11-13 11:43:37.402687+00	2023-11-25 10:11:02.546724+00	2023-11-18 10:00:00+00	CONCERT	f	musinsa-garage-cf1b884d
140d3d59-bf43-4be3-900d-ecf7e1fc2c97	https://www.instagram.com/p/CzGX9SfxYnn/	VALID	95cb4b2e-3963-4ab6-8b89-713d5eb406e6	2023-11-13 11:43:38.599857+00	2023-11-25 10:11:02.546724+00	2023-11-19 12:00:00+00	CONCERT	f	musinsa-garage-140d3d59
557c0193-1d5f-4ed4-b240-6e5af39ea0ca	https://www.instagram.com/p/CzDNe-MRXVK/	VALID	95cb4b2e-3963-4ab6-8b89-713d5eb406e6	2023-11-13 11:43:39.639903+00	2023-11-25 10:11:02.546724+00	2024-03-02 10:00:00+00	CONCERT	f	musinsa-garage-557c0193
ce6d87fc-445e-44dc-b77b-75775f31d8dd	https://www.instagram.com/p/CykbGGZRPGh/	VALID	95cb4b2e-3963-4ab6-8b89-713d5eb406e6	2023-11-13 11:43:40.370384+00	2023-11-25 10:11:02.546724+00	2023-11-24 11:00:00+00	CONCERT	f	musinsa-garage-ce6d87fc
01857980-4636-4f30-b94a-cb26104be3e4	https://www.instagram.com/p/CzAyzscr6hN/	VALID	033b4a23-f135-4b0e-bccc-39cce670b057	2023-11-13 11:43:44.683506+00	2023-11-25 10:11:02.546724+00	2023-11-12 08:00:00+00	CONCERT	f	club-ff-01857980
1dec53a5-c73c-4637-842a-bb7f68adc22f	https://www.instagram.com/p/CziPNvALWt6/	VALID	033b4a23-f135-4b0e-bccc-39cce670b057	2023-11-13 11:43:46.241357+00	2023-11-25 10:11:02.546724+00	2023-11-25 08:00:00+00	DJ	f	club-ff-1dec53a5
e2556d92-e54f-402c-8f70-08900266affd	https://www.instagram.com/p/Czf1L6lLaT6/	VALID	033b4a23-f135-4b0e-bccc-39cce670b057	2023-11-13 11:43:47.302822+00	2023-11-25 10:11:02.546724+00	2023-11-12 12:00:00+00	DJ	f	club-ff-e2556d92
71e3cdd4-885c-46fd-b398-603909a0d0e2	https://www.instagram.com/p/CzdhhhVJPmw/	VALID	033b4a23-f135-4b0e-bccc-39cce670b057	2023-11-13 11:43:48.867941+00	2023-11-25 10:11:02.546724+00	2023-11-23 11:00:00+00	CONCERT	f	club-ff-71e3cdd4
f38c708e-c393-4ec1-909f-f8873e48a8c2	https://www.instagram.com/p/CzWI4YcLWgB/	VALID	033b4a23-f135-4b0e-bccc-39cce670b057	2023-11-13 11:43:49.928563+00	2023-11-25 10:11:02.546724+00	2023-11-09 14:00:00+00	DJ	f	club-ff-f38c708e
da839fce-f357-41a1-9803-be1235106fa6	https://www.instagram.com/p/CzN6hLOLtw2/	VALID	033b4a23-f135-4b0e-bccc-39cce670b057	2023-11-13 11:43:51.455+00	2023-11-25 10:11:02.546724+00	2023-11-16 11:00:00+00	CONCERT	f	club-ff-da839fce
afbbcd87-e355-4e02-86ca-b88ced6b4f79	https://www.instagram.com/p/CzENxhxrJQn/	VALID	033b4a23-f135-4b0e-bccc-39cce670b057	2023-11-13 11:43:52.05434+00	2023-11-25 10:11:02.546724+00	2023-11-02 14:00:00+00	DJ	f	club-ff-afbbcd87
ff692c9b-3079-4fed-ab09-4a1ca9384a65	https://www.instagram.com/p/CzQ_7wzLqIr/	VALID	0ba8c57f-6c80-4bf0-8ea4-b1d822fc0935	2023-11-13 11:43:54.511779+00	2023-11-25 10:11:02.546724+00	2023-11-12 11:00:00+00	CONCERT	t	cafe-idaho-ff692c9b
303614a1-ae0b-4f2d-b657-59557a019e52	https://www.instagram.com/p/CzQ9zl-rSkL/	VALID	0ba8c57f-6c80-4bf0-8ea4-b1d822fc0935	2023-11-13 11:43:55.33341+00	2023-11-25 10:11:02.546724+00	2023-11-11 11:00:00+00	CONCERT	t	cafe-idaho-303614a1
4993266e-5f2c-4925-9421-0ca22fba1dc5	https://www.instagram.com/p/CzQ8VqoLWwI/	VALID	0ba8c57f-6c80-4bf0-8ea4-b1d822fc0935	2023-11-13 11:43:56.22608+00	2023-11-25 10:11:02.546724+00	2023-11-10 11:00:00+00	CONCERT	t	cafe-idaho-4993266e
4fa9f909-09c9-4785-8adc-aaa294e5cc01	https://www.instagram.com/p/CzbQtr6JJeR/	VALID	22bf8781-f550-49cd-acbc-ddcbd244a3b7	2023-11-13 11:44:00.182412+00	2023-11-25 10:11:02.546724+00	2023-10-08 11:00:00+00	CONCERT	f	the-studio-hbc-4fa9f909
905d99c7-f0d4-40e7-b351-47e5f06b5f84	https://www.instagram.com/p/Cy8aIJOLvT0/	VALID	22bf8781-f550-49cd-acbc-ddcbd244a3b7	2023-11-13 11:44:01.010855+00	2023-11-25 10:11:02.546724+00	2023-10-27 15:00:00+00	CONCERT	f	the-studio-hbc-905d99c7
242e13f8-cab3-439c-8cf8-b94ff3488411	https://www.instagram.com/p/CzOWGTULQUd/	VALID	41a78e9f-8f24-4704-b6c7-2d3ee5d3482b	2023-11-13 11:44:05.789996+00	2023-11-25 10:11:02.546724+00	2023-12-10 08:00:00+00	CONCERT	f	club-sharp-242e13f8
db631db9-d9c5-40d2-82ef-6eee5273b4e3	https://www.instagram.com/p/CxcglEmra2x/	VALID	41a78e9f-8f24-4704-b6c7-2d3ee5d3482b	2023-11-13 11:44:07.751309+00	2023-11-25 10:11:02.546724+00	2023-10-07 09:00:00+00	CONCERT	f	club-sharp-db631db9
aeaffdc4-cdd4-4226-9027-de4316c568fc	https://www.instagram.com/p/CzgKJJdJ_Ln/	VALID	8f213163-5ac9-4879-9ca6-02cfc11c4b66	2023-11-13 11:44:10.646221+00	2023-11-25 10:11:02.546724+00	2023-11-26 12:00:00+00	CONCERT	f	strange-fruit-aeaffdc4
7d905c79-3456-4f7d-b6b9-9e77e0716305	https://www.instagram.com/p/CzdE-uCrpJh/	VALID	8f213163-5ac9-4879-9ca6-02cfc11c4b66	2023-11-13 11:44:11.687972+00	2023-11-25 10:11:02.546724+00	2023-11-16 11:00:00+00	CONCERT	t	strange-fruit-7d905c79
dd94532c-ac3e-42fa-bb12-461875e61ff2	https://www.instagram.com/p/CzC6ELQpz_g/	VALID	8f213163-5ac9-4879-9ca6-02cfc11c4b66	2023-11-13 11:44:13.282011+00	2023-11-25 10:11:02.546724+00	2023-11-10 14:59:00+00	DJ	f	strange-fruit-dd94532c
89938cda-7e13-4708-88b5-61cc3dcf6011	https://www.instagram.com/p/Cy74EViJLMa/	VALID	8f213163-5ac9-4879-9ca6-02cfc11c4b66	2023-11-13 11:44:14.267571+00	2023-11-25 10:11:02.546724+00	2023-11-04 10:30:00+00	CONCERT	f	strange-fruit-89938cda
a4270803-de03-40fc-b8d4-d8cef0a1199e	https://www.instagram.com/p/CyxkhkHO06c/	VALID	8f213163-5ac9-4879-9ca6-02cfc11c4b66	2023-11-13 11:44:15.009953+00	2023-11-25 10:11:02.546724+00	2023-11-09 11:00:00+00	CONCERT	f	strange-fruit-a4270803
2027b634-b1cc-45fd-bc71-c076d49f55ab	https://www.instagram.com/p/CzTlwtqJ-il/	VALID	93e3b7f5-2667-4fea-b1ef-a7085da031be	2023-11-13 11:44:17.538945+00	2023-11-25 10:11:02.546724+00	2023-11-10 13:00:00+00	DJ	t	seendosi-2027b634
2c8d039e-4ac6-4340-92cc-2793174a44a8	https://www.instagram.com/p/CzL__QurRN1/	VALID	93e3b7f5-2667-4fea-b1ef-a7085da031be	2023-11-13 11:44:18.254349+00	2023-11-25 10:11:02.546724+00	2023-11-04 09:00:00+00	CONCERT	f	seendosi-2c8d039e
ff5b476a-b2af-41f9-b567-25c87e637126	https://www.instagram.com/p/Cy-MQcIRp7q/	VALID	93e3b7f5-2667-4fea-b1ef-a7085da031be	2023-11-13 11:44:19.001581+00	2023-11-25 10:11:02.546724+00	2023-11-03 13:00:00+00	DJ	t	seendosi-ff5b476a
e71fdaff-1b02-47b1-ba32-b889cb039609	https://www.instagram.com/p/Cyvr0fLx28U/	VALID	93e3b7f5-2667-4fea-b1ef-a7085da031be	2023-11-13 11:44:19.712529+00	2023-11-25 10:11:02.546724+00	2023-10-27 13:00:00+00	DJ	t	seendosi-e71fdaff
608566fc-1495-47e7-bf30-fde7462febe6	https://www.instagram.com/p/CylCKkpLThk/	VALID	93e3b7f5-2667-4fea-b1ef-a7085da031be	2023-11-13 11:44:20.761446+00	2023-11-25 10:11:02.546724+00	2023-10-21 11:00:00+00	DJ	f	seendosi-608566fc
cc09c62e-078a-4f59-96aa-359fa95d9fa3	https://www.instagram.com/p/CyfcTPixq4-/	VALID	93e3b7f5-2667-4fea-b1ef-a7085da031be	2023-11-13 11:44:21.526483+00	2023-11-25 10:11:02.546724+00	2023-10-20 13:00:00+00	DJ	t	seendosi-cc09c62e
d5ac95c5-3c62-45c7-91cb-07aa8b0d331b	https://www.instagram.com/p/Cx-ky7Gxqq8/	VALID	93e3b7f5-2667-4fea-b1ef-a7085da031be	2023-11-13 11:44:22.263041+00	2023-11-25 10:11:02.546724+00	2023-11-04 11:40:00+00	CONCERT	f	seendosi-d5ac95c5
5421f7ce-ad1d-4854-9702-33ef28702858	https://www.instagram.com/p/Czc40YBpoaC/	VALID	b1354f14-8bc6-4630-895d-97f28b712b9f	2023-11-13 11:44:24.740036+00	2023-11-25 10:11:02.546724+00	2023-11-12 13:00:00+00	DJ	t	channel-1969-5421f7ce
eb52d7bd-7092-405d-abd1-f4161d6480de	https://www.instagram.com/p/CzWH2y2JY1T/	VALID	b1354f14-8bc6-4630-895d-97f28b712b9f	2023-11-13 11:44:26.666904+00	2023-11-25 10:11:02.546724+00	2023-11-10 11:00:00+00	DJ	f	channel-1969-eb52d7bd
0b2fc906-88b8-4856-a79c-f44d9eb2e845	https://www.instagram.com/p/CzS0TfEpEqa/	VALID	b1354f14-8bc6-4630-895d-97f28b712b9f	2023-11-13 11:44:28.427379+00	2023-11-25 10:11:02.546724+00	2023-11-11 12:00:00+00	DJ	f	channel-1969-0b2fc906
98c42e72-f36c-4032-a231-e9f1c98a1cdd	https://www.instagram.com/p/CzQjeiHuidM/	VALID	b1354f14-8bc6-4630-895d-97f28b712b9f	2023-11-13 11:44:29.171171+00	2023-11-25 10:11:02.546724+00	2023-11-05 14:00:00+00	DJ	t	channel-1969-98c42e72
900ba0f6-1cc9-4349-a7a7-691fef334622	https://www.instagram.com/p/CzJa4YAJOzo/	VALID	b1354f14-8bc6-4630-895d-97f28b712b9f	2023-11-13 11:44:30.718515+00	2023-11-25 10:11:02.546724+00	2023-11-03 11:00:00+00	DJ	t	channel-1969-900ba0f6
0b8c6423-a8b4-409d-b0b9-8897129f7eab	https://www.instagram.com/p/CzDbcvsJxHO/	VALID	b1354f14-8bc6-4630-895d-97f28b712b9f	2023-11-13 11:44:32.32704+00	2023-11-25 10:11:02.546724+00	2023-11-04 14:00:00+00	DJ	f	channel-1969-0b8c6423
711933d5-8a39-4dc0-a5f9-5e6a42347e39	https://www.instagram.com/p/Cy-YWXkOT8Q/	VALID	b1354f14-8bc6-4630-895d-97f28b712b9f	2023-11-13 11:44:33.081465+00	2023-11-25 10:11:02.546724+00	2023-10-29 12:30:00+00	DJ	t	channel-1969-711933d5
633cb4a0-53c0-4e25-aa1f-b46d7ea71697	https://www.instagram.com/p/CyvE1BPuumk/	VALID	b1354f14-8bc6-4630-895d-97f28b712b9f	2023-11-13 11:44:34.450137+00	2023-11-25 10:11:02.546724+00	2023-10-25 12:00:00+00	CONCERT	f	channel-1969-633cb4a0
6d2cb328-2bc3-49fc-ad3d-653293b43f10	https://www.instagram.com/p/CysRapppqaX/	VALID	b1354f14-8bc6-4630-895d-97f28b712b9f	2023-11-13 11:44:34.902009+00	2023-11-25 10:11:02.546724+00	2023-10-22 14:00:00+00	DJ	t	channel-1969-6d2cb328
89188202-b0b1-4dc0-81d8-f96c3058e889	https://www.instagram.com/p/Czfd1ZYpACl/	VALID	c4286741-f287-42f9-834c-ad4952b18f17	2023-11-13 11:44:37.433959+00	2023-11-25 10:11:02.546724+00	2023-11-17 12:00:00+00	CONCERT	f	morene-sukha-89188202
a39502ef-24e0-4dec-8ccf-a8033c1033fa	https://www.instagram.com/p/CzdeE6iSbsb/	VALID	c4286741-f287-42f9-834c-ad4952b18f17	2023-11-13 11:44:38.177223+00	2023-11-25 10:11:02.546724+00	2023-11-25 11:00:00+00	DJ	f	morene-sukha-a39502ef
4265bf16-0674-4b12-8860-4efdcfe52f4b	https://www.instagram.com/p/CzbMATbp5uR/	VALID	c4286741-f287-42f9-834c-ad4952b18f17	2023-11-13 11:44:38.869629+00	2023-11-25 10:11:02.546724+00	2023-11-18 11:00:00+00	DJ	f	morene-sukha-4265bf16
8edebcff-16a8-48b1-b42c-a29809d18124	https://www.instagram.com/p/CzYkBV2Lhco/	VALID	c4286741-f287-42f9-834c-ad4952b18f17	2023-11-13 11:44:39.900677+00	2023-11-25 10:11:02.546724+00	2023-11-10 11:00:00+00	DJ	t	morene-sukha-8edebcff
981074fa-5df9-47d1-90ed-83c7c99e9cd8	https://www.instagram.com/p/CzTJu_VpIfh/	VALID	c4286741-f287-42f9-834c-ad4952b18f17	2023-11-13 11:44:41.191275+00	2023-11-25 10:11:02.546724+00	2023-11-11 10:00:00+00	CONCERT	f	morene-sukha-981074fa
93559459-9c92-4509-b1cb-b1faeac850a7	https://www.instagram.com/p/Cy77o0nusN0/	VALID	c4286741-f287-42f9-834c-ad4952b18f17	2023-11-13 11:44:42.473277+00	2023-11-25 10:11:02.546724+00	2023-10-14 11:00:00+00	DJ	f	morene-sukha-93559459
7a89d05a-70ff-41ac-a627-980cf5b0c348	https://www.instagram.com/p/Cyf2HA4rsUP/	VALID	c4286741-f287-42f9-834c-ad4952b18f17	2023-11-13 11:44:43.501234+00	2023-11-25 10:11:02.546724+00	2023-10-21 11:00:00+00	DJ	t	morene-sukha-7a89d05a
7592ca16-ef1e-4778-b1fa-d8b91f281563	https://www.instagram.com/p/CzAQV6yP4c4/	VALID	dfe7890d-f2b8-48d8-95d8-04364d5b3641	2023-11-13 11:44:46.092733+00	2023-11-25 10:11:02.546724+00	2023-11-04 12:00:00+00	DJ	f	echo-7592ca16
ff296274-7f4d-48c0-a2ef-a7c09b474372	https://www.instagram.com/p/CyuUEIKp3ai/	VALID	dfe7890d-f2b8-48d8-95d8-04364d5b3641	2023-11-13 11:44:46.857708+00	2023-11-25 10:11:02.546724+00	2023-10-28 12:00:00+00	DJ	f	echo-ff296274
572e4b64-d36d-4214-a302-8f7e93dcd402	https://www.instagram.com/p/CycXQwIJiwe/	VALID	dfe7890d-f2b8-48d8-95d8-04364d5b3641	2023-11-13 11:44:48.550013+00	2023-11-25 10:11:02.546724+00	2023-10-21 12:00:00+00	DJ	f	echo-572e4b64
46306f40-2de8-4c84-9be9-88132602f5f3	https://www.instagram.com/p/CyKFOQ1Sb9_/	VALID	dfe7890d-f2b8-48d8-95d8-04364d5b3641	2023-11-13 11:44:49.564058+00	2023-11-25 10:11:02.546724+00	2023-10-15 12:00:00+00	CONCERT	f	echo-46306f40
c4e5e496-e3bf-4096-8f6b-ab09a0ef2de1	https://www.instagram.com/p/CyKFDyRSw87/	VALID	dfe7890d-f2b8-48d8-95d8-04364d5b3641	2023-11-13 11:44:50.572788+00	2023-11-25 10:11:02.546724+00	2023-10-14 12:00:00+00	DJ	f	echo-c4e5e496
a7db331b-cda7-49e2-ad6c-d691f5542ea0	https://www.instagram.com/p/CxWtDcASZeR/	VALID	db7e25ef-6325-410f-91bf-4ed7bf8be0bb	2023-11-13 11:44:52.691106+00	2023-11-25 10:11:02.546724+00	2023-11-04 07:00:00+00	CONCERT	f	the-vinyl-underground-a7db331b
f4d211a7-fcd5-4052-9fe7-d9c50373255b	https://www.instagram.com/p/CwMj-71Lays/	VALID	db7e25ef-6325-410f-91bf-4ed7bf8be0bb	2023-11-13 11:44:53.668232+00	2023-11-25 10:11:02.546724+00	2023-09-01 15:00:00+00	CONCERT	f	the-vinyl-underground-f4d211a7
5b0800bd-80ef-4d71-a94a-e811c945be35	https://www.instagram.com/p/CvySt_yJUy5/	VALID	db7e25ef-6325-410f-91bf-4ed7bf8be0bb	2023-11-13 11:44:54.397399+00	2023-11-25 10:11:02.546724+00	2023-08-19 09:00:00+00	CONCERT	t	the-vinyl-underground-5b0800bd
480ffb38-7264-4f9a-ba42-9fb566939c1a	https://www.instagram.com/p/CzfR1sVSYZ-/	VALID	6900b9c1-1693-4bc6-8cb9-42238ff29322	2023-11-13 11:44:57.177705+00	2023-11-25 10:11:02.546724+00	2023-11-11 00:00:00+00	CONCERT	f	basement-480ffb38
bc1e2329-0590-4c18-996f-7e6c77fe865e	https://www.instagram.com/p/CzIWAvROWJU/	VALID	6900b9c1-1693-4bc6-8cb9-42238ff29322	2023-11-13 11:44:58.655743+00	2023-11-25 10:11:02.546724+00	2023-10-12 12:00:00+00	DJ	t	basement-bc1e2329
5677d79c-ad73-4147-b13e-6eed7c621cc6	https://www.instagram.com/p/Cy4xT7ypbjS/	VALID	6900b9c1-1693-4bc6-8cb9-42238ff29322	2023-11-13 11:44:59.683534+00	2023-11-25 10:11:02.546724+00	2023-10-29 13:00:00+00	CONCERT	t	basement-5677d79c
73488f8e-b2e9-4dec-8184-1aad36b99b88	https://www.instagram.com/p/CySeWy1NVGb/	VALID	6900b9c1-1693-4bc6-8cb9-42238ff29322	2023-11-13 11:45:00.412009+00	2023-11-25 10:11:02.546724+00	2023-10-20 10:00:00+00	DJ	t	basement-73488f8e
41553b49-147f-49c3-acd6-46cd773bd169	https://www.instagram.com/p/ChMTttwldVE/	VALID	f41a2b7b-9a86-42a5-b809-103bcff3dba9	2023-11-13 11:45:02.095887+00	2023-11-25 10:11:02.546724+00	2022-08-20 09:30:00+00	CONCERT	f	someday-41553b49
a1ac3b79-8536-4f13-bd45-fc2ee4e68311	https://www.instagram.com/p/Czc7KqDJzuR/	VALID	4aa00acf-67ab-4c50-913a-3246c617ec4f	2023-11-13 11:45:04.691385+00	2023-11-25 10:11:02.546724+00	2023-11-17 15:00:00+00	DJ	f	club-realize-a1ac3b79
24216444-525e-40c1-9cf2-f6ade4a2dd1c	https://www.instagram.com/p/CuOvzyEJeCI/	VALID	4aa00acf-67ab-4c50-913a-3246c617ec4f	2023-11-13 11:45:06.073422+00	2023-11-25 10:11:02.546724+00	2023-07-08 11:00:00+00	CONCERT	f	club-realize-24216444
d86e391e-ac0c-4d96-8717-f5c9fee1e02c	https://www.instagram.com/p/CtLvycEpjaO/	VALID	4aa00acf-67ab-4c50-913a-3246c617ec4f	2023-11-13 11:45:07.657268+00	2023-11-25 10:11:02.546724+00	2023-06-24 09:40:00+00	CONCERT	f	club-realize-d86e391e
7e00d1da-7dc6-4c0c-84eb-387b8a2a3b62	https://www.instagram.com/p/Cr7bvbrLKPH/	VALID	4aa00acf-67ab-4c50-913a-3246c617ec4f	2023-11-13 11:45:08.930979+00	2023-11-25 10:11:02.546724+00	2023-05-14 08:30:00+00	CONCERT	f	club-realize-7e00d1da
5a4caef0-007f-443c-b5df-3c6adcf27ebd	https://www.instagram.com/p/CqZhMONpZcb/	VALID	4aa00acf-67ab-4c50-913a-3246c617ec4f	2023-11-13 11:45:11.081496+00	2023-11-25 10:11:02.546724+00	2023-04-23 09:00:00+00	CONCERT	f	club-realize-5a4caef0
0c327a9a-2e2b-4476-8c0f-283e1d43fc15	https://www.instagram.com/p/CzI89lipCJu/	VALID	a56e4ff9-aea3-40e3-9a6f-1c0fea67c79a	2023-11-13 11:45:13.875378+00	2023-11-25 10:11:02.546724+00	2023-11-19 07:00:00+00	CONCERT	f	ovantgarde-0c327a9a
ef87c9f0-534d-4bee-b041-04f141dc5435	https://www.instagram.com/p/CzgNjPeJ1rv/	VALID	a56e4ff9-aea3-40e3-9a6f-1c0fea67c79a	2023-11-13 11:45:14.618839+00	2023-11-25 10:11:02.546724+00	2023-11-16 10:00:00+00	CONCERT	t	ovantgarde-ef87c9f0
305ad93a-ba56-49ff-bdcc-3dec1b7d965a	https://www.instagram.com/p/CzYWlDPJ1Wh/	VALID	a56e4ff9-aea3-40e3-9a6f-1c0fea67c79a	2023-11-13 11:45:15.853331+00	2023-11-25 10:11:02.546724+00	2023-11-12 09:00:00+00	CONCERT	t	ovantgarde-305ad93a
a5909a0e-ebeb-4a89-9b48-83529ba73bd0	https://www.instagram.com/p/CzVHb--pY4J/	VALID	a56e4ff9-aea3-40e3-9a6f-1c0fea67c79a	2023-11-13 11:45:16.864548+00	2023-11-25 10:11:02.546724+00	2023-11-24 11:00:00+00	CONCERT	f	ovantgarde-a5909a0e
0c27c6a1-c9eb-4ed4-9e5b-093784a4ba99	https://www.instagram.com/p/CzThVkjLExN/	VALID	a56e4ff9-aea3-40e3-9a6f-1c0fea67c79a	2023-11-13 11:45:17.599074+00	2023-11-25 10:11:02.546724+00	2023-11-11 11:00:00+00	CONCERT	f	ovantgarde-0c27c6a1
6bf1307f-047b-4afc-a90d-434b8498eb2a	https://www.instagram.com/p/CzDsdIkLNXy/	VALID	a56e4ff9-aea3-40e3-9a6f-1c0fea67c79a	2023-11-13 11:45:18.328871+00	2023-11-25 10:11:02.546724+00	2023-11-04 12:00:00+00	CONCERT	t	ovantgarde-6bf1307f
1d1ce189-6a60-4802-b174-75ccfc2951dc	https://www.instagram.com/p/CyyBtUErvUF/	VALID	a56e4ff9-aea3-40e3-9a6f-1c0fea67c79a	2023-11-13 11:45:19.942645+00	2023-11-25 10:11:02.546724+00	2023-10-28 13:00:00+00	DJ	t	ovantgarde-1d1ce189
0ef9efbb-25a3-4947-a674-e67041265b7b	https://www.instagram.com/p/CzC03X4SAbS/	VALID	033b4a23-f135-4b0e-bccc-39cce670b057	2023-11-14 09:56:22.141759+00	2023-11-25 10:11:02.546724+00	2023-11-18 11:20:00+00	CONCERT	f	club-ff-0ef9efbb
9a71f758-8481-4c06-825e-36fa4a6da4de	https://www.instagram.com/p/CznXQDvrJCN/	VALID	033b4a23-f135-4b0e-bccc-39cce670b057	2023-11-14 09:56:23.411785+00	2023-11-25 10:11:02.546724+00	2023-12-02 12:00:00+00	CONCERT	f	club-ff-9a71f758
9a623c26-ff52-4643-8798-aa9fbb814f80	https://www.instagram.com/p/CznW0eIrkFK/	VALID	033b4a23-f135-4b0e-bccc-39cce670b057	2023-11-14 09:56:24.609519+00	2023-11-25 10:11:02.546724+00	2023-12-01 12:00:00+00	CONCERT	f	club-ff-9a623c26
69adbd73-6c70-4803-8365-9ba531633bf3	https://www.instagram.com/p/CzlsNFbJXpQ/	VALID	033b4a23-f135-4b0e-bccc-39cce670b057	2023-11-14 09:56:25.197336+00	2023-11-25 10:11:02.546724+00	2023-11-16 14:00:00+00	DJ	f	club-ff-69adbd73
7412a9f1-964b-48d7-ba08-7e9252ac738c	https://www.instagram.com/p/CznSWY_ryyH/	VALID	4aa00acf-67ab-4c50-913a-3246c617ec4f	2023-11-14 09:56:50.816491+00	2023-11-25 10:11:02.546724+00	2023-12-16 09:00:00+00	CONCERT	f	club-realize-7412a9f1
3ea97049-d8ca-4ff1-bed8-4db0a7017a1b	https://www.instagram.com/p/CznKsw6J0Jg/	VALID	4aa00acf-67ab-4c50-913a-3246c617ec4f	2023-11-14 09:56:52.924121+00	2023-11-25 10:11:02.546724+00	2023-12-02 09:30:00+00	CONCERT	f	club-realize-3ea97049
e25a1f27-2946-487a-96a1-4be6963bb3ff	https://www.instagram.com/p/Czk-xZwrTr9/	VALID	a56e4ff9-aea3-40e3-9a6f-1c0fea67c79a	2023-11-14 09:57:07.873558+00	2023-11-25 10:11:02.546724+00	2023-11-15 12:00:00+00	CONCERT	t	ovantgarde-e25a1f27
929f4a31-1d7e-4a50-99da-770a439d3a45	https://www.instagram.com/p/CzkIHnYP5Tx/	VALID	dfe7890d-f2b8-48d8-95d8-04364d5b3641	2023-11-14 09:57:20.137824+00	2023-11-25 10:11:02.546724+00	2023-11-18 12:00:00+00	DJ	f	echo-929f4a31
2d32997d-5a07-4f5c-895f-0ad00f9bd16b	https://www.instagram.com/p/CzjFN3UJenU/	VALID	0ba8c57f-6c80-4bf0-8ea4-b1d822fc0935	2023-11-14 09:57:48.426758+00	2023-11-25 10:11:02.546724+00	2023-11-19 11:00:00+00	CONCERT	t	cafe-idaho-2d32997d
cae74aaf-d48a-4445-a957-def46faa7a1b	https://www.instagram.com/p/CzjBGkeJynX/	VALID	0ba8c57f-6c80-4bf0-8ea4-b1d822fc0935	2023-11-14 09:57:49.096213+00	2023-11-25 10:11:02.546724+00	2023-11-18 11:00:00+00	CONCERT	t	cafe-idaho-cae74aaf
d2f78c64-8a80-4fe7-90c2-7b22d1b74930	https://www.instagram.com/p/Czi_8hRJrC2/	VALID	0ba8c57f-6c80-4bf0-8ea4-b1d822fc0935	2023-11-14 09:57:49.818463+00	2023-11-25 10:11:02.546724+00	2023-11-17 11:00:00+00	CONCERT	t	cafe-idaho-d2f78c64
0090e16d-b22a-49d1-a547-c5fb6d815cee	https://www.instagram.com/p/Czlor02pDMq/	VALID	8f213163-5ac9-4879-9ca6-02cfc11c4b66	2023-11-14 10:00:23.832012+00	2023-11-25 10:11:02.546724+00	2023-11-18 11:00:00+00	CONCERT	f	strange-fruit-0090e16d
344b6c41-83ba-482f-aafb-48c9a280f8df	https://www.instagram.com/p/CyvDe8zugo1/	VALID	033b4a23-f135-4b0e-bccc-39cce670b057	2023-11-14 17:01:53.431555+00	2023-11-25 10:11:02.546724+00	2023-11-17 12:00:00+00	CONCERT	f	club-ff-344b6c41
00022a88-4268-40be-b984-ea42c59572b6	https://www.instagram.com/p/Czf4C3qLo4G/	VALID	033b4a23-f135-4b0e-bccc-39cce670b057	2023-11-14 17:01:53.742515+00	2023-11-25 10:11:02.546724+00	2023-01-15 12:30:00+00	DJ	f	club-ff-00022a88
8a5a78de-8503-47d2-b84b-d7fa392a6644	https://www.instagram.com/p/CuOwEvNpZ2Q/	VALID	4aa00acf-67ab-4c50-913a-3246c617ec4f	2023-11-14 17:02:43.258621+00	2023-11-25 10:11:02.546724+00	2023-07-15 11:00:00+00	CONCERT	f	club-realize-8a5a78de
c64e4d36-54f5-49a9-bebc-88adcee670eb	https://www.instagram.com/p/Csc5e9pLpim/	VALID	4aa00acf-67ab-4c50-913a-3246c617ec4f	2023-11-14 17:02:43.538936+00	2023-11-25 10:11:02.546724+00	2023-05-28 10:00:00+00	CONCERT	f	club-realize-c64e4d36
796ee76b-d5f5-416b-8ae7-6c3c4b49b87a	https://www.instagram.com/p/Cy2Wn6TJLhi/	VALID	a56e4ff9-aea3-40e3-9a6f-1c0fea67c79a	2023-11-14 17:02:59.314334+00	2023-11-25 10:11:02.546724+00	2023-10-27 11:00:00+00	CONCERT	f	ovantgarde-796ee76b
69df28b1-837a-4400-88cf-5ffa52249d0c	https://www.instagram.com/p/Czi65uCpVrH/	VALID	0ba8c57f-6c80-4bf0-8ea4-b1d822fc0935	2023-11-14 17:03:50.471647+00	2023-11-25 10:11:02.546724+00	2023-11-16 11:00:00+00	CONCERT	t	cafe-idaho-69df28b1
106b5fd7-0317-4f75-9e8b-5bde984d1b76	https://www.instagram.com/p/CzaNKtCJ9uY/	VALID	8f213163-5ac9-4879-9ca6-02cfc11c4b66	2023-11-14 17:04:49.021909+00	2023-11-25 10:11:02.546724+00	2023-11-19 10:00:00+00	CONCERT	f	strange-fruit-106b5fd7
07feeadf-55e5-4c62-9edc-7f522da8c02f	https://www.instagram.com/p/CzTe6ETPyZ9/	VALID	8f213163-5ac9-4879-9ca6-02cfc11c4b66	2023-11-14 17:04:49.162482+00	2023-11-25 10:11:02.546724+00	2023-10-12 15:00:00+00	CONCERT	f	strange-fruit-07feeadf
a0ddc112-716f-47f1-83e2-d861f4fbeb95	https://www.instagram.com/p/Czn3JTJRCS6/	VALID	93e3b7f5-2667-4fea-b1ef-a7085da031be	2023-11-14 17:05:26.686456+00	2023-11-25 10:11:02.546724+00	2023-11-17 13:00:00+00	DJ	t	seendosi-a0ddc112
683df961-92e5-45d5-8f21-612de105e112	https://www.instagram.com/p/Czp7VLPRV2B/	VALID	95cb4b2e-3963-4ab6-8b89-713d5eb406e6	2023-11-15 17:42:59.549394+00	2023-11-25 10:11:02.546724+00	2023-12-14 11:00:00+00	DJ	f	musinsa-garage-683df961
d25cb9e1-de48-4302-a017-07d1c79680dd	https://www.instagram.com/p/Czp-mdeJmcN/	VALID	b1354f14-8bc6-4630-895d-97f28b712b9f	2023-11-15 17:43:59.375335+00	2023-11-25 10:11:02.546724+00	2023-11-18 11:00:00+00	CONCERT	f	channel-1969-d25cb9e1
a60ae1f7-00ae-43d7-89ce-d411885053c3	https://www.instagram.com/p/CztfeOzJ__S/	VALID	b1354f14-8bc6-4630-895d-97f28b712b9f	2023-11-16 17:01:07.303635+00	2023-11-25 10:11:02.546724+00	2023-11-17 12:00:00+00	DJ	t	channel-1969-a60ae1f7
bbac831b-3c8c-4a26-8121-02b07420dfcf	https://www.instagram.com/p/CztFfrVr26G/	VALID	c3893cc9-e88f-461c-a784-81e341a2c8f0	2023-11-16 17:02:00.736002+00	2023-11-25 10:11:02.546724+00	2023-11-17 11:00:00+00	CONCERT	f	rolling-hall-bbac831b
e5eee5e5-df35-4025-8e13-fb22ec128c27	https://www.instagram.com/p/Czpp2UupBZH/	VALID	c3893cc9-e88f-461c-a784-81e341a2c8f0	2023-11-16 17:02:01.068133+00	2023-11-25 10:11:02.546724+00	2023-12-22 11:00:00+00	CONCERT	f	rolling-hall-e5eee5e5
b4f8319f-6041-4ac3-b118-50bfe3e2925b	https://www.instagram.com/p/CzkgY8oP8bB/	VALID	c3893cc9-e88f-461c-a784-81e341a2c8f0	2023-11-16 17:02:01.326606+00	2023-11-25 10:11:02.546724+00	2023-12-03 09:00:00+00	CONCERT	f	rolling-hall-b4f8319f
eb88bdad-d3b9-442c-9d38-23069c7c0744	https://www.instagram.com/p/CzkgN7zqkV2/	VALID	c3893cc9-e88f-461c-a784-81e341a2c8f0	2023-11-16 17:02:01.511896+00	2023-11-25 10:11:02.546724+00	2023-12-15 11:00:00+00	CONCERT	f	rolling-hall-eb88bdad
3794179d-5125-4305-817d-116a50de2cd0	https://www.instagram.com/p/Czcx1K3sdex/	VALID	c3893cc9-e88f-461c-a784-81e341a2c8f0	2023-11-16 17:02:01.730402+00	2023-11-25 10:11:02.546724+00	2023-12-10 08:00:00+00	CONCERT	f	rolling-hall-3794179d
5ab6c239-e5d9-4af6-a206-b42624fb35fa	https://www.instagram.com/p/CzVDa1tLZm5/	VALID	c3893cc9-e88f-461c-a784-81e341a2c8f0	2023-11-16 17:02:01.790004+00	2023-11-25 10:11:02.546724+00	2023-12-09 06:00:00+00	CONCERT	f	rolling-hall-5ab6c239
d58cb31b-cb43-4ff4-acb6-11ba2e22defd	https://www.instagram.com/p/CzU6tZmJ422/	VALID	c3893cc9-e88f-461c-a784-81e341a2c8f0	2023-11-16 17:02:02.099588+00	2023-11-25 10:11:02.546724+00	2023-11-21 11:00:00+00	CONCERT	f	rolling-hall-d58cb31b
e4c3d60c-9d74-442b-964c-7b61ce53bd59	https://www.instagram.com/p/CzSeoZPJRB_/	VALID	c3893cc9-e88f-461c-a784-81e341a2c8f0	2023-11-16 17:02:02.307461+00	2023-11-25 10:11:02.546724+00	2023-12-08 11:00:00+00	CONCERT	f	rolling-hall-e4c3d60c
6270555a-ce20-4d0e-b64c-9be9c5124283	https://www.instagram.com/p/CztD1FXpe8z/	VALID	17db08c1-1d74-4361-b6f2-8d24598060a2	2023-11-16 17:02:46.486189+00	2023-11-25 10:11:02.546724+00	2023-12-01 11:00:00+00	CONCERT	f	cafe-unplugged-6270555a
cc3488de-1bfc-4eb9-8681-c899769dffdc	https://www.instagram.com/p/CznFdWnpSya/	VALID	17db08c1-1d74-4361-b6f2-8d24598060a2	2023-11-16 17:02:47.152646+00	2023-11-25 10:11:02.546724+00	2023-11-20 11:00:00+00	CONCERT	f	cafe-unplugged-cc3488de
fd6e64f4-1c6d-4820-a8ca-d6670a20c7e8	https://www.instagram.com/p/Czir8bQJS32/	VALID	17db08c1-1d74-4361-b6f2-8d24598060a2	2023-11-16 17:02:47.638745+00	2023-11-25 10:11:02.546724+00	2023-11-30 11:00:00+00	CONCERT	f	cafe-unplugged-fd6e64f4
a05b2c74-e2fc-47f3-87b2-d9c078f19378	https://www.instagram.com/p/Czdw3Rbptsg/	VALID	17db08c1-1d74-4361-b6f2-8d24598060a2	2023-11-16 17:02:47.934708+00	2023-11-25 10:11:02.546724+00	2023-11-19 06:00:00+00	CONCERT	f	cafe-unplugged-a05b2c74
df8d8a1e-c456-40db-b9ae-054526599e2e	https://www.instagram.com/p/CzdsR04JZxD/	VALID	17db08c1-1d74-4361-b6f2-8d24598060a2	2023-11-16 17:02:48.270882+00	2023-11-25 10:11:02.546724+00	2023-11-25 10:00:00+00	CONCERT	f	cafe-unplugged-df8d8a1e
6770e571-a3f2-4641-8b85-5d1c5dbbf354	https://www.instagram.com/p/CzYRbwvrn22/	VALID	17db08c1-1d74-4361-b6f2-8d24598060a2	2023-11-16 17:02:48.758873+00	2023-11-25 10:11:02.546724+00	2023-11-29 11:00:00+00	CONCERT	f	cafe-unplugged-6770e571
532baba1-301d-4f03-9b27-a97ecf95b4e8	https://www.instagram.com/p/CzYPdjhLeBD/	VALID	17db08c1-1d74-4361-b6f2-8d24598060a2	2023-11-16 17:02:49.072794+00	2023-11-25 10:11:02.546724+00	2023-11-24 11:00:00+00	CONCERT	f	cafe-unplugged-532baba1
68e8e7d2-22ce-48b7-8b27-ef5f5b8f7714	https://www.instagram.com/p/CzWPYOxLfSF/	VALID	17db08c1-1d74-4361-b6f2-8d24598060a2	2023-11-16 17:02:50.036056+00	2023-11-25 10:11:02.546724+00	2023-11-23 11:00:00+00	CONCERT	f	cafe-unplugged-68e8e7d2
d0301d61-259c-41a2-9a66-8ebadd035e14	https://www.instagram.com/p/CzTKnYXx10S/	VALID	17db08c1-1d74-4361-b6f2-8d24598060a2	2023-11-16 17:02:50.737654+00	2023-11-25 10:11:02.546724+00	2023-12-09 10:00:00+00	CONCERT	f	cafe-unplugged-d0301d61
c56b148d-cf52-4e83-9a6f-d65bfb37beec	https://www.instagram.com/p/CzSV5uMpDfg/	VALID	24d49261-916c-4f4d-8d20-5d77c5d6e236	2023-11-16 17:03:09.611732+00	2023-11-25 10:11:02.546724+00	2023-11-16 09:00:00+00	CONCERT	f	space-hangang-c56b148d
2d62abe0-c49c-4ef9-b4fe-501608fdbe47	https://www.instagram.com/p/CzQS09urWZO/	VALID	24d49261-916c-4f4d-8d20-5d77c5d6e236	2023-11-16 17:03:10.565186+00	2023-11-25 10:11:02.546724+00	2023-11-11 10:00:00+00	CONCERT	f	space-hangang-2d62abe0
b9e8337a-366b-4ed9-b573-62b328e164da	https://www.instagram.com/p/Czny28NL5oj/	VALID	c32097e8-abbb-4b61-937a-437705706ba9	2023-11-16 17:03:48.843616+00	2023-11-25 10:11:02.546724+00	2023-11-19 09:30:00+00	CONCERT	f	club-on-air-b9e8337a
d4afa734-9706-4c83-b425-4d1a6af8038b	https://www.instagram.com/p/CznydtELAr3/	VALID	c32097e8-abbb-4b61-937a-437705706ba9	2023-11-16 17:03:49.014709+00	2023-11-25 10:11:02.546724+00	2023-12-02 09:00:00+00	CONCERT	f	club-on-air-d4afa734
fc6e8d46-6f80-44a7-9f6a-cb8a2ecee54d	https://www.instagram.com/p/CznyYc9rwPm/	VALID	c32097e8-abbb-4b61-937a-437705706ba9	2023-11-16 17:03:49.116908+00	2023-11-25 10:11:02.546724+00	2023-12-17 10:00:00+00	CONCERT	f	club-on-air-fc6e8d46
68c4ac68-8d5e-4992-9c96-ecb3b22f27ae	https://www.instagram.com/p/CznyP1FrXj2/	VALID	c32097e8-abbb-4b61-937a-437705706ba9	2023-11-16 17:03:49.820686+00	2023-11-25 10:11:02.546724+00	2023-11-25 11:00:00+00	CONCERT	f	club-on-air-68c4ac68
40f6851a-826d-421b-aea8-6edc162d3ab1	https://www.instagram.com/p/Czgd_tSp31r/	VALID	c32097e8-abbb-4b61-937a-437705706ba9	2023-11-16 17:03:50.639592+00	2023-11-25 10:11:02.546724+00	2023-11-12 11:00:00+00	CONCERT	f	club-on-air-40f6851a
9daf4ce7-d329-4dc1-b22b-a6e05eba13ad	https://www.instagram.com/p/Czf_3UYrk5_/	VALID	c32097e8-abbb-4b61-937a-437705706ba9	2023-11-16 17:03:50.796553+00	2023-11-25 10:11:02.546724+00	2023-01-23 11:00:00+00	CONCERT	f	club-on-air-9daf4ce7
2ee5f4a8-5b9f-4d9b-859e-b1034efbf6bb	https://www.instagram.com/p/Czf_o1iL19f/	VALID	c32097e8-abbb-4b61-937a-437705706ba9	2023-11-16 17:03:50.924027+00	2023-11-25 10:11:02.546724+00	2023-12-04 11:00:00+00	CONCERT	f	club-on-air-2ee5f4a8
d4a129f2-101b-4949-80aa-87a12f8c019f	https://www.instagram.com/p/Czf_T9cLdub/	VALID	c32097e8-abbb-4b61-937a-437705706ba9	2023-11-16 17:03:51.069811+00	2023-11-25 10:11:02.546724+00	2023-11-30 11:00:00+00	CONCERT	f	club-on-air-d4a129f2
64f413f0-5f22-4eb5-891f-fea64ec7f3e8	https://www.instagram.com/p/CzN7vCZJ0Jr/	VALID	bbb07824-b660-4f8a-a841-be5b779c5937	2023-11-16 17:04:21.592224+00	2023-11-25 10:11:02.546724+00	2023-11-25 09:00:00+00	CONCERT	f	yug-ilbong-64f413f0
1ebfc43a-fbce-486d-af25-435b12e95f26	https://www.instagram.com/p/CzVwDUnph1A/	VALID	bbb07824-b660-4f8a-a841-be5b779c5937	2023-11-16 17:04:22.019318+00	2023-11-25 10:11:02.546724+00	2023-11-17 09:30:00+00	DJ	t	yug-ilbong-1ebfc43a
7cdc8ed0-b330-4dbc-95e6-18e10e54052d	https://www.instagram.com/p/CzBMSEzpjm3/	VALID	bbb07824-b660-4f8a-a841-be5b779c5937	2023-11-16 17:04:22.212281+00	2023-11-25 10:11:02.546724+00	2023-09-17 08:00:00+00	DJ	t	yug-ilbong-7cdc8ed0
085f8c21-9406-4849-a11e-a939629bc521	https://www.instagram.com/p/Cyo6EsmyO1W/	VALID	bbb07824-b660-4f8a-a841-be5b779c5937	2023-11-16 17:04:22.840523+00	2023-11-25 10:11:02.546724+00	2023-10-29 11:00:00+00	DJ	t	yug-ilbong-085f8c21
e3916b58-1012-4e95-99ec-596a65fa2dae	https://www.instagram.com/p/Cyng5SCrxhQ/	VALID	bbb07824-b660-4f8a-a841-be5b779c5937	2023-11-16 17:04:23.66213+00	2023-11-25 10:11:02.546724+00	2023-11-04 10:30:00+00	CONCERT	t	yug-ilbong-e3916b58
7b89fd74-2975-4a4a-b6e4-e3949022f99c	https://www.instagram.com/p/CzkYUDNP82N/	VALID	2d722f4d-a824-496b-9de2-813ebc4be4f1	2023-11-16 17:04:44.90791+00	2023-11-25 10:11:02.546724+00	2023-12-16 11:00:00+00	CONCERT	f	mudaeruk-7b89fd74
74b7ec19-c637-4dd7-8085-20ad88d2ece1	https://www.instagram.com/p/CzkMND7PV91/	VALID	2d722f4d-a824-496b-9de2-813ebc4be4f1	2023-11-16 17:04:45.1581+00	2023-11-25 10:11:02.546724+00	2023-11-25 09:00:00+00	CONCERT	t	mudaeruk-74b7ec19
42a0f6cf-4c6b-4fda-944f-45195b7b28ff	https://www.instagram.com/p/CzJCMb9JYQu/	VALID	7aa611e8-00d2-4ee9-a7cb-d834914e05a9	2023-11-16 17:05:24.640122+00	2023-11-25 10:11:02.546724+00	2023-11-25 11:00:00+00	CONCERT	t	kill-the-youtube-42a0f6cf
d778b12c-7378-418b-baf4-7a613981913a	https://www.instagram.com/p/CzJCEvTpa04/	VALID	7aa611e8-00d2-4ee9-a7cb-d834914e05a9	2023-11-16 17:05:24.887542+00	2023-11-25 10:11:02.546724+00	2023-11-24 11:00:00+00	CONCERT	t	kill-the-youtube-d778b12c
ea60856c-9e91-4871-b8cd-43b096ceab6c	https://www.instagram.com/p/CzJB-GqJTdX/	VALID	7aa611e8-00d2-4ee9-a7cb-d834914e05a9	2023-11-16 17:05:25.071973+00	2023-11-25 10:11:02.546724+00	2023-11-18 11:00:00+00	CONCERT	t	kill-the-youtube-ea60856c
37fe9c1e-c1e8-411c-8cef-b33bd724f54c	https://www.instagram.com/p/CzJB0nkpbJ_/	VALID	7aa611e8-00d2-4ee9-a7cb-d834914e05a9	2023-11-16 17:05:25.197579+00	2023-11-25 10:11:02.546724+00	2023-11-17 11:00:00+00	CONCERT	t	kill-the-youtube-37fe9c1e
274b791b-dfa9-4828-a693-43ce1199567e	https://www.instagram.com/p/CzJBsCbJxaz/	VALID	7aa611e8-00d2-4ee9-a7cb-d834914e05a9	2023-11-16 17:05:25.209394+00	2023-11-25 10:11:02.546724+00	2023-11-03 15:00:00+00	CONCERT	f	kill-the-youtube-274b791b
bb5dc66e-570d-4677-9cde-c3cc72f642f8	https://www.instagram.com/p/CzJBmG6p3QT/	VALID	7aa611e8-00d2-4ee9-a7cb-d834914e05a9	2023-11-16 17:05:25.376248+00	2023-11-25 10:11:02.546724+00	2023-11-11 11:00:00+00	CONCERT	t	kill-the-youtube-bb5dc66e
472f8bcb-e0ea-44d3-a4dd-bcb6018577dc	https://www.instagram.com/p/CzJBg4qpvT0/	VALID	7aa611e8-00d2-4ee9-a7cb-d834914e05a9	2023-11-16 17:05:25.505071+00	2023-11-25 10:11:02.546724+00	2023-11-10 11:00:00+00	CONCERT	t	kill-the-youtube-472f8bcb
cdf7415c-ab5c-4244-aa16-657c5f0fdb56	https://www.instagram.com/p/CzJBb13JvrO/	VALID	7aa611e8-00d2-4ee9-a7cb-d834914e05a9	2023-11-16 17:05:25.634676+00	2023-11-25 10:11:02.546724+00	2023-11-04 11:00:00+00	CONCERT	t	kill-the-youtube-cdf7415c
e79d3eb9-2ef9-44d3-885e-4c4e786a9efb	https://www.instagram.com/p/CzJBVGYJ9Ov/	VALID	7aa611e8-00d2-4ee9-a7cb-d834914e05a9	2023-11-16 17:05:25.793426+00	2023-11-25 10:11:02.546724+00	2023-11-03 11:00:00+00	CONCERT	t	kill-the-youtube-e79d3eb9
f02910cc-b1fd-42b1-bc8c-c20436762211	https://www.instagram.com/p/CzdUBbsSm-S/	VALID	62339fbe-f2bf-41f1-93e4-7abf3a87d9e4	2023-11-16 17:05:45.252714+00	2023-11-25 10:11:02.546724+00	2023-11-19 10:00:00+00	CONCERT	f	kt&g-sangsangmadang-chuncheon-arts-center-f02910cc
54ed7025-c848-42f3-add0-7ac3e75dafd2	https://www.instagram.com/p/CzXpxGsJY1h/	VALID	0b6efad7-5d7e-45ab-b87f-0a757270a2ef	2023-11-16 17:06:01.970536+00	2023-11-25 10:11:02.546724+00	2023-12-09 09:00:00+00	CONCERT	f	tone-studio-54ed7025
afe3e475-9989-4848-a8a6-3f0609af2b16	https://www.instagram.com/p/CyhkrByJS9c/	VALID	0b6efad7-5d7e-45ab-b87f-0a757270a2ef	2023-11-16 17:06:02.157169+00	2023-11-25 10:11:02.546724+00	2023-11-18 08:00:00+00	CONCERT	f	tone-studio-afe3e475
28c34c80-3ded-4778-a2a3-06d5cc809f10	https://www.instagram.com/p/CzVd2QfpmRV/	VALID	19b867be-7a3c-4c03-b589-69fed6692aa5	2023-11-16 17:06:35.846743+00	2023-11-25 10:11:02.546724+00	2023-12-03 09:00:00+00	CONCERT	f	salon-moonbow-28c34c80
6e99a02e-e4eb-4c8c-b51e-1d8d726de160	https://www.instagram.com/p/CzVdLPdpafK/	VALID	19b867be-7a3c-4c03-b589-69fed6692aa5	2023-11-16 17:06:36.521359+00	2023-11-25 10:11:02.546724+00	2023-11-17 11:00:00+00	CONCERT	t	salon-moonbow-6e99a02e
721632eb-4f0c-468b-8768-107ad1d637f8	https://www.instagram.com/p/CzH2l_lSp9n/	VALID	19b867be-7a3c-4c03-b589-69fed6692aa5	2023-11-16 17:06:36.668364+00	2023-11-25 10:11:02.546724+00	2023-11-25 09:00:00+00	CONCERT	f	salon-moonbow-721632eb
c806d9fe-c6bd-4077-ac34-4d99aafa1e45	https://www.instagram.com/p/CzH2TScy5Fl/	VALID	19b867be-7a3c-4c03-b589-69fed6692aa5	2023-11-16 17:06:36.897722+00	2023-11-25 10:11:02.546724+00	2023-11-18 09:00:00+00	CONCERT	f	salon-moonbow-c806d9fe
6dd87b1b-8191-46e2-938f-d11ae5c6ece4	https://www.instagram.com/p/Cyu0-TrpcUW/	VALID	19b867be-7a3c-4c03-b589-69fed6692aa5	2023-11-16 17:06:37.011629+00	2023-11-25 10:11:02.546724+00	2023-11-11 09:00:00+00	CONCERT	f	salon-moonbow-6dd87b1b
0d373ef8-46bc-46a4-a05d-b2b7ed927ce7	https://www.instagram.com/p/CymeQmUyNwI/	VALID	19b867be-7a3c-4c03-b589-69fed6692aa5	2023-11-16 17:06:37.146767+00	2023-11-25 10:11:02.546724+00	2023-11-04 09:00:00+00	CONCERT	f	salon-moonbow-0d373ef8
4c1a9ed1-1582-41a4-ad8b-cd32e708c166	https://www.instagram.com/p/Cymc9i6yqMF/	VALID	19b867be-7a3c-4c03-b589-69fed6692aa5	2023-11-16 17:06:37.352707+00	2023-11-25 10:11:02.546724+00	2023-10-28 10:00:00+00	CONCERT	f	salon-moonbow-4c1a9ed1
5e5fbc72-6c2e-4206-84b2-6c3b4ccb0c30	https://www.instagram.com/p/Czn6GMWp_qA/	VALID	1da88627-ca2e-448f-ad41-021ca1d2fee8	2023-11-16 17:07:14.795124+00	2023-11-25 10:11:02.546724+00	2023-11-24 10:00:00+00	CONCERT	f	senggi-studio-5e5fbc72
d9c5885f-6181-4a03-a5c5-cdf2aba000ed	https://www.instagram.com/p/CzaPyOApDfy/	VALID	1da88627-ca2e-448f-ad41-021ca1d2fee8	2023-11-16 17:07:15.069208+00	2023-11-25 10:11:02.546724+00	2023-11-18 09:00:00+00	CONCERT	f	senggi-studio-d9c5885f
0e13aa2c-aeee-464f-8a71-e7f73de93cd1	https://www.instagram.com/p/CzVf3KpL5Tp/	VALID	1da88627-ca2e-448f-ad41-021ca1d2fee8	2023-11-16 17:07:15.171399+00	2023-11-25 10:11:02.546724+00	2023-12-09 08:00:00+00	CONCERT	f	senggi-studio-0e13aa2c
4a365289-6863-4295-b7e9-1366394a3ae0	https://www.instagram.com/p/CzGR8Fpp0vs/	VALID	1da88627-ca2e-448f-ad41-021ca1d2fee8	2023-11-16 17:07:15.362484+00	2023-11-25 10:11:02.546724+00	2023-11-19 09:00:00+00	CONCERT	f	senggi-studio-4a365289
acdf968e-5357-4818-ba64-a2d8ab76e1f8	https://www.instagram.com/p/CydoC7ZJ22D/	VALID	1da88627-ca2e-448f-ad41-021ca1d2fee8	2023-11-16 17:07:16.563949+00	2023-11-25 10:11:02.546724+00	2023-10-22 07:00:00+00	CONCERT	f	senggi-studio-acdf968e
4ebc24a7-38d9-47d6-a65f-a324768f55fa	https://www.instagram.com/p/CyK0IxPL7T-/	VALID	1da88627-ca2e-448f-ad41-021ca1d2fee8	2023-11-16 17:07:16.579363+00	2023-11-25 10:11:02.546724+00	2023-11-03 10:30:00+00	CONCERT	f	senggi-studio-4ebc24a7
f19f8da0-fff1-45ae-be6c-142742b9438b	https://www.instagram.com/p/Cx-qxMWpmVR/	VALID	1da88627-ca2e-448f-ad41-021ca1d2fee8	2023-11-16 17:07:16.742625+00	2023-11-25 10:11:02.546724+00	2023-10-14 09:00:00+00	CONCERT	f	senggi-studio-f19f8da0
806ae63c-2e60-4a4e-b80d-03cf5cc8b085	https://www.instagram.com/p/CzVD2wtJQDn/	VALID	44fc3fb4-1f78-4dfc-a6c1-fa818ecea2ae	2023-11-16 17:07:46.044511+00	2023-11-25 10:11:02.546724+00	2023-11-23 10:00:00+00	CONCERT	f	organism-806ae63c
8c7bc752-b9ee-4d50-ab9c-314b7a65b5c1	https://www.instagram.com/p/Czag9Q8r7jz/	VALID	44fc3fb4-1f78-4dfc-a6c1-fa818ecea2ae	2023-11-16 17:07:46.36952+00	2023-11-25 10:11:02.546724+00	2023-11-25 10:00:00+00	CONCERT	f	organism-8c7bc752
91e41cb7-1938-4fcf-bd49-8f467193f2d2	https://www.instagram.com/p/CztJ7i2h9L6/	VALID	44fc3fb4-1f78-4dfc-a6c1-fa818ecea2ae	2023-11-16 17:07:46.60484+00	2023-11-25 10:11:02.546724+00	2023-12-02 12:00:00+00	CONCERT	f	organism-91e41cb7
07098d4d-8c33-4717-8bf0-966a840e1853	https://www.instagram.com/p/Czqt2EXpM6H/	VALID	44fc3fb4-1f78-4dfc-a6c1-fa818ecea2ae	2023-11-16 17:07:46.756915+00	2023-11-25 10:11:02.546724+00	2023-02-20 10:00:00+00	CONCERT	f	organism-07098d4d
15c6f89c-ddcd-4994-8b7f-dfd1350b7de1	https://www.instagram.com/p/CzlcGeKpZfc/	VALID	44fc3fb4-1f78-4dfc-a6c1-fa818ecea2ae	2023-11-16 17:07:46.774945+00	2023-11-25 10:11:02.546724+00	2023-01-23 10:00:00+00	CONCERT	f	organism-15c6f89c
3c7f0f9b-e539-4480-82a1-7631804384ae	https://www.instagram.com/p/CzvvW9JpNYB/	VALID	2d722f4d-a824-496b-9de2-813ebc4be4f1	2023-11-17 16:01:30.454349+00	2023-11-25 10:11:02.546724+00	2023-12-08 11:00:00+00	CONCERT	t	mudaeruk-3c7f0f9b
ccf04588-206c-4037-9d39-6b7d6f873388	https://www.instagram.com/p/CzuzU5pstxA/	VALID	c3893cc9-e88f-461c-a784-81e341a2c8f0	2023-11-17 16:01:46.646991+00	2023-11-25 10:11:02.546724+00	2023-12-31 08:00:00+00	CONCERT	f	rolling-hall-ccf04588
a913cf82-a4b4-4232-b3a7-62fbb98dc7b3	https://www.instagram.com/p/CzuvyYRLzPj/	VALID	1da88627-ca2e-448f-ad41-021ca1d2fee8	2023-11-17 16:01:57.832494+00	2023-11-25 10:11:02.546724+00	2023-11-26 08:00:00+00	CONCERT	f	senggi-studio-a913cf82
6fff9546-8ad9-4b60-ae38-bb66dd17ffe8	https://www.instagram.com/p/CztHLdAJdhL/	VALID	379ce164-2bc5-4d25-9557-adf98fdc4bc6	2023-11-17 16:02:22.542896+00	2023-11-25 10:11:02.546724+00	2023-12-10 10:00:00+00	CONCERT	f	gong-sang-ondo-6fff9546
871c06e4-b7ba-47fb-ba91-847999564709	https://www.instagram.com/p/CzsfNRSJkht/	VALID	379ce164-2bc5-4d25-9557-adf98fdc4bc6	2023-11-17 16:02:22.764331+00	2023-11-25 10:11:02.546724+00	2023-11-16 10:00:00+00	CONCERT	f	gong-sang-ondo-871c06e4
94f7af1b-21d2-43f7-a402-0da864faa602	https://www.instagram.com/p/CzqhhJbJctM/	VALID	379ce164-2bc5-4d25-9557-adf98fdc4bc6	2023-11-17 16:02:23.181702+00	2023-11-25 10:11:02.546724+00	2023-11-25 09:00:00+00	CONCERT	f	gong-sang-ondo-94f7af1b
11449ec3-5872-4116-aaa3-8d5e81a28af6	https://www.instagram.com/p/CzQpcWPphzs/	VALID	d3f45139-e3d8-4b82-9d22-ee5c84e6ea3e	2023-11-17 16:03:00.112363+00	2023-11-25 10:11:02.546724+00	2023-11-02 15:00:00+00	CONCERT	f	kuchu-camp-11449ec3
d08574a5-03fb-4635-b230-3d19a6cecad4	https://www.instagram.com/p/CznK90XJCS-/	VALID	36023ce6-a3d6-4467-8bb3-081cb204e6e1	2023-11-17 16:03:26.712266+00	2023-11-25 10:11:02.546724+00	2023-11-18 10:30:00+00	CONCERT	f	club-victim-d08574a5
198f7088-3dff-4a7a-a8b3-6b1acc351e1a	https://www.instagram.com/p/CzTgYxuJXK9/	VALID	36023ce6-a3d6-4467-8bb3-081cb204e6e1	2023-11-17 16:03:27.701661+00	2023-11-25 10:11:02.546724+00	2023-11-11 10:30:00+00	DJ	f	club-victim-198f7088
e5a473c8-02ed-497e-9108-2796a8943627	https://www.instagram.com/p/CzBy_n4v3gE/	VALID	36023ce6-a3d6-4467-8bb3-081cb204e6e1	2023-11-17 16:03:27.890538+00	2023-11-25 10:11:02.546724+00	2023-12-22 15:00:00+00	DJ	f	club-victim-e5a473c8
b8b81a08-73fe-4974-bb76-0643ce6ad124	https://www.instagram.com/p/Czp81bpJIbC/	VALID	103f128a-3871-47d5-975d-997a6f6bc7cb	2023-11-17 16:04:22.204976+00	2023-11-25 10:11:02.546724+00	2023-11-18 10:00:00+00	CONCERT	t	pet-sounds-music-pub-b8b81a08
42580b70-86bc-4651-be21-959bcc1aa850	https://www.instagram.com/p/Czp8r1IpvVR/	VALID	103f128a-3871-47d5-975d-997a6f6bc7cb	2023-11-17 16:04:22.579427+00	2023-11-25 10:11:02.546724+00	2023-11-19 09:00:00+00	CONCERT	t	pet-sounds-music-pub-42580b70
e8c7e33a-c373-4560-92ab-183e72e67141	https://www.instagram.com/p/Czu9_bSLJi-/	VALID	7590b1c8-fee7-40ba-8684-eb715dacedb9	2023-11-17 16:05:30.621078+00	2023-11-25 10:11:02.546724+00	2023-11-24 10:30:00+00	CONCERT	f	space-station-e8c7e33a
6192f923-6411-4a95-ad66-5ed76f732fb9	https://www.instagram.com/p/Czp6lylJfQR/	VALID	7590b1c8-fee7-40ba-8684-eb715dacedb9	2023-11-17 16:05:30.935083+00	2023-11-25 10:11:02.546724+00	2023-11-17 10:30:00+00	CONCERT	f	space-station-6192f923
7a9276d3-fbd8-4da9-907a-bae35fc3cfd9	https://www.instagram.com/p/CzvPcjmJdBH/	VALID	7590b1c8-fee7-40ba-8684-eb715dacedb9	2023-11-17 16:05:31.986016+00	2023-11-25 10:11:02.546724+00	2023-11-23 10:30:00+00	CONCERT	f	space-station-7a9276d3
970eba04-0558-4c12-ad82-a38899c46132	https://www.instagram.com/p/Czpx0Q3JNnH/	VALID	7590b1c8-fee7-40ba-8684-eb715dacedb9	2023-11-17 16:05:32.641729+00	2023-11-25 10:11:02.546724+00	2023-11-22 10:30:00+00	CONCERT	f	space-station-970eba04
1090e339-a3ba-4d9f-a42c-6919a761c343	https://www.instagram.com/p/CzXwpOVJPt7/	VALID	7590b1c8-fee7-40ba-8684-eb715dacedb9	2023-11-17 16:05:33.201248+00	2023-11-25 10:11:02.546724+00	2023-11-15 11:00:00+00	CONCERT	f	space-station-1090e339
b6e5c984-ac7d-4ffd-96ca-d72baa029320	https://www.instagram.com/p/CzFufRFp8eK/	VALID	7590b1c8-fee7-40ba-8684-eb715dacedb9	2023-11-17 16:05:33.929485+00	2023-11-25 10:11:02.546724+00	2023-11-08 10:30:00+00	CONCERT	f	space-station-b6e5c984
a4ac254c-e97b-49b5-b3e7-f7985901f453	https://www.instagram.com/p/CzDQX_yJ9_x/	VALID	7590b1c8-fee7-40ba-8684-eb715dacedb9	2023-11-17 16:05:34.521355+00	2023-11-25 10:11:02.546724+00	2023-11-03 10:30:00+00	CONCERT	f	space-station-a4ac254c
b99c5fd2-dce0-4db5-9b2d-e0e2ab02d0c5	https://www.instagram.com/p/Cy8Mi2Bp1BZ/	VALID	7590b1c8-fee7-40ba-8684-eb715dacedb9	2023-11-17 16:05:34.799777+00	2023-11-25 10:11:02.546724+00	2023-11-04 06:30:00+00	CONCERT	f	space-station-b99c5fd2
ef29753d-cc2c-45a5-8ad0-61b6ec32134d	https://www.instagram.com/p/Cy2SgMFJo8k/	VALID	7590b1c8-fee7-40ba-8684-eb715dacedb9	2023-11-17 16:05:35.493529+00	2023-11-25 10:11:02.546724+00	2023-11-02 10:30:00+00	CONCERT	f	space-station-ef29753d
50e38034-61ee-4ea5-b9b7-57707aa3b8fb	https://www.instagram.com/p/Cy2RCcfpjQ6/	VALID	7590b1c8-fee7-40ba-8684-eb715dacedb9	2023-11-17 16:05:35.969787+00	2023-11-25 10:11:02.546724+00	2023-11-01 11:00:00+00	CONCERT	f	space-station-50e38034
716951bd-9e9b-45a5-9717-5854d0c08c23	https://www.instagram.com/p/CznYn9FJ_iL/	VALID	fd10a0cc-1c63-460b-aa79-108fb1383dc7	2023-11-17 16:05:59.857534+00	2023-11-25 10:11:02.546724+00	2023-11-18 09:00:00+00	CONCERT	f	zak-eun-mul-716951bd
841f0d07-98a7-440f-a076-09647889e081	https://www.instagram.com/p/CxQMKR5LWrA/	VALID	fd10a0cc-1c63-460b-aa79-108fb1383dc7	2023-11-17 16:06:00.013846+00	2023-11-25 10:11:02.546724+00	2023-09-23 10:30:00+00	CONCERT	f	zak-eun-mul-841f0d07
e3159739-22c7-42ac-91f3-f22587d26fbc	https://www.instagram.com/p/CzsLXclJY6Z/	VALID	6b9bbbbf-dabb-465b-8c53-2f1883fbc922	2023-11-17 16:06:42.746812+00	2023-11-25 10:11:02.546724+00	2023-11-25 10:30:00+00	DJ	f	acs-e3159739
c8d11027-d49f-4629-a00f-8b86c5b16164	https://www.instagram.com/p/CzYx2alpZgR/	VALID	6b9bbbbf-dabb-465b-8c53-2f1883fbc922	2023-11-17 16:06:43.969333+00	2023-11-25 10:11:02.546724+00	2023-11-10 12:00:00+00	DJ	f	acs-c8d11027
0c82c8b5-d7a8-4146-b6c7-ca6b9d669bb1	https://www.instagram.com/p/CzLCD6npXfJ/	VALID	6b9bbbbf-dabb-465b-8c53-2f1883fbc922	2023-11-17 16:06:45.210253+00	2023-11-25 10:11:02.546724+00	2023-11-03 12:00:00+00	DJ	f	acs-0c82c8b5
ba17cc80-f6b7-4355-b401-005a4547e0fd	https://www.instagram.com/p/CzGb-FcJ3Ie/	VALID	bd66786f-c8e0-4615-ae2e-af0b8ad0bca5	2023-11-17 16:07:47.523268+00	2023-11-25 10:11:02.546724+00	2023-11-18 10:00:00+00	CONCERT	f	hukez-live-hall-ba17cc80
9e45f936-0b36-4071-97a5-1fb238c57ea9	https://www.instagram.com/p/Cy0IvAjJ_jS/	VALID	bd66786f-c8e0-4615-ae2e-af0b8ad0bca5	2023-11-17 16:07:48.074834+00	2023-11-25 10:11:02.546724+00	2023-11-25 09:00:00+00	CONCERT	f	hukez-live-hall-9e45f936
5ca0b214-3bc6-4dff-aac8-5877d9df94ca	https://www.instagram.com/p/CxkPyxELbOb/	VALID	bd66786f-c8e0-4615-ae2e-af0b8ad0bca5	2023-11-17 16:07:48.710971+00	2023-11-25 10:11:02.546724+00	2023-10-07 10:30:00+00	CONCERT	f	hukez-live-hall-5ca0b214
eb0e8201-cc5c-48d5-b349-c689fe1d6709	https://www.instagram.com/p/Cwwm7K2Jy-2/	VALID	bd66786f-c8e0-4615-ae2e-af0b8ad0bca5	2023-11-17 16:07:48.889883+00	2023-11-25 10:11:02.546724+00	2023-09-23 10:00:00+00	CONCERT	f	hukez-live-hall-eb0e8201
a27ccf08-d76f-448c-9e47-32da33878803	https://www.instagram.com/p/CvYXgWRSC9S/	VALID	bd66786f-c8e0-4615-ae2e-af0b8ad0bca5	2023-11-17 16:07:49.226355+00	2023-11-25 10:11:02.546724+00	2023-08-20 08:30:00+00	CONCERT	f	hukez-live-hall-a27ccf08
857c8e61-eaf2-4340-ace0-4a0908955d65	https://www.instagram.com/p/CujTQA5JhRV/	VALID	bd66786f-c8e0-4615-ae2e-af0b8ad0bca5	2023-11-17 16:07:49.402361+00	2023-11-25 10:11:02.546724+00	2023-07-30 08:00:00+00	CONCERT	f	hukez-live-hall-857c8e61
17a0faec-5001-4d5b-9ccb-7a680989d7bf	https://www.instagram.com/p/CtdekgPJ01g/	VALID	bd66786f-c8e0-4615-ae2e-af0b8ad0bca5	2023-11-17 16:07:49.866646+00	2023-11-25 10:11:02.546724+00	2023-07-08 09:30:00+00	CONCERT	f	hukez-live-hall-17a0faec
585c3f14-7c37-4886-a5b4-5a088d30bec5	https://www.instagram.com/p/CzyjUvHRRsD/	VALID	93e3b7f5-2667-4fea-b1ef-a7085da031be	2023-11-18 16:00:58.446708+00	2023-11-25 10:11:02.546724+00	2023-11-26 10:00:00+00	CONCERT	f	seendosi-585c3f14
98333d04-ee6c-4803-a078-239e02a25fda	https://www.instagram.com/p/CyvJBS8J9gT/	VALID	2d722f4d-a824-496b-9de2-813ebc4be4f1	2023-11-18 16:01:39.679358+00	2023-11-25 10:11:02.546724+00	2023-11-12 09:00:00+00	CONCERT	f	mudaeruk-98333d04
ecc854df-cbbf-472b-bf66-c8d20888d97d	https://www.instagram.com/p/CyilTetrW7t/	VALID	2d722f4d-a824-496b-9de2-813ebc4be4f1	2023-11-18 16:01:40.328736+00	2023-11-25 10:11:02.546724+00	2023-10-22 08:00:00+00	CONCERT	f	mudaeruk-ecc854df
b09d020a-2e36-4739-8f89-2cee57703ae3	https://www.instagram.com/p/CyQlS0cLzbv/	VALID	2d722f4d-a824-496b-9de2-813ebc4be4f1	2023-11-18 16:01:40.701042+00	2023-11-25 10:11:02.546724+00	2023-10-21 09:00:00+00	CONCERT	f	mudaeruk-b09d020a
c3e37b28-9931-40d8-9580-12afa30da37e	https://www.instagram.com/p/CzxzOmerl-c/	VALID	1da88627-ca2e-448f-ad41-021ca1d2fee8	2023-11-18 16:02:01.701382+00	2023-11-25 10:11:02.546724+00	2023-11-25 10:00:00+00	CONCERT	f	senggi-studio-c3e37b28
c51829ca-46ad-4186-b03b-c314b4be2ccf	https://www.instagram.com/p/CzLv0aJJ-E9/	VALID	d3f45139-e3d8-4b82-9d22-ee5c84e6ea3e	2023-11-18 16:02:13.935661+00	2023-11-25 10:11:02.546724+00	2023-10-23 15:00:00+00	CONCERT	f	kuchu-camp-c51829ca
050fa3fb-47d1-4402-b954-786d924e2252	https://www.instagram.com/p/CzxZV68plEl/	VALID	379ce164-2bc5-4d25-9557-adf98fdc4bc6	2023-11-18 16:02:23.742468+00	2023-11-25 10:11:02.546724+00	2023-11-18 09:00:00+00	CONCERT	f	gong-sang-ondo-050fa3fb
3a7de774-8d4a-47fa-a5fd-28b658210f72	https://www.instagram.com/p/CzMhDdvy4zG/	VALID	6b9bbbbf-dabb-465b-8c53-2f1883fbc922	2023-11-18 16:03:16.591835+00	2023-11-25 10:11:02.546724+00	2023-11-04 11:00:00+00	DJ	f	acs-3a7de774
9d51261d-b050-4d82-b903-94b10d234627	https://www.instagram.com/p/CzP1spFpBd6/	VALID	bd66786f-c8e0-4615-ae2e-af0b8ad0bca5	2023-11-18 16:03:25.174803+00	2023-11-25 10:11:02.546724+00	2023-11-19 09:00:00+00	CONCERT	f	hukez-live-hall-9d51261d
d375e175-9f17-4a5f-83d5-e7299201d17f	https://www.instagram.com/p/Cy-lxnGJUua/	VALID	033b4a23-f135-4b0e-bccc-39cce670b057	2023-11-19 16:00:18.291714+00	2023-11-25 10:11:02.546724+00	2023-11-25 12:00:00+00	CONCERT	f	club-ff-d375e175
1213bbf3-da65-4927-8bd9-de6d9eec03d1	https://www.instagram.com/p/CzyCEnPLD4y/	VALID	033b4a23-f135-4b0e-bccc-39cce670b057	2023-11-19 16:00:18.310604+00	2023-11-25 10:11:02.546724+00	2023-11-23 14:00:00+00	DJ	f	club-ff-1213bbf3
7dedab90-a3ea-4339-a834-398c4433b48c	https://www.instagram.com/p/Cz1P8IGJ3zp/	VALID	0ba8c57f-6c80-4bf0-8ea4-b1d822fc0935	2023-11-19 16:00:30.95663+00	2023-11-25 10:11:02.546724+00	2023-11-25 11:00:00+00	CONCERT	t	cafe-idaho-7dedab90
7899d6b9-c07d-4363-84ff-2ba82b7aec5a	https://www.instagram.com/p/Cz0w2XOpdjD/	VALID	a56e4ff9-aea3-40e3-9a6f-1c0fea67c79a	2023-11-19 16:00:45.617219+00	2023-11-25 10:11:02.546724+00	2023-11-22 12:00:00+00	DJ	t	ovantgarde-7899d6b9
deaf4b60-935c-4316-8887-e7993e088cea	https://www.instagram.com/p/Cz0ixuiuXUN/	VALID	b1354f14-8bc6-4630-895d-97f28b712b9f	2023-11-19 16:01:05.569269+00	2023-11-25 10:11:02.546724+00	2023-11-19 12:30:00+00	DJ	t	channel-1969-deaf4b60
7dfedc1a-51fe-467b-8ab3-e34992ac2149	https://www.instagram.com/p/Cz06VCOrgI1/	VALID	2d722f4d-a824-496b-9de2-813ebc4be4f1	2023-11-19 16:01:42.467156+00	2023-11-25 10:11:02.546724+00	2023-12-03 06:00:00+00	DJ	f	mudaeruk-7dfedc1a
38aa9c92-13fb-4d92-ac0e-072078a72737	https://www.instagram.com/p/Cz0Q6I4S_bJ/	VALID	36023ce6-a3d6-4467-8bb3-081cb204e6e1	2023-11-19 16:02:21.283147+00	2023-11-25 10:11:02.546724+00	2023-11-18 12:00:00+00	DJ	f	club-victim-38aa9c92
9be5ad4d-0ea4-4bed-bddf-e65fbea5d790	https://www.instagram.com/p/Czz-FHQJ-l8/	VALID	379ce164-2bc5-4d25-9557-adf98fdc4bc6	2023-11-19 16:02:28.680002+00	2023-11-25 10:11:02.546724+00	2023-11-19 04:30:00+00	CONCERT	f	gong-sang-ondo-9be5ad4d
035ec2e5-d5f3-439d-bbf8-79216f89def9	https://www.instagram.com/p/Czp8ilHpJbH/	VALID	103f128a-3871-47d5-975d-997a6f6bc7cb	2023-11-19 16:02:50.262289+00	2023-11-25 10:11:02.546724+00	2023-11-17 10:00:00+00	CONCERT	t	pet-sounds-music-pub-035ec2e5
a716ee05-b77d-4598-bb6c-1e3d7819de70	https://www.instagram.com/p/CzITlH5JNuf/	VALID	7590b1c8-fee7-40ba-8684-eb715dacedb9	2023-11-19 16:02:57.813828+00	2023-11-25 10:11:02.546724+00	2023-11-09 11:00:00+00	CONCERT	f	space-station-a716ee05
934d0e97-69a5-4a44-8d4d-eb3c4d6d2562	https://en.ctrplus.com/jebi	VALID	05a51ca8-6544-4ad1-8782-3415f2599cbe	2023-11-19 16:27:32.317981+00	2023-11-25 10:11:02.546724+00	2023-11-22 11:30:00+00	CONCERT	t	jebidabang-934d0e97
15cc20c6-f80c-40fc-892e-ef9f71a2699f	https://www.instagram.com/p/CzVdpdZpHM7/	VALID	19b867be-7a3c-4c03-b589-69fed6692aa5	2023-11-16 17:06:36.010256+00	2023-11-25 10:11:02.546724+00	2023-11-22 10:00:00+00	CONCERT	f	salon-moonbow-15cc20c6
b8d081e7-6744-4b84-8708-d456484369b8	https://www.instagram.com/p/Cz2k-bIp9XA/	VALID	22bf8781-f550-49cd-acbc-ddcbd244a3b7	2023-11-20 16:00:28.357771+00	2023-11-25 10:11:02.546724+00	2023-10-15 08:00:00+00	DJ	f	the-studio-hbc-b8d081e7
2da77103-a741-4fdb-a6eb-0eef3be6e7c8	https://www.instagram.com/p/Cz2h9GhO_-Z/	VALID	22bf8781-f550-49cd-acbc-ddcbd244a3b7	2023-11-20 16:00:28.601788+00	2023-11-25 10:11:02.546724+00	2023-12-08 15:00:00+00	CONCERT	f	the-studio-hbc-2da77103
02f144e2-d2cc-48b0-a91e-861a9d6caf97	https://www.instagram.com/p/Cz3hOR7Jgx5/	VALID	0ba8c57f-6c80-4bf0-8ea4-b1d822fc0935	2023-11-20 16:00:49.120892+00	2023-11-25 10:11:02.546724+00	2023-11-25 14:00:00+00	DJ	f	cafe-idaho-02f144e2
28e34dbf-37f9-4a78-bc98-c9e7ec952e7d	https://www.instagram.com/p/Cz2OnEdv6ZJ/	VALID	dfe7890d-f2b8-48d8-95d8-04364d5b3641	2023-11-20 16:01:16.413636+00	2023-11-25 10:11:02.546724+00	2023-11-25 12:00:00+00	DJ	f	echo-28e34dbf
2638912a-9e11-496f-8d73-65e817c48b07	https://www.instagram.com/p/Cz3bdnYJsiF/	VALID	24d49261-916c-4f4d-8d20-5d77c5d6e236	2023-11-20 16:02:00.520366+00	2023-11-25 10:11:02.546724+00	2023-12-01 11:00:00+00	CONCERT	t	space-hangang-2638912a
a407b453-f51c-423e-92fe-2ff057bd72dd	https://www.instagram.com/p/Cz3ZhLpJU5B/	VALID	24d49261-916c-4f4d-8d20-5d77c5d6e236	2023-11-20 16:02:00.765914+00	2023-11-25 10:11:02.546724+00	2023-12-02 09:00:00+00	CONCERT	f	space-hangang-a407b453
0d08d669-9f86-45ef-89b1-181cec45ad80	https://www.instagram.com/p/Cz3G8ubpkcg/	VALID	bbb07824-b660-4f8a-a841-be5b779c5937	2023-11-20 16:02:22.395981+00	2023-11-25 10:11:02.546724+00	2023-01-09 08:00:00+00	DJ	t	yug-ilbong-0d08d669
7bcc1600-6229-46b2-a603-4623c1efcfd4	https://www.instagram.com/p/Cz2iZQkS2Lk/	VALID	2d722f4d-a824-496b-9de2-813ebc4be4f1	2023-11-20 16:02:37.186567+00	2023-11-25 10:11:02.546724+00	2023-12-23 07:00:00+00	CONCERT	f	mudaeruk-7bcc1600
d8e0170e-5645-4ec1-b84f-69ef557b512a	https://www.instagram.com/p/CzVdY2OJPP1/	VALID	19b867be-7a3c-4c03-b589-69fed6692aa5	2023-11-20 16:03:00.782263+00	2023-11-25 10:11:02.546724+00	2023-11-20 10:00:00+00	CONCERT	f	salon-moonbow-d8e0170e
259ce337-0de6-49e3-8f11-39248524860b	https://www.instagram.com/p/CzpmBzsJI7j/	VALID	05a51ca8-6544-4ad1-8782-3415f2599cbe	2023-11-20 16:04:37.682126+00	2023-11-25 10:11:02.546724+00	2023-10-20 11:00:00+00	CONCERT	t	jebidabang-259ce337
d514ff6a-670d-4706-ad14-68b3838292ba	https://www.instagram.com/p/CzP0o3irWC_/	VALID	05a51ca8-6544-4ad1-8782-3415f2599cbe	2023-11-20 16:04:37.853905+00	2023-11-25 10:11:02.546724+00	2023-10-01 11:00:00+00	CONCERT	t	jebidabang-d514ff6a
6bd36945-87b2-4769-afea-ba6d4621e6a5	https://www.instagram.com/p/Cz2jf95Jr9c/	VALID	36023ce6-a3d6-4467-8bb3-081cb204e6e1	2023-11-20 16:04:54.121615+00	2023-11-25 10:11:02.546724+00	2023-11-25 10:00:00+00	CONCERT	f	club-victim-6bd36945
38221af0-12e1-4016-8c9f-c636e4ee8620	https://www.instagram.com/p/Cz5mY74rrK7/	VALID	22bf8781-f550-49cd-acbc-ddcbd244a3b7	2023-11-21 16:00:52.510948+00	2023-11-25 10:11:02.546724+00	2023-10-19 15:00:00+00	CONCERT	f	the-studio-hbc-38221af0
77be8954-65c3-4b34-84f1-c336b739042d	https://www.instagram.com/p/Cz5ZIfeLY-g/	VALID	033b4a23-f135-4b0e-bccc-39cce670b057	2023-11-21 16:01:07.122304+00	2023-11-25 10:11:02.546724+00	2023-12-09 12:10:00+00	CONCERT	f	club-ff-77be8954
a6e52d8d-37bf-47da-b3ed-3ca176f87a2b	https://www.instagram.com/p/Cz6H-ktpYH9/	VALID	41a78e9f-8f24-4704-b6c7-2d3ee5d3482b	2023-11-21 16:01:39.228528+00	2023-11-25 10:11:02.546724+00	2023-12-01 10:00:00+00	CONCERT	f	club-sharp-a6e52d8d
a8dcf35c-0e5c-45d9-bf74-723b23ff3457	https://www.instagram.com/p/Cz6ZmERxFk_/	VALID	93e3b7f5-2667-4fea-b1ef-a7085da031be	2023-11-21 16:01:47.731481+00	2023-11-25 10:11:02.546724+00	2023-11-24 13:00:00+00	DJ	t	seendosi-a8dcf35c
ce5a31f9-98f3-46cf-8440-4f6ef64e416b	https://www.instagram.com/p/Cz5I1f0JUFS/	VALID	b1354f14-8bc6-4630-895d-97f28b712b9f	2023-11-21 16:01:55.863946+00	2023-11-25 10:11:02.546724+00	2023-11-24 12:00:00+00	DJ	f	channel-1969-ce5a31f9
08b1b2bd-ac1f-431c-bbba-af065605f2fa	https://www.instagram.com/p/Cz5X6uJrQQ8/	VALID	17db08c1-1d74-4361-b6f2-8d24598060a2	2023-11-21 16:02:31.846665+00	2023-11-25 10:11:02.546724+00	2023-12-06 11:00:00+00	CONCERT	f	cafe-unplugged-08b1b2bd
e60eefb4-ac73-42e3-a9c4-a2ec0d136c19	https://www.instagram.com/p/Cz450D6SKoy/	VALID	17db08c1-1d74-4361-b6f2-8d24598060a2	2023-11-21 16:02:31.874945+00	2023-11-25 10:11:02.546724+00	2023-11-27 11:00:00+00	CONCERT	f	cafe-unplugged-e60eefb4
57b5e8eb-8681-4f73-88e9-5e66d4e1ea19	https://www.instagram.com/p/CzG7EJipdD8/	VALID	7aa611e8-00d2-4ee9-a7cb-d834914e05a9	2023-11-21 16:02:54.842191+00	2023-11-25 10:11:02.546724+00	2023-11-25 09:30:00+00	CONCERT	t	kill-the-youtube-57b5e8eb
a0044c3e-bce2-4f4c-bed4-abad05cd9fa6	https://www.instagram.com/p/Cz5Gi2rvIad/	VALID	c3893cc9-e88f-461c-a784-81e341a2c8f0	2023-11-21 16:03:14.211622+00	2023-11-25 10:11:02.546724+00	2023-12-30 08:00:00+00	CONCERT	f	rolling-hall-a0044c3e
a0b749fb-d8f8-420f-9ad9-a16b45710228	https://www.instagram.com/p/Cz5Rnd6Lx-e/	VALID	103f128a-3871-47d5-975d-997a6f6bc7cb	2023-11-21 16:04:02.907411+00	2023-11-25 10:11:02.546724+00	2023-11-23 10:00:00+00	CONCERT	t	pet-sounds-music-pub-a0b749fb
a2ac2976-feb7-40a9-b191-58dda251e001	https://www.instagram.com/p/Cz4J4AoyufD/	VALID	103f128a-3871-47d5-975d-997a6f6bc7cb	2023-11-21 16:04:02.929056+00	2023-11-25 10:11:02.546724+00	2023-11-21 11:00:00+00	DJ	t	pet-sounds-music-pub-a2ac2976
50143bff-bd64-4eaf-b668-2ab286359321	https://www.instagram.com/p/Cz7pz7yp7rm/	PENDING	033b4a23-f135-4b0e-bccc-39cce670b057	2023-11-22 16:00:26.430629+00	2023-11-25 10:11:02.546724+00	2023-11-24 09:30:00+00	CONCERT	f	club-ff-50143bff
37c6d9bd-dfd8-48cf-8ceb-e0dab8dc76ff	https://www.instagram.com/p/Cx7GlQjLmVy/	PENDING	41a78e9f-8f24-4704-b6c7-2d3ee5d3482b	2023-11-22 16:00:53.401675+00	2023-11-25 10:11:02.546724+00	2023-10-08 08:00:00+00	CONCERT	f	club-sharp-37c6d9bd
60dfe437-481e-4c0a-b5e2-eda28c31dc16	https://www.instagram.com/p/CxZ20FSvn3f/	PENDING	41a78e9f-8f24-4704-b6c7-2d3ee5d3482b	2023-11-22 16:00:53.434623+00	2023-11-25 10:11:02.546724+00	2023-10-07 05:00:00+00	CONCERT	f	club-sharp-60dfe437
ca14ca38-4342-4627-8108-16c452dc9f39	https://www.instagram.com/p/Cz81FE8Rc_x/	PENDING	93e3b7f5-2667-4fea-b1ef-a7085da031be	2023-11-22 16:01:12.056852+00	2023-11-25 10:11:02.546724+00	2023-12-02 11:00:00+00	CONCERT	f	seendosi-ca14ca38
872d0ef8-bd4a-4b1b-bb80-cf5e5cc2bdcf	https://www.instagram.com/p/Cz8jg5uxZ_k/	PENDING	93e3b7f5-2667-4fea-b1ef-a7085da031be	2023-11-22 16:01:12.080127+00	2023-11-25 10:11:02.546724+00	2023-11-25 11:00:00+00	DJ	f	seendosi-872d0ef8
228a7c85-963c-4fde-902e-55dd76d7686f	https://www.instagram.com/p/CzQmtPjOpr4/	PENDING	93e3b7f5-2667-4fea-b1ef-a7085da031be	2023-11-22 16:01:12.099965+00	2023-11-25 10:11:02.546724+00	2023-11-18 12:00:00+00	CONCERT	f	seendosi-228a7c85
7952cf77-b4b8-4c03-ab3a-8de7ed3b3539	https://www.instagram.com/p/CzSVotiJlOE/	PENDING	dfe7890d-f2b8-48d8-95d8-04364d5b3641	2023-11-22 16:01:29.41791+00	2023-11-25 10:11:02.546724+00	2023-11-10 15:00:00+00	DJ	f	echo-7952cf77
84dc73ac-f12b-4c1d-85d2-2ca2cab41f8a	https://www.instagram.com/p/CzlKKbqLXZh/	PENDING	a56e4ff9-aea3-40e3-9a6f-1c0fea67c79a	2023-11-22 16:02:25.778275+00	2023-11-25 10:11:02.546724+00	2023-12-09 11:00:00+00	CONCERT	f	ovantgarde-84dc73ac
f22b514c-a9b3-424e-bb26-d2730e07d5c9	https://www.instagram.com/p/Cz7zrNxpKAq/	PENDING	c4286741-f287-42f9-834c-ad4952b18f17	2023-11-22 16:03:01.432322+00	2023-11-25 10:11:02.546724+00	2023-12-02 10:00:00+00	DJ	t	morene-sukha-f22b514c
e22a8319-baaf-46c4-b0dc-7f1c9d6369b4	https://www.instagram.com/p/CzlmVxzpgNc/	PENDING	c4286741-f287-42f9-834c-ad4952b18f17	2023-11-22 16:03:01.45825+00	2023-11-25 10:11:02.546724+00	2023-11-24 11:00:00+00	CONCERT	f	morene-sukha-e22a8319
6385590e-a002-44e9-8bc5-d4bf85e7de1f	https://www.instagram.com/p/Cz8ja5MLl2C/	PENDING	379ce164-2bc5-4d25-9557-adf98fdc4bc6	2023-11-22 16:03:25.137345+00	2023-11-25 10:11:02.546724+00	2023-12-18 11:00:00+00	CONCERT	f	gong-sang-ondo-6385590e
f435ab5c-e1b7-4c36-8ff4-32f316324470	https://www.instagram.com/p/Cz7r8VFroIh/	PENDING	379ce164-2bc5-4d25-9557-adf98fdc4bc6	2023-11-22 16:03:25.154769+00	2023-11-25 10:11:02.546724+00	2023-11-22 11:00:00+00	CONCERT	f	gong-sang-ondo-f435ab5c
0e33f417-1144-409f-90c7-c379d9704b58	https://www.instagram.com/p/Cz73yvlJTv8/	PENDING	7590b1c8-fee7-40ba-8684-eb715dacedb9	2023-11-22 16:03:40.162446+00	2023-11-25 10:11:02.546724+00	2023-11-26 07:00:00+00	CONCERT	f	space-station-0e33f417
9373aaab-1127-4f62-84b2-b70ee7629680	https://www.instagram.com/p/Cz711uwJJ3S/	PENDING	7590b1c8-fee7-40ba-8684-eb715dacedb9	2023-11-22 16:03:40.191674+00	2023-11-25 10:11:02.546724+00	2023-11-29 10:30:00+00	CONCERT	f	space-station-9373aaab
c2aa778c-a13a-4a81-bc8f-9c8abe3588f6	https://www.instagram.com/p/Cz8poCTJAYA/	PENDING	c32097e8-abbb-4b61-937a-437705706ba9	2023-11-22 16:04:20.306901+00	2023-11-25 10:11:02.546724+00	2023-12-13 11:00:00+00	CONCERT	f	club-on-air-c2aa778c
03b8d0dc-7da8-4b0d-afc6-9279bf5d75de	https://www.instagram.com/p/Cz8pjy-ptzM/	PENDING	c32097e8-abbb-4b61-937a-437705706ba9	2023-11-22 16:04:20.345227+00	2023-11-25 10:11:02.546724+00	2023-12-11 11:00:00+00	CONCERT	f	club-on-air-03b8d0dc
25e33bc2-d07f-42bb-a37e-1e642b1ca120	https://www.instagram.com/p/Cz8pYZrJUgr/	PENDING	c32097e8-abbb-4b61-937a-437705706ba9	2023-11-22 16:04:20.356256+00	2023-11-25 10:11:02.546724+00	2023-12-19 11:00:00+00	CONCERT	f	club-on-air-25e33bc2
141581a9-d2ba-472a-b47c-065a338a99c9	https://www.instagram.com/p/Cz8pR4KJYYO/	PENDING	c32097e8-abbb-4b61-937a-437705706ba9	2023-11-22 16:04:20.367586+00	2023-11-25 10:11:02.546724+00	2023-12-12 11:00:00+00	CONCERT	f	club-on-air-141581a9
a56b6577-e3ea-4efb-9fa9-85e85a501a0b	https://www.instagram.com/p/Cz8aVysLUJS/	PENDING	c32097e8-abbb-4b61-937a-437705706ba9	2023-11-22 16:04:20.383068+00	2023-11-25 10:11:02.546724+00	2023-11-23 11:00:00+00	DJ	f	club-on-air-a56b6577
1e08a638-4d4e-403e-89aa-bc808cda3d16	https://www.instagram.com/p/Cz7nlzPpDh5/	PENDING	103f128a-3871-47d5-975d-997a6f6bc7cb	2023-11-22 16:05:06.026332+00	2023-11-25 10:11:02.546724+00	2023-11-24 12:00:00+00	CONCERT	f	pet-sounds-music-pub-1e08a638
45adac1b-303c-4708-bbfd-acfd63425519	https://www.instagram.com/p/Cz7_6NSL1jg/	PENDING	103f128a-3871-47d5-975d-997a6f6bc7cb	2023-11-22 16:05:06.050878+00	2023-11-25 10:11:02.546724+00	2023-11-26 09:00:00+00	CONCERT	t	pet-sounds-music-pub-45adac1b
c83d87cb-37ea-4a18-86b5-06fec59e9852	https://www.instagram.com/p/Cz7_v9iLfuq/	PENDING	103f128a-3871-47d5-975d-997a6f6bc7cb	2023-11-22 16:05:06.066775+00	2023-11-25 10:11:02.546724+00	2023-11-24 11:00:00+00	CONCERT	t	pet-sounds-music-pub-c83d87cb
9e9f5305-775a-4d47-8977-785211fd9513	https://www.ctrplus.com/jebi	PENDING	05a51ca8-6544-4ad1-8782-3415f2599cbe	2023-11-23 14:03:09.506803+00	2023-11-25 10:11:02.546724+00	2023-11-23 12:00:00+00	CONCERT	t	jebidabang-9e9f5305
baa401c8-fae8-46df-b6ad-6f55d6cae360	https://www.ctrplus.com/jebi	PENDING	05a51ca8-6544-4ad1-8782-3415f2599cbe	2023-11-23 14:03:10.409207+00	2023-11-25 10:11:02.546724+00	2023-11-24 12:00:00+00	CONCERT	t	jebidabang-baa401c8
552fc055-d58a-4105-8861-625546ffb14d	https://www.ctrplus.com/jebi	PENDING	05a51ca8-6544-4ad1-8782-3415f2599cbe	2023-11-23 14:03:11.314036+00	2023-11-25 10:11:02.546724+00	2023-11-25 11:00:00+00	CONCERT	t	jebidabang-552fc055
e0bd01ac-5c64-4979-86b8-2889b7c11714	https://www.ctrplus.com/jebi	PENDING	05a51ca8-6544-4ad1-8782-3415f2599cbe	2023-11-23 14:03:12.215083+00	2023-11-25 10:11:02.546724+00	2023-11-26 11:00:00+00	CONCERT	t	jebidabang-e0bd01ac
ba1a1841-4ee9-4dfd-a7ec-409072eb0624	https://www.ctrplus.com/jebi	PENDING	05a51ca8-6544-4ad1-8782-3415f2599cbe	2023-11-23 14:03:13.109282+00	2023-11-25 10:11:02.546724+00	2023-11-29 11:00:00+00	CONCERT	t	jebidabang-ba1a1841
e77ab612-ad85-4047-8fa6-cb9cd03e5e46	https://www.ctrplus.com/jebi	PENDING	05a51ca8-6544-4ad1-8782-3415f2599cbe	2023-11-23 14:03:14.008024+00	2023-11-25 10:11:02.546724+00	2023-11-30 12:00:00+00	CONCERT	t	jebidabang-e77ab612
73e1bb1c-06cf-4d2c-bd3e-56a7293e2863	https://www.ctrplus.com/jebi	PENDING	05a51ca8-6544-4ad1-8782-3415f2599cbe	2023-11-23 14:03:14.886869+00	2023-11-25 10:11:02.546724+00	2023-12-01 11:00:00+00	CONCERT	t	jebidabang-73e1bb1c
49cd160c-f327-405d-9726-488e65844981	https://www.ctrplus.com/jebi	PENDING	05a51ca8-6544-4ad1-8782-3415f2599cbe	2023-11-23 14:03:15.767469+00	2023-11-25 10:11:02.546724+00	2023-12-02 11:00:00+00	CONCERT	t	jebidabang-49cd160c
46efa0b5-0cf3-4c49-9d71-ed68d8f942dc	https://www.instagram.com/p/CymdVN0ybfv/	PENDING	19b867be-7a3c-4c03-b589-69fed6692aa5	2023-11-24 05:07:30.958823+00	2023-11-25 10:11:02.546724+00	2023-10-20 10:00:00+00	CONCERT	f	salon-moonbow-46efa0b5
9a50673b-6daf-4ebc-a717-92091c56184d	https://www.instagram.com/p/Cz-425KLmKX/	PENDING	1da88627-ca2e-448f-ad41-021ca1d2fee8	2023-11-24 05:07:41.81055+00	2023-11-25 10:11:02.546724+00	2023-12-03 10:00:00+00	CONCERT	f	senggi-studio-9a50673b
ee81ed9d-eaf6-4b98-a792-57bfce578bfc	https://www.instagram.com/p/Czkz49trld1/	PENDING	1da88627-ca2e-448f-ad41-021ca1d2fee8	2023-11-24 05:07:41.835972+00	2023-11-25 10:11:02.546724+00	2023-12-02 11:00:00+00	CONCERT	f	senggi-studio-ee81ed9d
a8509925-8f11-42f1-840d-91cbb1479a1a	https://www.instagram.com/p/CzgCmEjpbvi/	PENDING	1da88627-ca2e-448f-ad41-021ca1d2fee8	2023-11-24 05:07:41.855141+00	2023-11-25 10:11:02.546724+00	2023-12-01 11:00:00+00	CONCERT	f	senggi-studio-a8509925
0fea70df-8253-4a51-94cc-b68d503d87f1	https://www.instagram.com/p/Cz-OJwnp-P_/	PENDING	05a51ca8-6544-4ad1-8782-3415f2599cbe	2023-11-24 05:07:56.743823+00	2023-11-25 10:11:02.546724+00	2023-10-01 12:00:00+00	CONCERT	t	jebidabang-0fea70df
7f3fbe56-b68e-40d3-b3a2-ef37e7156f3c	https://www.instagram.com/p/C0A_cP9xppn/	PENDING	95cb4b2e-3963-4ab6-8b89-713d5eb406e6	2023-11-24 05:08:17.061534+00	2023-11-25 10:11:02.546724+00	2023-12-21 10:00:00+00	CONCERT	f	musinsa-garage-7f3fbe56
6cb62875-63c2-47e3-8012-caf82c9f2733	https://www.instagram.com/p/Cz-5lDGuc9g/	PENDING	b1354f14-8bc6-4630-895d-97f28b712b9f	2023-11-24 05:23:52.444655+00	2023-11-25 10:11:02.546724+00	2023-11-30 12:00:00+00	CONCERT	f	channel-1969-6cb62875
9ccf7345-0845-4f73-9514-225cf33304d7	https://www.instagram.com/p/Cz-MDjfJHKP/	PENDING	b1354f14-8bc6-4630-895d-97f28b712b9f	2023-11-24 05:23:52.476667+00	2023-11-25 10:11:02.546724+00	2023-11-26 12:30:00+00	DJ	t	channel-1969-9ccf7345
f0dd7d27-25a5-48c9-bbdf-f7bd3537165c	https://www.instagram.com/p/CzTQJGPJ7WB/	PENDING	17db08c1-1d74-4361-b6f2-8d24598060a2	2023-11-24 05:24:03.399419+00	2023-11-25 10:11:02.546724+00	2023-12-03 10:00:00+00	CONCERT	f	cafe-unplugged-f0dd7d27
ef93affe-2a44-46ff-8715-3e206f6ced9e	https://www.instagram.com/p/CzhtcrByPOM/	PENDING	bbb07824-b660-4f8a-a841-be5b779c5937	2023-11-24 05:24:11.361373+00	2023-11-25 10:11:02.546724+00	2023-11-19 10:00:00+00	DJ	f	yug-ilbong-ef93affe
0d21ea4d-c224-415d-9738-c2ea4a80ed4b	https://www.instagram.com/p/C0A1zKRp4K6/	PENDING	2d722f4d-a824-496b-9de2-813ebc4be4f1	2023-11-24 05:24:22.121754+00	2023-11-25 10:11:02.546724+00	2023-12-17 05:00:00+00	CONCERT	f	mudaeruk-0d21ea4d
882b5de8-fcfb-40f1-b946-1a9f6537dd6c	https://www.instagram.com/p/Cz-fybFpk6v/	PENDING	7590b1c8-fee7-40ba-8684-eb715dacedb9	2023-11-24 05:24:35.655826+00	2023-11-25 10:11:02.546724+00	2023-11-30 10:30:00+00	CONCERT	f	space-station-882b5de8
fea31ce7-551b-4ac8-83c8-5cd57e5f7ba3	https://www.instagram.com/p/Cz-nKTrJKOT/	PENDING	6b9bbbbf-dabb-465b-8c53-2f1883fbc922	2023-11-24 05:24:53.103602+00	2023-11-25 10:11:02.546724+00	2023-12-31 10:30:00+00	DJ	f	acs-fea31ce7
e00a3d22-ffaa-420f-906f-5280dc729691	https://www.instagram.com/p/Cz_N5OVJDpU/	PENDING	c3893cc9-e88f-461c-a784-81e341a2c8f0	2023-11-24 05:25:05.842384+00	2023-11-25 10:11:02.546724+00	2023-11-24 11:00:00+00	CONCERT	f	rolling-hall-e00a3d22
2f041989-488b-4a1c-8800-9a7bd518e928	https://www.instagram.com/p/CzIcFrgp0pX/	INVALID	7590b1c8-fee7-40ba-8684-eb715dacedb9	2023-11-17 16:05:31.573839+00	2023-11-25 10:11:02.546724+00	2023-12-07 10:30:00+00	CONCERT	t	space-station-2f041989
950f5181-9b5b-43b3-8945-f807cacd62e6	https://www.instagram.com/p/C0MOTGqJuRn/	PENDING	103f128a-3871-47d5-975d-997a6f6bc7cb	2023-11-28 16:03:44.676717+00	2023-11-28 16:03:44.676717+00	2023-03-12 09:00:00+00	CONCERT	t	pet-sounds-music-pub-950f5181
3e440cf8-79ae-434c-97c3-462c107779e4	https://www.instagram.com/p/C0MOMiwpFnb/	PENDING	103f128a-3871-47d5-975d-997a6f6bc7cb	2023-11-28 16:03:44.703296+00	2023-11-28 16:03:44.703296+00	2023-12-02 10:00:00+00	CONCERT	t	pet-sounds-music-pub-3e440cf8
f3c2645a-f672-4da7-829f-fac01b3cb7fd	https://www.instagram.com/p/C0MOHSmpjkf/	PENDING	103f128a-3871-47d5-975d-997a6f6bc7cb	2023-11-28 16:03:44.725612+00	2023-11-28 16:03:44.725612+00	2023-12-01 10:00:00+00	CONCERT	t	pet-sounds-music-pub-f3c2645a
d54ee7b1-8661-4173-bdf6-8e6e9612c460	https://www.instagram.com/p/C0MOAweJky4/	PENDING	103f128a-3871-47d5-975d-997a6f6bc7cb	2023-11-28 16:03:44.750549+00	2023-11-28 16:03:44.750549+00	2023-11-30 10:00:00+00	CONCERT	t	pet-sounds-music-pub-d54ee7b1
\.


--
-- Data for Name: music_event_artists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."music_event_artists" ("event_id", "artist_id") FROM stdin;
c2f5f116-1add-4d3b-a3d4-7602b768989d	7de5bc68-214b-46b7-97bd-992340bd7c88
cf1b884d-a06b-48fb-a33e-ed8c72e4759b	ae2e1427-7991-4efa-9a0f-75b7a161344f
140d3d59-bf43-4be3-900d-ecf7e1fc2c97	d5a38e8d-65c7-452e-af7a-efd032db5239
140d3d59-bf43-4be3-900d-ecf7e1fc2c97	993d6f64-1ba9-429e-b419-f4c4e0014903
557c0193-1d5f-4ed4-b240-6e5af39ea0ca	22582014-2213-48ac-aa5c-8611634d8730
557c0193-1d5f-4ed4-b240-6e5af39ea0ca	50f45348-bfe5-4f6f-985e-d193e131e6fc
ce6d87fc-445e-44dc-b77b-75775f31d8dd	c3f805dd-bd11-4c61-b756-1e89b6487372
01857980-4636-4f30-b94a-cb26104be3e4	05c4e871-6f92-4094-b191-b82d5be7fd82
01857980-4636-4f30-b94a-cb26104be3e4	01b51b32-7053-4a27-96cb-ec3dc93eeed3
01857980-4636-4f30-b94a-cb26104be3e4	097b275d-8bee-403e-b99f-be4a3f3e2e6e
01857980-4636-4f30-b94a-cb26104be3e4	af8f0677-483a-4728-bc41-b7408a950128
01857980-4636-4f30-b94a-cb26104be3e4	77aa633b-75e1-4fc5-99b4-8c471b823179
01857980-4636-4f30-b94a-cb26104be3e4	c0153e16-d8c1-489c-b74a-7544e7c1a587
1dec53a5-c73c-4637-842a-bb7f68adc22f	1a793166-1da4-4783-b772-b4fcecaffdb8
1dec53a5-c73c-4637-842a-bb7f68adc22f	9ef26dbe-27be-47cd-8333-79d17a9e11e2
1dec53a5-c73c-4637-842a-bb7f68adc22f	2bfba36f-6bc5-442b-a3dc-84bcdcfb2c9d
1dec53a5-c73c-4637-842a-bb7f68adc22f	e31de753-21cb-475d-bc7c-b2ce67a12b33
e2556d92-e54f-402c-8f70-08900266affd	3680bc6e-533a-4062-ab5e-c1ca466c1a82
e2556d92-e54f-402c-8f70-08900266affd	7e847140-b45f-4804-9919-6e4d5f45b6f3
71e3cdd4-885c-46fd-b398-603909a0d0e2	8673fab2-96f7-485f-8e97-5a8bb7dbcb99
71e3cdd4-885c-46fd-b398-603909a0d0e2	59516289-a573-4c63-967a-894d8cf35053
71e3cdd4-885c-46fd-b398-603909a0d0e2	c0d43305-a1be-4adf-98af-a315f5ae2287
71e3cdd4-885c-46fd-b398-603909a0d0e2	416045e2-b110-4944-af9a-e0622c0a1943
f38c708e-c393-4ec1-909f-f8873e48a8c2	f9783a5c-246b-4c26-8597-8eead616dacd
f38c708e-c393-4ec1-909f-f8873e48a8c2	ddada18f-e111-4cd8-969b-37a28725a740
da839fce-f357-41a1-9803-be1235106fa6	db6226bb-6b5e-403b-9ca3-9f314ec8a261
da839fce-f357-41a1-9803-be1235106fa6	4fef0aff-1264-468d-a07d-8a447fa58711
da839fce-f357-41a1-9803-be1235106fa6	c18bff4f-ec86-4ed4-bd74-7782e24cd0e3
da839fce-f357-41a1-9803-be1235106fa6	248a0597-01ae-478a-9324-a3925ca099fd
afbbcd87-e355-4e02-86ca-b88ced6b4f79	f9783a5c-246b-4c26-8597-8eead616dacd
afbbcd87-e355-4e02-86ca-b88ced6b4f79	ddada18f-e111-4cd8-969b-37a28725a740
ff692c9b-3079-4fed-ab09-4a1ca9384a65	9d391182-ef59-41cc-a4b3-248270875df2
303614a1-ae0b-4f2d-b657-59557a019e52	b89ccc1d-2541-4e33-80c7-27e4dbcff013
4993266e-5f2c-4925-9421-0ca22fba1dc5	7792ef92-393a-4fc1-9cec-408f98b22a8f
4fa9f909-09c9-4785-8adc-aaa294e5cc01	018ec4c9-2659-4b69-affd-e5409c56bcfe
4fa9f909-09c9-4785-8adc-aaa294e5cc01	5e22f574-322a-4bea-8dec-edb665199f3d
4fa9f909-09c9-4785-8adc-aaa294e5cc01	5546afea-f51e-4727-a172-5d8ce19758e7
4fa9f909-09c9-4785-8adc-aaa294e5cc01	8a377e6f-ffd2-42df-bde9-14ee2443c7f7
905d99c7-f0d4-40e7-b351-47e5f06b5f84	d87d48de-16ea-4fed-a3e4-c5316ea430b9
242e13f8-cab3-439c-8cf8-b94ff3488411	848a203a-07c7-4625-89ae-87a623e2bc1a
242e13f8-cab3-439c-8cf8-b94ff3488411	7ccb00af-936f-4f6e-bdb6-01763192ae6e
242e13f8-cab3-439c-8cf8-b94ff3488411	58b64edc-f248-4e1a-a046-82c12de4d4bf
242e13f8-cab3-439c-8cf8-b94ff3488411	f007e7e8-bf5a-4340-8401-f1f4ed7d7123
242e13f8-cab3-439c-8cf8-b94ff3488411	e8eda07a-edd6-4b30-96b5-c73448bd505f
db631db9-d9c5-40d2-82ef-6eee5273b4e3	d476949a-79f8-419f-b09c-146d6de9d642
db631db9-d9c5-40d2-82ef-6eee5273b4e3	8cfbd56d-6b6a-4e2b-9305-ef86cb9accfb
db631db9-d9c5-40d2-82ef-6eee5273b4e3	bc4aa871-ea9e-48f5-a70e-72b821a616ec
db631db9-d9c5-40d2-82ef-6eee5273b4e3	e93a4e7b-c3a3-428b-8459-5b748169ed54
db631db9-d9c5-40d2-82ef-6eee5273b4e3	9dd1c903-348a-499d-aff8-431eb2854ae8
aeaffdc4-cdd4-4226-9027-de4316c568fc	420df8a6-949a-499f-a5a9-354d88e0fb43
aeaffdc4-cdd4-4226-9027-de4316c568fc	ec29a808-8638-4ab0-8415-03de7e908280
7d905c79-3456-4f7d-b6b9-9e77e0716305	7a9116d5-3a02-49fc-9b46-83221e2f1ca7
7d905c79-3456-4f7d-b6b9-9e77e0716305	6fb9007a-a47d-4656-8d2c-778de9effd7d
dd94532c-ac3e-42fa-bb12-461875e61ff2	98eccdef-3141-4998-a3a6-4a80dc639095
dd94532c-ac3e-42fa-bb12-461875e61ff2	bb1b0508-b27a-464f-9d58-3a819e5c006f
dd94532c-ac3e-42fa-bb12-461875e61ff2	08b5dc6d-a781-4104-b653-e00628d53625
dd94532c-ac3e-42fa-bb12-461875e61ff2	f0836e03-e06a-409b-a776-0dd22e03a2b2
89938cda-7e13-4708-88b5-61cc3dcf6011	b2d1bd4b-a893-4838-a352-9504b7b36738
89938cda-7e13-4708-88b5-61cc3dcf6011	be74c05f-d3dc-41e6-a2d3-74d86ecd49e2
a4270803-de03-40fc-b8d4-d8cef0a1199e	9141ae38-8d81-4766-97ef-1ef68a4953e6
2027b634-b1cc-45fd-bc71-c076d49f55ab	b2c23f32-9148-4b31-a814-49b2bdabbd13
2c8d039e-4ac6-4340-92cc-2793174a44a8	ff0f5ebb-6762-4c6d-88a7-e9253bc52c0d
ff5b476a-b2af-41f9-b567-25c87e637126	00400cfa-a7df-4587-a3fe-2ee9905c4cb0
e71fdaff-1b02-47b1-ba32-b889cb039609	94f445bd-a1ed-466c-b04b-6002ecc4aeb8
608566fc-1495-47e7-bf30-fde7462febe6	4cad6d4b-78d1-4b83-aec1-c436746b9ade
cc09c62e-078a-4f59-96aa-359fa95d9fa3	86d21d5e-f539-47f2-8771-16517828a926
d5ac95c5-3c62-45c7-91cb-07aa8b0d331b	414017fd-8b43-4255-aae9-97da0648dc20
5421f7ce-ad1d-4854-9702-33ef28702858	b16f5473-52e9-4354-bce5-784a70a4adb2
eb52d7bd-7092-405d-abd1-f4161d6480de	618431a1-8008-4de4-b498-b8851e96dd9a
eb52d7bd-7092-405d-abd1-f4161d6480de	2e32c986-1f7e-49c1-b086-d0fcb82d0edd
eb52d7bd-7092-405d-abd1-f4161d6480de	7e8ff5a1-a507-4703-84a0-2108267467cc
eb52d7bd-7092-405d-abd1-f4161d6480de	16db05f0-2597-4431-82f2-efeb2afc1d90
eb52d7bd-7092-405d-abd1-f4161d6480de	a6ecd158-826a-4465-bc0e-8dfbde2c903c
0b2fc906-88b8-4856-a79c-f44d9eb2e845	34602aee-5320-4e85-ae50-a7fe2081effc
0b2fc906-88b8-4856-a79c-f44d9eb2e845	2792e498-621c-43d1-834f-9ca77f86f54a
0b2fc906-88b8-4856-a79c-f44d9eb2e845	6f61e1a7-7b6a-4c15-83ff-937c34080ef5
0b2fc906-88b8-4856-a79c-f44d9eb2e845	e560cfea-9f19-468b-b03c-721c4ca3d930
0b2fc906-88b8-4856-a79c-f44d9eb2e845	042487c5-932d-4f69-8770-ddfeb24a108e
98c42e72-f36c-4032-a231-e9f1c98a1cdd	9f56ae21-9d52-4571-8db0-1d8be543ba3c
900ba0f6-1cc9-4349-a7a7-691fef334622	bb245157-0a0c-43a1-9b65-82f0206eae40
900ba0f6-1cc9-4349-a7a7-691fef334622	ab532a81-95b5-4ca0-b909-41692871707c
900ba0f6-1cc9-4349-a7a7-691fef334622	cff28bdb-4dbb-4fd0-ba39-c2e626d6d257
900ba0f6-1cc9-4349-a7a7-691fef334622	b89c9515-2ba3-47f5-8e41-3908aab8ea4d
0b8c6423-a8b4-409d-b0b9-8897129f7eab	37fe516b-d16a-44bd-b159-e26a69da7c0e
0b8c6423-a8b4-409d-b0b9-8897129f7eab	73cc1efa-9b2c-4f85-a5bc-acecd78afc64
0b8c6423-a8b4-409d-b0b9-8897129f7eab	6f890c3a-90c3-4a2a-a22d-c99d72077de4
0b8c6423-a8b4-409d-b0b9-8897129f7eab	a251302f-1a4c-4b24-8a0e-bac21b21bb81
711933d5-8a39-4dc0-a5f9-5e6a42347e39	f79ed6d3-d723-4e3c-ab84-d0503f1d53a2
633cb4a0-53c0-4e25-aa1f-b46d7ea71697	1cd3178e-7536-4040-aa29-b9edfcf0314c
633cb4a0-53c0-4e25-aa1f-b46d7ea71697	32e1f618-1ad5-4160-8f2d-7687c4c62a70
633cb4a0-53c0-4e25-aa1f-b46d7ea71697	252cd9d5-a1e6-4194-8896-caecddd0ab2b
6d2cb328-2bc3-49fc-ad3d-653293b43f10	f79ed6d3-d723-4e3c-ab84-d0503f1d53a2
89188202-b0b1-4dc0-81d8-f96c3058e889	beec0637-7c29-476c-abb7-826798027804
a39502ef-24e0-4dec-8ccf-a8033c1033fa	13bdf14f-1bf0-4354-af69-bf09020ac856
4265bf16-0674-4b12-8860-4efdcfe52f4b	f755d4ec-b96e-439d-bb41-078f10220936
8edebcff-16a8-48b1-b42c-a29809d18124	97e9acf0-f59f-4cf5-be4a-f12833f6634f
8edebcff-16a8-48b1-b42c-a29809d18124	f778ea9f-85ac-4a1e-b903-27614132afef
981074fa-5df9-47d1-90ed-83c7c99e9cd8	1b0c457f-8cb2-4440-a08e-8cb7f48f44bf
981074fa-5df9-47d1-90ed-83c7c99e9cd8	7d047f74-c796-4ebf-b695-c1fbacd46243
981074fa-5df9-47d1-90ed-83c7c99e9cd8	ef361755-ed02-42e6-a241-9053151ee751
93559459-9c92-4509-b1cb-b1faeac850a7	85114869-8212-4063-bf72-784aa178e4b4
93559459-9c92-4509-b1cb-b1faeac850a7	8782b0ff-0bb6-42df-81e5-2a4aed492b58
93559459-9c92-4509-b1cb-b1faeac850a7	034a6737-a283-47c9-9637-75901be17146
7a89d05a-70ff-41ac-a627-980cf5b0c348	93005626-b025-45c6-97b5-e6a4ef679bf5
7a89d05a-70ff-41ac-a627-980cf5b0c348	2aaf4d3d-8005-4c5b-b746-54d990a26707
7592ca16-ef1e-4778-b1fa-d8b91f281563	b0e7c298-aa17-4e4b-93cc-6e3e97a3c3f9
ff296274-7f4d-48c0-a2ef-a7c09b474372	ec95c68d-7560-49d9-bee9-ec1b84f498eb
572e4b64-d36d-4214-a302-8f7e93dcd402	2494a9ab-0cfe-4eb4-9458-dcf92a940665
572e4b64-d36d-4214-a302-8f7e93dcd402	70d9a4a3-1cf2-49a7-a2d2-dd1a2a2b1b61
572e4b64-d36d-4214-a302-8f7e93dcd402	61d65be8-c919-4488-8e67-06079363ef58
572e4b64-d36d-4214-a302-8f7e93dcd402	1cd556d5-2d23-44d7-9b63-60824f03e77a
46306f40-2de8-4c84-9be9-88132602f5f3	5661882f-19c5-4e90-a6e4-c207a0c11695
46306f40-2de8-4c84-9be9-88132602f5f3	ec21b260-c873-43d8-82c2-9b5ad4837600
c4e5e496-e3bf-4096-8f6b-ab09a0ef2de1	fd61b1b5-06d2-479e-bc74-ba92c81b2dbf
c4e5e496-e3bf-4096-8f6b-ab09a0ef2de1	8b18fc91-0a6e-47b5-8098-80d26e0a6ce2
a7db331b-cda7-49e2-ad6c-d691f5542ea0	69b1fc2f-993a-4767-b34d-a7380e0cdb48
f4d211a7-fcd5-4052-9fe7-d9c50373255b	54de877b-e99e-4518-8803-f15bbda8c402
5b0800bd-80ef-4d71-a94a-e811c945be35	1e270620-4222-4ed6-8b14-9cf4447807de
480ffb38-7264-4f9a-ba42-9fb566939c1a	aee607cc-ef5e-4ba3-b662-98cc969fadbd
bc1e2329-0590-4c18-996f-7e6c77fe865e	e9a19359-d08d-459f-b579-84e7143126c6
bc1e2329-0590-4c18-996f-7e6c77fe865e	a6f6a766-afff-4792-9898-05a1151dbed0
bc1e2329-0590-4c18-996f-7e6c77fe865e	46ace34c-7d11-452b-be15-c30c55b61508
5677d79c-ad73-4147-b13e-6eed7c621cc6	a785a65b-1bfe-475c-8336-78fe58b09b5d
5677d79c-ad73-4147-b13e-6eed7c621cc6	62b6017d-41f0-46f6-8030-8042b3858a71
73488f8e-b2e9-4dec-8184-1aad36b99b88	265355a1-66c7-4eb3-a69b-1b3851c0eae0
41553b49-147f-49c3-acd6-46cd773bd169	0c93d84a-31cb-4c41-969e-31b7ff19a473
41553b49-147f-49c3-acd6-46cd773bd169	3072a6d2-1d06-4cf0-b16f-a2cdb64da988
41553b49-147f-49c3-acd6-46cd773bd169	c303f295-4c86-4f57-8ad5-7888f776ea40
a1ac3b79-8536-4f13-bd45-fc2ee4e68311	d410ec04-6c16-4aab-85ac-ce6718a8f6d4
a1ac3b79-8536-4f13-bd45-fc2ee4e68311	9c715e7a-ae59-4568-928c-574d3e195a8a
24216444-525e-40c1-9cf2-f6ade4a2dd1c	05c4e871-6f92-4094-b191-b82d5be7fd82
24216444-525e-40c1-9cf2-f6ade4a2dd1c	b45a704b-6665-45cb-9a9e-5afb9df1fb08
24216444-525e-40c1-9cf2-f6ade4a2dd1c	5c668e18-eb51-459a-ba28-a86fe14a5be5
24216444-525e-40c1-9cf2-f6ade4a2dd1c	2ed8a168-7b44-462c-af8f-a381e346a331
d86e391e-ac0c-4d96-8717-f5c9fee1e02c	a10e8a62-6736-46d7-a861-004910ab70b9
d86e391e-ac0c-4d96-8717-f5c9fee1e02c	cb158723-0f72-4011-96df-aef8183dfd25
d86e391e-ac0c-4d96-8717-f5c9fee1e02c	2db14890-2885-4b44-acf9-e9de77262544
d86e391e-ac0c-4d96-8717-f5c9fee1e02c	a4e9f767-603a-4607-a69b-fae40b8ae299
7e00d1da-7dc6-4c0c-84eb-387b8a2a3b62	6f6f9def-984e-4b3e-b32e-2543493a39e8
7e00d1da-7dc6-4c0c-84eb-387b8a2a3b62	b1551bb1-fd8f-49e2-8a3d-85b7616fa404
7e00d1da-7dc6-4c0c-84eb-387b8a2a3b62	9ca27f63-45ca-44df-9321-1d6c77b68f80
5a4caef0-007f-443c-b5df-3c6adcf27ebd	14871949-b95c-48d1-b4f0-e085ed9ca961
5a4caef0-007f-443c-b5df-3c6adcf27ebd	9cadafd2-b1aa-47af-bdf4-4c94a2eb5e60
5a4caef0-007f-443c-b5df-3c6adcf27ebd	53cd46d9-81a8-40e1-9642-b6172db2c084
5a4caef0-007f-443c-b5df-3c6adcf27ebd	f2e0e10c-73fd-432c-8004-686446e27f68
5a4caef0-007f-443c-b5df-3c6adcf27ebd	cd4e2a8c-dd0e-4ec6-abf0-2b5e44b89603
5a4caef0-007f-443c-b5df-3c6adcf27ebd	dd9a47ce-a10a-489a-ab5f-05deb8707940
0c327a9a-2e2b-4476-8c0f-283e1d43fc15	ac75f137-c083-4a3d-afd5-6cba5e2173b1
0c327a9a-2e2b-4476-8c0f-283e1d43fc15	10f5022a-73c3-460d-8d1e-96012e99c044
ef87c9f0-534d-4bee-b041-04f141dc5435	d461104a-a89c-438c-a521-6cea6b02a658
305ad93a-ba56-49ff-bdcc-3dec1b7d965a	67b151db-84c3-45ed-ab9e-d3edac761c51
305ad93a-ba56-49ff-bdcc-3dec1b7d965a	c015dcd1-07b9-4b26-b854-76d909052566
305ad93a-ba56-49ff-bdcc-3dec1b7d965a	0aebeed0-76ee-4b6e-8b0e-12c296173c12
a5909a0e-ebeb-4a89-9b48-83529ba73bd0	a462ef90-dccf-401d-a8d8-d3864744bfec
a5909a0e-ebeb-4a89-9b48-83529ba73bd0	1c9f63f6-97a5-4ed1-beff-0343416aef9d
0c27c6a1-c9eb-4ed4-9e5b-093784a4ba99	d3fa706a-1675-4129-9741-fed387dd7cc6
6bf1307f-047b-4afc-a90d-434b8498eb2a	eb7e3e42-7156-4287-95d3-bf4493591b3e
1d1ce189-6a60-4802-b174-75ccfc2951dc	40b3f368-7f1c-45bc-acec-5e72ef701282
1d1ce189-6a60-4802-b174-75ccfc2951dc	7ba4b48a-7217-4e8b-b4de-832a5b08886e
1d1ce189-6a60-4802-b174-75ccfc2951dc	97215472-3044-45aa-a229-c326b02935a8
1d1ce189-6a60-4802-b174-75ccfc2951dc	4478d4ed-2e0d-48bb-b847-37a19f18d596
0ef9efbb-25a3-4947-a674-e67041265b7b	55698f96-3059-444c-9414-e872ead6f6e3
0ef9efbb-25a3-4947-a674-e67041265b7b	f07e6b61-7040-4ad1-bcae-8809db437f25
0ef9efbb-25a3-4947-a674-e67041265b7b	95e408cd-fc94-4d55-99db-457443eb5ef6
9a71f758-8481-4c06-825e-36fa4a6da4de	98cd651e-1761-4e47-b264-b9e46c32fe09
9a71f758-8481-4c06-825e-36fa4a6da4de	4373dbdd-6636-4822-acba-a603ffaab7ce
9a71f758-8481-4c06-825e-36fa4a6da4de	7a45377a-6bae-4327-a3bb-a7bc555e83a4
9a623c26-ff52-4643-8798-aa9fbb814f80	dbfa3208-2b4b-42e0-9d60-e32000e0b139
9a623c26-ff52-4643-8798-aa9fbb814f80	6ec149fc-3297-4663-810f-5ae27468415a
9a623c26-ff52-4643-8798-aa9fbb814f80	c7cca149-204c-42ce-b689-39b1fa9da69e
69adbd73-6c70-4803-8365-9ba531633bf3	f9783a5c-246b-4c26-8597-8eead616dacd
69adbd73-6c70-4803-8365-9ba531633bf3	ddada18f-e111-4cd8-969b-37a28725a740
7412a9f1-964b-48d7-ba08-7e9252ac738c	14871949-b95c-48d1-b4f0-e085ed9ca961
7412a9f1-964b-48d7-ba08-7e9252ac738c	53cd46d9-81a8-40e1-9642-b6172db2c084
7412a9f1-964b-48d7-ba08-7e9252ac738c	0e8e59d7-7810-4cda-a031-be45975cc261
7412a9f1-964b-48d7-ba08-7e9252ac738c	11dbc7d6-fe18-448e-856f-75e15e22f445
7412a9f1-964b-48d7-ba08-7e9252ac738c	dbff3bbe-b8a7-40bb-a129-61fa18c5cdfc
7412a9f1-964b-48d7-ba08-7e9252ac738c	c29f2d8b-91ef-47da-a621-27e8a10dee9e
7412a9f1-964b-48d7-ba08-7e9252ac738c	d144599e-0ba1-4f0b-a206-bcc349837e37
3ea97049-d8ca-4ff1-bed8-4db0a7017a1b	d144599e-0ba1-4f0b-a206-bcc349837e37
3ea97049-d8ca-4ff1-bed8-4db0a7017a1b	b6c64a98-98b0-4363-8418-f632ea76b1ae
3ea97049-d8ca-4ff1-bed8-4db0a7017a1b	387fe5c4-7446-4d5c-93d0-dbc1a722663d
3ea97049-d8ca-4ff1-bed8-4db0a7017a1b	abf2df37-f087-44eb-b25f-515c5a96f8c6
3ea97049-d8ca-4ff1-bed8-4db0a7017a1b	79b92397-a4ad-4313-a079-685fd6d71dfa
3ea97049-d8ca-4ff1-bed8-4db0a7017a1b	b7a6c56e-6b3e-439d-8321-2a4453796a62
e25a1f27-2946-487a-96a1-4be6963bb3ff	8a50f693-051d-4347-8f2a-e3209f0877c0
e25a1f27-2946-487a-96a1-4be6963bb3ff	3ff64a3b-c3ee-4405-af5f-818099d87542
929f4a31-1d7e-4a50-99da-770a439d3a45	f2d3e055-d7db-4934-b6e5-f694187eade7
2d32997d-5a07-4f5c-895f-0ad00f9bd16b	cedac3e6-4a90-43ef-aefe-a157b9a27b91
cae74aaf-d48a-4445-a957-def46faa7a1b	5bb5cee0-8a36-4426-be54-2e89d5714792
d2f78c64-8a80-4fe7-90c2-7b22d1b74930	c6957586-472e-4772-8679-db6b5da0baec
0090e16d-b22a-49d1-a547-c5fb6d815cee	9655c82e-caa3-479c-af09-34abcfb635d0
0090e16d-b22a-49d1-a547-c5fb6d815cee	2a30ec9d-15d6-4f81-99ff-5caca257a66d
0090e16d-b22a-49d1-a547-c5fb6d815cee	73033f1e-2ba5-4ef2-b363-033bd49cb552
0090e16d-b22a-49d1-a547-c5fb6d815cee	d3f51afe-52b6-4f89-8bf1-04dc89fcf910
344b6c41-83ba-482f-aafb-48c9a280f8df	da953f39-3ccb-45ac-82f4-78ba892cb745
344b6c41-83ba-482f-aafb-48c9a280f8df	a76e599c-ccd0-4b6d-9ab5-5d17cab0ad9e
344b6c41-83ba-482f-aafb-48c9a280f8df	91614d2f-af8d-4f26-bf01-ef5a3202ea02
00022a88-4268-40be-b984-ea42c59572b6	d952b355-edc4-47f0-9690-c91e9fe43a47
00022a88-4268-40be-b984-ea42c59572b6	6e61b06a-c230-45b8-b1b0-339ac93ba96a
8a5a78de-8503-47d2-b84b-d7fa392a6644	efa3df30-2e3d-414b-9cbb-daf21eee4d3e
8a5a78de-8503-47d2-b84b-d7fa392a6644	0e6aee71-56c9-410e-952f-06ab072cf291
8a5a78de-8503-47d2-b84b-d7fa392a6644	36c8b89b-734e-4c24-a1a0-f3c5d42dc0b3
c64e4d36-54f5-49a9-bebc-88adcee670eb	da953f39-3ccb-45ac-82f4-78ba892cb745
c64e4d36-54f5-49a9-bebc-88adcee670eb	8a47dcc6-103b-46ec-9d66-937cca9faa9b
c64e4d36-54f5-49a9-bebc-88adcee670eb	636007df-dd08-45c3-9890-1428620810b0
796ee76b-d5f5-416b-8ae7-6c3c4b49b87a	c5c720a5-28c3-4119-8b51-b7fafb960797
796ee76b-d5f5-416b-8ae7-6c3c4b49b87a	866cbb41-884b-4a23-8c4b-54c836ef29d8
796ee76b-d5f5-416b-8ae7-6c3c4b49b87a	d79f1b3f-7ca5-4b80-a920-4c42b4216fd7
69df28b1-837a-4400-88cf-5ffa52249d0c	11a4e513-2ffc-4ba2-845c-853df6e690fe
106b5fd7-0317-4f75-9e8b-5bde984d1b76	beec0637-7c29-476c-abb7-826798027804
106b5fd7-0317-4f75-9e8b-5bde984d1b76	fd3948be-abf3-4ae0-a294-423a3664f1b1
07feeadf-55e5-4c62-9edc-7f522da8c02f	c21b8752-24c6-4d46-baed-b0c6a69ad891
a0ddc112-716f-47f1-83e2-d861f4fbeb95	717c9b49-cd22-4b18-be6e-be7c7c6e5c4c
683df961-92e5-45d5-8f21-612de105e112	0d043f97-0280-4b93-ada0-607b26d29d35
683df961-92e5-45d5-8f21-612de105e112	bf746826-35b2-4328-b832-3a86a251b8b4
d25cb9e1-de48-4302-a017-07d1c79680dd	beec0637-7c29-476c-abb7-826798027804
d25cb9e1-de48-4302-a017-07d1c79680dd	2153270b-b729-4ddf-a8f4-d847a972e3bc
a60ae1f7-00ae-43d7-89ce-d411885053c3	2576eed6-ac84-41a2-96ea-4aca0addb8d3
a60ae1f7-00ae-43d7-89ce-d411885053c3	49b57944-2bd8-4d74-ad6d-89b63033fbe4
a60ae1f7-00ae-43d7-89ce-d411885053c3	cda7d08f-ed13-4d91-92b0-4d7e5f2c8a74
a60ae1f7-00ae-43d7-89ce-d411885053c3	3c145c9f-97b9-41f6-a6e4-a34f5ff1801f
a60ae1f7-00ae-43d7-89ce-d411885053c3	f618e447-c334-4f83-92ec-b4928f4e059c
bbac831b-3c8c-4a26-8121-02b07420dfcf	da78145d-5b52-4cd1-9320-c5e3a358cc72
e5eee5e5-df35-4025-8e13-fb22ec128c27	61412278-7ae8-4a4e-b7e9-ca1088218332
b4f8319f-6041-4ac3-b118-50bfe3e2925b	6daf1758-852b-48fd-a6fa-0030893f1aac
b4f8319f-6041-4ac3-b118-50bfe3e2925b	e6882fb9-bf5f-4d70-aae1-19e59e2c27c9
eb88bdad-d3b9-442c-9d38-23069c7c0744	1be13f19-b014-4530-a22d-3b65f8114d81
3794179d-5125-4305-817d-116a50de2cd0	a71631c8-dbac-4bb8-893d-1c2ad17aed00
5ab6c239-e5d9-4af6-a206-b42624fb35fa	95e408cd-fc94-4d55-99db-457443eb5ef6
d58cb31b-cb43-4ff4-acb6-11ba2e22defd	5d8c0ace-5114-4154-b65b-c246508b72b7
d58cb31b-cb43-4ff4-acb6-11ba2e22defd	fb5e9fe2-7377-453f-94cc-a1c2c66544bd
e4c3d60c-9d74-442b-964c-7b61ce53bd59	4c6443e7-e0c8-4a7c-a3e6-ab645359985c
6270555a-ce20-4d0e-b64c-9be9c5124283	abeeb1ba-89ca-45ab-bacd-1fd2fcfff1e1
6270555a-ce20-4d0e-b64c-9be9c5124283	2224b4a4-db66-4ebf-9e20-c310c92b14c4
6270555a-ce20-4d0e-b64c-9be9c5124283	fe11003c-c749-4f40-98e7-a4f9edc96bbf
cc3488de-1bfc-4eb9-8681-c899769dffdc	f85c5d70-05ef-460d-a854-4f4b089923c7
cc3488de-1bfc-4eb9-8681-c899769dffdc	68bc675f-44a7-458d-9a1e-d50f4f7a9299
cc3488de-1bfc-4eb9-8681-c899769dffdc	2791dc50-a7eb-4e65-98fa-482f63951308
cc3488de-1bfc-4eb9-8681-c899769dffdc	7355713e-5667-44d4-af0a-b4e2df43384b
cc3488de-1bfc-4eb9-8681-c899769dffdc	ef8dbcd3-af96-4275-b780-934a556c850f
fd6e64f4-1c6d-4820-a8ca-d6670a20c7e8	69cc10a0-54c9-4dc7-98cb-dde20bc3959e
fd6e64f4-1c6d-4820-a8ca-d6670a20c7e8	0d1a0df0-496d-42aa-bc1f-cbcb29f8f94f
fd6e64f4-1c6d-4820-a8ca-d6670a20c7e8	4a0989b9-e596-469f-9256-06e1e0c17d6c
a05b2c74-e2fc-47f3-87b2-d9c078f19378	4540bd67-c793-4d06-b5e5-affb966d783b
a05b2c74-e2fc-47f3-87b2-d9c078f19378	fcf92789-6cb1-4d1d-8610-423d38bac1ee
a05b2c74-e2fc-47f3-87b2-d9c078f19378	4539a68c-1366-41d9-b8de-a72b5ecc3e5a
df8d8a1e-c456-40db-b9ae-054526599e2e	f9dedff4-2687-4353-bea2-6b728cffaf51
df8d8a1e-c456-40db-b9ae-054526599e2e	b80dc833-c1bc-4270-a310-85e96cd3e491
6770e571-a3f2-4641-8b85-5d1c5dbbf354	e0d17383-4392-4f67-9077-b5ab26626025
6770e571-a3f2-4641-8b85-5d1c5dbbf354	37272f1c-5e00-4c43-831f-6ce9be7dcada
6770e571-a3f2-4641-8b85-5d1c5dbbf354	12fdcaa8-58fb-4dcd-b5fd-e8de781a81a0
532baba1-301d-4f03-9b27-a97ecf95b4e8	f07e6b61-7040-4ad1-bcae-8809db437f25
532baba1-301d-4f03-9b27-a97ecf95b4e8	de2d6fb7-c920-4fbf-ba29-81d6ca2550aa
532baba1-301d-4f03-9b27-a97ecf95b4e8	555519d2-09e6-4b65-866a-4944a07d49f7
7c8e2038-85da-4901-9786-25e93111c39d	c9f3464d-44b8-4413-983d-1c72ef130903
7c8e2038-85da-4901-9786-25e93111c39d	34c828c0-bdc6-4fc8-921b-4a25772c1b0b
7c8e2038-85da-4901-9786-25e93111c39d	b6c5bef0-afab-44ac-8a17-7e6d68f439aa
7c8e2038-85da-4901-9786-25e93111c39d	0b4b5ecb-b9c6-4720-82dd-bde8fc680a34
7c8e2038-85da-4901-9786-25e93111c39d	13e10871-67a5-4baa-8ea9-965233aa913e
68e8e7d2-22ce-48b7-8b27-ef5f5b8f7714	a6478ae5-9152-40b9-9351-7230f8bd8e4a
68e8e7d2-22ce-48b7-8b27-ef5f5b8f7714	0dc94f88-431f-4f2f-acb8-dbce957cdee6
68e8e7d2-22ce-48b7-8b27-ef5f5b8f7714	ae4d80af-6606-42a4-84bf-742da4e635e2
d0301d61-259c-41a2-9a66-8ebadd035e14	4ff165c3-4329-4ff1-b3d8-a40ac6075ad1
d0301d61-259c-41a2-9a66-8ebadd035e14	68a6accd-ce60-4996-adda-a217bb9e391e
d0301d61-259c-41a2-9a66-8ebadd035e14	0ad7775c-50ca-463f-9a5e-cc979a7d18b2
d0301d61-259c-41a2-9a66-8ebadd035e14	54b90aa0-48c2-42dd-9a6c-d5f88249635d
d0301d61-259c-41a2-9a66-8ebadd035e14	6980529a-627c-42e8-b231-7a3305b60c48
c56b148d-cf52-4e83-9a6f-d65bfb37beec	9494107e-46c1-4ffd-bded-7e2ab8b95874
2d62abe0-c49c-4ef9-b4fe-501608fdbe47	4b863d4d-5a1b-4ed2-9428-22eebe7068c2
2d62abe0-c49c-4ef9-b4fe-501608fdbe47	af223e8a-8f36-442b-ba14-62d77bddcf09
2d62abe0-c49c-4ef9-b4fe-501608fdbe47	9cc34668-259e-4f50-be91-b6cbfff25f84
2d62abe0-c49c-4ef9-b4fe-501608fdbe47	f37d237b-91ca-409a-9b55-3a9e63137784
2d62abe0-c49c-4ef9-b4fe-501608fdbe47	d08feadd-5b05-42aa-9e87-f3b5f8b4a0da
b9e8337a-366b-4ed9-b573-62b328e164da	c5fa9c4c-b45f-4236-a88d-f26133c559d5
d4afa734-9706-4c83-b425-4d1a6af8038b	4497ac2e-efcc-4499-8bfa-b4cc7687162d
fc6e8d46-6f80-44a7-9f6a-cb8a2ecee54d	bb444e3e-f042-4e73-807c-a1b28abeee48
68c4ac68-8d5e-4992-9c96-ecb3b22f27ae	d99f3c89-fa2a-4da8-8ffa-d720025ec2c7
68c4ac68-8d5e-4992-9c96-ecb3b22f27ae	e12662d8-ed7f-4ae2-a617-51566188693f
68c4ac68-8d5e-4992-9c96-ecb3b22f27ae	d08753d1-28b8-442e-915c-a7e6a6bddfc8
68c4ac68-8d5e-4992-9c96-ecb3b22f27ae	954b291c-ac98-4def-a95d-b0c94ade11ed
40f6851a-826d-421b-aea8-6edc162d3ab1	3532dddd-b587-4dbd-845a-00a1729cc452
40f6851a-826d-421b-aea8-6edc162d3ab1	6f12eb9a-36a4-4aea-9461-af87339266f7
40f6851a-826d-421b-aea8-6edc162d3ab1	d24d7c07-8778-46ab-8cbd-2474f3fc17d1
40f6851a-826d-421b-aea8-6edc162d3ab1	ad173660-d8cf-44ce-8efa-5093fa7008a7
9daf4ce7-d329-4dc1-b22b-a6e05eba13ad	cb5a9db3-0cbb-463a-bbb5-6b60c14f6e38
2ee5f4a8-5b9f-4d9b-859e-b1034efbf6bb	6388510f-1746-40a5-b574-375cfe48fa91
d4a129f2-101b-4949-80aa-87a12f8c019f	66fc0000-6120-4fe5-bc94-037798ba011f
64f413f0-5f22-4eb5-891f-fea64ec7f3e8	a6b3b852-bff3-4086-889b-a99d2add49d7
64f413f0-5f22-4eb5-891f-fea64ec7f3e8	9e49f7e0-1241-4af8-9e85-7fd21b539711
1ebfc43a-fbce-486d-af25-435b12e95f26	26c49a13-5d29-40c9-b66f-5af06f7441cd
1ebfc43a-fbce-486d-af25-435b12e95f26	b1c964ff-ed0b-4e24-a56a-d4980c328259
1ebfc43a-fbce-486d-af25-435b12e95f26	5f54899d-1e23-4f14-8a4f-7964f61df0a4
7cdc8ed0-b330-4dbc-95e6-18e10e54052d	8ffcc6c9-3b0a-4130-a2ac-edf19b9342d6
085f8c21-9406-4849-a11e-a939629bc521	810ac4f3-a560-4f88-ba3f-7209ccf4a22d
085f8c21-9406-4849-a11e-a939629bc521	2629acac-caaf-4fdc-900e-86fcb1a86cbf
085f8c21-9406-4849-a11e-a939629bc521	6b02d100-efac-427d-a22b-364e4d049d1c
085f8c21-9406-4849-a11e-a939629bc521	6d9bdd9e-5657-4cbc-90f6-36fb30683b09
e3916b58-1012-4e95-99ec-596a65fa2dae	a6478ae5-9152-40b9-9351-7230f8bd8e4a
e3916b58-1012-4e95-99ec-596a65fa2dae	47b349f3-b9a3-47e1-8751-bf3973811af9
e3916b58-1012-4e95-99ec-596a65fa2dae	aa9357b8-ddfe-4e8a-8334-3366d22d575e
e3916b58-1012-4e95-99ec-596a65fa2dae	23f933f2-51e3-46a0-a15d-9ec9f49517cd
e3916b58-1012-4e95-99ec-596a65fa2dae	bc3dba87-2a68-4339-8432-e9a6c053d483
e3916b58-1012-4e95-99ec-596a65fa2dae	b291e3d0-a16d-465e-b548-5beefdeaf0f0
7b89fd74-2975-4a4a-b6e4-e3949022f99c	8d85d595-71a7-4248-8f0d-a560efd0de00
7b89fd74-2975-4a4a-b6e4-e3949022f99c	9ddf1b8f-8d6f-45bc-b859-e63d1d2dedfd
7b89fd74-2975-4a4a-b6e4-e3949022f99c	e61ad5b1-7036-4547-8c32-535506c83d72
74b7ec19-c637-4dd7-8085-20ad88d2ece1	6a8d02f7-e32d-4418-bae7-e5ad436fb744
42a0f6cf-4c6b-4fda-944f-45195b7b28ff	990245de-39e1-4827-967c-f34dfdf58d82
d778b12c-7378-418b-baf4-7a613981913a	9aa39301-321a-4e71-ae06-e19730f8df42
d778b12c-7378-418b-baf4-7a613981913a	caad7831-7c64-4a5f-9d2c-60b956817166
ea60856c-9e91-4871-b8cd-43b096ceab6c	caad7831-7c64-4a5f-9d2c-60b956817166
ea60856c-9e91-4871-b8cd-43b096ceab6c	938b302f-c252-4ed8-a2ba-bcc40390e423
37fe9c1e-c1e8-411c-8cef-b33bd724f54c	297a196d-ca19-45be-921b-44ad70d10966
274b791b-dfa9-4828-a693-43ce1199567e	caad7831-7c64-4a5f-9d2c-60b956817166
bb5dc66e-570d-4677-9cde-c3cc72f642f8	caad7831-7c64-4a5f-9d2c-60b956817166
bb5dc66e-570d-4677-9cde-c3cc72f642f8	9c88db5e-71f6-4363-8391-54d37bce8b09
472f8bcb-e0ea-44d3-a4dd-bcb6018577dc	d6f46f40-e66b-4f6a-965f-2b7b854a465c
cdf7415c-ab5c-4244-aa16-657c5f0fdb56	2ddd90f1-4d23-4703-a48d-7785ff3e684e
e79d3eb9-2ef9-44d3-885e-4c4e786a9efb	ee86a3c3-f586-474e-b5b9-9d7caa6a5af6
f02910cc-b1fd-42b1-bc8c-c20436762211	bc4aa871-ea9e-48f5-a70e-72b821a616ec
54ed7025-c848-42f3-add0-7ac3e75dafd2	7f140265-f3fa-43b9-a9a1-d2a4a8daa8ba
afe3e475-9989-4848-a8a6-3f0609af2b16	97d69c59-4f9a-4c94-8f04-641d8c3591c9
28c34c80-3ded-4778-a2a3-06d5cc809f10	91debb5c-ff92-403d-ba77-707a9193fb65
15cc20c6-f80c-40fc-892e-ef9f71a2699f	59e795c8-5369-4347-b378-bf855af12207
6e99a02e-e4eb-4c8c-b51e-1d8d726de160	5e096f5e-cb5f-428f-b438-2cb88ccace99
6e99a02e-e4eb-4c8c-b51e-1d8d726de160	9fa0b362-ac44-4d27-83bd-7a7eae105200
721632eb-4f0c-468b-8768-107ad1d637f8	34cea583-1b73-46fe-bfba-a185e2a3d5ff
c806d9fe-c6bd-4077-ac34-4d99aafa1e45	bbd73964-c62a-4d4e-a064-250ed3bd118d
6dd87b1b-8191-46e2-938f-d11ae5c6ece4	6548395e-358f-4ab0-9d6a-2999a81b9fd2
0d373ef8-46bc-46a4-a05d-b2b7ed927ce7	d4b612a5-93b1-48fa-90b1-875512fdfba0
4c1a9ed1-1582-41a4-ad8b-cd32e708c166	5139ae3b-e75f-4aab-952e-9b93b9218c6f
5e5fbc72-6c2e-4206-84b2-6c3b4ccb0c30	391089ea-2a29-4136-b9f3-0a1661ee283e
d9c5885f-6181-4a03-a5c5-cdf2aba000ed	3bc05f23-d26b-4175-8168-5b5fe191bd88
0e13aa2c-aeee-464f-8a71-e7f73de93cd1	e3a55ca5-eff5-4562-b14a-4352795022a3
4a365289-6863-4295-b7e9-1366394a3ae0	f16e9851-22b4-4a20-9afb-36c0083e2552
acdf968e-5357-4818-ba64-a2d8ab76e1f8	2153270b-b729-4ddf-a8f4-d847a972e3bc
acdf968e-5357-4818-ba64-a2d8ab76e1f8	0d9dad98-ab4e-4b0f-aaa5-93bfe57cf650
acdf968e-5357-4818-ba64-a2d8ab76e1f8	8999924e-9d1c-442a-9019-f9566224ebee
acdf968e-5357-4818-ba64-a2d8ab76e1f8	2f90a230-d93d-4e91-aafe-a3b503a15753
acdf968e-5357-4818-ba64-a2d8ab76e1f8	6ea87339-a767-4e0e-8249-4a852e15b32b
acdf968e-5357-4818-ba64-a2d8ab76e1f8	a18d501d-5c35-4ae0-b117-a475f910f9d9
acdf968e-5357-4818-ba64-a2d8ab76e1f8	2e300808-02cd-4146-8b2d-7dcbcb73fd5f
acdf968e-5357-4818-ba64-a2d8ab76e1f8	8cdbe0b8-b052-4205-9d55-09edfd529e27
4ebc24a7-38d9-47d6-a65f-a324768f55fa	b2d1bd4b-a893-4838-a352-9504b7b36738
4ebc24a7-38d9-47d6-a65f-a324768f55fa	d79f1b3f-7ca5-4b80-a920-4c42b4216fd7
f19f8da0-fff1-45ae-be6c-142742b9438b	bec799f9-6023-41e4-b544-3da97b45439c
806ae63c-2e60-4a4e-b80d-03cf5cc8b085	582a1a2f-ee4c-44a8-9cc0-2fba92c41ab2
8c7bc752-b9ee-4d50-ab9c-314b7a65b5c1	18b2f03e-3a13-4576-85f7-1fd39a5e7883
8c7bc752-b9ee-4d50-ab9c-314b7a65b5c1	bfc13906-1a51-4085-b1a8-73412655b560
91e41cb7-1938-4fcf-bd49-8f467193f2d2	a089176b-7c2c-4ade-8762-20f09235c7ea
91e41cb7-1938-4fcf-bd49-8f467193f2d2	54aa2637-b69d-4138-8744-7747cf04084b
07098d4d-8c33-4717-8bf0-966a840e1853	aedce6ff-b21a-4981-b2ee-f61893705c24
15c6f89c-ddcd-4994-8b7f-dfd1350b7de1	582a1a2f-ee4c-44a8-9cc0-2fba92c41ab2
3c7f0f9b-e539-4480-82a1-7631804384ae	29a765ee-5a60-4e8a-9aab-f4266af8e090
3c7f0f9b-e539-4480-82a1-7631804384ae	66538aca-986a-4a07-a455-412893a4bc16
3c7f0f9b-e539-4480-82a1-7631804384ae	276aff5c-d7c3-44b5-a774-043e6f895f16
ccf04588-206c-4037-9d39-6b7d6f873388	88cc30ca-18a3-474a-844c-908077a9ebcb
a913cf82-a4b4-4232-b3a7-62fbb98dc7b3	0c956046-75f5-4da5-9aaa-f8c3feba0665
6fff9546-8ad9-4b60-ae38-bb66dd17ffe8	97bf2d09-b961-472e-ac1a-a1b1f81d7fe7
6fff9546-8ad9-4b60-ae38-bb66dd17ffe8	876e492b-3f12-4d4f-bc21-b617c7ff5d46
871c06e4-b7ba-47fb-ba91-847999564709	85bbdc37-ccce-4b3c-97ee-586ae55f1afb
94f7af1b-21d2-43f7-a402-0da864faa602	31451d20-ed58-44cc-9dfe-21a080841c1e
94f7af1b-21d2-43f7-a402-0da864faa602	b16a9c8c-5e08-4a1f-af8a-e6fc2836a021
94f7af1b-21d2-43f7-a402-0da864faa602	8ba58b10-b583-4b42-864b-0e5b8a52842a
11449ec3-5872-4116-aaa3-8d5e81a28af6	fcd754a2-81e8-4dff-a186-b7679840b7df
d08574a5-03fb-4635-b230-3d19a6cecad4	4e610610-2593-4e89-9fec-4a2a275276c4
d08574a5-03fb-4635-b230-3d19a6cecad4	323ced28-fd46-4fb2-a7d1-75a8ea06406f
d08574a5-03fb-4635-b230-3d19a6cecad4	cd18afb6-213d-45cf-864d-ad555331bad1
d08574a5-03fb-4635-b230-3d19a6cecad4	1f7ec1ef-4642-4df1-a1c1-31b98efc9d5a
d08574a5-03fb-4635-b230-3d19a6cecad4	e2b2458e-e442-4685-8e46-dd12b646d54a
d08574a5-03fb-4635-b230-3d19a6cecad4	377fb48c-cfeb-40d3-82f4-5c3376f4558c
198f7088-3dff-4a7a-a8b3-6b1acc351e1a	0bfd39a5-57cb-4acc-9721-195884ed5295
198f7088-3dff-4a7a-a8b3-6b1acc351e1a	8254bfc6-6039-4056-a149-ce9256076562
198f7088-3dff-4a7a-a8b3-6b1acc351e1a	6d55a00b-ec2c-49e2-b4f8-8f9162b987b7
198f7088-3dff-4a7a-a8b3-6b1acc351e1a	084329e5-4256-4059-9572-141a051594bf
198f7088-3dff-4a7a-a8b3-6b1acc351e1a	d0f7ebb5-5eae-4144-8eda-3aca3e2c3f54
e5a473c8-02ed-497e-9108-2796a8943627	a275e8e7-848d-4304-b1f7-c241a2d9dcab
b8b81a08-73fe-4974-bb76-0643ce6ad124	9912a003-059c-445c-9493-5bed4e7c87ce
b8b81a08-73fe-4974-bb76-0643ce6ad124	f47150a4-0c4c-4786-a6cf-652a5befef6f
42580b70-86bc-4651-be21-959bcc1aa850	0865a1b9-380f-4912-a1e2-8f06fda1b84f
42580b70-86bc-4651-be21-959bcc1aa850	aa36fd99-800a-4ed0-86bd-5ccbb900ba6f
e8c7e33a-c373-4560-92ab-183e72e67141	10f5022a-73c3-460d-8d1e-96012e99c044
e8c7e33a-c373-4560-92ab-183e72e67141	e4240408-b5a7-42a1-b744-bb273fb34378
e8c7e33a-c373-4560-92ab-183e72e67141	fcee0784-8d9a-4c1c-94e5-1d5234c64aec
e8c7e33a-c373-4560-92ab-183e72e67141	c1902a41-2f5f-4303-ac60-2b099059377e
6192f923-6411-4a95-ad66-5ed76f732fb9	34c828c0-bdc6-4fc8-921b-4a25772c1b0b
6192f923-6411-4a95-ad66-5ed76f732fb9	2224b4a4-db66-4ebf-9e20-c310c92b14c4
6192f923-6411-4a95-ad66-5ed76f732fb9	0038d537-a6e3-4ce5-90cc-76bb9879e65f
6192f923-6411-4a95-ad66-5ed76f732fb9	4ab89586-8972-40ad-8b42-5333c1b72e27
2f041989-488b-4a1c-8800-9a7bd518e928	53bee0aa-84e4-441f-9a2e-e5432e6ba2cc
2f041989-488b-4a1c-8800-9a7bd518e928	77712a29-3c86-41e2-b657-f251b1045e93
2f041989-488b-4a1c-8800-9a7bd518e928	966be1ad-9a2e-4587-a2da-a2229c1d6e46
2f041989-488b-4a1c-8800-9a7bd518e928	70c59463-8934-4393-883a-de76a3a4dc4f
7a9276d3-fbd8-4da9-907a-bae35fc3cfd9	02f23d0b-fdd8-49f4-ba60-fb4cc9d92615
7a9276d3-fbd8-4da9-907a-bae35fc3cfd9	29f1a3f3-2c13-42e2-b66b-f1c866aff201
7a9276d3-fbd8-4da9-907a-bae35fc3cfd9	54177e5a-ff62-41ad-9ee1-f74b0b27e5d6
970eba04-0558-4c12-ad82-a38899c46132	68bc675f-44a7-458d-9a1e-d50f4f7a9299
970eba04-0558-4c12-ad82-a38899c46132	8fc8b0f0-790e-4366-8ecd-1fd6ab7a4ded
970eba04-0558-4c12-ad82-a38899c46132	fb360d5b-e91a-465c-8c46-22506cd84fdb
970eba04-0558-4c12-ad82-a38899c46132	3f6e37b2-4409-48fc-a1d7-e21595c632dc
970eba04-0558-4c12-ad82-a38899c46132	0526cb65-95a1-47da-a54c-f41fead26c08
1090e339-a3ba-4d9f-a42c-6919a761c343	33974702-39ba-4c16-8437-daca44194f57
1090e339-a3ba-4d9f-a42c-6919a761c343	dafd0a10-8f37-47b3-bf5b-e05553564cc4
1090e339-a3ba-4d9f-a42c-6919a761c343	c53b50a0-8cfc-46dd-bc14-2cbc3742da6a
1090e339-a3ba-4d9f-a42c-6919a761c343	95c373d2-38f0-4e5c-882b-a8f80fc0fa38
b6e5c984-ac7d-4ffd-96ca-d72baa029320	88fa93d5-a4b2-4d60-907a-d9fda92e2a18
b6e5c984-ac7d-4ffd-96ca-d72baa029320	d2753a2d-d356-42c3-b5ab-b304c0c08b1a
b6e5c984-ac7d-4ffd-96ca-d72baa029320	2a321135-d317-4438-873a-9431432100e7
b6e5c984-ac7d-4ffd-96ca-d72baa029320	16be6e3a-1ec2-41fd-ba11-9048e8ac6c30
b6e5c984-ac7d-4ffd-96ca-d72baa029320	3ff04a78-c608-4d4f-9d77-1a3ac0046e2e
a4ac254c-e97b-49b5-b3e7-f7985901f453	d1eec0c0-e12a-4620-b7a0-288017fb4dc4
a4ac254c-e97b-49b5-b3e7-f7985901f453	ef9e380c-1a3c-4196-80d0-ca394ceeeaa9
a4ac254c-e97b-49b5-b3e7-f7985901f453	48e3e524-675b-4da1-ac03-438fe50dfb48
a4ac254c-e97b-49b5-b3e7-f7985901f453	0c12a979-9c33-4674-95f7-554fd43c0e85
b99c5fd2-dce0-4db5-9b2d-e0e2ab02d0c5	b66d5b77-17dc-49aa-882e-a0d3faf7f1ba
ef29753d-cc2c-45a5-8ad0-61b6ec32134d	724de8b2-ad23-4210-aac2-09031c9cf359
ef29753d-cc2c-45a5-8ad0-61b6ec32134d	2d3dee39-5e17-4696-9b0a-cd3ee33f996e
ef29753d-cc2c-45a5-8ad0-61b6ec32134d	7f774e48-10b2-4ef6-8978-adc8427dd8f7
ef29753d-cc2c-45a5-8ad0-61b6ec32134d	b626beca-5fcd-4d3a-ba74-3d97c5e083a4
50e38034-61ee-4ea5-b9b7-57707aa3b8fb	98e3927c-1014-4d03-972a-b35daa12727a
50e38034-61ee-4ea5-b9b7-57707aa3b8fb	e83ba170-2ffa-40f6-a6de-912b91ae90d1
50e38034-61ee-4ea5-b9b7-57707aa3b8fb	8a3f7622-faa8-439e-8b1c-995a87a34da2
50e38034-61ee-4ea5-b9b7-57707aa3b8fb	cf3b8ba2-3cf8-4977-b5b8-7218b4deeda6
716951bd-9e9b-45a5-9717-5854d0c08c23	50d33602-da6f-4feb-97a2-c57d99d8e654
716951bd-9e9b-45a5-9717-5854d0c08c23	b82ccb9f-2e8e-4f4e-9a71-5f748675a4f8
841f0d07-98a7-440f-a076-09647889e081	297a196d-ca19-45be-921b-44ad70d10966
841f0d07-98a7-440f-a076-09647889e081	1687e45e-3a68-44ad-a056-80d5ba556903
e3159739-22c7-42ac-91f3-f22587d26fbc	d2115fef-8ad4-4c73-a7a7-79618f386c21
e3159739-22c7-42ac-91f3-f22587d26fbc	87b8fe90-677c-4855-a687-5dae3ca146b2
e3159739-22c7-42ac-91f3-f22587d26fbc	08011a02-2f19-415a-92da-175ee11180c5
c8d11027-d49f-4629-a00f-8b86c5b16164	9cdd7eb9-b4ff-4037-97af-f9d86b803131
c8d11027-d49f-4629-a00f-8b86c5b16164	f288699c-b7b3-40b9-8f92-2107b455d6ed
c8d11027-d49f-4629-a00f-8b86c5b16164	7898ed01-d689-41f1-8951-0c59b7c2d6df
c8d11027-d49f-4629-a00f-8b86c5b16164	05d995f3-d7dc-4007-a17b-1d694f9a5323
c8d11027-d49f-4629-a00f-8b86c5b16164	c53b71fc-902f-439c-bb00-bb15bff9968b
c8d11027-d49f-4629-a00f-8b86c5b16164	3343a51a-046d-4932-82d1-1c7ff8bef98d
c8d11027-d49f-4629-a00f-8b86c5b16164	a99b5fd7-07db-4216-9044-2a1af0a66253
0c82c8b5-d7a8-4146-b6c7-ca6b9d669bb1	be18b5c3-cbfe-44d5-8418-8c23c98bd689
0c82c8b5-d7a8-4146-b6c7-ca6b9d669bb1	cc499377-3df0-4f36-9253-e18c720e6379
0c82c8b5-d7a8-4146-b6c7-ca6b9d669bb1	0b3d5846-6ba8-48a8-a451-32db371a814c
0c82c8b5-d7a8-4146-b6c7-ca6b9d669bb1	1613f205-8c54-4256-bb74-db903a8a2592
0c82c8b5-d7a8-4146-b6c7-ca6b9d669bb1	82f8af92-8884-4f68-9898-430f208daff0
0c82c8b5-d7a8-4146-b6c7-ca6b9d669bb1	fc79546b-4716-4216-b9c7-9f9cf3d51da8
0c82c8b5-d7a8-4146-b6c7-ca6b9d669bb1	9a561d8d-e395-46c5-9ea6-57366cd4bf06
0c82c8b5-d7a8-4146-b6c7-ca6b9d669bb1	895b667e-f5e2-48c1-b42d-d7acb6409732
0c82c8b5-d7a8-4146-b6c7-ca6b9d669bb1	fb237ba7-ad42-43c5-8bd3-ccf22db94c39
0c82c8b5-d7a8-4146-b6c7-ca6b9d669bb1	32e5e7b0-6910-4ac4-bad2-70446084ee4f
ba17cc80-f6b7-4355-b401-005a4547e0fd	7a2d1639-9d4b-4158-ba93-0d7b6c0c079e
ba17cc80-f6b7-4355-b401-005a4547e0fd	15c4d858-9350-4612-9d62-f258a015e8b6
ba17cc80-f6b7-4355-b401-005a4547e0fd	072c1c73-1837-4eef-9d70-169d7b47ab36
9e45f936-0b36-4071-97a5-1fb238c57ea9	9761946d-6c70-47c9-923a-9b27b854041a
9e45f936-0b36-4071-97a5-1fb238c57ea9	5c27f4aa-58b5-4c80-b7d8-d44ee84bda5a
9e45f936-0b36-4071-97a5-1fb238c57ea9	36c5e3d4-4ef0-48b2-b154-e039a027e129
5ca0b214-3bc6-4dff-aac8-5877d9df94ca	60ec575a-3e42-42af-b799-c0abf99d7b8b
5ca0b214-3bc6-4dff-aac8-5877d9df94ca	018cc7fb-89ac-4e6a-aebf-69c2a57c64dd
5ca0b214-3bc6-4dff-aac8-5877d9df94ca	850d0853-7eec-42b9-97d9-c954806cdb9d
5ca0b214-3bc6-4dff-aac8-5877d9df94ca	da85f6d0-3f64-4679-b769-d46ffd2a6670
eb0e8201-cc5c-48d5-b349-c689fe1d6709	60ec575a-3e42-42af-b799-c0abf99d7b8b
eb0e8201-cc5c-48d5-b349-c689fe1d6709	6272ab7c-7554-4f72-9375-5054bb1451cc
a27ccf08-d76f-448c-9e47-32da33878803	60ec575a-3e42-42af-b799-c0abf99d7b8b
a27ccf08-d76f-448c-9e47-32da33878803	4b5b9e94-f7b8-4c21-99a8-88009734cfa2
a27ccf08-d76f-448c-9e47-32da33878803	df490101-e506-499b-999d-20ce1d951f59
857c8e61-eaf2-4340-ace0-4a0908955d65	60ec575a-3e42-42af-b799-c0abf99d7b8b
857c8e61-eaf2-4340-ace0-4a0908955d65	4620e629-47b0-4d63-8559-2bc5c58a3f61
17a0faec-5001-4d5b-9ccb-7a680989d7bf	e080ff6f-d422-48ad-a335-d249db3bbc38
17a0faec-5001-4d5b-9ccb-7a680989d7bf	90ce104b-9abd-48d4-9f1b-e512a67953f4
17a0faec-5001-4d5b-9ccb-7a680989d7bf	427efeb9-b62d-4a4b-9575-e81320542d39
585c3f14-7c37-4886-a5b4-5a088d30bec5	a27637e2-e4a8-4479-955a-fb60dfb80005
585c3f14-7c37-4886-a5b4-5a088d30bec5	48d89d4f-9e9d-4d2b-93d3-fe79ffbf4ae5
98333d04-ee6c-4803-a078-239e02a25fda	d473a9d1-6407-4bcf-97dd-61a536222a9a
98333d04-ee6c-4803-a078-239e02a25fda	2816f91e-8b53-4a16-9efc-36ca602f8d8c
98333d04-ee6c-4803-a078-239e02a25fda	8b722eb0-c1bb-467d-8ce3-0a4861c1791d
ecc854df-cbbf-472b-bf66-c8d20888d97d	1929dd36-dd4a-4889-87a6-108d34b52bba
ecc854df-cbbf-472b-bf66-c8d20888d97d	309dd6b0-ff61-4e4c-aae7-942712ccddc6
ecc854df-cbbf-472b-bf66-c8d20888d97d	116c4647-8323-49b5-aefb-ec83fa139813
b09d020a-2e36-4739-8f89-2cee57703ae3	b8bef36a-a5f3-4202-8390-7cf35dda8d14
b09d020a-2e36-4739-8f89-2cee57703ae3	02da2eeb-daff-4d74-b4d5-ee40518a5e0f
c3e37b28-9931-40d8-9580-12afa30da37e	bdfd3893-1c1d-4854-9e71-65698e981b87
c3e37b28-9931-40d8-9580-12afa30da37e	baf71be6-e036-4a33-862f-79f786d0a9c9
c3e37b28-9931-40d8-9580-12afa30da37e	cc0961d2-f1e5-4440-804e-644163106415
c3e37b28-9931-40d8-9580-12afa30da37e	47380782-be76-4fc5-8e11-c162fb022f7d
c3e37b28-9931-40d8-9580-12afa30da37e	04e0a1aa-49a9-4285-9eec-b88fdda76402
c3e37b28-9931-40d8-9580-12afa30da37e	428df4c3-6648-48b6-953f-fcc9d9bb9ce6
c3e37b28-9931-40d8-9580-12afa30da37e	c54de783-1b47-435f-b940-c1587bbb2e28
c3e37b28-9931-40d8-9580-12afa30da37e	233c395f-de58-436c-a8bf-81bf094ac4e5
c3e37b28-9931-40d8-9580-12afa30da37e	00de4fbe-568e-41d4-a502-d6a80f81a97a
c51829ca-46ad-4186-b03b-c314b4be2ccf	56a29c2f-f8b5-43df-86e8-d03008410a6f
050fa3fb-47d1-4402-b954-786d924e2252	37af245f-c88b-41e9-a253-2bef0324be1c
050fa3fb-47d1-4402-b954-786d924e2252	d1492c90-b650-4875-9584-f90c7201e160
050fa3fb-47d1-4402-b954-786d924e2252	d66dad9b-4f9d-4cc1-b144-8f40d1dd968f
3a7de774-8d4a-47fa-a5fd-28b658210f72	15a8ea4a-2ed0-4ca3-b3f0-d86c5f65564a
3a7de774-8d4a-47fa-a5fd-28b658210f72	d3278f88-8327-4b03-8404-95dfcee966f4
3a7de774-8d4a-47fa-a5fd-28b658210f72	9a6e0308-df6c-4869-bb0d-24c7a7ce4a66
3a7de774-8d4a-47fa-a5fd-28b658210f72	6d6a3699-7e6e-4079-9c1f-9de6f6c9bb89
3a7de774-8d4a-47fa-a5fd-28b658210f72	1c85e772-1151-41d9-b7b8-227a95b93cbc
3a7de774-8d4a-47fa-a5fd-28b658210f72	1054536e-ddbf-48c2-bcce-80f2bc1832fd
3a7de774-8d4a-47fa-a5fd-28b658210f72	13256e60-9088-43c8-af28-16e173389862
3a7de774-8d4a-47fa-a5fd-28b658210f72	66a7f0b1-e7c1-4c9f-8cdc-4af4fc397fd2
3a7de774-8d4a-47fa-a5fd-28b658210f72	0d2c4880-5cb3-40d2-9893-440de12df006
9d51261d-b050-4d82-b903-94b10d234627	1f99a296-5d6d-46a3-b72a-4f4ff2e58cf3
9d51261d-b050-4d82-b903-94b10d234627	d090703f-cfd1-47dc-865a-cde778eae036
9d51261d-b050-4d82-b903-94b10d234627	c70730b6-e2e5-4d93-97a9-b09d3a20a3f6
d375e175-9f17-4a5f-83d5-e7299201d17f	60ec575a-3e42-42af-b799-c0abf99d7b8b
d375e175-9f17-4a5f-83d5-e7299201d17f	4bf2e123-b5b7-458a-ad0a-44feb37f60c5
d375e175-9f17-4a5f-83d5-e7299201d17f	2a68ed87-d839-48fb-aa15-fee654da76f9
1213bbf3-da65-4927-8bd9-de6d9eec03d1	f9783a5c-246b-4c26-8597-8eead616dacd
1213bbf3-da65-4927-8bd9-de6d9eec03d1	ddada18f-e111-4cd8-969b-37a28725a740
7dedab90-a3ea-4339-a834-398c4433b48c	6388510f-1746-40a5-b574-375cfe48fa91
7899d6b9-c07d-4363-84ff-2ba82b7aec5a	9e6d7302-665d-46b1-a076-44214ce23b4f
7899d6b9-c07d-4363-84ff-2ba82b7aec5a	64b959a4-2fd7-4bd2-b4b6-66321cfd0cad
deaf4b60-935c-4316-8887-e7993e088cea	2e17860a-c6fa-45f2-9b72-19e161917dc3
7dfedc1a-51fe-467b-8ab3-e34992ac2149	2d80e42d-48cd-4c56-9a50-6d1105c8e6c8
7dfedc1a-51fe-467b-8ab3-e34992ac2149	ceea48c1-9039-42df-8d7b-f44b93c35f7d
7dfedc1a-51fe-467b-8ab3-e34992ac2149	6ce8f249-44b7-4587-b148-8843223afa27
7dfedc1a-51fe-467b-8ab3-e34992ac2149	5c42966f-6d6e-43ff-a662-0611419fc45d
7dfedc1a-51fe-467b-8ab3-e34992ac2149	00d818c9-52d7-4a29-bfa8-4e058be50b40
7dfedc1a-51fe-467b-8ab3-e34992ac2149	f80c166e-ec24-4386-8853-e1f006e96241
7dfedc1a-51fe-467b-8ab3-e34992ac2149	7329a243-a70b-48a0-a0ee-68f019a5b5da
7dfedc1a-51fe-467b-8ab3-e34992ac2149	76efdc1e-f15c-4e3f-b377-3aec273ecded
7dfedc1a-51fe-467b-8ab3-e34992ac2149	14d419ef-e625-4c5e-9b15-69fffacae370
38aa9c92-13fb-4d92-ac0e-072078a72737	38f5e5d5-6cc1-4baf-af5b-7b026e3e6357
9be5ad4d-0ea4-4bed-bddf-e65fbea5d790	47b349f3-b9a3-47e1-8751-bf3973811af9
035ec2e5-d5f3-439d-bbf8-79216f89def9	39f2e21e-5128-4a64-b275-9cee5ab84f97
035ec2e5-d5f3-439d-bbf8-79216f89def9	844315c0-179d-4207-a0ef-aa4a7724e35e
a716ee05-b77d-4598-bb6c-1e3d7819de70	b7593f68-dfa8-4ac4-b6c5-59a40a65611e
a716ee05-b77d-4598-bb6c-1e3d7819de70	362cf6ab-8a66-4c26-b0d7-a01b7c018dcf
a716ee05-b77d-4598-bb6c-1e3d7819de70	a729b261-82d3-4f05-8313-4a99d1384a9d
a716ee05-b77d-4598-bb6c-1e3d7819de70	538121eb-8853-4dd4-a6b0-a998ca97c377
934d0e97-69a5-4a44-8d4d-eb3c4d6d2562	87390906-bd8b-4278-8354-aace8b041dad
b8d081e7-6744-4b84-8708-d456484369b8	072c1c73-1837-4eef-9d70-169d7b47ab36
b8d081e7-6744-4b84-8708-d456484369b8	7a2d1639-9d4b-4158-ba93-0d7b6c0c079e
b8d081e7-6744-4b84-8708-d456484369b8	dac09c3a-7e68-4dbc-af34-40696e054be3
b8d081e7-6744-4b84-8708-d456484369b8	aa7b6541-de86-4f3d-b915-1e76a1aa0383
b8d081e7-6744-4b84-8708-d456484369b8	7a1db52a-4181-4956-813d-e0e41ac1c50d
2da77103-a741-4fdb-a6eb-0eef3be6e7c8	4c92b742-b648-4ecb-956f-ed6322ad7837
02f144e2-d2cc-48b0-a91e-861a9d6caf97	df1ff724-f0bd-4fc3-a440-60c8508965bd
02f144e2-d2cc-48b0-a91e-861a9d6caf97	814e2ae3-ba89-4e87-8a17-2d0582db6a4a
02f144e2-d2cc-48b0-a91e-861a9d6caf97	5530845c-2e6c-4f04-9073-6c166bfba90d
02f144e2-d2cc-48b0-a91e-861a9d6caf97	862d2bdd-88b5-4a49-81bb-7fc060977a42
28e34dbf-37f9-4a78-bc98-c9e7ec952e7d	a0e5629c-9551-4e40-90f8-259332879904
2638912a-9e11-496f-8d73-65e817c48b07	9af4ce6e-8571-43bf-a92c-403ff5d2617e
a407b453-f51c-423e-92fe-2ff057bd72dd	440c7fd6-0db3-4bb5-a976-ca653dd7c5cb
a407b453-f51c-423e-92fe-2ff057bd72dd	c3e4c7ca-1246-41cc-8f09-75674b100bae
0d08d669-9f86-45ef-89b1-181cec45ad80	8ffcc6c9-3b0a-4130-a2ac-edf19b9342d6
7bcc1600-6229-46b2-a603-4623c1efcfd4	8c080b88-2791-4332-bb52-34bbfda73b85
7bcc1600-6229-46b2-a603-4623c1efcfd4	fe262c03-ca55-4852-8577-4d9ac983386b
7bcc1600-6229-46b2-a603-4623c1efcfd4	8746f431-4463-4418-bfc8-84df7f7f0a97
7bcc1600-6229-46b2-a603-4623c1efcfd4	4313cda8-1c2d-4c68-ac55-0cc838c37760
7bcc1600-6229-46b2-a603-4623c1efcfd4	3d67a1c7-8a18-429e-9a79-193f1f607a4b
7bcc1600-6229-46b2-a603-4623c1efcfd4	14361ee3-f66a-49da-9840-cc76d0f89bdb
d8e0170e-5645-4ec1-b84f-69ef557b512a	e1b8f749-09fc-420a-ad6c-b8611dad326d
259ce337-0de6-49e3-8f11-39248524860b	b5a3b765-cdff-49c1-add3-4809d012f229
d514ff6a-670d-4706-ad14-68b3838292ba	077abdb5-dcf2-4901-84bb-da2acd086b09
6bd36945-87b2-4769-afea-ba6d4621e6a5	e6c1678b-1790-468a-9592-5448b493e849
6bd36945-87b2-4769-afea-ba6d4621e6a5	5ed70927-a59d-40ff-b36c-be2bda4721e2
6bd36945-87b2-4769-afea-ba6d4621e6a5	7abaac53-b070-4d20-a5b0-12bd4be5d27d
38221af0-12e1-4016-8c9f-c636e4ee8620	891ba58c-fa60-46a0-b823-35a8b82700f7
38221af0-12e1-4016-8c9f-c636e4ee8620	f26a1d92-528d-409a-895f-a0488dbec5b0
38221af0-12e1-4016-8c9f-c636e4ee8620	1e067c01-38bc-4635-b932-7be75638d654
38221af0-12e1-4016-8c9f-c636e4ee8620	cf77aa9e-f77b-41b7-b420-9b173b0a669a
38221af0-12e1-4016-8c9f-c636e4ee8620	7a36788e-26c0-4393-8041-ac51d7a278de
38221af0-12e1-4016-8c9f-c636e4ee8620	85f9812d-72e6-44b6-a89e-9d37343bb147
77be8954-65c3-4b34-84f1-c336b739042d	14895c3a-dbb6-499f-af6f-4633c9eb3ae6
77be8954-65c3-4b34-84f1-c336b739042d	46a59372-fed3-4658-8bc9-aa55f39638f4
77be8954-65c3-4b34-84f1-c336b739042d	2ffb5182-03e0-4265-8069-f58d5fbfdca3
a6e52d8d-37bf-47da-b3ed-3ca176f87a2b	67d94182-8e9f-46e5-bfa4-39757105dd5c
a6e52d8d-37bf-47da-b3ed-3ca176f87a2b	6494f050-55e5-46fe-8c6a-8f9b99b52603
a8dcf35c-0e5c-45d9-bf74-723b23ff3457	9631fa0a-dafb-4c5d-807e-a18431ff1b0f
a8dcf35c-0e5c-45d9-bf74-723b23ff3457	b121e902-0357-49a1-b458-2e33c74fd574
ce5a31f9-98f3-46cf-8440-4f6ef64e416b	34602aee-5320-4e85-ae50-a7fe2081effc
ce5a31f9-98f3-46cf-8440-4f6ef64e416b	b870c020-b577-445b-89cb-a58e3f934e41
ce5a31f9-98f3-46cf-8440-4f6ef64e416b	68b5eb8e-6971-48a1-a622-ef26f077de98
08b1b2bd-ac1f-431c-bbba-af065605f2fa	8a20cd12-5cd2-4683-bb24-ec68e0049034
08b1b2bd-ac1f-431c-bbba-af065605f2fa	e0168975-6669-4f8a-9499-ee061b9c0216
08b1b2bd-ac1f-431c-bbba-af065605f2fa	2d354d9b-30fb-420f-8fa9-518fd8cfd9c8
e60eefb4-ac73-42e3-a9c4-a2ec0d136c19	cb52b83f-09f6-4acb-a12c-ec366c0be00e
e60eefb4-ac73-42e3-a9c4-a2ec0d136c19	3446f76d-ffc8-4ed2-8f83-592daf03d688
e60eefb4-ac73-42e3-a9c4-a2ec0d136c19	0925cc60-22d6-49b5-b2b6-c8c38c127925
e60eefb4-ac73-42e3-a9c4-a2ec0d136c19	748d6144-5add-448f-a52b-39b9eae992d9
e60eefb4-ac73-42e3-a9c4-a2ec0d136c19	e5906cc5-d1e7-4dff-9d80-ab9eb9574841
57b5e8eb-8681-4f73-88e9-5e66d4e1ea19	a7007874-a8af-4d6f-8e18-81600829bb00
57b5e8eb-8681-4f73-88e9-5e66d4e1ea19	8d34c467-93e4-47d0-bfbe-ff39ba868fb1
57b5e8eb-8681-4f73-88e9-5e66d4e1ea19	7f1a1df7-27da-4d5e-aa03-353403a5c787
57b5e8eb-8681-4f73-88e9-5e66d4e1ea19	c1f84d65-6c00-4353-b6f2-b2ae0482c0bb
57b5e8eb-8681-4f73-88e9-5e66d4e1ea19	dab4d62a-dca9-4bb8-83b0-c37c669dd762
57b5e8eb-8681-4f73-88e9-5e66d4e1ea19	4a9012b2-d9b8-49af-b9e7-72efc7c69435
57b5e8eb-8681-4f73-88e9-5e66d4e1ea19	e59df929-e53f-49c0-820b-12a2cbdc3bac
a0044c3e-bce2-4f4c-bed4-abad05cd9fa6	db6eff74-d996-43be-a832-778d8eac8775
a0b749fb-d8f8-420f-9ad9-a16b45710228	de3856f1-aeed-45a8-a57e-0f6813b86f0b
a0b749fb-d8f8-420f-9ad9-a16b45710228	b29b3572-d7e8-4690-8ecf-b8c8e1b678e9
a2ac2976-feb7-40a9-b191-58dda251e001	5fb4c094-c423-4a59-a7b0-80883ab6218a
a2ac2976-feb7-40a9-b191-58dda251e001	7481ddd9-57e0-41c4-8d73-2cbb9d8ef318
50143bff-bd64-4eaf-b668-2ab286359321	82ad1e38-de75-4f4c-8ba9-94f3c452dc25
37c6d9bd-dfd8-48cf-8ceb-e0dab8dc76ff	7ccb00af-936f-4f6e-bdb6-01763192ae6e
37c6d9bd-dfd8-48cf-8ceb-e0dab8dc76ff	14871949-b95c-48d1-b4f0-e085ed9ca961
37c6d9bd-dfd8-48cf-8ceb-e0dab8dc76ff	8365a478-d56d-45f2-8930-e07252c0a8e6
37c6d9bd-dfd8-48cf-8ceb-e0dab8dc76ff	151959c4-b60f-4258-8f9f-9a8624d7b3bf
37c6d9bd-dfd8-48cf-8ceb-e0dab8dc76ff	8c3532d7-09f2-45dc-baf7-c2122d743141
37c6d9bd-dfd8-48cf-8ceb-e0dab8dc76ff	8c9e1da9-735a-4549-aacd-36ce1b80b144
37c6d9bd-dfd8-48cf-8ceb-e0dab8dc76ff	408d34d2-64db-46f8-8185-2cfcd946e192
37c6d9bd-dfd8-48cf-8ceb-e0dab8dc76ff	6c25d8d8-c0bc-42ea-9336-25a980df2287
60dfe437-481e-4c0a-b5e2-eda28c31dc16	565dc6cf-0d46-417b-894f-cbb9b1a0a1c1
60dfe437-481e-4c0a-b5e2-eda28c31dc16	d941c7fd-bb00-441c-ac3c-22f85afdc4e4
60dfe437-481e-4c0a-b5e2-eda28c31dc16	ade1d5e7-95c3-40f5-930e-72df935a6fef
60dfe437-481e-4c0a-b5e2-eda28c31dc16	06a3f2a2-d288-49e6-a18c-c1caecaee080
60dfe437-481e-4c0a-b5e2-eda28c31dc16	7ad27dbf-8a6f-4513-8c9d-e29f616116ce
60dfe437-481e-4c0a-b5e2-eda28c31dc16	817f4ce9-4213-4720-b637-085f8d85456e
ca14ca38-4342-4627-8108-16c452dc9f39	a1cef91b-5a36-4572-87e6-856165a5ad8e
872d0ef8-bd4a-4b1b-bb80-cf5e5cc2bdcf	d82179cb-ac2d-405d-8c34-ca272e2cda45
872d0ef8-bd4a-4b1b-bb80-cf5e5cc2bdcf	c0ec92a7-a77e-4b9f-b81c-71a37ff6e390
872d0ef8-bd4a-4b1b-bb80-cf5e5cc2bdcf	961663c2-07c6-4fa9-8e4e-327395c446cb
228a7c85-963c-4fde-902e-55dd76d7686f	f4975c53-8800-4dd5-8811-c7bc2d5dc62a
228a7c85-963c-4fde-902e-55dd76d7686f	577e06f9-cf9c-4e75-af9e-cb0d2b208029
7952cf77-b4b8-4c03-ab3a-8de7ed3b3539	cd099368-49e9-4c47-81fa-417d49293491
84dc73ac-f12b-4c1d-85d2-2ca2cab41f8a	c5b5874a-5a7c-438c-bcc8-816484c6c8ae
84dc73ac-f12b-4c1d-85d2-2ca2cab41f8a	b7512235-89d0-4f7a-b31d-10a2294ba7a1
f22b514c-a9b3-424e-bb26-d2730e07d5c9	4507d818-4aea-465e-b4b7-85aac75049da
e22a8319-baaf-46c4-b0dc-7f1c9d6369b4	fefb9110-b217-496f-95fd-60bd71e457ba
e22a8319-baaf-46c4-b0dc-7f1c9d6369b4	b8a1a002-baa4-4dcf-9cc6-02791c956cbb
e22a8319-baaf-46c4-b0dc-7f1c9d6369b4	f1db9691-3a2e-4540-9a9c-28411b1bc0fd
6385590e-a002-44e9-8bc5-d4bf85e7de1f	57f06d7f-ef0d-4f62-b258-7fb836edacb7
f435ab5c-e1b7-4c36-8ff4-32f316324470	3978ea1d-97bb-4c15-a8a0-d78e99e7d65e
0e33f417-1144-409f-90c7-c379d9704b58	89c2c07e-cd30-4b3a-94e3-07ded27d76a1
0e33f417-1144-409f-90c7-c379d9704b58	74812cb0-4a87-48e2-9f2d-15bf87f77419
9373aaab-1127-4f62-84b2-b70ee7629680	aadc34b5-9317-48c5-8a8e-ebf8034a70b8
9373aaab-1127-4f62-84b2-b70ee7629680	d69380ff-f5ff-4e00-92ce-66dc92fa65cb
9373aaab-1127-4f62-84b2-b70ee7629680	b445259f-b8e4-4a2c-bf3f-e7426184ac29
9373aaab-1127-4f62-84b2-b70ee7629680	ba1a183a-8535-4def-a47e-29e777590127
9373aaab-1127-4f62-84b2-b70ee7629680	7d11ed5e-0c37-40d0-9109-c757ee6c80d9
c2aa778c-a13a-4a81-bc8f-9c8abe3588f6	b5a3b765-cdff-49c1-add3-4809d012f229
03b8d0dc-7da8-4b0d-afc6-9279bf5d75de	b053c598-acae-4e08-a33b-db1f908db59c
03b8d0dc-7da8-4b0d-afc6-9279bf5d75de	b3a17ded-34eb-4791-b4e7-82a5887a75fe
03b8d0dc-7da8-4b0d-afc6-9279bf5d75de	f12a378c-75e4-4fa2-931a-1f615f654a65
03b8d0dc-7da8-4b0d-afc6-9279bf5d75de	55f264a9-acce-4460-9417-a607985da026
03b8d0dc-7da8-4b0d-afc6-9279bf5d75de	50065c99-23a0-4560-828e-7fa6ec3ffd03
03b8d0dc-7da8-4b0d-afc6-9279bf5d75de	9ebeace3-12b7-45a8-8332-dd472ae3b082
25e33bc2-d07f-42bb-a37e-1e642b1ca120	d4b612a5-93b1-48fa-90b1-875512fdfba0
141581a9-d2ba-472a-b47c-065a338a99c9	66fc0000-6120-4fe5-bc94-037798ba011f
a56b6577-e3ea-4efb-9fa9-85e85a501a0b	8151ddf1-8ef7-4c7c-b72a-ec95eba49c8e
1e08a638-4d4e-403e-89aa-bc808cda3d16	c2aa1f44-8260-4255-808c-9bb9ce378126
1e08a638-4d4e-403e-89aa-bc808cda3d16	a62e8d3a-65cd-43c0-b860-66df94a7a43d
45adac1b-303c-4708-bbfd-acfd63425519	2c628769-92f8-4edf-9bd7-d5fd8c4e9f87
45adac1b-303c-4708-bbfd-acfd63425519	ecc1e309-293d-428c-be61-7e37dae804e5
c83d87cb-37ea-4a18-86b5-06fec59e9852	e0b6537f-ee09-4d02-9505-79dec246dc3f
9e9f5305-775a-4d47-8977-785211fd9513	c25f761e-9e5a-4897-a49f-4d6586328868
baa401c8-fae8-46df-b6ad-6f55d6cae360	67c69d07-3bdc-49d8-b5d4-ecde478daf0c
552fc055-d58a-4105-8861-625546ffb14d	44869eba-4e25-4d02-98e6-457f54f6b532
e0bd01ac-5c64-4979-86b8-2889b7c11714	935f5fef-e2de-4e33-99ab-b66947153f66
ba1a1841-4ee9-4dfd-a7ec-409072eb0624	236e2ce4-eb31-4e4f-a5c9-3f7de3d39b90
e77ab612-ad85-4047-8fa6-cb9cd03e5e46	6bb09fc9-7ef3-4ad6-a862-e9444ae3b761
73e1bb1c-06cf-4d2c-bd3e-56a7293e2863	53b73cfd-360a-45b7-bf9c-4d88118b719d
49cd160c-f327-405d-9726-488e65844981	57d6faeb-0b77-4693-bf30-8ec5ca0ed715
46efa0b5-0cf3-4c49-9d71-ed68d8f942dc	f17f327d-39c1-4d3e-9ce4-4aed6ff74a42
46efa0b5-0cf3-4c49-9d71-ed68d8f942dc	79c248dd-2176-4d79-a679-782a3e1a2127
9a50673b-6daf-4ebc-a717-92091c56184d	195721bd-caf8-40dc-9b43-a929ff300e94
9a50673b-6daf-4ebc-a717-92091c56184d	11d71a37-2774-4e04-b011-6e6ee8f84a89
9a50673b-6daf-4ebc-a717-92091c56184d	023471d4-4328-4df1-916d-dba842c029fc
9a50673b-6daf-4ebc-a717-92091c56184d	a9072be0-c556-4f2b-b859-7e89cc541172
9a50673b-6daf-4ebc-a717-92091c56184d	d3f51afe-52b6-4f89-8bf1-04dc89fcf910
ee81ed9d-eaf6-4b98-a792-57bfce578bfc	8e6b8f07-efcb-48d6-955a-2dcab829838b
a8509925-8f11-42f1-840d-91cbb1479a1a	213908b0-d66d-4ee2-828b-3513aa9d7112
a8509925-8f11-42f1-840d-91cbb1479a1a	59aa1368-0ad6-493d-94fa-37d62abb1efa
0fea70df-8253-4a51-94cc-b68d503d87f1	c25f761e-9e5a-4897-a49f-4d6586328868
0fea70df-8253-4a51-94cc-b68d503d87f1	b55d87a3-4bc2-4e14-9f7a-02f03c5e038a
7f3fbe56-b68e-40d3-b3a2-ef37e7156f3c	211605ca-048c-477a-88c6-70495930dc80
6cb62875-63c2-47e3-8012-caf82c9f2733	9f339949-a421-4f12-a41b-895280761415
9ccf7345-0845-4f73-9514-225cf33304d7	2e17860a-c6fa-45f2-9b72-19e161917dc3
9ccf7345-0845-4f73-9514-225cf33304d7	1f01dc4a-9144-4104-a73f-02f98f23c2f9
f0dd7d27-25a5-48c9-bbdf-f7bd3537165c	eb5c897a-0945-4f39-9def-fd8162098646
f0dd7d27-25a5-48c9-bbdf-f7bd3537165c	0c33aa95-4abc-42e4-96e5-584a1931dbee
f0dd7d27-25a5-48c9-bbdf-f7bd3537165c	3d931ecb-4671-473a-b10b-895939a9a914
f0dd7d27-25a5-48c9-bbdf-f7bd3537165c	251f3ce0-da3c-47c2-8aac-6f86e155f5c3
ef93affe-2a44-46ff-8715-3e206f6ced9e	9ebef1e1-4b19-47a3-9ddc-107f926c8a54
ef93affe-2a44-46ff-8715-3e206f6ced9e	1ca72db1-9d64-4557-b8cc-8f19e31eef79
ef93affe-2a44-46ff-8715-3e206f6ced9e	fb01e6e6-f6a8-43f8-8198-965b4e929352
ef93affe-2a44-46ff-8715-3e206f6ced9e	b7fbbc7d-a2ef-4145-8261-a04ed1b5171d
0d21ea4d-c224-415d-9738-c2ea4a80ed4b	daefe455-16c8-4f96-b58b-bf88cec01181
0d21ea4d-c224-415d-9738-c2ea4a80ed4b	574dc337-a1a8-4e34-93a1-8637cfccc315
0d21ea4d-c224-415d-9738-c2ea4a80ed4b	002a600d-104d-4eac-8deb-a33240ec05a0
0d21ea4d-c224-415d-9738-c2ea4a80ed4b	d94ea260-442a-4826-8f3b-b808e544804b
0d21ea4d-c224-415d-9738-c2ea4a80ed4b	34a2742e-a669-4b80-b272-32a967839a8b
0d21ea4d-c224-415d-9738-c2ea4a80ed4b	733f7065-504d-4b3d-ab9e-f95a4423588b
0d21ea4d-c224-415d-9738-c2ea4a80ed4b	4cb80868-b36a-4af3-ab3c-078573c58a49
882b5de8-fcfb-40f1-b946-1a9f6537dd6c	2dd1417d-c6b0-4f28-b1ff-f9524ca35595
882b5de8-fcfb-40f1-b946-1a9f6537dd6c	25a35db2-f253-4597-9870-3595b0f27e40
882b5de8-fcfb-40f1-b946-1a9f6537dd6c	b3860cf3-e483-450c-8652-acb4185e3f1d
fea31ce7-551b-4ac8-83c8-5cd57e5f7ba3	7af8fbc8-e06a-4b9f-bd15-62e3ece24b81
fea31ce7-551b-4ac8-83c8-5cd57e5f7ba3	2fb7d0b6-8c3d-4e64-b42b-09d82f9e78cc
fea31ce7-551b-4ac8-83c8-5cd57e5f7ba3	678f725e-467a-4892-a7bb-f968e7722bbd
fea31ce7-551b-4ac8-83c8-5cd57e5f7ba3	33c8b384-0e74-4bfa-8bb7-1326fec7612c
fea31ce7-551b-4ac8-83c8-5cd57e5f7ba3	3b06d70d-2efb-45dd-835c-ef76ade0a861
fea31ce7-551b-4ac8-83c8-5cd57e5f7ba3	bd41a60e-d73a-4759-9b63-ce930be6f5c3
fea31ce7-551b-4ac8-83c8-5cd57e5f7ba3	1a427bfe-1102-4c31-8801-4c77e72c652f
fea31ce7-551b-4ac8-83c8-5cd57e5f7ba3	4b1685d0-d7de-475b-a913-e87911b6aeab
fea31ce7-551b-4ac8-83c8-5cd57e5f7ba3	7e3b7b4b-6e2f-4887-b49b-7adfdf4b4992
fea31ce7-551b-4ac8-83c8-5cd57e5f7ba3	367b62f5-2dbb-4030-83d6-9f87a1891b74
fea31ce7-551b-4ac8-83c8-5cd57e5f7ba3	7e8ff5a1-a507-4703-84a0-2108267467cc
fea31ce7-551b-4ac8-83c8-5cd57e5f7ba3	6f890c3a-90c3-4a2a-a22d-c99d72077de4
e00a3d22-ffaa-420f-906f-5280dc729691	a3ae36b6-5e19-4c9f-841a-ef6ba7d7e1f7
8940a0dd-b29c-4c13-8881-b67b3c35bcf4	0eb4d01b-78e0-41a4-be7a-9f9d778caf5f
8940a0dd-b29c-4c13-8881-b67b3c35bcf4	6a220c57-6dbf-4c5e-9310-ba6322e800cb
8940a0dd-b29c-4c13-8881-b67b3c35bcf4	1dc42c52-3f67-44c3-bb2a-6fba5e710bd7
8940a0dd-b29c-4c13-8881-b67b3c35bcf4	4620e629-47b0-4d63-8559-2bc5c58a3f61
6548f173-22a2-4d04-b7d3-181d2aa261f5	ab9d7d43-b16a-4fbd-bf2f-9bdb78803d01
6548f173-22a2-4d04-b7d3-181d2aa261f5	fcf899f6-2a49-49be-8e7d-e8a7e31100c3
abcc719a-ae84-4306-b495-75c1a9f235e9	416045e2-b110-4944-af9a-e0622c0a1943
abcc719a-ae84-4306-b495-75c1a9f235e9	89c2c07e-cd30-4b3a-94e3-07ded27d76a1
abcc719a-ae84-4306-b495-75c1a9f235e9	dba64091-9d6b-46da-a27c-bacb6500b36f
abcc719a-ae84-4306-b495-75c1a9f235e9	cb5654a7-ba6c-4890-b7c1-630cab2a8276
abcc719a-ae84-4306-b495-75c1a9f235e9	6a923429-4c19-4333-bea6-698ee189f446
abcc719a-ae84-4306-b495-75c1a9f235e9	f671cb9d-819e-438f-945f-10dca5787742
abcc719a-ae84-4306-b495-75c1a9f235e9	d1492c90-b650-4875-9584-f90c7201e160
d1df7987-47c9-4467-9375-df46fcc5fe56	398684e6-50a1-477b-924f-c77832dc6534
d1df7987-47c9-4467-9375-df46fcc5fe56	9dd82785-bdfb-45b0-b4c0-b216efb859b4
d1df7987-47c9-4467-9375-df46fcc5fe56	75e88f63-ab32-4581-869d-2754c7220e19
d1df7987-47c9-4467-9375-df46fcc5fe56	fde4be42-b62e-4cc7-8417-5b967c3b21a3
d1df7987-47c9-4467-9375-df46fcc5fe56	48e3e524-675b-4da1-ac03-438fe50dfb48
a689818f-299d-4d15-bfd8-8478f980b5a1	44869eba-4e25-4d02-98e6-457f54f6b532
a689818f-299d-4d15-bfd8-8478f980b5a1	1c20cd11-d160-4fe0-834b-d8f996a3edc1
bd955f49-4d9e-4ce7-a924-2599c2136289	6f1a6922-f62e-425e-b2ea-3c54e79b8b26
bd955f49-4d9e-4ce7-a924-2599c2136289	99e25a12-10e1-441e-ac7f-cc5a0b6d6636
bd955f49-4d9e-4ce7-a924-2599c2136289	2dedd083-02cd-4310-b7cb-179adb53b9de
bd955f49-4d9e-4ce7-a924-2599c2136289	4a0ff951-cb92-4843-b28c-24a48f243101
15978768-8803-440b-8906-623781ef2fac	a9c4fa7c-8540-49e5-baf0-1125ca6f24a4
15978768-8803-440b-8906-623781ef2fac	1e7a3371-9529-4e8d-8fb0-5bd3d714c478
ff7d6ac0-49df-416f-84e4-c1037dc97e05	980cba62-d705-471d-856b-f3923983a892
ff7d6ac0-49df-416f-84e4-c1037dc97e05	f16e9851-22b4-4a20-9afb-36c0083e2552
7e24ab9a-c5a0-4900-b0be-ffad6af9487d	e7fa2207-6aad-435a-ac0e-03aee9958c37
7e24ab9a-c5a0-4900-b0be-ffad6af9487d	9ef26dbe-27be-47cd-8333-79d17a9e11e2
e30320a6-b5db-45b8-866b-8b2726e2faab	17b4e103-d55b-4582-a62e-67dbc627f2da
e30320a6-b5db-45b8-866b-8b2726e2faab	a17f72d4-b2f2-48e0-9fc2-f350ea349daf
e30320a6-b5db-45b8-866b-8b2726e2faab	6783bdec-c739-4c69-a445-fb9bd6dab31f
e30320a6-b5db-45b8-866b-8b2726e2faab	66a34375-709b-4d8f-9836-ab1c59c6b061
e30320a6-b5db-45b8-866b-8b2726e2faab	3b81990f-8c9f-401b-ad32-abc0eee9aafc
e30320a6-b5db-45b8-866b-8b2726e2faab	bc4aa871-ea9e-48f5-a70e-72b821a616ec
88979299-bf34-45e4-b377-df26b34c7cc6	6172cbf9-59e3-432b-adf9-040a21455e2b
88979299-bf34-45e4-b377-df26b34c7cc6	de2d6fb7-c920-4fbf-ba29-81d6ca2550aa
04436f93-45e2-41fb-9a87-261cb7da806e	715787f9-4745-4426-851a-359d19e7a5f5
04436f93-45e2-41fb-9a87-261cb7da806e	935f5fef-e2de-4e33-99ab-b66947153f66
9761df06-0f89-4bd0-845b-028b470ebb66	bf9d11be-490f-47ef-b8da-81ab57a6af4f
9761df06-0f89-4bd0-845b-028b470ebb66	ac3c6fa3-b716-412d-8bdf-a2dcd64adaa9
9761df06-0f89-4bd0-845b-028b470ebb66	681c678f-fa60-45cf-9541-c9e8affd2a74
a0a3cf80-fd56-48e9-bfd9-ed887ada3aa3	45ff775f-e38c-49ef-9ad8-d129e6650fd0
a0a3cf80-fd56-48e9-bfd9-ed887ada3aa3	505d4d2b-f2ad-44bf-a6a1-a9bf1b468663
a0a3cf80-fd56-48e9-bfd9-ed887ada3aa3	80298a21-ffde-4402-b25c-bc38c95c4a1c
a0a3cf80-fd56-48e9-bfd9-ed887ada3aa3	c4400729-d4e4-49b7-82af-47e945a0924e
a0a3cf80-fd56-48e9-bfd9-ed887ada3aa3	55789c89-97ab-4d9d-a3a4-2974b5fc96a3
a0a3cf80-fd56-48e9-bfd9-ed887ada3aa3	50725c30-a53b-4959-bead-0b6be716fdf7
a798a510-744b-4f83-971c-31f80e21cc38	ae1db839-3b31-49cc-9284-ce990ac9a984
a798a510-744b-4f83-971c-31f80e21cc38	181f4dc4-d383-4f39-97b9-43729abbcade
a798a510-744b-4f83-971c-31f80e21cc38	5197dc60-d961-4ddc-975a-227a82150d96
20c11434-aee9-4230-ab98-a4c7edcf7c04	9c1e0fd7-fa34-4855-8131-d30d56351573
20c11434-aee9-4230-ab98-a4c7edcf7c04	dda63f99-e41d-42c1-a822-0bf6f14c7d69
4081560c-7f34-4c61-8f84-43319bd7b6a3	023e1229-a322-487f-bdb4-82521a6d04a5
4081560c-7f34-4c61-8f84-43319bd7b6a3	39ed4612-3c95-4ad6-8fe3-799133d7af6f
4081560c-7f34-4c61-8f84-43319bd7b6a3	4b221f1a-e201-4611-85e6-1050f62604b7
4081560c-7f34-4c61-8f84-43319bd7b6a3	c937e41f-d52f-4053-b8fe-6ea956453aa5
4081560c-7f34-4c61-8f84-43319bd7b6a3	47e673c6-0f4a-46e2-a46c-5baa661cdee0
f4c44720-f8fe-429b-920c-7f189daf7e11	7f7ffadc-ee94-424a-9c8b-21d477e6a9b7
f4c44720-f8fe-429b-920c-7f189daf7e11	c611e19e-31a5-4d79-97fd-6f6a1a56506f
f4c44720-f8fe-429b-920c-7f189daf7e11	6cb400ab-3d49-48eb-bf3c-cfdc8a517776
f4c44720-f8fe-429b-920c-7f189daf7e11	67d94182-8e9f-46e5-bfa4-39757105dd5c
f4c44720-f8fe-429b-920c-7f189daf7e11	6494f050-55e5-46fe-8c6a-8f9b99b52603
348ad4fe-f94a-4c51-9585-f1af1cccf6c9	0a444ce6-1217-473e-bd79-4e7665dd3f90
348ad4fe-f94a-4c51-9585-f1af1cccf6c9	7313d7e5-8de4-4171-8abd-1e08ec1b261c
348ad4fe-f94a-4c51-9585-f1af1cccf6c9	8a7e76b4-513b-443c-bb92-8370ea344602
348ad4fe-f94a-4c51-9585-f1af1cccf6c9	f778ea9f-85ac-4a1e-b903-27614132afef
e670a0ef-8edf-4b03-9f7d-e60d818b4ba2	a91bf9a9-5e5d-4daa-9565-1c37c28e56a7
e670a0ef-8edf-4b03-9f7d-e60d818b4ba2	18facae7-3806-4cf4-87f6-43696ddb26b9
e670a0ef-8edf-4b03-9f7d-e60d818b4ba2	f7db0a2f-ddac-4cd2-9e6c-5ea2db47c392
e670a0ef-8edf-4b03-9f7d-e60d818b4ba2	a76e599c-ccd0-4b6d-9ab5-5d17cab0ad9e
14f8a3be-c425-4edd-8556-e7956236bf88	267e726c-64de-4bb8-ad66-bf3ef082a784
a769a77b-5d4b-42d1-89e2-76b01e2da7d5	42013222-512e-4f37-a851-3c522c129b71
a769a77b-5d4b-42d1-89e2-76b01e2da7d5	ebd78719-faa1-4a0b-ae97-590b7c3f3a1a
94e4f54b-1a92-4e2c-84d7-9dc5cf6bf1a9	0bf0f5bf-05a4-463e-84d9-63203ae931ad
94e4f54b-1a92-4e2c-84d7-9dc5cf6bf1a9	caffec9f-865b-4525-aa9d-9bb03cedf665
94e4f54b-1a92-4e2c-84d7-9dc5cf6bf1a9	f9783a5c-246b-4c26-8597-8eead616dacd
94e4f54b-1a92-4e2c-84d7-9dc5cf6bf1a9	ddada18f-e111-4cd8-969b-37a28725a740
488d9ca6-ac12-4f83-a735-1da8a55055c3	98c09ef3-62e8-48c7-ac68-52e929dc884c
488d9ca6-ac12-4f83-a735-1da8a55055c3	0854c8b4-0ba2-4dc3-bf9b-3ff1eba6b0d9
488d9ca6-ac12-4f83-a735-1da8a55055c3	c8517afb-6aa1-4fab-bc4f-03b33e77746c
488d9ca6-ac12-4f83-a735-1da8a55055c3	fa2c244c-636f-4d6e-bcc6-7057596c8194
488d9ca6-ac12-4f83-a735-1da8a55055c3	7ad0def7-408a-429a-92ed-67559b802041
488d9ca6-ac12-4f83-a735-1da8a55055c3	da953f39-3ccb-45ac-82f4-78ba892cb745
488d9ca6-ac12-4f83-a735-1da8a55055c3	6388510f-1746-40a5-b574-375cfe48fa91
e9c967f3-b663-4541-a18b-2ce37ba5b767	81085036-2c66-44bd-b2b3-d9d4a7f91102
e9c967f3-b663-4541-a18b-2ce37ba5b767	85a0c10c-3429-4c9e-aa6f-e229e73d0c78
9d46cb44-dc9b-4cbc-90b0-28b619da4b99	28b6c62e-52a6-4aba-8aeb-0c43ac660b3d
9d46cb44-dc9b-4cbc-90b0-28b619da4b99	1900d85c-0066-473a-a207-2273a8dd1a4f
0f853f39-d94a-470b-b441-547d8ba3ce46	375c7135-1953-457a-a136-ce0bd6887500
a1a59fdd-ef03-45ae-a124-62733a577e44	375c7135-1953-457a-a136-ce0bd6887500
a1a59fdd-ef03-45ae-a124-62733a577e44	29838beb-b855-4725-9a44-4f1b7c29ce4b
ce5e1c36-7f45-49a5-97c0-994c5c47b532	375c7135-1953-457a-a136-ce0bd6887500
ce5e1c36-7f45-49a5-97c0-994c5c47b532	29838beb-b855-4725-9a44-4f1b7c29ce4b
ce5e1c36-7f45-49a5-97c0-994c5c47b532	beefb175-f207-494f-b803-e3a832094dca
950f5181-9b5b-43b3-8945-f807cacd62e6	a535348e-eba0-4b0a-b388-74c41f94ae56
950f5181-9b5b-43b3-8945-f807cacd62e6	ca62d2aa-7874-45c3-9119-4835aa0f0eba
3e440cf8-79ae-434c-97c3-462c107779e4	6c9a7d54-bce4-401c-ab27-15e7df7af64b
3e440cf8-79ae-434c-97c3-462c107779e4	f3982a01-a403-49bf-82fe-d08da85ef8a5
f3c2645a-f672-4da7-829f-fac01b3cb7fd	2564ae80-26b7-462e-a43b-c289d66eca8e
f3c2645a-f672-4da7-829f-fac01b3cb7fd	069c218a-4244-4fee-9db4-da285bd98335
d54ee7b1-8661-4173-bdf6-8e6e9612c460	debeacca-02b1-4678-b01a-4a3257c38b89
d54ee7b1-8661-4173-bdf6-8e6e9612c460	ecd9ba73-cc9d-40a0-9621-24cdd6467cfa
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id") FROM stdin;
\.


--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--

COPY "vault"."secrets" ("id", "name", "description", "secret", "key_id", "nonce", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
