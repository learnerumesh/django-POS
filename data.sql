--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: _auth_group; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_group (
    id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_group OWNER TO rebasedata;

--
-- Name: _auth_group_permissions; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_group_permissions (
    id character varying(1) DEFAULT NULL::character varying,
    group_id character varying(1) DEFAULT NULL::character varying,
    permission_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_group_permissions OWNER TO rebasedata;

--
-- Name: _auth_permission; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_permission (
    id smallint,
    content_type_id smallint,
    codename character varying(18) DEFAULT NULL::character varying,
    name character varying(23) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_permission OWNER TO rebasedata;

--
-- Name: _auth_user; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_user (
    id smallint,
    password character varying(88) DEFAULT NULL::character varying,
    last_login character varying(10) DEFAULT NULL::character varying,
    is_superuser smallint,
    username character varying(6) DEFAULT NULL::character varying,
    last_name character varying(1) DEFAULT NULL::character varying,
    email character varying(1) DEFAULT NULL::character varying,
    is_staff smallint,
    is_active smallint,
    date_joined character varying(10) DEFAULT NULL::character varying,
    first_name character varying(13) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_user OWNER TO rebasedata;

--
-- Name: _auth_user_groups; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_user_groups (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    group_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_user_groups OWNER TO rebasedata;

--
-- Name: _auth_user_user_permissions; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_user_user_permissions (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    permission_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_user_user_permissions OWNER TO rebasedata;

--
-- Name: _django_admin_log; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_admin_log (
    id smallint,
    action_time character varying(10) DEFAULT NULL::character varying,
    object_id smallint,
    object_repr character varying(9) DEFAULT NULL::character varying,
    change_message character varying(41) DEFAULT NULL::character varying,
    content_type_id smallint,
    user_id smallint,
    action_flag smallint
);


ALTER TABLE public._django_admin_log OWNER TO rebasedata;

--
-- Name: _django_content_type; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_content_type (
    id smallint,
    app_label character varying(12) DEFAULT NULL::character varying,
    model character varying(11) DEFAULT NULL::character varying
);


ALTER TABLE public._django_content_type OWNER TO rebasedata;

--
-- Name: _django_migrations; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_migrations (
    id smallint,
    app character varying(12) DEFAULT NULL::character varying,
    name character varying(40) DEFAULT NULL::character varying,
    applied character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._django_migrations OWNER TO rebasedata;

--
-- Name: _django_session; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_session (
    session_key character varying(32) DEFAULT NULL::character varying,
    session_data character varying(227) DEFAULT NULL::character varying,
    expire_date character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._django_session OWNER TO rebasedata;

--
-- Name: _posapp_category; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._posapp_category (
    id smallint,
    name character varying(9) DEFAULT NULL::character varying,
    description character varying(11) DEFAULT NULL::character varying,
    status smallint,
    date_added character varying(10) DEFAULT NULL::character varying,
    date_updated character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._posapp_category OWNER TO rebasedata;

--
-- Name: _posapp_employee; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._posapp_employee (
    id smallint,
    full_name character varying(13) DEFAULT NULL::character varying,
    address character varying(12) DEFAULT NULL::character varying,
    contact bigint,
    joined_date character varying(1) DEFAULT NULL::character varying,
    gender character varying(4) DEFAULT NULL::character varying,
    salary integer,
    role character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._posapp_employee OWNER TO rebasedata;

--
-- Name: _posapp_payments; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._posapp_payments (
    id character varying(1) DEFAULT NULL::character varying,
    from_date character varying(1) DEFAULT NULL::character varying,
    to_date character varying(1) DEFAULT NULL::character varying,
    paid_date character varying(1) DEFAULT NULL::character varying,
    amount character varying(1) DEFAULT NULL::character varying,
    payment_method character varying(1) DEFAULT NULL::character varying,
    empid_id character varying(1) DEFAULT NULL::character varying,
    remarks character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._posapp_payments OWNER TO rebasedata;

--
-- Name: _posapp_payroll; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._posapp_payroll (
    id smallint,
    from_date character varying(1) DEFAULT NULL::character varying,
    to_date character varying(1) DEFAULT NULL::character varying,
    paid_date character varying(1) DEFAULT NULL::character varying,
    amount numeric(6,1) DEFAULT NULL::numeric,
    payment_method character varying(6) DEFAULT NULL::character varying,
    empid_id smallint,
    remarks character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public._posapp_payroll OWNER TO rebasedata;

--
-- Name: _posapp_products; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._posapp_products (
    id smallint,
    code smallint,
    name character varying(18) DEFAULT NULL::character varying,
    description character varying(18) DEFAULT NULL::character varying,
    price numeric(4,1) DEFAULT NULL::numeric,
    status smallint,
    date_added character varying(10) DEFAULT NULL::character varying,
    date_updated character varying(10) DEFAULT NULL::character varying,
    category_id_id smallint
);


ALTER TABLE public._posapp_products OWNER TO rebasedata;

--
-- Name: _posapp_sales; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._posapp_sales (
    id smallint,
    code integer,
    sub_total numeric(4,1) DEFAULT NULL::numeric,
    grand_total numeric(4,1) DEFAULT NULL::numeric,
    tax_amount numeric(2,1) DEFAULT NULL::numeric,
    tax numeric(2,1) DEFAULT NULL::numeric,
    tendered_amount numeric(5,1) DEFAULT NULL::numeric,
    amount_change numeric(4,1) DEFAULT NULL::numeric,
    date_added character varying(10) DEFAULT NULL::character varying,
    date_updated character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._posapp_sales OWNER TO rebasedata;

--
-- Name: _posapp_salesitems; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._posapp_salesitems (
    id smallint,
    price numeric(4,1) DEFAULT NULL::numeric,
    qty numeric(3,1) DEFAULT NULL::numeric,
    total numeric(4,1) DEFAULT NULL::numeric,
    product_id_id smallint,
    sale_id_id smallint
);


ALTER TABLE public._posapp_salesitems OWNER TO rebasedata;

--
-- Name: _sqlite_sequence; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._sqlite_sequence (
    name character varying(19) DEFAULT NULL::character varying,
    seq smallint
);


ALTER TABLE public._sqlite_sequence OWNER TO rebasedata;

--
-- Data for Name: _auth_group; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: _auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: _auth_permission; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_permission (id, content_type_id, codename, name) FROM stdin;
1	1	add_logentry	Can add log entry
2	1	change_logentry	Can change log entry
3	1	delete_logentry	Can delete log entry
4	1	view_logentry	Can view log entry
5	2	add_permission	Can add permission
6	2	change_permission	Can change permission
7	2	delete_permission	Can delete permission
8	2	view_permission	Can view permission
9	3	add_group	Can add group
10	3	change_group	Can change group
11	3	delete_group	Can delete group
12	3	view_group	Can view group
13	4	add_user	Can add user
14	4	change_user	Can change user
15	4	delete_user	Can delete user
16	4	view_user	Can view user
17	5	add_contenttype	Can add content type
18	5	change_contenttype	Can change content type
19	5	delete_contenttype	Can delete content type
20	5	view_contenttype	Can view content type
21	6	add_session	Can add session
22	6	change_session	Can change session
23	6	delete_session	Can delete session
24	6	view_session	Can view session
25	7	add_category	Can add category
26	7	change_category	Can change category
27	7	delete_category	Can delete category
28	7	view_category	Can view category
29	8	add_employee	Can add employee
30	8	change_employee	Can change employee
31	8	delete_employee	Can delete employee
32	8	view_employee	Can view employee
33	9	add_products	Can add products
34	9	change_products	Can change products
35	9	delete_products	Can delete products
36	9	view_products	Can view products
37	10	add_sales	Can add sales
38	10	change_sales	Can change sales
39	10	delete_sales	Can delete sales
40	10	view_sales	Can view sales
41	11	add_salesitems	Can add sales items
42	11	change_salesitems	Can change sales items
43	11	delete_salesitems	Can delete sales items
44	11	view_salesitems	Can view sales items
45	12	add_payroll	Can add payroll
46	12	change_payroll	Can change payroll
47	12	delete_payroll	Can delete payroll
48	12	view_payroll	Can view payroll
49	13	add_payments	Can add payments
50	13	change_payments	Can change payments
51	13	delete_payments	Can delete payments
52	13	view_payments	Can view payments
\.


--
-- Data for Name: _auth_user; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) FROM stdin;
1	pbkdf2_sha256$260000$qlbypplszK9CD3pcQm0ZcA$geSxhpdnNGvY1hNNqONNr6T6xq4Yg92gpDICsNU6M2Q=	2022-07-13	1	admin			1	1		Administrator
2	pbkdf2_sha256$260000$o7dNj16Jozm6ZUyRVmikpR$q3fe1fY8QVAWfI7GZIKIHQMtkn7T4YGV2VZNHJQ7/UA=	2022-07-14	0	sharan			0	1	2022-07-11	
\.


--
-- Data for Name: _auth_user_groups; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: _auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: _django_admin_log; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) FROM stdin;
1	2022-07-11	1	admin	[{"changed": {"fields": ["First name"]}}]	4	1	2
2	2022-07-11	2	sharan	[{"added": {}}]	4	1	1
3	2022-07-12	3	404400003	[{"changed": {"fields": ["Date added"]}}]	10	1	2
4	2022-07-13	5	404400005	[{"changed": {"fields": ["Date added"]}}]	10	1	2
5	2022-07-13	1	404400001	[{"changed": {"fields": ["Date added"]}}]	10	1	2
6	2022-07-13	6	404400006	[{"changed": {"fields": ["Date added"]}}]	10	1	2
\.


--
-- Data for Name: _django_content_type; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
3	auth	group
2	auth	permission
4	auth	user
5	contenttypes	contenttype
7	posApp	category
8	posApp	employee
13	posApp	payments
12	posApp	payroll
9	posApp	products
10	posApp	sales
11	posApp	salesitems
6	sessions	session
\.


--
-- Data for Name: _django_migrations; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-07-11
2	auth	0001_initial	2022-07-11
3	admin	0001_initial	2022-07-11
4	admin	0002_logentry_remove_auto_add	2022-07-11
5	admin	0003_logentry_add_action_flag_choices	2022-07-11
6	contenttypes	0002_remove_content_type_name	2022-07-11
7	auth	0002_alter_permission_name_max_length	2022-07-11
8	auth	0003_alter_user_email_max_length	2022-07-11
9	auth	0004_alter_user_username_opts	2022-07-11
10	auth	0005_alter_user_last_login_null	2022-07-11
11	auth	0006_require_contenttypes_0002	2022-07-11
12	auth	0007_alter_validators_add_error_messages	2022-07-11
13	auth	0008_alter_user_username_max_length	2022-07-11
14	auth	0009_alter_user_last_name_max_length	2022-07-11
15	auth	0010_alter_group_name_max_length	2022-07-11
16	auth	0011_update_proxy_permissions	2022-07-11
17	auth	0012_alter_user_first_name_max_length	2022-07-11
18	posApp	0001_initial	2022-07-11
19	posApp	0002_rename_salary_payment_payroll	2022-07-11
20	posApp	0003_payroll_test	2022-07-11
21	posApp	0004_auto_20220711_1518	2022-07-11
22	posApp	0005_rename_empid_id_payroll_empid	2022-07-11
23	posApp	0006_payments	2022-07-11
24	sessions	0001_initial	2022-07-11
25	posApp	0007_payments_remarks	2022-07-11
26	posApp	0008_payroll_remarks	2022-07-11
\.


--
-- Data for Name: _django_session; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_session (session_key, session_data, expire_date) FROM stdin;
hkuof1vdwy0mxrdsft3jwdyhqheatm0b	.eJxVjEEOwiAQRe_C2hCGdih16d4zkIGZStVAUtqV8e7apAvd_vfef6lA25rD1mQJM6uzsur0u0VKDyk74DuVW9WplnWZo94VfdCmr5XleTncv4NMLX_rSNZjtL0RACEPQyLbu24iRmFjO4cYIzIAT4RoOmdIgL1P45BGcF69P-VTN7w:1oBZ73:MwOv5tXBPsZjocoWnKncn3HLmPgpANe4UHqos9lJ3iY	2022-07-27
59scb1ng4nk8rrgw9ro6tqlrwxxm4492	.eJxVjDsOwjAQBe_iGln-JPaakp4zWLvrBQdQIsVJhbg7iZQC2jcz760yrkvNa5M5D0WdlVWn342QnzLuoDxwvE-ap3GZB9K7og_a9HUq8roc7t9BxVa3WlxyAVIPGDuShIQmlRgcE3jPyOBvgtABGUTyYMHGTRDPYjj04tTnC-o8ODg:1oBZ8T:U3OFT9UMvcDRIkb5NY0Q-2Wco98OsTjvtEXWnFVt6qY	2022-07-27
t3p58ndw10kg14w6zr346erqe4gw8q3h	.eJxVjDsOwjAQBe_iGln-JPaakp4zWLvrBQdQIsVJhbg7iZQC2jcz760yrkvNa5M5D0WdlVWn342QnzLuoDxwvE-ap3GZB9K7og_a9HUq8roc7t9BxVa3WlxyAVIPGDuShIQmlRgcE3jPyOBvgtABGUTyYMHGTRDPYjj04tTnC-o8ODg:1oBZnR:HkXnRTa8MJsmGoC0MQTEbfjIVJXpwRyTZXO71Me1YEQ	2022-07-27
men5innq8ldlu6u7tuw6heym70uy7zly	.eJxVjEEOwiAQRe_C2hCGdih16d4zkIGZStVAUtqV8e7apAvd_vfef6lA25rD1mQJM6uzsur0u0VKDyk74DuVW9WplnWZo94VfdCmr5XleTncv4NMLX_rSNZjtL0RACEPQyLbu24iRmFjO4cYIzIAT4RoOmdIgL1P45BGcF69P-VTN7w:1oBpXS:AwYJuIzhaPXs3zeW7b8hrbRaZGxgGbdd_U9o6N7Y51U	2022-07-28
\.


--
-- Data for Name: _posapp_category; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._posapp_category (id, name, description, status, date_added, date_updated) FROM stdin;
1	Shampoo	shampoo cat	1	2022-07-11	2022-07-11
2	Hair Oil	Hair Oil	1	2022-07-12	2022-07-12
4	Face Wash	Face Wash	1	2022-07-13	2022-07-13
5	Service	service	1	2022-07-13	2022-07-13
\.


--
-- Data for Name: _posapp_employee; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._posapp_employee (id, full_name, address, contact, joined_date, gender, salary, role) FROM stdin;
1	Umesh Nepal	Nuwakot	9898989898		Male	25000	Manager
4	Test Employee	Test Address	123456		Male	1234567	Test Role
5	Faising Lama	Nuwakot	98989898		Male	15000	Accountant
\.


--
-- Data for Name: _posapp_payments; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._posapp_payments (id, from_date, to_date, paid_date, amount, payment_method, empid_id, remarks) FROM stdin;
\.


--
-- Data for Name: _posapp_payroll; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._posapp_payroll (id, from_date, to_date, paid_date, amount, payment_method, empid_id, remarks) FROM stdin;
12				20000.0	Online	1	Paid unSuccessfully
17				15000.0	Cash	5	Done
18				15000.0	Online	5	Paid
\.


--
-- Data for Name: _posapp_products; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._posapp_products (id, code, name, description, price, status, date_added, date_updated, category_id_id) FROM stdin;
1	1234	Sunshilk	200 ml	378.0	1	2022-07-11	2022-07-11	1
2	121	Clinic Plus Sachet	Sachet Shampoo	5.0	1	2022-07-11	2022-07-11	1
3	11	Jasmine 200 ml	Jasmine 200 ml oil	220.0	1	2022-07-12	2022-07-12	2
5	998	Aloevera 200ml	Aloevera 200ml	250.0	1	2022-07-13	2022-07-13	1
6	55	Facial	RUbbed facial	900.0	1	2022-07-13	2022-07-13	5
\.


--
-- Data for Name: _posapp_sales; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._posapp_sales (id, code, sub_total, grand_total, tax_amount, tax, tendered_amount, amount_change, date_added, date_updated) FROM stdin;
1	404400001	390.0	390.0	0.0	0.0	0.0	0.0		2022-07-13
2	404400002	390.0	390.0	0.0	0.0	0.0	0.0	2022-07-11	2022-07-11
3	404400003	200.0	200.0	0.0	0.0	352.0	152.0		2022-07-12
4	404400004	780.0	780.0	0.0	0.0	0.0	0.0	2022-07-12	2022-07-12
5	404400005	615.0	615.0	0.0	0.0	0.0	0.0		2022-07-13
6	404400006	230.0	230.0	0.0	0.0	1000.0	770.0		2022-07-13
7	404400007	10.0	10.0	0.0	0.0	0.0	0.0	2022-07-13	2022-07-13
8	404400008	10.0	10.0	0.0	0.0	0.0	0.0	2022-07-13	2022-07-13
9	404400009	10.0	10.0	0.0	0.0	0.0	0.0	2022-07-13	2022-07-13
10	404400010	220.0	220.0	0.0	0.0	0.0	0.0	2022-07-13	2022-07-13
\.


--
-- Data for Name: _posapp_salesitems; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._posapp_salesitems (id, price, qty, total, product_id_id, sale_id_id) FROM stdin;
1	390.0	1.0	390.0	1	1
2	390.0	1.0	390.0	1	2
3	5.0	40.0	200.0	2	3
4	390.0	2.0	780.0	1	4
5	390.0	1.0	390.0	1	5
6	220.0	1.0	220.0	3	5
7	5.0	1.0	5.0	2	5
8	220.0	1.0	220.0	3	6
9	5.0	2.0	10.0	2	6
10	5.0	2.0	10.0	2	7
11	5.0	2.0	10.0	2	8
12	5.0	2.0	10.0	2	9
13	220.0	1.0	220.0	3	10
\.


--
-- Data for Name: _sqlite_sequence; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._sqlite_sequence (name, seq) FROM stdin;
django_migrations	26
django_admin_log	6
django_content_type	13
auth_permission	52
auth_group	0
auth_user	2
posApp_employee	5
posApp_payments	0
posApp_payroll	18
posApp_category	5
posApp_products	6
posApp_sales	11
posApp_salesitems	15
\.


--
-- PostgreSQL database dump complete
--

