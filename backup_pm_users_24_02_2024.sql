--
-- PostgreSQL database dump
--

-- Dumped from database version 14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: active_clients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_clients (
    id bigint NOT NULL,
    user_id bigint,
    company_id bigint,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    rights_clients_id bigint
);


ALTER TABLE public.active_clients OWNER TO postgres;

--
-- Name: active_clients_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_clients_id_seq OWNER TO postgres;

--
-- Name: active_clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_clients_id_seq OWNED BY public.active_clients.id;


--
-- Name: assist_contracts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.assist_contracts (
    id bigint NOT NULL,
    title character varying(255),
    date_start date,
    date_end date,
    company_id bigint,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.assist_contracts OWNER TO postgres;

--
-- Name: assist_contracts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.assist_contracts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.assist_contracts_id_seq OWNER TO postgres;

--
-- Name: assist_contracts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.assist_contracts_id_seq OWNED BY public.assist_contracts.id;


--
-- Name: rights; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rights (
    id bigint NOT NULL,
    title character varying(255),
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.rights OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    username character varying(255),
    profile_picture character varying(255),
    email character varying(255),
    password character varying(255),
    right_id bigint,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    function_id bigint,
    current_record_id integer,
    phone_number character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: auth; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.auth AS
 SELECT users.username,
    users.profile_picture,
    users.email,
    users.right_id,
    users.phone_number,
    users.id,
    rights.title
   FROM (public.users
     JOIN public.rights ON ((users.right_id = rights.id)));


ALTER TABLE public.auth OWNER TO postgres;

--
-- Name: base_cache_signaling; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.base_cache_signaling
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_cache_signaling OWNER TO postgres;

--
-- Name: base_registry_signaling; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.base_registry_signaling
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_registry_signaling OWNER TO postgres;

--
-- Name: boards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boards (
    id bigint NOT NULL,
    name character varying(255),
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.boards OWNER TO postgres;

--
-- Name: boards_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.boards_id_seq OWNER TO postgres;

--
-- Name: boards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boards_id_seq OWNED BY public.boards.id;


--
-- Name: cards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cards (
    id bigint NOT NULL,
    name character varying(255),
    stage_id bigint NOT NULL,
    "position" integer NOT NULL,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    task_id bigint
);


ALTER TABLE public.cards OWNER TO postgres;

--
-- Name: cards_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cards_id_seq OWNER TO postgres;

--
-- Name: cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cards_id_seq OWNED BY public.cards.id;


--
-- Name: clients_requests; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clients_requests (
    id bigint NOT NULL,
    content character varying(255),
    date_post timestamp(0) without time zone,
    active_client_id bigint,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    title character varying(255),
    seen boolean DEFAULT false,
    ongoing boolean DEFAULT false,
    done boolean DEFAULT false,
    file_urls character varying(255)[] DEFAULT ARRAY[]::character varying[] NOT NULL,
    project_id bigint,
    finished boolean DEFAULT false,
    date_seen timestamp(0) without time zone,
    date_ongoing timestamp(0) without time zone,
    date_done timestamp(0) without time zone,
    date_finished timestamp(0) without time zone,
    uuid character varying(255),
    survey jsonb DEFAULT '{}'::jsonb,
    is_urgent boolean DEFAULT false,
    tool_id bigint,
    deadline date,
    expectation character varying(255),
    request_type_id bigint
);


ALTER TABLE public.clients_requests OWNER TO postgres;

--
-- Name: clients_requests_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clients_requests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clients_requests_id_seq OWNER TO postgres;

--
-- Name: clients_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clients_requests_id_seq OWNED BY public.clients_requests.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comments (
    id bigint NOT NULL,
    content character varying(255),
    task_id bigint,
    poster_id bigint,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    file_urls character varying(255)[] DEFAULT ARRAY[]::character varying[] NOT NULL
);


ALTER TABLE public.comments OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: companies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.companies (
    id bigint NOT NULL,
    name character varying(255),
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    logo character varying(255)
);


ALTER TABLE public.companies OWNER TO postgres;

--
-- Name: companies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.companies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companies_id_seq OWNER TO postgres;

--
-- Name: companies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.companies_id_seq OWNED BY public.companies.id;


--
-- Name: contributor_functions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contributor_functions (
    id bigint NOT NULL,
    title character varying(255),
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.contributor_functions OWNER TO postgres;

--
-- Name: contributor_functions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contributor_functions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contributor_functions_id_seq OWNER TO postgres;

--
-- Name: contributor_functions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contributor_functions_id_seq OWNED BY public.contributor_functions.id;


--
-- Name: editors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.editors (
    id bigint NOT NULL,
    title character varying(255),
    company_id bigint,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.editors OWNER TO postgres;

--
-- Name: editors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.editors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.editors_id_seq OWNER TO postgres;

--
-- Name: editors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.editors_id_seq OWNED BY public.editors.id;


--
-- Name: launch_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.launch_types (
    id bigint NOT NULL,
    description text,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.launch_types OWNER TO postgres;

--
-- Name: launch_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.launch_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.launch_types_id_seq OWNER TO postgres;

--
-- Name: launch_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.launch_types_id_seq OWNED BY public.launch_types.id;


--
-- Name: licenses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.licenses (
    id bigint NOT NULL,
    title character varying(255),
    date_start date,
    date_end date,
    company_id bigint,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.licenses OWNER TO postgres;

--
-- Name: licenses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.licenses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.licenses_id_seq OWNER TO postgres;

--
-- Name: licenses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.licenses_id_seq OWNED BY public.licenses.id;


--
-- Name: notifications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notifications (
    id bigint NOT NULL,
    content character varying(255),
    seen boolean DEFAULT false NOT NULL,
    sender_id bigint,
    receiver_id bigint,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    notifications_type_id bigint
);


ALTER TABLE public.notifications OWNER TO postgres;

--
-- Name: notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notifications_id_seq OWNER TO postgres;

--
-- Name: notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;


--
-- Name: notifications_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notifications_type (
    id bigint NOT NULL,
    type character varying(255),
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.notifications_type OWNER TO postgres;

--
-- Name: notifications_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.notifications_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notifications_type_id_seq OWNER TO postgres;

--
-- Name: notifications_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.notifications_type_id_seq OWNED BY public.notifications_type.id;


--
-- Name: planified; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.planified (
    id bigint NOT NULL,
    description character varying(255),
    dt_start timestamp(0) without time zone,
    period integer,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    attributor_id integer,
    contributor_id integer,
    project_id integer,
    estimated_duration integer,
    without_control boolean DEFAULT false
);


ALTER TABLE public.planified OWNER TO postgres;

--
-- Name: planified_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.planified_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planified_id_seq OWNER TO postgres;

--
-- Name: planified_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.planified_id_seq OWNED BY public.planified.id;


--
-- Name: priorities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.priorities (
    id bigint NOT NULL,
    title character varying(255),
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.priorities OWNER TO postgres;

--
-- Name: priorities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.priorities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.priorities_id_seq OWNER TO postgres;

--
-- Name: priorities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.priorities_id_seq OWNED BY public.priorities.id;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projects (
    id bigint NOT NULL,
    title character varying(255),
    description character varying(255),
    progression integer,
    date_start date,
    date_end date,
    estimated_duration integer,
    performed_duration integer,
    deadline date,
    active_client_id bigint,
    status_id bigint,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    board_id bigint
);


ALTER TABLE public.projects OWNER TO postgres;

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_id_seq OWNER TO postgres;

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- Name: record_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.record_types (
    id bigint NOT NULL,
    name character varying(255),
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.record_types OWNER TO postgres;

--
-- Name: record_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.record_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.record_types_id_seq OWNER TO postgres;

--
-- Name: record_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.record_types_id_seq OWNED BY public.record_types.id;


--
-- Name: request_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.request_type (
    id bigint NOT NULL,
    name character varying(255),
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.request_type OWNER TO postgres;

--
-- Name: request_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.request_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.request_type_id_seq OWNER TO postgres;

--
-- Name: request_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.request_type_id_seq OWNED BY public.request_type.id;


--
-- Name: rights_clients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rights_clients (
    id bigint NOT NULL,
    name character varying(255),
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.rights_clients OWNER TO postgres;

--
-- Name: rights_clients_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rights_clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rights_clients_id_seq OWNER TO postgres;

--
-- Name: rights_clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rights_clients_id_seq OWNED BY public.rights_clients.id;


--
-- Name: rights_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rights_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rights_id_seq OWNER TO postgres;

--
-- Name: rights_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rights_id_seq OWNED BY public.rights.id;


--
-- Name: saisies_validees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.saisies_validees (
    id bigint NOT NULL,
    date date NOT NULL,
    h_abs integer NOT NULL,
    h_work integer NOT NULL,
    user_id bigint,
    user_validator_id bigint,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.saisies_validees OWNER TO postgres;

--
-- Name: saisies_validees_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.saisies_validees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.saisies_validees_id_seq OWNER TO postgres;

--
-- Name: saisies_validees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.saisies_validees_id_seq OWNED BY public.saisies_validees.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version bigint NOT NULL,
    inserted_at timestamp(0) without time zone
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: softwares; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.softwares (
    id bigint NOT NULL,
    title character varying(255),
    company_id bigint,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.softwares OWNER TO postgres;

--
-- Name: softwares_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.softwares_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.softwares_id_seq OWNER TO postgres;

--
-- Name: softwares_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.softwares_id_seq OWNED BY public.softwares.id;


--
-- Name: stages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stages (
    id bigint NOT NULL,
    name character varying(255),
    board_id bigint NOT NULL,
    status_id bigint,
    "position" integer NOT NULL,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.stages OWNER TO postgres;

--
-- Name: stages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stages_id_seq OWNER TO postgres;

--
-- Name: stages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stages_id_seq OWNED BY public.stages.id;


--
-- Name: statuses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.statuses (
    id bigint NOT NULL,
    title character varying(255),
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.statuses OWNER TO postgres;

--
-- Name: statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.statuses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.statuses_id_seq OWNER TO postgres;

--
-- Name: statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.statuses_id_seq OWNED BY public.statuses.id;


--
-- Name: task_records; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.task_records (
    id bigint NOT NULL,
    date date,
    task_id bigint,
    user_id bigint,
    start timestamp(0) without time zone,
    "end" timestamp(0) without time zone,
    duration integer,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    record_type bigint
);


ALTER TABLE public.task_records OWNER TO postgres;

--
-- Name: task_records_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.task_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.task_records_id_seq OWNER TO postgres;

--
-- Name: task_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.task_records_id_seq OWNED BY public.task_records.id;


--
-- Name: task_tracings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.task_tracings (
    id bigint NOT NULL,
    date date,
    start_time timestamp(0) without time zone,
    end_time timestamp(0) without time zone,
    duration integer,
    is_pause boolean DEFAULT false,
    launch_type_id bigint,
    task_id bigint,
    user_id bigint,
    is_recorded boolean DEFAULT false,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.task_tracings OWNER TO postgres;

--
-- Name: task_tracings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.task_tracings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.task_tracings_id_seq OWNER TO postgres;

--
-- Name: task_tracings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.task_tracings_id_seq OWNED BY public.task_tracings.id;


--
-- Name: tasks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tasks (
    id bigint NOT NULL,
    title character varying(255),
    progression integer,
    date_start date,
    date_end date,
    estimated_duration integer,
    performed_duration integer,
    deadline date,
    parent_id bigint,
    project_id bigint,
    contributor_id bigint,
    status_id bigint,
    priority_id bigint,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    attributor_id bigint,
    achieved_at timestamp(0) without time zone,
    hidden boolean DEFAULT false,
    without_control boolean DEFAULT false,
    description text,
    is_major boolean DEFAULT false,
    clients_request_id bigint,
    is_valid boolean DEFAULT true
);


ALTER TABLE public.tasks OWNER TO postgres;

--
-- Name: tasks_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tasks_history (
    id bigint NOT NULL,
    task_id bigint,
    intervener_id bigint,
    tracing_date timestamp(0) without time zone,
    status_from_id bigint,
    status_to_id bigint,
    reason character varying(255),
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.tasks_history OWNER TO postgres;

--
-- Name: tasks_history_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tasks_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tasks_history_id_seq OWNER TO postgres;

--
-- Name: tasks_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tasks_history_id_seq OWNED BY public.tasks_history.id;


--
-- Name: tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tasks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tasks_id_seq OWNER TO postgres;

--
-- Name: tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tasks_id_seq OWNED BY public.tasks.id;


--
-- Name: time_tracking; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.time_tracking (
    id bigint NOT NULL,
    date date NOT NULL,
    h_work integer DEFAULT 0 NOT NULL,
    h_abs integer DEFAULT 0 NOT NULL,
    task_id bigint,
    user_id bigint,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.time_tracking OWNER TO postgres;

--
-- Name: time_tracking_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.time_tracking_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.time_tracking_id_seq OWNER TO postgres;

--
-- Name: time_tracking_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.time_tracking_id_seq OWNED BY public.time_tracking.id;


--
-- Name: tool_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tool_groups (
    id bigint NOT NULL,
    name character varying(255),
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    company_id bigint
);


ALTER TABLE public.tool_groups OWNER TO postgres;

--
-- Name: tool_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tool_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tool_groups_id_seq OWNER TO postgres;

--
-- Name: tool_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tool_groups_id_seq OWNED BY public.tool_groups.id;


--
-- Name: tools; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tools (
    id bigint NOT NULL,
    name character varying(255),
    tool_group_id bigint,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.tools OWNER TO postgres;

--
-- Name: tools_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tools_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tools_id_seq OWNER TO postgres;

--
-- Name: tools_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tools_id_seq OWNED BY public.tools.id;


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: v_current_record; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_current_record AS
 SELECT task_tracings.id,
    task_tracings.date,
    task_tracings.start_time,
    task_tracings.end_time,
    task_tracings.duration,
    task_tracings.is_pause,
    task_tracings.launch_type_id,
    task_tracings.task_id,
    task_tracings.user_id,
    task_tracings.is_recorded,
    task_tracings.inserted_at,
    task_tracings.updated_at
   FROM public.task_tracings
  WHERE (task_tracings.is_recorded = false);


ALTER TABLE public.v_current_record OWNER TO postgres;

--
-- Name: active_clients id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_clients ALTER COLUMN id SET DEFAULT nextval('public.active_clients_id_seq'::regclass);


--
-- Name: assist_contracts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assist_contracts ALTER COLUMN id SET DEFAULT nextval('public.assist_contracts_id_seq'::regclass);


--
-- Name: boards id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards ALTER COLUMN id SET DEFAULT nextval('public.boards_id_seq'::regclass);


--
-- Name: cards id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cards ALTER COLUMN id SET DEFAULT nextval('public.cards_id_seq'::regclass);


--
-- Name: clients_requests id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients_requests ALTER COLUMN id SET DEFAULT nextval('public.clients_requests_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: companies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.companies ALTER COLUMN id SET DEFAULT nextval('public.companies_id_seq'::regclass);


--
-- Name: contributor_functions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contributor_functions ALTER COLUMN id SET DEFAULT nextval('public.contributor_functions_id_seq'::regclass);


--
-- Name: editors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.editors ALTER COLUMN id SET DEFAULT nextval('public.editors_id_seq'::regclass);


--
-- Name: launch_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.launch_types ALTER COLUMN id SET DEFAULT nextval('public.launch_types_id_seq'::regclass);


--
-- Name: licenses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.licenses ALTER COLUMN id SET DEFAULT nextval('public.licenses_id_seq'::regclass);


--
-- Name: notifications id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);


--
-- Name: notifications_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications_type ALTER COLUMN id SET DEFAULT nextval('public.notifications_type_id_seq'::regclass);


--
-- Name: planified id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planified ALTER COLUMN id SET DEFAULT nextval('public.planified_id_seq'::regclass);


--
-- Name: priorities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.priorities ALTER COLUMN id SET DEFAULT nextval('public.priorities_id_seq'::regclass);


--
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- Name: record_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.record_types ALTER COLUMN id SET DEFAULT nextval('public.record_types_id_seq'::regclass);


--
-- Name: request_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.request_type ALTER COLUMN id SET DEFAULT nextval('public.request_type_id_seq'::regclass);


--
-- Name: rights id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rights ALTER COLUMN id SET DEFAULT nextval('public.rights_id_seq'::regclass);


--
-- Name: rights_clients id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rights_clients ALTER COLUMN id SET DEFAULT nextval('public.rights_clients_id_seq'::regclass);


--
-- Name: saisies_validees id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saisies_validees ALTER COLUMN id SET DEFAULT nextval('public.saisies_validees_id_seq'::regclass);


--
-- Name: softwares id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.softwares ALTER COLUMN id SET DEFAULT nextval('public.softwares_id_seq'::regclass);


--
-- Name: stages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stages ALTER COLUMN id SET DEFAULT nextval('public.stages_id_seq'::regclass);


--
-- Name: statuses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.statuses ALTER COLUMN id SET DEFAULT nextval('public.statuses_id_seq'::regclass);


--
-- Name: task_records id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task_records ALTER COLUMN id SET DEFAULT nextval('public.task_records_id_seq'::regclass);


--
-- Name: task_tracings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task_tracings ALTER COLUMN id SET DEFAULT nextval('public.task_tracings_id_seq'::regclass);


--
-- Name: tasks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks ALTER COLUMN id SET DEFAULT nextval('public.tasks_id_seq'::regclass);


--
-- Name: tasks_history id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks_history ALTER COLUMN id SET DEFAULT nextval('public.tasks_history_id_seq'::regclass);


--
-- Name: time_tracking id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.time_tracking ALTER COLUMN id SET DEFAULT nextval('public.time_tracking_id_seq'::regclass);


--
-- Name: tool_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tool_groups ALTER COLUMN id SET DEFAULT nextval('public.tool_groups_id_seq'::regclass);


--
-- Name: tools id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tools ALTER COLUMN id SET DEFAULT nextval('public.tools_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: active_clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_clients (id, user_id, company_id, inserted_at, updated_at, rights_clients_id) FROM stdin;
38	149	10	2023-11-03 11:11:07	2023-11-03 11:11:07	1
39	150	11	2023-11-06 13:22:15	2023-11-06 13:22:15	1
40	151	11	2023-11-14 13:29:01	2023-11-14 13:29:01	2
41	152	11	2023-11-14 14:00:42	2023-11-14 14:00:42	2
42	153	11	2023-11-14 14:03:37	2023-11-14 14:03:37	2
43	154	11	2023-11-14 14:07:03	2023-11-14 14:07:03	2
44	155	11	2023-11-14 14:13:04	2023-11-14 14:13:04	2
45	156	10	2023-11-14 14:18:41	2023-11-14 14:18:41	2
46	157	10	2023-11-15 13:45:19	2023-11-15 13:45:19	2
47	158	11	2023-12-18 08:46:41	2023-12-18 08:46:41	1
48	159	11	2023-12-18 08:55:43	2023-12-18 08:55:43	1
49	160	11	2023-12-18 08:56:40	2023-12-18 08:56:40	1
\.


--
-- Data for Name: assist_contracts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.assist_contracts (id, title, date_start, date_end, company_id, inserted_at, updated_at) FROM stdin;
\.


--
-- Data for Name: boards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boards (id, name, inserted_at, updated_at) FROM stdin;
86	ZEOP	2023-11-03 10:38:19	2023-11-03 10:38:19
87	MADAPLAST	2023-11-03 10:39:59	2023-11-03 10:39:59
88	Project monitoring 	2023-11-06 13:24:10	2023-11-06 13:24:10
89	Project monitoring 	2023-11-06 13:25:00	2023-11-06 13:25:00
90	Test PM	2023-11-07 10:25:11	2023-11-07 10:25:11
91	Test PM	2023-11-07 10:25:56	2023-11-07 10:25:56
92	NAJMI	2023-11-14 13:30:34	2023-11-14 13:30:34
93	NAJMI	2023-11-14 13:59:11	2023-11-14 13:59:11
94	ISSOUFALI - Intervention et accompagnement	2023-11-14 14:01:21	2023-11-14 14:01:21
95	ISSOUFALI - Intervention et accompagnement	2023-11-14 14:01:47	2023-11-14 14:01:47
96	QLM - Intervention et accompagnement	2023-11-14 14:05:15	2023-11-14 14:05:15
97	ZEOP	2023-11-14 14:08:17	2023-11-14 14:08:17
98	MAUVILAC - Intervention et accompagnement	2023-11-14 14:14:10	2023-11-14 14:14:10
99	QWEHLI v1 - Integration Odoo 16	2023-11-14 14:19:59	2023-11-14 14:19:59
100	ACTIVE NEGOCE - Transfert Compta	2023-11-15 13:46:32	2023-11-15 13:46:32
101	Gestion PNR Issoufali	2023-12-15 06:53:14	2023-12-15 06:53:14
102	Modification du site web 	2023-12-18 11:18:19	2023-12-18 11:18:19
103	MOLLAN	2024-01-11 11:33:43	2024-01-11 11:33:43
104	MOLLAN	2024-01-11 11:34:10	2024-01-11 11:34:10
105	MOLLAN	2024-01-11 11:34:26	2024-01-11 11:34:26
106	SMEF	2024-01-24 12:34:59	2024-01-24 12:34:59
107	SMEF	2024-01-24 12:35:45	2024-01-24 12:35:45
108	SMEF	2024-01-24 12:35:53	2024-01-24 12:35:53
109	CDC	2024-01-24 12:59:43	2024-01-24 12:59:43
110	CDC	2024-01-24 13:00:19	2024-01-24 13:00:19
111	MILLOT	2024-01-24 13:01:51	2024-01-24 13:01:51
112	FOCICOM	2024-01-24 13:03:33	2024-01-24 13:03:33
\.


--
-- Data for Name: cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cards (id, name, stage_id, "position", inserted_at, updated_at, task_id) FROM stdin;
1344	Mise à jour Code-barres DECAKILA	474	1	2023-11-15 13:54:08	2023-11-15 14:00:15	1366
1442	PRESTIGE: ajout d'un bouton de rappel de BL et création d'un moyen de paiement "Virement" sur le point de vente de la caisse.	559	0	2024-01-24 13:36:42	2024-01-24 13:36:46	1465
1341	Test 	447	0	2023-11-07 10:27:21	2024-01-24 13:38:28	1363
1497	Import N° de lot fournisseur sur Odoo	489	8	2024-02-14 06:39:13	2024-02-14 06:42:49	1520
1399	SMEF	426	0	2024-01-19 09:07:19	2024-01-19 09:07:19	1422
1353	Création des historiques de prix de revient unitaire	484	0	2023-11-17 08:31:28	2023-12-26 07:37:45	1375
1400	SMEF	426	1	2024-01-19 09:10:08	2024-01-19 09:10:08	1423
1537	N'est générer automatiquement les écritures sur le TVA sur encaissement 	489	5	2024-02-20 06:54:02	2024-02-20 06:54:27	1560
1345	Faire le test pour le recalcul du cumul prix de revient	484	1	2023-11-15 13:56:37	2023-12-26 07:38:06	1367
1354	Optimiser l'exécution du requête SQL dans visual studio	484	2	2023-11-27 14:04:42	2023-12-26 07:38:36	1376
1538	Analyse d'une facture ayant 5 paiements	471	5	2024-02-20 11:22:47	2024-02-20 11:22:47	1561
1515	Analyse facture imprimée avec plusieurs BL rattachée	488	2	2024-02-14 11:39:00	2024-02-15 07:38:56	1538
1361	Ajout d'un module default_account_receivable_payable	490	0	2023-12-19 14:38:09	2024-01-19 09:12:02	1383
1342	test minuteur	440	0	2023-11-15 06:34:37	2023-11-15 06:37:16	1364
1370	Formation utilisateur	504	0	2024-01-10 06:06:50	2024-01-10 06:07:47	1392
1371	qlm : correction page produit 	501	0	2024-01-10 06:07:43	2024-01-10 06:07:43	1393
1444	test	503	2	2024-01-24 13:43:00	2024-01-24 13:43:09	1467
1360	Design archivage	504	2	2023-12-19 14:35:26	2024-01-09 13:57:44	1382
1339	Correction du bug concernant les historiques des tâches 	440	3	2023-11-06 13:31:21	2023-11-17 11:40:47	1361
1369	qlm : correction header 	504	1	2024-01-10 06:05:07	2024-01-10 06:09:20	1391
1372	Amélioration et correction des fonctions de recherche 	438	0	2024-01-10 06:10:18	2024-01-10 11:22:39	1394
1377	Automatiser l'envoi du fichier comptabilité	466	0	2024-01-10 08:31:17	2024-01-10 08:31:17	1399
1364	Création d'un billet à partir de gestion PNR 	500	7	2024-01-09 11:51:53	2024-01-24 07:24:45	1386
1389	a	516	0	2024-01-11 11:41:44	2024-01-11 11:41:44	1411
1373	décommander PNR	496	4	2024-01-10 07:56:31	2024-01-10 07:57:45	1395
1338	debug modification d'une tâche 	440	1	2023-11-06 13:27:05	2023-11-17 11:38:11	1360
1340	Correction du bug concernant les historiques des tâches (design) 	440	2	2023-11-06 13:33:58	2023-11-17 11:40:21	1362
1391	Modification sur le tableau REAPPROVISIONNEMENT	516	1	2024-01-11 11:51:59	2024-01-11 11:51:59	1413
1471	Front Ajout et liste zenith parsing	498	0	2024-01-31 07:24:50	2024-01-31 07:25:04	1494
1416	Taches	456	0	2024-01-24 12:54:36	2024-01-24 12:54:36	1439
1516	Transfert compta via le transfert xml dans un répertoire compta	493	0	2024-02-14 13:20:14	2024-02-14 13:20:22	1539
1346	Modèle d'impression Consommation matière première 	429	5	2023-11-15 13:56:42	2023-11-17 08:43:05	1368
1359	Ajout du fonctionnalité archivage 	502	0	2023-12-19 14:35:02	2024-01-10 07:46:20	1381
1418	Taches	486	0	2024-01-24 12:57:23	2024-01-24 12:57:23	1441
1421	Taches	545	0	2024-01-24 13:00:52	2024-01-24 13:00:52	1444
1347	Intégration du fichier mouvement de stock venant de REFLEX	479	0	2023-11-15 13:58:34	2023-11-17 08:26:36	1369
1505	Importation facture 2016 - 2017	535	4	2024-02-14 07:10:20	2024-02-14 07:10:24	1528
1424	Taches	557	1	2024-01-24 13:05:20	2024-01-24 13:05:20	1447
1343	Mise à jour compte comptable auxiliaire	494	2	2023-11-15 13:47:54	2024-02-14 13:21:48	1365
1425	Taches	426	4	2024-01-24 13:06:32	2024-01-24 13:06:32	1448
1429	Taches	476	0	2024-01-24 13:09:34	2024-01-24 13:09:34	1452
1440	Préparation import Facture	535	2	2024-01-24 13:32:47	2024-02-23 13:21:36	1463
1546	pointage design	501	2	2024-02-23 15:11:24	2024-02-23 15:11:24	1569
1365	Ajouter une pagination pour les interfaces de la liste d'anomalies, clients et des utilisateur	500	1	2024-01-09 11:53:22	2024-01-23 07:11:42	1387
1349	Ajustement de sur le tableau "SendMail"	459	1	2023-11-15 14:04:49	2024-01-24 13:28:04	1371
1367	Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus	499	0	2024-01-09 12:00:28	2024-01-17 06:44:40	1389
1363	Lister les pnr décommandés	500	2	2024-01-09 11:47:03	2024-01-23 07:11:45	1385
1430	Taches	551	0	2024-01-24 13:10:28	2024-01-24 13:18:52	1453
1395	Lister toutes les nouvelles modifications du 15 janvier 2024	500	5	2024-01-15 07:15:30	2024-01-23 07:12:09	1418
1352	Création d'une liste des clients avec statuts de validation de leurs adresses mails respectifs	459	0	2023-11-15 14:24:55	2023-11-15 14:25:40	1374
1381	Application pour le recalcul de prix de revient	483	0	2024-01-10 09:04:22	2024-01-10 09:04:32	1403
1382	Mise en place de la Procédure MAUVILAC	481	0	2024-01-10 09:06:46	2024-01-10 09:06:46	1404
1401	SMEF	426	2	2024-01-19 09:11:22	2024-01-19 09:11:22	1424
1441	Clôture de l'exercice comptable 2022 (CDC) et ouverture de l'exercice 2024	547	1	2024-01-24 13:33:03	2024-01-24 13:33:07	1464
1366	Ajouter une champ permettant d'ajouter le numéro d'EMD pour l'AVOIR COMPAGNIE	500	8	2024-01-09 11:54:36	2024-01-24 07:24:48	1388
1519	tashe tache	426	6	2024-02-15 11:33:21	2024-02-15 11:33:21	1542
1419	Taches	486	2	2024-01-24 12:58:21	2024-01-24 12:58:21	1442
1451	Catalogue Image article sur QLM et CHT	473	3	2024-01-26 08:43:46	2024-01-29 12:32:43	1474
1448	Conditionnement d'article	473	1	2024-01-26 08:22:27	2024-01-26 08:26:16	1471
1384	Résolution - Articles non descendues	478	2	2024-01-10 10:27:26	2024-01-10 10:27:29	1406
1385	Résolution - BL non transformé	478	3	2024-01-10 10:29:08	2024-01-10 10:29:12	1407
1386	Export manuel du BC créer à la date J	478	4	2024-01-10 10:34:30	2024-01-10 10:34:34	1408
1414	Préparation import Fournisseur	536	0	2024-01-24 12:36:45	2024-02-14 07:28:33	1437
1348	Préparation fichier d'import écriture compta ODOO vers SAGE 06-10/23	469	1	2023-11-15 14:00:52	2023-11-17 08:28:08	1370
1388	TJQ non remontée par agent	468	8	2024-01-10 10:51:01	2024-01-10 11:08:01	1410
1378	CA Cies - 23/11	468	5	2024-01-10 08:36:09	2024-01-10 08:36:31	1400
1417	Taches 1	426	3	2024-01-24 12:56:09	2024-01-24 12:56:09	1440
1423	Taches	557	0	2024-01-24 13:04:30	2024-01-24 13:04:30	1446
1392	Modification sur le tableau REAPPROVISIONNEMENT	519	3	2024-01-11 11:54:18	2024-02-14 07:05:28	1414
1450	Avoir avec montant du signe positif	474	2	2024-01-26 08:26:02	2024-01-29 12:32:14	1473
1357	Ajout de la fonctionnalité pour les recherches avancés 	503	1	2023-12-19 14:27:53	2024-01-10 06:08:06	1379
1475	Supprimer les avoirs 	474	4	2024-02-02 05:33:06	2024-02-14 08:27:31	1498
1358	Modification du design recherche avancé avec intégration de la fonctionnalité	503	0	2023-12-19 14:28:30	2024-02-14 06:26:12	1380
1474	Attribuer Accès Utilisateur qlm	474	3	2024-02-02 05:32:03	2024-02-02 06:19:52	1497
1368	Remonter les pénalités provenant du reçu dossier (ZENITH)	500	0	2024-01-09 12:02:07	2024-01-22 08:52:26	1390
1443	Préparation et import des écritures du novembre/décembre 2023 pour HOME DESIGN	494	0	2024-01-24 13:41:26	2024-02-14 13:21:41	1466
1528	ISSOUFALI - Etat de caisse UU 010123-311223	468	10	2024-02-16 10:30:01	2024-02-16 10:30:04	1551
1499	Analayse des relance automatique des paiments en retard sur odoo	489	6	2024-02-14 06:41:21	2024-02-14 06:42:17	1522
1468	Front modifier email pnr, notification, fee	499	2	2024-01-31 07:18:30	2024-02-02 13:06:15	1491
1420	Taches	456	1	2024-01-24 12:59:18	2024-01-24 12:59:18	1443
1427	Comparaison des données Client par rapport à EBP	458	0	2024-01-24 13:08:51	2024-01-24 13:09:09	1450
1431	Taches	456	2	2024-01-24 13:11:31	2024-01-24 13:11:31	1454
1362	PNR à décommander	500	3	2024-01-09 11:41:14	2024-01-23 07:11:51	1384
1432	Préparation du fichier d'import	458	1	2024-01-24 13:11:40	2024-01-24 13:11:45	1455
1396	Ecrire un mail indiquant à toutes les utilisateurs de gestion PNR pour la mise à jour le 15 janvier 2024	500	4	2024-01-15 07:17:19	2024-01-23 07:12:06	1419
1409	Front Ajout compagnie information (configurations)	499	4	2024-01-19 13:40:03	2024-02-02 13:06:34	1432
1410	Front Ajout Email PNR	499	5	2024-01-19 13:41:31	2024-02-02 13:06:44	1433
1394	Faire les test de toutes les modifications apportées par Maphie au niveau de gestion PNR	500	6	2024-01-15 07:14:39	2024-01-23 07:12:14	1417
1529	Mise en place d'une selection de lot dans PICK avec Studio	488	3	2024-02-16 10:30:05	2024-02-16 10:31:58	1552
1452	Mise à jour des paramétrages dans EBP Gestion commerciale et Comptabilité	494	1	2024-01-26 11:46:30	2024-02-14 13:21:45	1475
1422	Taches	551	1	2024-01-24 13:02:25	2024-01-24 13:02:25	1445
1405	MOLLAN - Import objets métiers avec vba	518	9	2024-01-19 09:24:44	2024-02-14 06:54:23	1428
1434	Importation des exercices : Prod	458	2	2024-01-24 13:19:19	2024-01-24 13:19:22	1457
1518	Réctification de l'import devis et article	518	7	2024-02-15 10:46:13	2024-02-15 10:46:28	1541
1435	Modification des modèles d'impression 	458	3	2024-01-24 13:24:31	2024-01-24 13:24:37	1458
1428	Taches	466	1	2024-01-24 13:09:02	2024-01-24 13:09:02	1451
1438	Préparation du fichier de comparaison du GESCOM et COMPTA, pour la clôture de l'exercice 2022	547	0	2024-01-24 13:29:39	2024-01-24 13:29:43	1461
1539	Désactiver la génération automatique des écritures dans le journal "Différence de change"	488	1	2024-02-21 05:57:05	2024-02-21 05:57:10	1562
1466	Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST	428	5	2024-01-31 05:51:05	2024-01-31 05:51:09	1489
1337	Tableau BOn de production	428	9	2023-11-03 11:31:52	2023-11-15 13:50:23	1359
1351	Modèle d'impression	428	8	2023-11-15 14:14:40	2023-11-15 14:30:46	1373
1457	Modifier les taux salaires horaires sur les salariés horaire et gardien	554	2	2024-01-29 11:39:16	2024-02-22 06:38:30	1480
1445	Créer une interface pour les autres commandes RTN, TTH (pour les PNR archivés)	498	1	2024-01-25 07:25:26	2024-01-25 07:25:36	1468
1469	Front ajout pour  parsing pnr	499	1	2024-01-31 07:20:56	2024-02-02 10:58:08	1492
1470	Front Ajout et liste pour parsing emd	499	3	2024-01-31 07:22:54	2024-02-02 13:06:27	1493
1397	Optimisation de la liste des PNRs (réduction du temps de rechargement de la page)	500	9	2024-01-17 06:47:21	2024-02-02 13:05:39	1420
1461	Remonter les billets en FO PAX (billet initial)	496	5	2024-01-30 07:11:57	2024-01-30 11:42:23	1484
1415	Préparation import Fournitures	536	1	2024-01-24 12:38:13	2024-02-14 07:12:18	1438
1426	Taches	469	0	2024-01-24 13:08:37	2024-02-14 08:40:55	1449
1465	Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024	488	0	2024-01-31 05:49:53	2024-01-31 05:49:57	1488
1402	ISSOUFALI - Déploiement du fichier "Préparation d'import"	468	9	2024-01-19 09:12:30	2024-01-19 09:12:34	1425
1375	PNR VERIFICATION	468	2	2024-01-10 08:25:30	2024-01-10 08:25:33	1397
1459	Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement	499	6	2024-01-30 07:09:51	2024-02-14 06:07:33	1482
1437	Création d'un modèle d'impression	559	1	2024-01-24 13:27:24	2024-01-24 13:27:27	1460
1436	Ajout moyen de paiement	559	2	2024-01-24 13:26:36	2024-01-24 13:27:38	1459
1439	Simulation paramétrages Utilisateur 'Caissier'	559	3	2024-01-24 13:29:50	2024-01-24 13:29:52	1462
1502	MOLLAN - Import Bon de commande	519	0	2024-02-14 06:52:17	2024-02-14 06:53:56	1525
1456	Envoyer un fichier pour l'état de facture et avoir clients/fournisseurs pour FOCICOM REUNION daté du 01/01/2023 au 31/12/2023.	560	0	2024-01-29 11:36:14	2024-02-15 13:44:26	1479
1476	Relance automatique à 2 niveau	486	3	2024-02-02 05:37:10	2024-02-02 05:37:10	1499
1449	Supression devis 	473	2	2024-01-26 08:24:07	2024-01-29 12:32:36	1472
1464	Compte rendu de la réunion avec Coralie	486	1	2024-01-31 05:48:56	2024-02-20 06:52:01	1487
1453	Rectifier la valeur IRSA fausse sur un bulletin	429	0	2024-01-26 14:22:30	2024-02-14 06:14:19	1476
1393	Automatisation de l'import ARTICLE	518	3	2024-01-11 12:05:59	2024-01-19 09:21:15	1416
1404	MOLLAN - Import Bon de commande 	518	4	2024-01-19 09:22:58	2024-01-19 09:23:01	1427
1390	Automatisation de l'import DEVIS	518	8	2024-01-11 11:45:02	2024-02-14 06:11:20	1412
1503	Modification et  Ajout de fonctionnalité sur le tableau Surstockage	519	1	2024-02-14 06:57:20	2024-02-14 07:04:39	1526
1504	Modifcation du tableau 2080	519	2	2024-02-14 07:02:27	2024-02-14 07:05:04	1527
1408	MOLLAN - Réduction du fichier log	518	10	2024-01-19 09:29:57	2024-01-19 09:30:00	1431
1517	Analyse d'un erreur lors d'annulation d'un reliquat de BR	489	10	2024-02-15 07:36:16	2024-02-15 07:36:29	1540
1498	Paramétrage des emails automatiques envoyés à la validation des Bon de livraisons	489	7	2024-02-14 06:40:34	2024-02-14 06:42:36	1521
1496	Rédaction procédure Gestion des emails sur Outlook.	489	9	2024-02-14 06:33:58	2024-02-14 08:26:51	1519
1486	Test	501	1	2024-02-08 08:00:47	2024-02-08 08:00:47	1509
1532	Modifier la formatage du libellé des écritures des documents d'achats pour le transfert compta (numéro facture fournisseur + numéro facture interne: référence)	494	3	2024-02-19 05:32:44	2024-02-21 05:51:58	1555
1507	Avoir	533	0	2024-02-14 07:13:35	2024-02-14 07:13:35	1530
1446	QWEHLI SAS: Paramétrage des comptes par défaut utilisés pour les entrants et sortant de chaque journal de trésorerie.	489	0	2024-01-25 14:37:00	2024-02-15 13:35:38	1469
1534	Ajustement tableau IRSA HC et IRSA EMP	428	3	2024-02-19 06:21:27	2024-02-19 06:21:46	1557
1492	désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements » 	489	3	2024-02-12 13:59:20	2024-02-16 07:05:54	1515
1447	MADAPLAST - Analyse du contrôle du prix de revient	428	6	2024-01-26 06:27:15	2024-01-26 06:27:17	1470
1413	ISSOUFALI - Récap billet 	468	12	2024-01-23 07:45:16	2024-01-23 07:45:41	1436
1350	Réalisation tableau "Balance agée"	428	7	2023-11-15 14:06:50	2023-11-15 14:30:07	1372
1531	Analyse de devis bloqué sur Reflet de l'ile	473	7	2024-02-16 10:33:17	2024-02-16 10:33:35	1554
1412	Annuler la modification dans gestion PNR le 22 janvier	500	10	2024-01-23 07:16:57	2024-02-12 06:50:00	1435
1541	Elaboration du tableau vente annuel	428	0	2024-02-22 06:31:53	2024-02-22 06:31:56	1564
1489	Correction tableau "Analyses prix de vente" sur qlm	471	2	2024-02-12 12:38:51	2024-02-12 12:38:51	1512
1490	Analyse de la paramètrage des séquences au niveau du module fabrication sur odoo	471	3	2024-02-12 12:41:02	2024-02-12 12:41:02	1513
1520	Ajustement fichier IRSA 	429	6	2024-02-15 11:36:25	2024-02-15 14:03:36	1543
1494	Création des raccourcis et un nouveau utilisateur dans EPB Compta, Gestion Commerciale, Paie	426	5	2024-02-12 14:02:30	2024-02-12 14:02:30	1517
1460	Faire une étude pour remonter les ventes diverses (Zenith)	496	6	2024-01-30 07:11:09	2024-01-30 07:11:09	1483
1455	Ajouter le champ du rubrique "Bonus COA" dans les tableaux Contrôle paie, IRSA	429	2	2024-01-29 06:59:05	2024-02-14 06:40:56	1478
1509	Importation Facture 2017 - 2018	533	1	2024-02-14 07:14:46	2024-02-14 07:14:46	1532
1433	Dotation des immobilisations au 31/12/2023	554	1	2024-01-24 13:16:17	2024-02-22 06:38:02	1456
1510	Importation facture 2018 - 2019	533	2	2024-02-14 07:15:35	2024-02-14 07:15:35	1533
1523	Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024	489	2	2024-02-15 13:39:43	2024-02-15 13:40:07	1546
1387	Préparation du réunion ZEOP et Réunion ZEOP	478	5	2024-01-10 10:38:58	2024-01-10 10:41:53	1409
1383	Mise en place de la Procédure Zeop	478	1	2024-01-10 09:07:54	2024-01-10 09:07:58	1405
1511	Automatisation d'envoi de mail d'un fichier contenant les erreurs durant l'import	479	1	2024-02-14 07:19:58	2024-02-14 07:21:27	1534
1512	Préparation import Devis	535	0	2024-02-14 07:31:13	2024-02-14 07:31:37	1535
1478	Déplacement automaitique des anciens mails et CRON du redémarrage automatique du serveur Django	498	2	2024-02-02 13:10:37	2024-02-14 06:07:41	1501
1491	Analyse Migration odoo v15-V16	473	4	2024-02-12 13:15:03	2024-02-14 06:42:59	1514
1513	Analyse erreur lors de la création d'un avoir sur une facture	473	5	2024-02-14 08:24:26	2024-02-14 08:24:39	1536
1406	MOLLAN - Modification des propriétés pour le serveur PROD	518	5	2024-01-19 09:26:25	2024-01-19 09:26:28	1429
1407	MOLLAN - Mise en place de l'objet métier	518	6	2024-01-19 09:27:33	2024-01-19 09:27:35	1430
1514	Création devis pour qlm 	473	6	2024-02-14 08:28:59	2024-02-14 08:29:10	1537
1462	Etudier les cancelations (Demander à Mr. Tahine) une réunion est peut être requis	496	9	2024-01-30 07:13:05	2024-01-30 07:13:05	1485
1477	PBDZDI : Le total ne correspond pas dans Odoo (à vérifier le TST)	496	8	2024-02-02 12:02:23	2024-02-02 13:07:24	1500
1487	Gestion des utilisateur (archiver, supprimer, changer mot de passe) etc	496	10	2024-02-09 12:29:47	2024-02-09 12:29:47	1510
1506	Automatisation récupération, traitement et envoi dans la base de données	469	2	2024-02-14 07:12:24	2024-02-14 07:15:11	1529
1488	Réponse automatique d'anomalie à étudier	496	11	2024-02-09 12:31:12	2024-02-09 12:31:12	1511
1472	Front ajout et liste TST parsing	498	3	2024-01-31 07:26:15	2024-02-14 06:17:47	1495
1463	Documentation sur gestion PNR	496	7	2024-01-30 11:43:33	2024-02-19 07:48:00	1486
1536	00E2W9 : Le montant de l'EMD ne correspond pas (voir reçu dossier) - REMB	496	12	2024-02-19 07:49:24	2024-02-19 07:49:24	1559
1473	Front ajout et liste ticket et zenith receipt parsing	498	4	2024-01-31 07:28:04	2024-02-14 06:17:51	1496
1544	Préparation de fichier de contrôle	535	3	2024-02-23 13:19:54	2024-02-23 13:19:59	1567
1411	Gérer les configurations du projet avec toutes les modifications qu'on doit apporter avec Maphie	498	6	2024-01-22 11:11:38	2024-02-02 13:06:53	1434
1458	Ajouter une modèle d'archivage des utilisateurs	498	7	2024-01-30 07:08:46	2024-02-09 11:27:18	1481
1467	Front modifier compagnie information (configurations)	498	5	2024-01-31 07:17:54	2024-02-14 06:17:55	1490
1376	Envoyer le fichier compta journalier	468	3	2024-01-10 08:28:58	2024-01-10 08:29:02	1398
1374	Préparation TJQ de l'agent Sity	468	4	2024-01-10 08:21:23	2024-01-10 08:29:10	1396
1493	désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements » 	486	4	2024-02-12 13:59:57	2024-02-12 13:59:57	1516
1379	Données brutes 3 Cies	468	6	2024-01-10 08:40:38	2024-01-10 08:40:42	1401
1380	les avoirs ladom non retrouvés 01-03/23	468	7	2024-01-10 08:44:51	2024-01-10 08:44:55	1402
1527	Remise à zéro quantité réservé d'un article	489	12	2024-02-16 10:29:04	2024-02-16 10:32:08	1550
1530	Mise en place d'un module permettant l'interdiction des stocks négatifs dans odoo	489	11	2024-02-16 10:30:50	2024-02-16 10:31:45	1553
1508	Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo	469	3	2024-02-14 07:14:29	2024-02-14 08:43:24	1531
1521	tache	471	4	2024-02-15 11:40:45	2024-02-15 11:40:45	1544
1525	QLM - FINALISATION TABLEAU IMPACT DE L' INCIDENT SUR LES LISTES DE PRIX	474	0	2024-02-15 14:00:48	2024-02-15 14:02:20	1548
1522	Compte rendu de la réunion avec Coralie	489	1	2024-02-15 13:37:23	2024-02-15 13:38:05	1545
1524	Etat comparatif des ventes mensuel Année N et Année N-1.	426	7	2024-02-15 13:46:31	2024-02-15 13:46:31	1547
1403	ISSOUFALI - Actualisation du fichier import compta 	468	11	2024-01-19 09:19:26	2024-01-26 06:29:15	1426
1533	Mise à jour du compte utilisé sur le montant de la reprise dans Gestion Com. Transférer les écritures dans le compte 531000 dans 531100, ré-transfert en comptabilité	494	4	2024-02-19 05:38:26	2024-02-21 05:52:03	1556
1495	Création un nouveau raccourci pour EBP Gescom, Compta, Immo, Paie pour un nouveau utilisateur	429	3	2024-02-14 06:13:28	2024-02-14 06:41:19	1518
1500	Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST	429	4	2024-02-14 06:44:54	2024-02-14 06:45:41	1523
1501	Réglages au niveau du tableau COA vs Budget	429	1	2024-02-14 06:51:52	2024-02-19 06:21:39	1524
1526	Faire un point sur teams avec l'équipe de QWEHLI	489	4	2024-02-16 07:09:34	2024-02-20 06:50:49	1549
1535	Création modèles d'impression SALES REPORT	428	4	2024-02-19 06:38:38	2024-02-19 06:38:46	1558
1540	Ajouter la colonne Grade dans le tableau Valeur Rubrique sur une période	428	2	2024-02-21 08:43:08	2024-02-21 08:43:14	1563
1454	Modification de la formule sur le rubrique "avantage en nature"	554	0	2024-01-26 14:27:39	2024-02-22 06:37:53	1477
1542	Mise à jour du taux de la rubrique Médecine du travail à 6% et supprimer la rubrique Médecine du travail non déductible 1%	553	0	2024-02-22 06:39:33	2024-02-22 06:39:37	1565
1543	Mise à jour du tableau contrôle paie, supprimer l'information de la rubrique Médecine du travail	553	1	2024-02-22 13:22:31	2024-02-22 13:22:34	1566
1545	Préparation fichier de contrôle	535	1	2024-02-23 14:06:26	2024-02-23 14:06:34	1568
\.


--
-- Data for Name: clients_requests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clients_requests (id, content, date_post, active_client_id, inserted_at, updated_at, title, seen, ongoing, done, file_urls, project_id, finished, date_seen, date_ongoing, date_done, date_finished, uuid, survey, is_urgent, tool_id, deadline, expectation, request_type_id) FROM stdin;
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comments (id, content, task_id, poster_id, inserted_at, updated_at, file_urls) FROM stdin;
152	Les articles mentionnées(différents PRU dans le fichier) n'avaient aucune frais d'approche lié	1367	147	2023-11-17 11:34:34	2023-11-17 08:34:34	{}
153	non utilisé	1399	147	2024-01-10 11:32:02	2024-01-10 08:32:02	{}
154	Solution : utilisé wscript au lieu de cscript	1410	147	2024-01-10 14:09:47	2024-01-10 11:09:47	{}
155	- Enregistrer et fermer le classeur dans le vbscript mais non pas dans le macro codé en vba	1410	147	2024-01-10 14:11:23	2024-01-10 11:11:23	{}
156	Il reste des documents qui sont encore en cours de rédation et des remise en banque non validé	1539	146	2024-02-15 16:42:43	2024-02-15 13:42:43	{}
\.


--
-- Data for Name: companies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.companies (id, name, inserted_at, updated_at, logo) FROM stdin;
11	MGBI	2023-11-06 13:19:24	2023-11-06 13:19:24	images/company_logos/company_default_logo.png
10	PHIDIA	2023-11-03 11:10:56	2024-01-19 13:14:11	images/company_logos/company_default_logo.png
\.


--
-- Data for Name: contributor_functions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contributor_functions (id, title, inserted_at, updated_at) FROM stdin;
\.


--
-- Data for Name: editors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.editors (id, title, company_id, inserted_at, updated_at) FROM stdin;
\.


--
-- Data for Name: launch_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.launch_types (id, description, inserted_at, updated_at) FROM stdin;
\.


--
-- Data for Name: licenses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.licenses (id, title, date_start, date_end, company_id, inserted_at, updated_at) FROM stdin;
\.


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notifications (id, content, seen, sender_id, receiver_id, inserted_at, updated_at, notifications_type_id) FROM stdin;
24717	Un projet du nom de MADAPLAST a été crée par Mathieu	f	138	127	2023-11-03 13:39:59	2023-11-03 13:39:59	5
24718	Un projet du nom de MADAPLAST a été crée par Mathieu	f	138	130	2023-11-03 13:39:59	2023-11-03 13:39:59	5
24719	Un projet du nom de MADAPLAST a été crée par Mathieu	f	138	132	2023-11-03 13:39:59	2023-11-03 13:39:59	5
24720	Un projet du nom de MADAPLAST a été crée par Mathieu	f	138	135	2023-11-03 13:39:59	2023-11-03 13:39:59	5
24721	Un projet du nom de MADAPLAST a été crée par Mathieu	f	138	136	2023-11-03 13:39:59	2023-11-03 13:39:59	5
24722	Un projet du nom de MADAPLAST a été crée par Mathieu	f	138	144	2023-11-03 13:39:59	2023-11-03 13:39:59	5
24723	Un projet du nom de MADAPLAST a été crée par Mathieu	f	138	145	2023-11-03 13:39:59	2023-11-03 13:39:59	5
24724	Un projet du nom de MADAPLAST a été crée par Mathieu	f	138	131	2023-11-03 13:39:59	2023-11-03 13:39:59	5
24725	Tâche nouvellement créee du nom de Tableau BOn de production par Mathieu dans le projet MADAPLAST.	f	138	127	2023-11-03 14:31:52	2023-11-03 14:31:52	5
24726	Tâche nouvellement créee du nom de Tableau BOn de production par Mathieu dans le projet MADAPLAST.	f	138	130	2023-11-03 14:31:52	2023-11-03 14:31:52	5
24727	Tâche nouvellement créee du nom de Tableau BOn de production par Mathieu dans le projet MADAPLAST.	f	138	132	2023-11-03 14:31:52	2023-11-03 14:31:52	5
24728	Tâche nouvellement créee du nom de Tableau BOn de production par Mathieu dans le projet MADAPLAST.	f	138	135	2023-11-03 14:31:52	2023-11-03 14:31:52	5
24729	Tâche nouvellement créee du nom de Tableau BOn de production par Mathieu dans le projet MADAPLAST.	f	138	136	2023-11-03 14:31:52	2023-11-03 14:31:52	5
24730	Tâche nouvellement créee du nom de Tableau BOn de production par Mathieu dans le projet MADAPLAST.	f	138	144	2023-11-03 14:31:52	2023-11-03 14:31:52	5
24731	Tâche nouvellement créee du nom de Tableau BOn de production par Mathieu dans le projet MADAPLAST.	f	138	145	2023-11-03 14:31:52	2023-11-03 14:31:52	5
24732	Tâche nouvellement créee du nom de Tableau BOn de production par Mathieu dans le projet MADAPLAST.	f	138	131	2023-11-03 14:31:52	2023-11-03 14:31:52	5
24734	Kevin a été assigné à la tâche Tableau BOn de production dans le projet MADAPLAST par Mathieu	f	138	127	2023-11-03 14:31:52	2023-11-03 14:31:52	6
24735	Kevin a été assigné à la tâche Tableau BOn de production dans le projet MADAPLAST par Mathieu	f	138	130	2023-11-03 14:31:52	2023-11-03 14:31:52	6
24736	Kevin a été assigné à la tâche Tableau BOn de production dans le projet MADAPLAST par Mathieu	f	138	132	2023-11-03 14:31:52	2023-11-03 14:31:52	6
24737	Tâche "Tableau BOn de production"\n          du projet MADAPLAST mise dans " En cours " par Mathieu	f	138	127	2023-11-03 14:32:00	2023-11-03 14:32:00	1
24738	Tâche "Tableau BOn de production"\n          du projet MADAPLAST mise dans " En cours " par Mathieu	f	138	130	2023-11-03 14:32:00	2023-11-03 14:32:00	1
24739	Tâche "Tableau BOn de production"\n          du projet MADAPLAST mise dans " En cours " par Mathieu	f	138	132	2023-11-03 14:32:00	2023-11-03 14:32:00	1
24740	Tâche "Tableau BOn de production"\n          du projet MADAPLAST mise dans " En cours " par Mathieu	f	138	135	2023-11-03 14:32:00	2023-11-03 14:32:00	1
24741	Tâche "Tableau BOn de production"\n          du projet MADAPLAST mise dans " En cours " par Mathieu	f	138	136	2023-11-03 14:32:00	2023-11-03 14:32:00	1
24742	Tâche "Tableau BOn de production"\n          du projet MADAPLAST mise dans " En cours " par Mathieu	f	138	144	2023-11-03 14:32:00	2023-11-03 14:32:00	1
24743	Tâche "Tableau BOn de production"\n          du projet MADAPLAST mise dans " En cours " par Mathieu	f	138	145	2023-11-03 14:32:00	2023-11-03 14:32:00	1
24744	Tâche "Tableau BOn de production"\n          du projet MADAPLAST mise dans " En cours " par Mathieu	f	138	131	2023-11-03 14:32:00	2023-11-03 14:32:00	1
24745	Tâche "Tableau Bon de production"\n          du projet MADAPLAST mise dans " En blocage " par Kevin	f	139	127	2023-11-06 10:21:01	2023-11-06 10:21:01	1
24746	Tâche "Tableau Bon de production"\n          du projet MADAPLAST mise dans " En blocage " par Kevin	f	139	130	2023-11-06 10:21:01	2023-11-06 10:21:01	1
24747	Tâche "Tableau Bon de production"\n          du projet MADAPLAST mise dans " En blocage " par Kevin	f	139	132	2023-11-06 10:21:01	2023-11-06 10:21:01	1
24748	Tâche "Tableau Bon de production"\n          du projet MADAPLAST mise dans " En blocage " par Kevin	f	139	135	2023-11-06 10:21:01	2023-11-06 10:21:01	1
24749	Tâche "Tableau Bon de production"\n          du projet MADAPLAST mise dans " En blocage " par Kevin	f	139	136	2023-11-06 10:21:01	2023-11-06 10:21:01	1
24750	Tâche "Tableau Bon de production"\n          du projet MADAPLAST mise dans " En blocage " par Kevin	f	139	138	2023-11-06 10:21:01	2023-11-06 10:21:01	1
24751	Tâche "Tableau Bon de production"\n          du projet MADAPLAST mise dans " En blocage " par Kevin	f	139	144	2023-11-06 10:21:01	2023-11-06 10:21:01	1
24752	Tâche "Tableau Bon de production"\n          du projet MADAPLAST mise dans " En blocage " par Kevin	f	139	145	2023-11-06 10:21:01	2023-11-06 10:21:01	1
24753	Tâche "Tableau Bon de production"\n          du projet MADAPLAST mise dans " En blocage " par Kevin	f	139	131	2023-11-06 10:21:01	2023-11-06 10:21:01	1
24733	Kevin a été assigné à la tâche Tableau BOn de production dans le projet MADAPLAST par Mathieu	t	138	139	2023-11-03 11:31:52	2023-11-03 11:31:52	6
24754	Tâche "Tableau Bon de production"\n          du projet MADAPLAST mise dans " En cours " par Kevin	f	139	127	2023-11-06 10:23:58	2023-11-06 10:23:58	1
24755	Tâche "Tableau Bon de production"\n          du projet MADAPLAST mise dans " En cours " par Kevin	f	139	130	2023-11-06 10:23:58	2023-11-06 10:23:58	1
24756	Tâche "Tableau Bon de production"\n          du projet MADAPLAST mise dans " En cours " par Kevin	f	139	132	2023-11-06 10:23:58	2023-11-06 10:23:58	1
24757	Tâche "Tableau Bon de production"\n          du projet MADAPLAST mise dans " En cours " par Kevin	f	139	135	2023-11-06 10:23:58	2023-11-06 10:23:58	1
24758	Tâche "Tableau Bon de production"\n          du projet MADAPLAST mise dans " En cours " par Kevin	f	139	136	2023-11-06 10:23:58	2023-11-06 10:23:58	1
24759	Tâche "Tableau Bon de production"\n          du projet MADAPLAST mise dans " En cours " par Kevin	f	139	138	2023-11-06 10:23:58	2023-11-06 10:23:58	1
24760	Tâche "Tableau Bon de production"\n          du projet MADAPLAST mise dans " En cours " par Kevin	f	139	144	2023-11-06 10:23:58	2023-11-06 10:23:58	1
24761	Tâche "Tableau Bon de production"\n          du projet MADAPLAST mise dans " En cours " par Kevin	f	139	145	2023-11-06 10:23:58	2023-11-06 10:23:58	1
24762	Tâche "Tableau Bon de production"\n          du projet MADAPLAST mise dans " En cours " par Kevin	f	139	131	2023-11-06 10:23:58	2023-11-06 10:23:58	1
24763	Un projet du nom de Project monitoring  a été crée par Hasina	f	131	127	2023-11-06 16:25:00	2023-11-06 16:25:00	5
24764	Un projet du nom de Project monitoring  a été crée par Hasina	f	131	130	2023-11-06 16:25:00	2023-11-06 16:25:00	5
24765	Un projet du nom de Project monitoring  a été crée par Hasina	f	131	132	2023-11-06 16:25:00	2023-11-06 16:25:00	5
24766	Un projet du nom de Project monitoring  a été crée par Hasina	f	131	135	2023-11-06 16:25:00	2023-11-06 16:25:00	5
24767	Un projet du nom de Project monitoring  a été crée par Hasina	f	131	136	2023-11-06 16:25:00	2023-11-06 16:25:00	5
24768	Un projet du nom de Project monitoring  a été crée par Hasina	f	131	138	2023-11-06 16:25:00	2023-11-06 16:25:00	5
24769	Un projet du nom de Project monitoring  a été crée par Hasina	f	131	144	2023-11-06 16:25:00	2023-11-06 16:25:00	5
24770	Un projet du nom de Project monitoring  a été crée par Hasina	f	131	145	2023-11-06 16:25:00	2023-11-06 16:25:00	5
24771	Tâche nouvellement créee du nom de debug modification d'une tâche  par Hasina dans le projet Project monitoring .	f	131	127	2023-11-06 16:27:05	2023-11-06 16:27:05	5
24772	Tâche nouvellement créee du nom de debug modification d'une tâche  par Hasina dans le projet Project monitoring .	f	131	130	2023-11-06 16:27:05	2023-11-06 16:27:05	5
24773	Tâche nouvellement créee du nom de debug modification d'une tâche  par Hasina dans le projet Project monitoring .	f	131	132	2023-11-06 16:27:05	2023-11-06 16:27:05	5
24774	Tâche nouvellement créee du nom de debug modification d'une tâche  par Hasina dans le projet Project monitoring .	f	131	135	2023-11-06 16:27:05	2023-11-06 16:27:05	5
24775	Tâche nouvellement créee du nom de debug modification d'une tâche  par Hasina dans le projet Project monitoring .	f	131	136	2023-11-06 16:27:05	2023-11-06 16:27:05	5
24776	Tâche nouvellement créee du nom de debug modification d'une tâche  par Hasina dans le projet Project monitoring .	f	131	138	2023-11-06 16:27:05	2023-11-06 16:27:05	5
24777	Tâche nouvellement créee du nom de debug modification d'une tâche  par Hasina dans le projet Project monitoring .	f	131	144	2023-11-06 16:27:05	2023-11-06 16:27:05	5
24778	Tâche nouvellement créee du nom de debug modification d'une tâche  par Hasina dans le projet Project monitoring .	f	131	145	2023-11-06 16:27:05	2023-11-06 16:27:05	5
24779	Anja a été assigné à la tâche debug modification d'une tâche  dans le projet Project monitoring  par Hasina	f	131	133	2023-11-06 13:27:05	2023-11-06 13:27:05	6
24780	Anja a été assigné à la tâche debug modification d'une tâche  dans le projet Project monitoring  par Hasina	f	131	127	2023-11-06 16:27:05	2023-11-06 16:27:05	6
24781	Anja a été assigné à la tâche debug modification d'une tâche  dans le projet Project monitoring  par Hasina	f	131	130	2023-11-06 16:27:05	2023-11-06 16:27:05	6
24782	Anja a été assigné à la tâche debug modification d'une tâche  dans le projet Project monitoring  par Hasina	f	131	132	2023-11-06 16:27:05	2023-11-06 16:27:05	6
24783	Tâche nouvellement créee du nom de Correction du bug concernant les historiques des tâches  par Hasina dans le projet Project monitoring .	f	131	127	2023-11-06 16:31:21	2023-11-06 16:31:21	5
24784	Tâche nouvellement créee du nom de Correction du bug concernant les historiques des tâches  par Hasina dans le projet Project monitoring .	f	131	130	2023-11-06 16:31:21	2023-11-06 16:31:21	5
24785	Tâche nouvellement créee du nom de Correction du bug concernant les historiques des tâches  par Hasina dans le projet Project monitoring .	f	131	132	2023-11-06 16:31:21	2023-11-06 16:31:21	5
24786	Tâche nouvellement créee du nom de Correction du bug concernant les historiques des tâches  par Hasina dans le projet Project monitoring .	f	131	135	2023-11-06 16:31:21	2023-11-06 16:31:21	5
24787	Tâche nouvellement créee du nom de Correction du bug concernant les historiques des tâches  par Hasina dans le projet Project monitoring .	f	131	136	2023-11-06 16:31:21	2023-11-06 16:31:21	5
24788	Tâche nouvellement créee du nom de Correction du bug concernant les historiques des tâches  par Hasina dans le projet Project monitoring .	f	131	138	2023-11-06 16:31:21	2023-11-06 16:31:21	5
24790	Tâche nouvellement créee du nom de Correction du bug concernant les historiques des tâches  par Hasina dans le projet Project monitoring .	f	131	145	2023-11-06 16:31:21	2023-11-06 16:31:21	5
24792	Loïc a été assigné à la tâche Correction du bug concernant les historiques des tâches  dans le projet Project monitoring  par Hasina	f	131	127	2023-11-06 16:31:21	2023-11-06 16:31:21	6
24793	Loïc a été assigné à la tâche Correction du bug concernant les historiques des tâches  dans le projet Project monitoring  par Hasina	f	131	130	2023-11-06 16:31:21	2023-11-06 16:31:21	6
24794	Loïc a été assigné à la tâche Correction du bug concernant les historiques des tâches  dans le projet Project monitoring  par Hasina	f	131	132	2023-11-06 16:31:21	2023-11-06 16:31:21	6
24795	Tâche nouvellement créee du nom de Correction du bug concernant les historiques des tâches (design)  par Hasina dans le projet Project monitoring .	f	131	127	2023-11-06 16:33:58	2023-11-06 16:33:58	5
24796	Tâche nouvellement créee du nom de Correction du bug concernant les historiques des tâches (design)  par Hasina dans le projet Project monitoring .	f	131	130	2023-11-06 16:33:58	2023-11-06 16:33:58	5
24797	Tâche nouvellement créee du nom de Correction du bug concernant les historiques des tâches (design)  par Hasina dans le projet Project monitoring .	f	131	132	2023-11-06 16:33:58	2023-11-06 16:33:58	5
24798	Tâche nouvellement créee du nom de Correction du bug concernant les historiques des tâches (design)  par Hasina dans le projet Project monitoring .	f	131	135	2023-11-06 16:33:58	2023-11-06 16:33:58	5
24799	Tâche nouvellement créee du nom de Correction du bug concernant les historiques des tâches (design)  par Hasina dans le projet Project monitoring .	f	131	136	2023-11-06 16:33:58	2023-11-06 16:33:58	5
24800	Tâche nouvellement créee du nom de Correction du bug concernant les historiques des tâches (design)  par Hasina dans le projet Project monitoring .	f	131	138	2023-11-06 16:33:58	2023-11-06 16:33:58	5
24802	Tâche nouvellement créee du nom de Correction du bug concernant les historiques des tâches (design)  par Hasina dans le projet Project monitoring .	f	131	145	2023-11-06 16:33:58	2023-11-06 16:33:58	5
24864	Tâche "Test "\n          du projet Test PM mise dans " A faire " par Ny Toky	f	144	145	2023-11-07 13:28:44	2023-11-07 13:28:44	1
24865	Tâche "Test "\n          du projet Test PM mise dans " A faire " par Ny Toky	f	144	132	2023-11-07 13:28:44	2023-11-07 13:28:44	1
24866	Tâche "Test "\n          du projet Test PM mise dans " A faire " par Ny Toky	f	144	131	2023-11-07 13:28:44	2023-11-07 13:28:44	1
24867	Le projet "Test PM" a été mise à jour par Ny Toky	f	144	127	2023-11-07 13:31:08	2023-11-07 13:31:08	7
24803	Antonio a été assigné à la tâche Correction du bug concernant les historiques des tâches (design)  dans le projet Project monitoring  par Hasina	f	131	128	2023-11-06 13:33:58	2023-11-06 13:33:58	6
24815	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En cours " par Hasina	f	131	127	2023-11-06 16:37:55	2023-11-06 16:37:55	1
24816	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En cours " par Hasina	f	131	130	2023-11-06 16:37:55	2023-11-06 16:37:55	1
24817	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En cours " par Hasina	f	131	132	2023-11-06 16:37:55	2023-11-06 16:37:55	1
24818	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En cours " par Hasina	f	131	135	2023-11-06 16:37:55	2023-11-06 16:37:55	1
24819	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En cours " par Hasina	f	131	136	2023-11-06 16:37:55	2023-11-06 16:37:55	1
24820	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En cours " par Hasina	f	131	138	2023-11-06 16:37:55	2023-11-06 16:37:55	1
24822	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En cours " par Hasina	f	131	145	2023-11-06 16:37:55	2023-11-06 16:37:55	1
24821	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En cours " par Hasina	t	131	144	2023-11-06 16:37:55	2023-11-06 16:37:55	1
24804	Antonio a été assigné à la tâche Correction du bug concernant les historiques des tâches (design)  dans le projet Project monitoring  par Hasina	f	131	127	2023-11-06 16:33:58	2023-11-06 16:33:58	6
24805	Antonio a été assigné à la tâche Correction du bug concernant les historiques des tâches (design)  dans le projet Project monitoring  par Hasina	f	131	130	2023-11-06 16:33:58	2023-11-06 16:33:58	6
24806	Antonio a été assigné à la tâche Correction du bug concernant les historiques des tâches (design)  dans le projet Project monitoring  par Hasina	f	131	132	2023-11-06 16:33:58	2023-11-06 16:33:58	6
24807	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En blocage " par Hasina	f	131	127	2023-11-06 16:37:27	2023-11-06 16:37:27	1
24808	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En blocage " par Hasina	f	131	130	2023-11-06 16:37:27	2023-11-06 16:37:27	1
24809	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En blocage " par Hasina	f	131	132	2023-11-06 16:37:27	2023-11-06 16:37:27	1
24810	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En blocage " par Hasina	f	131	135	2023-11-06 16:37:27	2023-11-06 16:37:27	1
24811	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En blocage " par Hasina	f	131	136	2023-11-06 16:37:27	2023-11-06 16:37:27	1
24812	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En blocage " par Hasina	f	131	138	2023-11-06 16:37:27	2023-11-06 16:37:27	1
24814	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En blocage " par Hasina	f	131	145	2023-11-06 16:37:27	2023-11-06 16:37:27	1
24789	Tâche nouvellement créee du nom de Correction du bug concernant les historiques des tâches  par Hasina dans le projet Project monitoring .	t	131	144	2023-11-06 16:31:21	2023-11-06 16:31:21	5
24801	Tâche nouvellement créee du nom de Correction du bug concernant les historiques des tâches (design)  par Hasina dans le projet Project monitoring .	t	131	144	2023-11-06 16:33:58	2023-11-06 16:33:58	5
24813	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En blocage " par Hasina	t	131	144	2023-11-06 16:37:27	2023-11-06 16:37:27	1
24823	Un projet du nom de Test PM a été crée par Ny Toky	f	144	127	2023-11-07 13:25:56	2023-11-07 13:25:56	5
24824	Un projet du nom de Test PM a été crée par Ny Toky	f	144	130	2023-11-07 13:25:56	2023-11-07 13:25:56	5
24825	Un projet du nom de Test PM a été crée par Ny Toky	f	144	135	2023-11-07 13:25:56	2023-11-07 13:25:56	5
24826	Un projet du nom de Test PM a été crée par Ny Toky	f	144	136	2023-11-07 13:25:56	2023-11-07 13:25:56	5
24827	Un projet du nom de Test PM a été crée par Ny Toky	f	144	138	2023-11-07 13:25:56	2023-11-07 13:25:56	5
24828	Un projet du nom de Test PM a été crée par Ny Toky	f	144	145	2023-11-07 13:25:56	2023-11-07 13:25:56	5
24829	Un projet du nom de Test PM a été crée par Ny Toky	f	144	132	2023-11-07 13:25:56	2023-11-07 13:25:56	5
24830	Un projet du nom de Test PM a été crée par Ny Toky	f	144	131	2023-11-07 13:25:56	2023-11-07 13:25:56	5
24831	Tâche nouvellement créee du nom de Test  par Ny Toky dans le projet Test PM.	f	144	127	2023-11-07 13:27:21	2023-11-07 13:27:21	5
24832	Tâche nouvellement créee du nom de Test  par Ny Toky dans le projet Test PM.	f	144	130	2023-11-07 13:27:21	2023-11-07 13:27:21	5
24833	Tâche nouvellement créee du nom de Test  par Ny Toky dans le projet Test PM.	f	144	135	2023-11-07 13:27:21	2023-11-07 13:27:21	5
24834	Tâche nouvellement créee du nom de Test  par Ny Toky dans le projet Test PM.	f	144	136	2023-11-07 13:27:21	2023-11-07 13:27:21	5
24835	Tâche nouvellement créee du nom de Test  par Ny Toky dans le projet Test PM.	f	144	138	2023-11-07 13:27:21	2023-11-07 13:27:21	5
24836	Tâche nouvellement créee du nom de Test  par Ny Toky dans le projet Test PM.	f	144	145	2023-11-07 13:27:21	2023-11-07 13:27:21	5
24837	Tâche nouvellement créee du nom de Test  par Ny Toky dans le projet Test PM.	f	144	132	2023-11-07 13:27:21	2023-11-07 13:27:21	5
24838	Tâche nouvellement créee du nom de Test  par Ny Toky dans le projet Test PM.	f	144	131	2023-11-07 13:27:21	2023-11-07 13:27:21	5
24839	Mirindra a été assigné à la tâche Test  dans le projet Test PM par Ny Toky	f	144	140	2023-11-07 10:27:21	2023-11-07 10:27:21	6
24840	Mirindra a été assigné à la tâche Test  dans le projet Test PM par Ny Toky	f	144	127	2023-11-07 13:27:21	2023-11-07 13:27:21	6
24841	Mirindra a été assigné à la tâche Test  dans le projet Test PM par Ny Toky	f	144	130	2023-11-07 13:27:21	2023-11-07 13:27:21	6
24842	Mirindra a été assigné à la tâche Test  dans le projet Test PM par Ny Toky	f	144	132	2023-11-07 13:27:21	2023-11-07 13:27:21	6
24843	Tâche "Test "\n          du projet Test PM mise dans " En blocage " par Ny Toky	f	144	127	2023-11-07 13:27:43	2023-11-07 13:27:43	1
24844	Tâche "Test "\n          du projet Test PM mise dans " En blocage " par Ny Toky	f	144	130	2023-11-07 13:27:43	2023-11-07 13:27:43	1
24845	Tâche "Test "\n          du projet Test PM mise dans " En blocage " par Ny Toky	f	144	135	2023-11-07 13:27:43	2023-11-07 13:27:43	1
24846	Tâche "Test "\n          du projet Test PM mise dans " En blocage " par Ny Toky	f	144	136	2023-11-07 13:27:43	2023-11-07 13:27:43	1
24847	Tâche "Test "\n          du projet Test PM mise dans " En blocage " par Ny Toky	f	144	138	2023-11-07 13:27:43	2023-11-07 13:27:43	1
24848	Tâche "Test "\n          du projet Test PM mise dans " En blocage " par Ny Toky	f	144	145	2023-11-07 13:27:43	2023-11-07 13:27:43	1
24849	Tâche "Test "\n          du projet Test PM mise dans " En blocage " par Ny Toky	f	144	132	2023-11-07 13:27:43	2023-11-07 13:27:43	1
24850	Tâche "Test "\n          du projet Test PM mise dans " En blocage " par Ny Toky	f	144	131	2023-11-07 13:27:43	2023-11-07 13:27:43	1
24851	Le projet "Test PM" a été mise à jour par Ny Toky	f	144	127	2023-11-07 13:28:10	2023-11-07 13:28:10	7
24852	Le projet "Test PM" a été mise à jour par Ny Toky	f	144	130	2023-11-07 13:28:10	2023-11-07 13:28:10	7
24853	Le projet "Test PM" a été mise à jour par Ny Toky	f	144	135	2023-11-07 13:28:10	2023-11-07 13:28:10	7
24854	Le projet "Test PM" a été mise à jour par Ny Toky	f	144	136	2023-11-07 13:28:10	2023-11-07 13:28:10	7
24855	Le projet "Test PM" a été mise à jour par Ny Toky	f	144	138	2023-11-07 13:28:10	2023-11-07 13:28:10	7
24856	Le projet "Test PM" a été mise à jour par Ny Toky	f	144	145	2023-11-07 13:28:10	2023-11-07 13:28:10	7
24857	Le projet "Test PM" a été mise à jour par Ny Toky	f	144	132	2023-11-07 13:28:10	2023-11-07 13:28:10	7
24858	Le projet "Test PM" a été mise à jour par Ny Toky	f	144	131	2023-11-07 13:28:10	2023-11-07 13:28:10	7
24859	Tâche "Test "\n          du projet Test PM mise dans " A faire " par Ny Toky	f	144	127	2023-11-07 13:28:44	2023-11-07 13:28:44	1
24860	Tâche "Test "\n          du projet Test PM mise dans " A faire " par Ny Toky	f	144	130	2023-11-07 13:28:44	2023-11-07 13:28:44	1
24861	Tâche "Test "\n          du projet Test PM mise dans " A faire " par Ny Toky	f	144	135	2023-11-07 13:28:44	2023-11-07 13:28:44	1
24862	Tâche "Test "\n          du projet Test PM mise dans " A faire " par Ny Toky	f	144	136	2023-11-07 13:28:44	2023-11-07 13:28:44	1
24863	Tâche "Test "\n          du projet Test PM mise dans " A faire " par Ny Toky	f	144	138	2023-11-07 13:28:44	2023-11-07 13:28:44	1
24868	Le projet "Test PM" a été mise à jour par Ny Toky	f	144	130	2023-11-07 13:31:08	2023-11-07 13:31:08	7
24869	Le projet "Test PM" a été mise à jour par Ny Toky	f	144	135	2023-11-07 13:31:08	2023-11-07 13:31:08	7
24870	Le projet "Test PM" a été mise à jour par Ny Toky	f	144	136	2023-11-07 13:31:08	2023-11-07 13:31:08	7
24871	Le projet "Test PM" a été mise à jour par Ny Toky	f	144	138	2023-11-07 13:31:08	2023-11-07 13:31:08	7
24872	Le projet "Test PM" a été mise à jour par Ny Toky	f	144	145	2023-11-07 13:31:08	2023-11-07 13:31:08	7
24873	Le projet "Test PM" a été mise à jour par Ny Toky	f	144	132	2023-11-07 13:31:08	2023-11-07 13:31:08	7
24874	Le projet "Test PM" a été mise à jour par Ny Toky	f	144	131	2023-11-07 13:31:08	2023-11-07 13:31:08	7
24875	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par Anja	f	133	127	2023-11-07 17:01:12	2023-11-07 17:01:12	1
24876	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par Anja	f	133	130	2023-11-07 17:01:12	2023-11-07 17:01:12	1
24877	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par Anja	f	133	135	2023-11-07 17:01:12	2023-11-07 17:01:12	1
24878	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par Anja	f	133	136	2023-11-07 17:01:12	2023-11-07 17:01:12	1
24879	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par Anja	f	133	138	2023-11-07 17:01:12	2023-11-07 17:01:12	1
24880	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par Anja	f	133	145	2023-11-07 17:01:12	2023-11-07 17:01:12	1
24881	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par Anja	f	133	132	2023-11-07 17:01:12	2023-11-07 17:01:12	1
24882	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par Anja	f	133	131	2023-11-07 17:01:12	2023-11-07 17:01:12	1
24883	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par Anja	f	133	144	2023-11-07 17:01:12	2023-11-07 17:01:12	1
24884	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par Antonio	f	128	127	2023-11-08 09:19:14	2023-11-08 09:19:14	1
24885	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par Antonio	f	128	130	2023-11-08 09:19:14	2023-11-08 09:19:14	1
24886	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par Antonio	f	128	135	2023-11-08 09:19:14	2023-11-08 09:19:14	1
24887	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par Antonio	f	128	136	2023-11-08 09:19:14	2023-11-08 09:19:14	1
24888	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par Antonio	f	128	138	2023-11-08 09:19:14	2023-11-08 09:19:14	1
24889	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par Antonio	f	128	145	2023-11-08 09:19:14	2023-11-08 09:19:14	1
24890	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par Antonio	f	128	132	2023-11-08 09:19:14	2023-11-08 09:19:14	1
24891	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par Antonio	f	128	131	2023-11-08 09:19:14	2023-11-08 09:19:14	1
24892	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par Antonio	f	128	144	2023-11-08 09:19:14	2023-11-08 09:19:14	1
24893	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par Antonio	f	128	129	2023-11-08 09:19:14	2023-11-08 09:19:14	1
24894	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En cours " par Loïc	f	134	127	2023-11-08 09:20:15	2023-11-08 09:20:15	1
24895	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En cours " par Loïc	f	134	130	2023-11-08 09:20:15	2023-11-08 09:20:15	1
24896	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En cours " par Loïc	f	134	135	2023-11-08 09:20:15	2023-11-08 09:20:15	1
25154	Un projet du nom de ZEOP a été crée par Mathieu	f	138	145	2023-11-14 17:08:17	2023-11-14 17:08:17	5
24897	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En cours " par Loïc	f	134	136	2023-11-08 09:20:15	2023-11-08 09:20:15	1
24898	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En cours " par Loïc	f	134	138	2023-11-08 09:20:15	2023-11-08 09:20:15	1
24899	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En cours " par Loïc	f	134	145	2023-11-08 09:20:15	2023-11-08 09:20:15	1
24900	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En cours " par Loïc	f	134	132	2023-11-08 09:20:15	2023-11-08 09:20:15	1
24901	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En cours " par Loïc	f	134	131	2023-11-08 09:20:15	2023-11-08 09:20:15	1
24902	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En cours " par Loïc	f	134	144	2023-11-08 09:20:15	2023-11-08 09:20:15	1
24903	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En cours " par Loïc	f	134	129	2023-11-08 09:20:15	2023-11-08 09:20:15	1
24904	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " Achevée(s) " par Hasina	f	131	127	2023-11-10 08:47:10	2023-11-10 08:47:10	1
24905	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " Achevée(s) " par Hasina	f	131	130	2023-11-10 08:47:10	2023-11-10 08:47:10	1
24906	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " Achevée(s) " par Hasina	f	131	135	2023-11-10 08:47:10	2023-11-10 08:47:10	1
24907	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " Achevée(s) " par Hasina	f	131	136	2023-11-10 08:47:10	2023-11-10 08:47:10	1
26680	Tâche SMEF supprimé par Mathieu.	f	138	129	2024-01-24 15:46:16	2024-01-24 15:46:16	3
24908	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " Achevée(s) " par Hasina	f	131	138	2023-11-10 08:47:10	2023-11-10 08:47:10	1
24909	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " Achevée(s) " par Hasina	f	131	145	2023-11-10 08:47:10	2023-11-10 08:47:10	1
24910	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " Achevée(s) " par Hasina	f	131	132	2023-11-10 08:47:10	2023-11-10 08:47:10	1
24911	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " Achevée(s) " par Hasina	f	131	144	2023-11-10 08:47:10	2023-11-10 08:47:10	1
24912	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " Achevée(s) " par Hasina	f	131	129	2023-11-10 08:47:10	2023-11-10 08:47:10	1
24913	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Antonio	f	128	127	2023-11-10 08:48:37	2023-11-10 08:48:37	1
24914	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Antonio	f	128	130	2023-11-10 08:48:37	2023-11-10 08:48:37	1
24915	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Antonio	f	128	135	2023-11-10 08:48:37	2023-11-10 08:48:37	1
24916	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Antonio	f	128	136	2023-11-10 08:48:37	2023-11-10 08:48:37	1
24917	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Antonio	f	128	138	2023-11-10 08:48:37	2023-11-10 08:48:37	1
24918	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Antonio	f	128	145	2023-11-10 08:48:37	2023-11-10 08:48:37	1
24919	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Antonio	f	128	132	2023-11-10 08:48:37	2023-11-10 08:48:37	1
24920	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Antonio	f	128	131	2023-11-10 08:48:37	2023-11-10 08:48:37	1
24921	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Antonio	f	128	144	2023-11-10 08:48:37	2023-11-10 08:48:37	1
24922	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Antonio	f	128	129	2023-11-10 08:48:37	2023-11-10 08:48:37	1
24923	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " Achevée(s) " par PhidiaAdmin	f	127	130	2023-11-10 15:13:25	2023-11-10 15:13:25	1
24924	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " Achevée(s) " par PhidiaAdmin	f	127	135	2023-11-10 15:13:25	2023-11-10 15:13:25	1
24925	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " Achevée(s) " par PhidiaAdmin	f	127	136	2023-11-10 15:13:25	2023-11-10 15:13:25	1
24926	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " Achevée(s) " par PhidiaAdmin	f	127	138	2023-11-10 15:13:25	2023-11-10 15:13:25	1
24927	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " Achevée(s) " par PhidiaAdmin	f	127	145	2023-11-10 15:13:25	2023-11-10 15:13:25	1
24928	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " Achevée(s) " par PhidiaAdmin	f	127	132	2023-11-10 15:13:25	2023-11-10 15:13:25	1
24929	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " Achevée(s) " par PhidiaAdmin	f	127	131	2023-11-10 15:13:25	2023-11-10 15:13:25	1
24930	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " Achevée(s) " par PhidiaAdmin	f	127	144	2023-11-10 15:13:25	2023-11-10 15:13:25	1
24931	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " Achevée(s) " par PhidiaAdmin	f	127	129	2023-11-10 15:13:25	2023-11-10 15:13:25	1
25155	Un projet du nom de ZEOP a été crée par Mathieu	f	138	132	2023-11-14 17:08:17	2023-11-14 17:08:17	5
24932	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	127	2023-11-10 15:18:36	2023-11-10 15:18:36	1
24933	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	130	2023-11-10 15:18:36	2023-11-10 15:18:36	1
24934	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	135	2023-11-10 15:18:36	2023-11-10 15:18:36	1
24935	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	136	2023-11-10 15:18:36	2023-11-10 15:18:36	1
24936	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	138	2023-11-10 15:18:36	2023-11-10 15:18:36	1
24937	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	145	2023-11-10 15:18:36	2023-11-10 15:18:36	1
24938	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	132	2023-11-10 15:18:36	2023-11-10 15:18:36	1
24939	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	144	2023-11-10 15:18:36	2023-11-10 15:18:36	1
24940	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	129	2023-11-10 15:18:36	2023-11-10 15:18:36	1
24941	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " Achevée(s) " par Hasina	f	131	127	2023-11-10 15:19:01	2023-11-10 15:19:01	1
24942	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " Achevée(s) " par Hasina	f	131	130	2023-11-10 15:19:01	2023-11-10 15:19:01	1
24943	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " Achevée(s) " par Hasina	f	131	135	2023-11-10 15:19:01	2023-11-10 15:19:01	1
24944	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " Achevée(s) " par Hasina	f	131	136	2023-11-10 15:19:01	2023-11-10 15:19:01	1
24945	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " Achevée(s) " par Hasina	f	131	138	2023-11-10 15:19:01	2023-11-10 15:19:01	1
24946	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " Achevée(s) " par Hasina	f	131	145	2023-11-10 15:19:01	2023-11-10 15:19:01	1
24947	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " Achevée(s) " par Hasina	f	131	132	2023-11-10 15:19:01	2023-11-10 15:19:01	1
24948	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " Achevée(s) " par Hasina	f	131	144	2023-11-10 15:19:01	2023-11-10 15:19:01	1
24949	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " Achevée(s) " par Hasina	f	131	129	2023-11-10 15:19:01	2023-11-10 15:19:01	1
24950	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " Achevée(s) " par Hasina	f	131	127	2023-11-10 15:19:18	2023-11-10 15:19:18	1
24951	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " Achevée(s) " par Hasina	f	131	130	2023-11-10 15:19:18	2023-11-10 15:19:18	1
24952	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " Achevée(s) " par Hasina	f	131	135	2023-11-10 15:19:18	2023-11-10 15:19:18	1
24953	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " Achevée(s) " par Hasina	f	131	136	2023-11-10 15:19:18	2023-11-10 15:19:18	1
24954	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " Achevée(s) " par Hasina	f	131	138	2023-11-10 15:19:18	2023-11-10 15:19:18	1
24955	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " Achevée(s) " par Hasina	f	131	145	2023-11-10 15:19:18	2023-11-10 15:19:18	1
24956	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " Achevée(s) " par Hasina	f	131	132	2023-11-10 15:19:18	2023-11-10 15:19:18	1
24957	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " Achevée(s) " par Hasina	f	131	144	2023-11-10 15:19:18	2023-11-10 15:19:18	1
24958	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " Achevée(s) " par Hasina	f	131	129	2023-11-10 15:19:18	2023-11-10 15:19:18	1
24959	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En blocage " par PhidiaAdmin	f	127	130	2023-11-13 15:58:29	2023-11-13 15:58:29	1
24960	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En blocage " par PhidiaAdmin	f	127	135	2023-11-13 15:58:29	2023-11-13 15:58:29	1
24961	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En blocage " par PhidiaAdmin	f	127	136	2023-11-13 15:58:29	2023-11-13 15:58:29	1
24962	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En blocage " par PhidiaAdmin	f	127	138	2023-11-13 15:58:29	2023-11-13 15:58:29	1
24963	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En blocage " par PhidiaAdmin	f	127	145	2023-11-13 15:58:29	2023-11-13 15:58:29	1
24964	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En blocage " par PhidiaAdmin	f	127	132	2023-11-13 15:58:29	2023-11-13 15:58:29	1
24965	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En blocage " par PhidiaAdmin	f	127	131	2023-11-13 15:58:29	2023-11-13 15:58:29	1
24966	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En blocage " par PhidiaAdmin	f	127	144	2023-11-13 15:58:29	2023-11-13 15:58:29	1
24967	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En blocage " par PhidiaAdmin	f	127	129	2023-11-13 15:58:29	2023-11-13 15:58:29	1
24968	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	130	2023-11-13 15:59:04	2023-11-13 15:59:04	1
24969	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	135	2023-11-13 15:59:04	2023-11-13 15:59:04	1
24970	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	136	2023-11-13 15:59:04	2023-11-13 15:59:04	1
24971	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	138	2023-11-13 15:59:04	2023-11-13 15:59:04	1
24972	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	145	2023-11-13 15:59:04	2023-11-13 15:59:04	1
24973	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	132	2023-11-13 15:59:04	2023-11-13 15:59:04	1
24974	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	131	2023-11-13 15:59:04	2023-11-13 15:59:04	1
24975	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	144	2023-11-13 15:59:04	2023-11-13 15:59:04	1
24976	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	129	2023-11-13 15:59:04	2023-11-13 15:59:04	1
24977	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	130	2023-11-13 15:59:45	2023-11-13 15:59:45	1
24978	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	135	2023-11-13 15:59:45	2023-11-13 15:59:45	1
24979	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	136	2023-11-13 15:59:45	2023-11-13 15:59:45	1
25185	Le projet "NAJMI - Intervention et accompagnement" a été mise à jour par Mathieu	f	138	129	2023-11-14 17:17:08	2023-11-14 17:17:08	7
24980	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	138	2023-11-13 15:59:45	2023-11-13 15:59:45	1
24981	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	145	2023-11-13 15:59:45	2023-11-13 15:59:45	1
24982	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	132	2023-11-13 15:59:45	2023-11-13 15:59:45	1
24983	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	131	2023-11-13 15:59:45	2023-11-13 15:59:45	1
24984	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	144	2023-11-13 15:59:45	2023-11-13 15:59:45	1
24985	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	129	2023-11-13 15:59:45	2023-11-13 15:59:45	1
24986	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	130	2023-11-13 16:09:23	2023-11-13 16:09:23	1
24987	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	135	2023-11-13 16:09:23	2023-11-13 16:09:23	1
24988	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	136	2023-11-13 16:09:23	2023-11-13 16:09:23	1
24989	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	138	2023-11-13 16:09:23	2023-11-13 16:09:23	1
24990	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	145	2023-11-13 16:09:23	2023-11-13 16:09:23	1
24991	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	132	2023-11-13 16:09:23	2023-11-13 16:09:23	1
24992	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	131	2023-11-13 16:09:23	2023-11-13 16:09:23	1
24993	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	144	2023-11-13 16:09:23	2023-11-13 16:09:23	1
24994	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	129	2023-11-13 16:09:23	2023-11-13 16:09:23	1
24995	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	130	2023-11-14 14:23:39	2023-11-14 14:23:39	1
24996	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	135	2023-11-14 14:23:39	2023-11-14 14:23:39	1
24997	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	136	2023-11-14 14:23:39	2023-11-14 14:23:39	1
24998	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	138	2023-11-14 14:23:39	2023-11-14 14:23:39	1
24999	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	145	2023-11-14 14:23:39	2023-11-14 14:23:39	1
25000	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	132	2023-11-14 14:23:39	2023-11-14 14:23:39	1
25001	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	131	2023-11-14 14:23:39	2023-11-14 14:23:39	1
25002	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	144	2023-11-14 14:23:39	2023-11-14 14:23:39	1
25003	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	129	2023-11-14 14:23:39	2023-11-14 14:23:39	1
25004	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	130	2023-11-14 14:24:15	2023-11-14 14:24:15	1
25005	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	135	2023-11-14 14:24:15	2023-11-14 14:24:15	1
25006	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	136	2023-11-14 14:24:15	2023-11-14 14:24:15	1
25007	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	138	2023-11-14 14:24:15	2023-11-14 14:24:15	1
25008	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	145	2023-11-14 14:24:15	2023-11-14 14:24:15	1
25009	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	132	2023-11-14 14:24:15	2023-11-14 14:24:15	1
25010	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	131	2023-11-14 14:24:15	2023-11-14 14:24:15	1
25011	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	144	2023-11-14 14:24:15	2023-11-14 14:24:15	1
25012	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	129	2023-11-14 14:24:15	2023-11-14 14:24:15	1
25013	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	130	2023-11-14 14:24:37	2023-11-14 14:24:37	1
25014	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	135	2023-11-14 14:24:37	2023-11-14 14:24:37	1
25015	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	136	2023-11-14 14:24:37	2023-11-14 14:24:37	1
25016	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	138	2023-11-14 14:24:37	2023-11-14 14:24:37	1
25017	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	145	2023-11-14 14:24:37	2023-11-14 14:24:37	1
25018	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	132	2023-11-14 14:24:37	2023-11-14 14:24:37	1
25019	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	131	2023-11-14 14:24:37	2023-11-14 14:24:37	1
25020	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	144	2023-11-14 14:24:37	2023-11-14 14:24:37	1
25021	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	129	2023-11-14 14:24:37	2023-11-14 14:24:37	1
25022	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " Achevée(s) " par PhidiaAdmin	f	127	130	2023-11-14 15:55:40	2023-11-14 15:55:40	1
25023	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " Achevée(s) " par PhidiaAdmin	f	127	135	2023-11-14 15:55:40	2023-11-14 15:55:40	1
25024	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " Achevée(s) " par PhidiaAdmin	f	127	136	2023-11-14 15:55:40	2023-11-14 15:55:40	1
25025	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " Achevée(s) " par PhidiaAdmin	f	127	138	2023-11-14 15:55:40	2023-11-14 15:55:40	1
25026	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " Achevée(s) " par PhidiaAdmin	f	127	145	2023-11-14 15:55:40	2023-11-14 15:55:40	1
25027	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " Achevée(s) " par PhidiaAdmin	f	127	132	2023-11-14 15:55:40	2023-11-14 15:55:40	1
25028	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " Achevée(s) " par PhidiaAdmin	f	127	131	2023-11-14 15:55:40	2023-11-14 15:55:40	1
25029	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " Achevée(s) " par PhidiaAdmin	f	127	144	2023-11-14 15:55:40	2023-11-14 15:55:40	1
25030	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " Achevée(s) " par PhidiaAdmin	f	127	129	2023-11-14 15:55:40	2023-11-14 15:55:40	1
25031	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	130	2023-11-14 16:53:26	2023-11-14 16:53:26	1
25032	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	135	2023-11-14 16:53:26	2023-11-14 16:53:26	1
25033	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	136	2023-11-14 16:53:26	2023-11-14 16:53:26	1
25034	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	138	2023-11-14 16:53:26	2023-11-14 16:53:26	1
25035	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	145	2023-11-14 16:53:26	2023-11-14 16:53:26	1
25036	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	132	2023-11-14 16:53:26	2023-11-14 16:53:26	1
25037	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	131	2023-11-14 16:53:26	2023-11-14 16:53:26	1
25038	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	144	2023-11-14 16:53:26	2023-11-14 16:53:26	1
25039	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	129	2023-11-14 16:53:26	2023-11-14 16:53:26	1
25040	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par PhidiaAdmin	f	127	130	2023-11-14 16:53:39	2023-11-14 16:53:39	1
25041	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par PhidiaAdmin	f	127	135	2023-11-14 16:53:39	2023-11-14 16:53:39	1
25156	Un projet du nom de ZEOP a été crée par Mathieu	f	138	131	2023-11-14 17:08:17	2023-11-14 17:08:17	5
25042	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par PhidiaAdmin	f	127	136	2023-11-14 16:53:39	2023-11-14 16:53:39	1
25043	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par PhidiaAdmin	f	127	138	2023-11-14 16:53:39	2023-11-14 16:53:39	1
25044	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par PhidiaAdmin	f	127	145	2023-11-14 16:53:39	2023-11-14 16:53:39	1
25045	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par PhidiaAdmin	f	127	132	2023-11-14 16:53:39	2023-11-14 16:53:39	1
25046	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par PhidiaAdmin	f	127	131	2023-11-14 16:53:39	2023-11-14 16:53:39	1
25047	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par PhidiaAdmin	f	127	144	2023-11-14 16:53:39	2023-11-14 16:53:39	1
25048	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par PhidiaAdmin	f	127	129	2023-11-14 16:53:39	2023-11-14 16:53:39	1
25049	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	130	2023-11-14 16:53:48	2023-11-14 16:53:48	1
25050	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	135	2023-11-14 16:53:48	2023-11-14 16:53:48	1
25051	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	136	2023-11-14 16:53:48	2023-11-14 16:53:48	1
25052	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	138	2023-11-14 16:53:48	2023-11-14 16:53:48	1
25186	Un projet du nom de QWEHLI v1 - Integration Odoo 16 a été crée par Mathieu	f	138	127	2023-11-14 17:19:59	2023-11-14 17:19:59	5
25053	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	145	2023-11-14 16:53:48	2023-11-14 16:53:48	1
25054	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	132	2023-11-14 16:53:48	2023-11-14 16:53:48	1
25055	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	131	2023-11-14 16:53:48	2023-11-14 16:53:48	1
25056	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	144	2023-11-14 16:53:48	2023-11-14 16:53:48	1
25057	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	129	2023-11-14 16:53:48	2023-11-14 16:53:48	1
25058	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	130	2023-11-14 16:54:28	2023-11-14 16:54:28	1
25059	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	135	2023-11-14 16:54:28	2023-11-14 16:54:28	1
25060	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	136	2023-11-14 16:54:28	2023-11-14 16:54:28	1
25061	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	138	2023-11-14 16:54:28	2023-11-14 16:54:28	1
25062	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	145	2023-11-14 16:54:28	2023-11-14 16:54:28	1
25063	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	132	2023-11-14 16:54:28	2023-11-14 16:54:28	1
25064	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	131	2023-11-14 16:54:28	2023-11-14 16:54:28	1
25065	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	144	2023-11-14 16:54:28	2023-11-14 16:54:28	1
25066	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	129	2023-11-14 16:54:28	2023-11-14 16:54:28	1
25067	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	130	2023-11-14 16:54:38	2023-11-14 16:54:38	1
25068	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	135	2023-11-14 16:54:38	2023-11-14 16:54:38	1
25069	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	136	2023-11-14 16:54:38	2023-11-14 16:54:38	1
25070	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	138	2023-11-14 16:54:38	2023-11-14 16:54:38	1
25071	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	145	2023-11-14 16:54:38	2023-11-14 16:54:38	1
25072	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	132	2023-11-14 16:54:38	2023-11-14 16:54:38	1
25073	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	131	2023-11-14 16:54:38	2023-11-14 16:54:38	1
25074	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	144	2023-11-14 16:54:38	2023-11-14 16:54:38	1
25157	Un projet du nom de ZEOP a été crée par Mathieu	f	138	144	2023-11-14 17:08:17	2023-11-14 17:08:17	5
25075	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	129	2023-11-14 16:54:38	2023-11-14 16:54:38	1
25076	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par PhidiaAdmin	f	127	130	2023-11-14 16:54:48	2023-11-14 16:54:48	1
25077	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par PhidiaAdmin	f	127	135	2023-11-14 16:54:48	2023-11-14 16:54:48	1
25078	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par PhidiaAdmin	f	127	136	2023-11-14 16:54:48	2023-11-14 16:54:48	1
25079	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par PhidiaAdmin	f	127	138	2023-11-14 16:54:48	2023-11-14 16:54:48	1
25080	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par PhidiaAdmin	f	127	145	2023-11-14 16:54:48	2023-11-14 16:54:48	1
25081	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par PhidiaAdmin	f	127	132	2023-11-14 16:54:48	2023-11-14 16:54:48	1
25082	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par PhidiaAdmin	f	127	131	2023-11-14 16:54:48	2023-11-14 16:54:48	1
25083	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par PhidiaAdmin	f	127	144	2023-11-14 16:54:48	2023-11-14 16:54:48	1
25084	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par PhidiaAdmin	f	127	129	2023-11-14 16:54:48	2023-11-14 16:54:48	1
25085	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	130	2023-11-14 16:54:55	2023-11-14 16:54:55	1
25086	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	135	2023-11-14 16:54:55	2023-11-14 16:54:55	1
25087	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	136	2023-11-14 16:54:55	2023-11-14 16:54:55	1
25089	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	145	2023-11-14 16:54:55	2023-11-14 16:54:55	1
25090	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	132	2023-11-14 16:54:55	2023-11-14 16:54:55	1
25091	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	131	2023-11-14 16:54:55	2023-11-14 16:54:55	1
25092	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	144	2023-11-14 16:54:55	2023-11-14 16:54:55	1
25093	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	129	2023-11-14 16:54:55	2023-11-14 16:54:55	1
25094	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	130	2023-11-14 16:55:48	2023-11-14 16:55:48	1
25095	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	135	2023-11-14 16:55:48	2023-11-14 16:55:48	1
25096	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	136	2023-11-14 16:55:48	2023-11-14 16:55:48	1
25098	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	145	2023-11-14 16:55:48	2023-11-14 16:55:48	1
25099	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	132	2023-11-14 16:55:48	2023-11-14 16:55:48	1
25100	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	131	2023-11-14 16:55:48	2023-11-14 16:55:48	1
25101	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	144	2023-11-14 16:55:48	2023-11-14 16:55:48	1
25102	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	f	127	129	2023-11-14 16:55:48	2023-11-14 16:55:48	1
25103	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par Antonio	f	128	127	2023-11-14 16:55:57	2023-11-14 16:55:57	1
25104	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par Antonio	f	128	130	2023-11-14 16:55:57	2023-11-14 16:55:57	1
25105	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par Antonio	f	128	135	2023-11-14 16:55:57	2023-11-14 16:55:57	1
25106	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par Antonio	f	128	136	2023-11-14 16:55:57	2023-11-14 16:55:57	1
25108	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par Antonio	f	128	145	2023-11-14 16:55:57	2023-11-14 16:55:57	1
25109	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par Antonio	f	128	132	2023-11-14 16:55:57	2023-11-14 16:55:57	1
25110	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par Antonio	f	128	131	2023-11-14 16:55:57	2023-11-14 16:55:57	1
25111	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par Antonio	f	128	144	2023-11-14 16:55:57	2023-11-14 16:55:57	1
25112	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par Antonio	f	128	129	2023-11-14 16:55:57	2023-11-14 16:55:57	1
25113	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Antonio	f	128	127	2023-11-14 16:56:07	2023-11-14 16:56:07	1
25114	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Antonio	f	128	130	2023-11-14 16:56:07	2023-11-14 16:56:07	1
25115	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Antonio	f	128	135	2023-11-14 16:56:07	2023-11-14 16:56:07	1
25116	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Antonio	f	128	136	2023-11-14 16:56:07	2023-11-14 16:56:07	1
25118	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Antonio	f	128	145	2023-11-14 16:56:07	2023-11-14 16:56:07	1
25119	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Antonio	f	128	132	2023-11-14 16:56:07	2023-11-14 16:56:07	1
25120	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Antonio	f	128	131	2023-11-14 16:56:07	2023-11-14 16:56:07	1
26681	Tâche SMEF supprimé par Mathieu.	f	138	150	2024-01-24 15:46:16	2024-01-24 15:46:16	3
26682	Tâche SMEF supprimé par Mathieu.	f	138	167	2024-01-24 15:46:16	2024-01-24 15:46:16	3
26731	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	127	2024-01-24 15:59:18	2024-01-24 15:59:18	5
26732	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	135	2024-01-24 15:59:18	2024-01-24 15:59:18	5
26733	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	132	2024-01-24 15:59:18	2024-01-24 15:59:18	5
26734	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	131	2024-01-24 15:59:18	2024-01-24 15:59:18	5
25121	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Antonio	f	128	144	2023-11-14 16:56:07	2023-11-14 16:56:07	1
25122	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Antonio	f	128	129	2023-11-14 16:56:07	2023-11-14 16:56:07	1
25123	Un projet du nom de NAJMI a été crée par Mathieu	f	138	127	2023-11-14 16:59:11	2023-11-14 16:59:11	5
25124	Un projet du nom de NAJMI a été crée par Mathieu	f	138	130	2023-11-14 16:59:11	2023-11-14 16:59:11	5
25125	Un projet du nom de NAJMI a été crée par Mathieu	f	138	135	2023-11-14 16:59:11	2023-11-14 16:59:11	5
25126	Un projet du nom de NAJMI a été crée par Mathieu	f	138	136	2023-11-14 16:59:11	2023-11-14 16:59:11	5
25127	Un projet du nom de NAJMI a été crée par Mathieu	f	138	145	2023-11-14 16:59:11	2023-11-14 16:59:11	5
25128	Un projet du nom de NAJMI a été crée par Mathieu	f	138	132	2023-11-14 16:59:11	2023-11-14 16:59:11	5
25129	Un projet du nom de NAJMI a été crée par Mathieu	f	138	131	2023-11-14 16:59:11	2023-11-14 16:59:11	5
25130	Un projet du nom de NAJMI a été crée par Mathieu	f	138	144	2023-11-14 16:59:11	2023-11-14 16:59:11	5
25131	Un projet du nom de NAJMI a été crée par Mathieu	f	138	129	2023-11-14 16:59:11	2023-11-14 16:59:11	5
25141	Un projet du nom de QLM - Intervention et accompagnement a été crée par Mathieu	f	138	127	2023-11-14 17:05:15	2023-11-14 17:05:15	5
25142	Un projet du nom de QLM - Intervention et accompagnement a été crée par Mathieu	f	138	130	2023-11-14 17:05:15	2023-11-14 17:05:15	5
25143	Un projet du nom de QLM - Intervention et accompagnement a été crée par Mathieu	f	138	135	2023-11-14 17:05:15	2023-11-14 17:05:15	5
25144	Un projet du nom de QLM - Intervention et accompagnement a été crée par Mathieu	f	138	136	2023-11-14 17:05:15	2023-11-14 17:05:15	5
25145	Un projet du nom de QLM - Intervention et accompagnement a été crée par Mathieu	f	138	145	2023-11-14 17:05:15	2023-11-14 17:05:15	5
25146	Un projet du nom de QLM - Intervention et accompagnement a été crée par Mathieu	f	138	132	2023-11-14 17:05:15	2023-11-14 17:05:15	5
25147	Un projet du nom de QLM - Intervention et accompagnement a été crée par Mathieu	f	138	131	2023-11-14 17:05:15	2023-11-14 17:05:15	5
25148	Un projet du nom de QLM - Intervention et accompagnement a été crée par Mathieu	f	138	144	2023-11-14 17:05:15	2023-11-14 17:05:15	5
25149	Un projet du nom de QLM - Intervention et accompagnement a été crée par Mathieu	f	138	129	2023-11-14 17:05:15	2023-11-14 17:05:15	5
25132	Un projet du nom de ISSOUFALI - Intervention et accompagnement a été crée par Mathieu	f	138	127	2023-11-14 17:01:47	2023-11-14 17:01:47	5
25133	Un projet du nom de ISSOUFALI - Intervention et accompagnement a été crée par Mathieu	f	138	130	2023-11-14 17:01:47	2023-11-14 17:01:47	5
25134	Un projet du nom de ISSOUFALI - Intervention et accompagnement a été crée par Mathieu	f	138	135	2023-11-14 17:01:47	2023-11-14 17:01:47	5
25135	Un projet du nom de ISSOUFALI - Intervention et accompagnement a été crée par Mathieu	f	138	136	2023-11-14 17:01:47	2023-11-14 17:01:47	5
25136	Un projet du nom de ISSOUFALI - Intervention et accompagnement a été crée par Mathieu	f	138	145	2023-11-14 17:01:47	2023-11-14 17:01:47	5
25137	Un projet du nom de ISSOUFALI - Intervention et accompagnement a été crée par Mathieu	f	138	132	2023-11-14 17:01:47	2023-11-14 17:01:47	5
25138	Un projet du nom de ISSOUFALI - Intervention et accompagnement a été crée par Mathieu	f	138	131	2023-11-14 17:01:47	2023-11-14 17:01:47	5
25139	Un projet du nom de ISSOUFALI - Intervention et accompagnement a été crée par Mathieu	f	138	144	2023-11-14 17:01:47	2023-11-14 17:01:47	5
25140	Un projet du nom de ISSOUFALI - Intervention et accompagnement a été crée par Mathieu	f	138	129	2023-11-14 17:01:47	2023-11-14 17:01:47	5
25150	Un projet du nom de ZEOP a été crée par Mathieu	f	138	127	2023-11-14 17:08:17	2023-11-14 17:08:17	5
25151	Un projet du nom de ZEOP a été crée par Mathieu	f	138	130	2023-11-14 17:08:17	2023-11-14 17:08:17	5
25152	Un projet du nom de ZEOP a été crée par Mathieu	f	138	135	2023-11-14 17:08:17	2023-11-14 17:08:17	5
25153	Un projet du nom de ZEOP a été crée par Mathieu	f	138	136	2023-11-14 17:08:17	2023-11-14 17:08:17	5
25158	Un projet du nom de ZEOP a été crée par Mathieu	f	138	129	2023-11-14 17:08:17	2023-11-14 17:08:17	5
25088	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	t	127	138	2023-11-14 16:54:55	2023-11-14 16:54:55	1
25097	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En cours " par PhidiaAdmin	t	127	138	2023-11-14 16:55:48	2023-11-14 16:55:48	1
25107	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En blocage " par Antonio	t	128	138	2023-11-14 16:55:57	2023-11-14 16:55:57	1
25117	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Antonio	t	128	138	2023-11-14 16:56:07	2023-11-14 16:56:07	1
25159	Un projet du nom de MAUVILAC - Intervention et accompagnement a été crée par Mathieu	f	138	127	2023-11-14 17:14:10	2023-11-14 17:14:10	5
25160	Un projet du nom de MAUVILAC - Intervention et accompagnement a été crée par Mathieu	f	138	130	2023-11-14 17:14:10	2023-11-14 17:14:10	5
25161	Un projet du nom de MAUVILAC - Intervention et accompagnement a été crée par Mathieu	f	138	135	2023-11-14 17:14:10	2023-11-14 17:14:10	5
25162	Un projet du nom de MAUVILAC - Intervention et accompagnement a été crée par Mathieu	f	138	136	2023-11-14 17:14:10	2023-11-14 17:14:10	5
25163	Un projet du nom de MAUVILAC - Intervention et accompagnement a été crée par Mathieu	f	138	145	2023-11-14 17:14:10	2023-11-14 17:14:10	5
25164	Un projet du nom de MAUVILAC - Intervention et accompagnement a été crée par Mathieu	f	138	132	2023-11-14 17:14:10	2023-11-14 17:14:10	5
25165	Un projet du nom de MAUVILAC - Intervention et accompagnement a été crée par Mathieu	f	138	131	2023-11-14 17:14:10	2023-11-14 17:14:10	5
25166	Un projet du nom de MAUVILAC - Intervention et accompagnement a été crée par Mathieu	f	138	144	2023-11-14 17:14:10	2023-11-14 17:14:10	5
25167	Un projet du nom de MAUVILAC - Intervention et accompagnement a été crée par Mathieu	f	138	129	2023-11-14 17:14:10	2023-11-14 17:14:10	5
25168	Le projet "MADAPLAST - Intervention et accompagnement" a été mise à jour par Mathieu	f	138	127	2023-11-14 17:16:29	2023-11-14 17:16:29	7
25169	Le projet "MADAPLAST - Intervention et accompagnement" a été mise à jour par Mathieu	f	138	130	2023-11-14 17:16:29	2023-11-14 17:16:29	7
25170	Le projet "MADAPLAST - Intervention et accompagnement" a été mise à jour par Mathieu	f	138	135	2023-11-14 17:16:29	2023-11-14 17:16:29	7
25171	Le projet "MADAPLAST - Intervention et accompagnement" a été mise à jour par Mathieu	f	138	136	2023-11-14 17:16:29	2023-11-14 17:16:29	7
25172	Le projet "MADAPLAST - Intervention et accompagnement" a été mise à jour par Mathieu	f	138	145	2023-11-14 17:16:29	2023-11-14 17:16:29	7
25173	Le projet "MADAPLAST - Intervention et accompagnement" a été mise à jour par Mathieu	f	138	132	2023-11-14 17:16:29	2023-11-14 17:16:29	7
25174	Le projet "MADAPLAST - Intervention et accompagnement" a été mise à jour par Mathieu	f	138	131	2023-11-14 17:16:29	2023-11-14 17:16:29	7
25175	Le projet "MADAPLAST - Intervention et accompagnement" a été mise à jour par Mathieu	f	138	144	2023-11-14 17:16:29	2023-11-14 17:16:29	7
25176	Le projet "MADAPLAST - Intervention et accompagnement" a été mise à jour par Mathieu	f	138	129	2023-11-14 17:16:29	2023-11-14 17:16:29	7
25177	Le projet "NAJMI - Intervention et accompagnement" a été mise à jour par Mathieu	f	138	127	2023-11-14 17:17:08	2023-11-14 17:17:08	7
25178	Le projet "NAJMI - Intervention et accompagnement" a été mise à jour par Mathieu	f	138	130	2023-11-14 17:17:08	2023-11-14 17:17:08	7
25179	Le projet "NAJMI - Intervention et accompagnement" a été mise à jour par Mathieu	f	138	135	2023-11-14 17:17:08	2023-11-14 17:17:08	7
25180	Le projet "NAJMI - Intervention et accompagnement" a été mise à jour par Mathieu	f	138	136	2023-11-14 17:17:08	2023-11-14 17:17:08	7
25181	Le projet "NAJMI - Intervention et accompagnement" a été mise à jour par Mathieu	f	138	145	2023-11-14 17:17:08	2023-11-14 17:17:08	7
25182	Le projet "NAJMI - Intervention et accompagnement" a été mise à jour par Mathieu	f	138	132	2023-11-14 17:17:08	2023-11-14 17:17:08	7
25183	Le projet "NAJMI - Intervention et accompagnement" a été mise à jour par Mathieu	f	138	131	2023-11-14 17:17:08	2023-11-14 17:17:08	7
25184	Le projet "NAJMI - Intervention et accompagnement" a été mise à jour par Mathieu	f	138	144	2023-11-14 17:17:08	2023-11-14 17:17:08	7
25187	Un projet du nom de QWEHLI v1 - Integration Odoo 16 a été crée par Mathieu	f	138	130	2023-11-14 17:19:59	2023-11-14 17:19:59	5
25188	Un projet du nom de QWEHLI v1 - Integration Odoo 16 a été crée par Mathieu	f	138	135	2023-11-14 17:19:59	2023-11-14 17:19:59	5
25189	Un projet du nom de QWEHLI v1 - Integration Odoo 16 a été crée par Mathieu	f	138	136	2023-11-14 17:19:59	2023-11-14 17:19:59	5
25190	Un projet du nom de QWEHLI v1 - Integration Odoo 16 a été crée par Mathieu	f	138	145	2023-11-14 17:19:59	2023-11-14 17:19:59	5
25191	Un projet du nom de QWEHLI v1 - Integration Odoo 16 a été crée par Mathieu	f	138	132	2023-11-14 17:19:59	2023-11-14 17:19:59	5
25192	Un projet du nom de QWEHLI v1 - Integration Odoo 16 a été crée par Mathieu	f	138	131	2023-11-14 17:19:59	2023-11-14 17:19:59	5
25193	Un projet du nom de QWEHLI v1 - Integration Odoo 16 a été crée par Mathieu	f	138	144	2023-11-14 17:19:59	2023-11-14 17:19:59	5
25194	Un projet du nom de QWEHLI v1 - Integration Odoo 16 a été crée par Mathieu	f	138	129	2023-11-14 17:19:59	2023-11-14 17:19:59	5
25235	Un projet du nom de ACTIVE NEGOCE - Transfert Compta a été crée par Mathieu	f	138	127	2023-11-15 16:46:32	2023-11-15 16:46:32	5
25236	Un projet du nom de ACTIVE NEGOCE - Transfert Compta a été crée par Mathieu	f	138	130	2023-11-15 16:46:32	2023-11-15 16:46:32	5
25237	Un projet du nom de ACTIVE NEGOCE - Transfert Compta a été crée par Mathieu	f	138	135	2023-11-15 16:46:32	2023-11-15 16:46:32	5
25238	Un projet du nom de ACTIVE NEGOCE - Transfert Compta a été crée par Mathieu	f	138	136	2023-11-15 16:46:32	2023-11-15 16:46:32	5
25239	Un projet du nom de ACTIVE NEGOCE - Transfert Compta a été crée par Mathieu	f	138	145	2023-11-15 16:46:32	2023-11-15 16:46:32	5
25240	Un projet du nom de ACTIVE NEGOCE - Transfert Compta a été crée par Mathieu	f	138	132	2023-11-15 16:46:32	2023-11-15 16:46:32	5
25241	Un projet du nom de ACTIVE NEGOCE - Transfert Compta a été crée par Mathieu	f	138	131	2023-11-15 16:46:32	2023-11-15 16:46:32	5
25242	Un projet du nom de ACTIVE NEGOCE - Transfert Compta a été crée par Mathieu	f	138	144	2023-11-15 16:46:32	2023-11-15 16:46:32	5
25243	Un projet du nom de ACTIVE NEGOCE - Transfert Compta a été crée par Mathieu	f	138	129	2023-11-15 16:46:32	2023-11-15 16:46:32	5
25195	Le projet "ZEOP - Mise en place d'une solution" a été mise à jour par Mathieu	f	138	127	2023-11-14 17:20:55	2023-11-14 17:20:55	7
25196	Le projet "ZEOP - Mise en place d'une solution" a été mise à jour par Mathieu	f	138	130	2023-11-14 17:20:55	2023-11-14 17:20:55	7
25197	Le projet "ZEOP - Mise en place d'une solution" a été mise à jour par Mathieu	f	138	135	2023-11-14 17:20:55	2023-11-14 17:20:55	7
25198	Le projet "ZEOP - Mise en place d'une solution" a été mise à jour par Mathieu	f	138	136	2023-11-14 17:20:55	2023-11-14 17:20:55	7
25199	Le projet "ZEOP - Mise en place d'une solution" a été mise à jour par Mathieu	f	138	145	2023-11-14 17:20:55	2023-11-14 17:20:55	7
25200	Le projet "ZEOP - Mise en place d'une solution" a été mise à jour par Mathieu	f	138	132	2023-11-14 17:20:55	2023-11-14 17:20:55	7
25201	Le projet "ZEOP - Mise en place d'une solution" a été mise à jour par Mathieu	f	138	131	2023-11-14 17:20:55	2023-11-14 17:20:55	7
25202	Le projet "ZEOP - Mise en place d'une solution" a été mise à jour par Mathieu	f	138	144	2023-11-14 17:20:55	2023-11-14 17:20:55	7
25203	Le projet "ZEOP - Mise en place d'une solution" a été mise à jour par Mathieu	f	138	129	2023-11-14 17:20:55	2023-11-14 17:20:55	7
25204	Tâche nouvellement créee du nom de test minuteur par Alain dans le projet Project monitoring .	f	129	127	2023-11-15 09:34:37	2023-11-15 09:34:37	5
25205	Tâche nouvellement créee du nom de test minuteur par Alain dans le projet Project monitoring .	f	129	130	2023-11-15 09:34:37	2023-11-15 09:34:37	5
25206	Tâche nouvellement créee du nom de test minuteur par Alain dans le projet Project monitoring .	f	129	135	2023-11-15 09:34:37	2023-11-15 09:34:37	5
25207	Tâche nouvellement créee du nom de test minuteur par Alain dans le projet Project monitoring .	f	129	136	2023-11-15 09:34:37	2023-11-15 09:34:37	5
25208	Tâche nouvellement créee du nom de test minuteur par Alain dans le projet Project monitoring .	f	129	138	2023-11-15 09:34:37	2023-11-15 09:34:37	5
25209	Tâche nouvellement créee du nom de test minuteur par Alain dans le projet Project monitoring .	f	129	145	2023-11-15 09:34:37	2023-11-15 09:34:37	5
25210	Tâche nouvellement créee du nom de test minuteur par Alain dans le projet Project monitoring .	f	129	132	2023-11-15 09:34:37	2023-11-15 09:34:37	5
25211	Tâche nouvellement créee du nom de test minuteur par Alain dans le projet Project monitoring .	f	129	131	2023-11-15 09:34:37	2023-11-15 09:34:37	5
25212	Tâche nouvellement créee du nom de test minuteur par Alain dans le projet Project monitoring .	f	129	144	2023-11-15 09:34:37	2023-11-15 09:34:37	5
25217	Tâche "test minuteur"\n          du projet Project monitoring  mise dans " En blocage " par Alain	f	129	127	2023-11-15 09:36:58	2023-11-15 09:36:58	1
25218	Tâche "test minuteur"\n          du projet Project monitoring  mise dans " En blocage " par Alain	f	129	130	2023-11-15 09:36:58	2023-11-15 09:36:58	1
25219	Tâche "test minuteur"\n          du projet Project monitoring  mise dans " En blocage " par Alain	f	129	135	2023-11-15 09:36:58	2023-11-15 09:36:58	1
25220	Tâche "test minuteur"\n          du projet Project monitoring  mise dans " En blocage " par Alain	f	129	136	2023-11-15 09:36:58	2023-11-15 09:36:58	1
25221	Tâche "test minuteur"\n          du projet Project monitoring  mise dans " En blocage " par Alain	f	129	138	2023-11-15 09:36:58	2023-11-15 09:36:58	1
25222	Tâche "test minuteur"\n          du projet Project monitoring  mise dans " En blocage " par Alain	f	129	145	2023-11-15 09:36:58	2023-11-15 09:36:58	1
25223	Tâche "test minuteur"\n          du projet Project monitoring  mise dans " En blocage " par Alain	f	129	132	2023-11-15 09:36:58	2023-11-15 09:36:58	1
25224	Tâche "test minuteur"\n          du projet Project monitoring  mise dans " En blocage " par Alain	f	129	131	2023-11-15 09:36:58	2023-11-15 09:36:58	1
25225	Tâche "test minuteur"\n          du projet Project monitoring  mise dans " En blocage " par Alain	f	129	144	2023-11-15 09:36:58	2023-11-15 09:36:58	1
25213	Alain a été assigné à la tâche test minuteur dans le projet Project monitoring  par Alain	f	129	129	2023-11-15 06:34:37	2023-11-15 06:34:37	6
25214	Alain a été assigné à la tâche test minuteur dans le projet Project monitoring  par Alain	f	129	127	2023-11-15 09:34:37	2023-11-15 09:34:37	6
25215	Alain a été assigné à la tâche test minuteur dans le projet Project monitoring  par Alain	f	129	130	2023-11-15 09:34:37	2023-11-15 09:34:37	6
25216	Alain a été assigné à la tâche test minuteur dans le projet Project monitoring  par Alain	f	129	132	2023-11-15 09:34:37	2023-11-15 09:34:37	6
25226	Tâche "test minuteur"\n          du projet Project monitoring  mise dans " Achevée(s) " par Alain	f	129	127	2023-11-15 09:37:16	2023-11-15 09:37:16	1
25227	Tâche "test minuteur"\n          du projet Project monitoring  mise dans " Achevée(s) " par Alain	f	129	130	2023-11-15 09:37:16	2023-11-15 09:37:16	1
25228	Tâche "test minuteur"\n          du projet Project monitoring  mise dans " Achevée(s) " par Alain	f	129	135	2023-11-15 09:37:16	2023-11-15 09:37:16	1
25229	Tâche "test minuteur"\n          du projet Project monitoring  mise dans " Achevée(s) " par Alain	f	129	136	2023-11-15 09:37:16	2023-11-15 09:37:16	1
25230	Tâche "test minuteur"\n          du projet Project monitoring  mise dans " Achevée(s) " par Alain	f	129	138	2023-11-15 09:37:16	2023-11-15 09:37:16	1
25231	Tâche "test minuteur"\n          du projet Project monitoring  mise dans " Achevée(s) " par Alain	f	129	145	2023-11-15 09:37:16	2023-11-15 09:37:16	1
25232	Tâche "test minuteur"\n          du projet Project monitoring  mise dans " Achevée(s) " par Alain	f	129	132	2023-11-15 09:37:16	2023-11-15 09:37:16	1
25233	Tâche "test minuteur"\n          du projet Project monitoring  mise dans " Achevée(s) " par Alain	f	129	131	2023-11-15 09:37:16	2023-11-15 09:37:16	1
25234	Tâche "test minuteur"\n          du projet Project monitoring  mise dans " Achevée(s) " par Alain	f	129	144	2023-11-15 09:37:16	2023-11-15 09:37:16	1
25244	Tâche nouvellement créee du nom de Mise à jour compte comptable auxiliaire par Mathieu dans le projet ACTIVE NEGOCE - Transfert Compta.	f	138	127	2023-11-15 16:47:54	2023-11-15 16:47:54	5
25245	Tâche nouvellement créee du nom de Mise à jour compte comptable auxiliaire par Mathieu dans le projet ACTIVE NEGOCE - Transfert Compta.	f	138	130	2023-11-15 16:47:54	2023-11-15 16:47:54	5
25246	Tâche nouvellement créee du nom de Mise à jour compte comptable auxiliaire par Mathieu dans le projet ACTIVE NEGOCE - Transfert Compta.	f	138	135	2023-11-15 16:47:54	2023-11-15 16:47:54	5
25247	Tâche nouvellement créee du nom de Mise à jour compte comptable auxiliaire par Mathieu dans le projet ACTIVE NEGOCE - Transfert Compta.	f	138	136	2023-11-15 16:47:54	2023-11-15 16:47:54	5
25248	Tâche nouvellement créee du nom de Mise à jour compte comptable auxiliaire par Mathieu dans le projet ACTIVE NEGOCE - Transfert Compta.	f	138	145	2023-11-15 16:47:54	2023-11-15 16:47:54	5
25249	Tâche nouvellement créee du nom de Mise à jour compte comptable auxiliaire par Mathieu dans le projet ACTIVE NEGOCE - Transfert Compta.	f	138	132	2023-11-15 16:47:54	2023-11-15 16:47:54	5
25250	Tâche nouvellement créee du nom de Mise à jour compte comptable auxiliaire par Mathieu dans le projet ACTIVE NEGOCE - Transfert Compta.	f	138	131	2023-11-15 16:47:54	2023-11-15 16:47:54	5
25251	Tâche nouvellement créee du nom de Mise à jour compte comptable auxiliaire par Mathieu dans le projet ACTIVE NEGOCE - Transfert Compta.	f	138	144	2023-11-15 16:47:54	2023-11-15 16:47:54	5
25252	Tâche nouvellement créee du nom de Mise à jour compte comptable auxiliaire par Mathieu dans le projet ACTIVE NEGOCE - Transfert Compta.	f	138	129	2023-11-15 16:47:54	2023-11-15 16:47:54	5
25253	Miandrisoa a été assigné à la tâche Mise à jour compte comptable auxiliaire dans le projet ACTIVE NEGOCE - Transfert Compta par Mathieu	f	138	146	2023-11-15 13:47:54	2023-11-15 13:47:54	6
25254	Miandrisoa a été assigné à la tâche Mise à jour compte comptable auxiliaire dans le projet ACTIVE NEGOCE - Transfert Compta par Mathieu	f	138	127	2023-11-15 16:47:54	2023-11-15 16:47:54	6
25255	Miandrisoa a été assigné à la tâche Mise à jour compte comptable auxiliaire dans le projet ACTIVE NEGOCE - Transfert Compta par Mathieu	f	138	130	2023-11-15 16:47:54	2023-11-15 16:47:54	6
25256	Miandrisoa a été assigné à la tâche Mise à jour compte comptable auxiliaire dans le projet ACTIVE NEGOCE - Transfert Compta par Mathieu	f	138	132	2023-11-15 16:47:54	2023-11-15 16:47:54	6
25257	Tâche "Mise à jour compte comptable auxiliaire"\n          du projet ACTIVE NEGOCE - Transfert Compta mise dans " En blocage " par Mathieu	f	138	127	2023-11-15 16:47:58	2023-11-15 16:47:58	1
25258	Tâche "Mise à jour compte comptable auxiliaire"\n          du projet ACTIVE NEGOCE - Transfert Compta mise dans " En blocage " par Mathieu	f	138	130	2023-11-15 16:47:58	2023-11-15 16:47:58	1
25259	Tâche "Mise à jour compte comptable auxiliaire"\n          du projet ACTIVE NEGOCE - Transfert Compta mise dans " En blocage " par Mathieu	f	138	135	2023-11-15 16:47:58	2023-11-15 16:47:58	1
25260	Tâche "Mise à jour compte comptable auxiliaire"\n          du projet ACTIVE NEGOCE - Transfert Compta mise dans " En blocage " par Mathieu	f	138	136	2023-11-15 16:47:58	2023-11-15 16:47:58	1
25261	Tâche "Mise à jour compte comptable auxiliaire"\n          du projet ACTIVE NEGOCE - Transfert Compta mise dans " En blocage " par Mathieu	f	138	145	2023-11-15 16:47:58	2023-11-15 16:47:58	1
25262	Tâche "Mise à jour compte comptable auxiliaire"\n          du projet ACTIVE NEGOCE - Transfert Compta mise dans " En blocage " par Mathieu	f	138	132	2023-11-15 16:47:58	2023-11-15 16:47:58	1
25263	Tâche "Mise à jour compte comptable auxiliaire"\n          du projet ACTIVE NEGOCE - Transfert Compta mise dans " En blocage " par Mathieu	f	138	131	2023-11-15 16:47:58	2023-11-15 16:47:58	1
25264	Tâche "Mise à jour compte comptable auxiliaire"\n          du projet ACTIVE NEGOCE - Transfert Compta mise dans " En blocage " par Mathieu	f	138	144	2023-11-15 16:47:58	2023-11-15 16:47:58	1
25265	Tâche "Mise à jour compte comptable auxiliaire"\n          du projet ACTIVE NEGOCE - Transfert Compta mise dans " En blocage " par Mathieu	f	138	129	2023-11-15 16:47:58	2023-11-15 16:47:58	1
25266	Tâche "Mise à jour compte comptable auxiliaire"\n          du projet ACTIVE NEGOCE - Transfert Compta mise dans " En cours " par Mathieu	f	138	127	2023-11-15 16:48:50	2023-11-15 16:48:50	1
25267	Tâche "Mise à jour compte comptable auxiliaire"\n          du projet ACTIVE NEGOCE - Transfert Compta mise dans " En cours " par Mathieu	f	138	130	2023-11-15 16:48:50	2023-11-15 16:48:50	1
25268	Tâche "Mise à jour compte comptable auxiliaire"\n          du projet ACTIVE NEGOCE - Transfert Compta mise dans " En cours " par Mathieu	f	138	135	2023-11-15 16:48:50	2023-11-15 16:48:50	1
25269	Tâche "Mise à jour compte comptable auxiliaire"\n          du projet ACTIVE NEGOCE - Transfert Compta mise dans " En cours " par Mathieu	f	138	136	2023-11-15 16:48:50	2023-11-15 16:48:50	1
25270	Tâche "Mise à jour compte comptable auxiliaire"\n          du projet ACTIVE NEGOCE - Transfert Compta mise dans " En cours " par Mathieu	f	138	145	2023-11-15 16:48:50	2023-11-15 16:48:50	1
25271	Tâche "Mise à jour compte comptable auxiliaire"\n          du projet ACTIVE NEGOCE - Transfert Compta mise dans " En cours " par Mathieu	f	138	132	2023-11-15 16:48:50	2023-11-15 16:48:50	1
25272	Tâche "Mise à jour compte comptable auxiliaire"\n          du projet ACTIVE NEGOCE - Transfert Compta mise dans " En cours " par Mathieu	f	138	131	2023-11-15 16:48:50	2023-11-15 16:48:50	1
25273	Tâche "Mise à jour compte comptable auxiliaire"\n          du projet ACTIVE NEGOCE - Transfert Compta mise dans " En cours " par Mathieu	f	138	144	2023-11-15 16:48:50	2023-11-15 16:48:50	1
25274	Tâche "Mise à jour compte comptable auxiliaire"\n          du projet ACTIVE NEGOCE - Transfert Compta mise dans " En cours " par Mathieu	f	138	129	2023-11-15 16:48:50	2023-11-15 16:48:50	1
25275	Tâche "Tableau Bon de production"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Kevin	f	139	127	2023-11-15 16:49:33	2023-11-15 16:49:33	1
25276	Tâche "Tableau Bon de production"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Kevin	f	139	130	2023-11-15 16:49:33	2023-11-15 16:49:33	1
25277	Tâche "Tableau Bon de production"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Kevin	f	139	135	2023-11-15 16:49:33	2023-11-15 16:49:33	1
25278	Tâche "Tableau Bon de production"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Kevin	f	139	136	2023-11-15 16:49:33	2023-11-15 16:49:33	1
25279	Tâche "Tableau Bon de production"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Kevin	f	139	138	2023-11-15 16:49:33	2023-11-15 16:49:33	1
25280	Tâche "Tableau Bon de production"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Kevin	f	139	145	2023-11-15 16:49:33	2023-11-15 16:49:33	1
25281	Tâche "Tableau Bon de production"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Kevin	f	139	132	2023-11-15 16:49:33	2023-11-15 16:49:33	1
25282	Tâche "Tableau Bon de production"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Kevin	f	139	131	2023-11-15 16:49:33	2023-11-15 16:49:33	1
25283	Tâche "Tableau Bon de production"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Kevin	f	139	144	2023-11-15 16:49:33	2023-11-15 16:49:33	1
25284	Tâche "Tableau Bon de production"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Kevin	f	139	129	2023-11-15 16:49:33	2023-11-15 16:49:33	1
25285	Tâche "Tableau Bon de production"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Kevin	f	139	127	2023-11-15 16:50:23	2023-11-15 16:50:23	1
25286	Tâche "Tableau Bon de production"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Kevin	f	139	130	2023-11-15 16:50:23	2023-11-15 16:50:23	1
25287	Tâche "Tableau Bon de production"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Kevin	f	139	135	2023-11-15 16:50:23	2023-11-15 16:50:23	1
25288	Tâche "Tableau Bon de production"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Kevin	f	139	136	2023-11-15 16:50:23	2023-11-15 16:50:23	1
25289	Tâche "Tableau Bon de production"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Kevin	f	139	138	2023-11-15 16:50:23	2023-11-15 16:50:23	1
25290	Tâche "Tableau Bon de production"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Kevin	f	139	145	2023-11-15 16:50:23	2023-11-15 16:50:23	1
25291	Tâche "Tableau Bon de production"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Kevin	f	139	132	2023-11-15 16:50:23	2023-11-15 16:50:23	1
25292	Tâche "Tableau Bon de production"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Kevin	f	139	131	2023-11-15 16:50:23	2023-11-15 16:50:23	1
25293	Tâche "Tableau Bon de production"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Kevin	f	139	144	2023-11-15 16:50:23	2023-11-15 16:50:23	1
25294	Tâche "Tableau Bon de production"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Kevin	f	139	129	2023-11-15 16:50:23	2023-11-15 16:50:23	1
25295	Tâche nouvellement créee du nom de Mise à jour Code-barres DECAKILA par Mathieu dans le projet QLM - Intervention et accompagnement.	f	138	127	2023-11-15 16:54:08	2023-11-15 16:54:08	5
25296	Tâche nouvellement créee du nom de Mise à jour Code-barres DECAKILA par Mathieu dans le projet QLM - Intervention et accompagnement.	f	138	130	2023-11-15 16:54:08	2023-11-15 16:54:08	5
25297	Tâche nouvellement créee du nom de Mise à jour Code-barres DECAKILA par Mathieu dans le projet QLM - Intervention et accompagnement.	f	138	135	2023-11-15 16:54:08	2023-11-15 16:54:08	5
25298	Tâche nouvellement créee du nom de Mise à jour Code-barres DECAKILA par Mathieu dans le projet QLM - Intervention et accompagnement.	f	138	136	2023-11-15 16:54:08	2023-11-15 16:54:08	5
25299	Tâche nouvellement créee du nom de Mise à jour Code-barres DECAKILA par Mathieu dans le projet QLM - Intervention et accompagnement.	f	138	145	2023-11-15 16:54:08	2023-11-15 16:54:08	5
25300	Tâche nouvellement créee du nom de Mise à jour Code-barres DECAKILA par Mathieu dans le projet QLM - Intervention et accompagnement.	f	138	132	2023-11-15 16:54:08	2023-11-15 16:54:08	5
25301	Tâche nouvellement créee du nom de Mise à jour Code-barres DECAKILA par Mathieu dans le projet QLM - Intervention et accompagnement.	f	138	131	2023-11-15 16:54:08	2023-11-15 16:54:08	5
25302	Tâche nouvellement créee du nom de Mise à jour Code-barres DECAKILA par Mathieu dans le projet QLM - Intervention et accompagnement.	f	138	144	2023-11-15 16:54:08	2023-11-15 16:54:08	5
25303	Tâche nouvellement créee du nom de Mise à jour Code-barres DECAKILA par Mathieu dans le projet QLM - Intervention et accompagnement.	f	138	129	2023-11-15 16:54:08	2023-11-15 16:54:08	5
25308	Tâche nouvellement créee du nom de Faire le test pour le recalcul du cumul prix de revient par Mathieu dans le projet MAUVILAC - Intervention et accompagnement.	f	138	127	2023-11-15 16:56:37	2023-11-15 16:56:37	5
25309	Tâche nouvellement créee du nom de Faire le test pour le recalcul du cumul prix de revient par Mathieu dans le projet MAUVILAC - Intervention et accompagnement.	f	138	130	2023-11-15 16:56:37	2023-11-15 16:56:37	5
25310	Tâche nouvellement créee du nom de Faire le test pour le recalcul du cumul prix de revient par Mathieu dans le projet MAUVILAC - Intervention et accompagnement.	f	138	135	2023-11-15 16:56:37	2023-11-15 16:56:37	5
25311	Tâche nouvellement créee du nom de Faire le test pour le recalcul du cumul prix de revient par Mathieu dans le projet MAUVILAC - Intervention et accompagnement.	f	138	136	2023-11-15 16:56:37	2023-11-15 16:56:37	5
25312	Tâche nouvellement créee du nom de Faire le test pour le recalcul du cumul prix de revient par Mathieu dans le projet MAUVILAC - Intervention et accompagnement.	f	138	145	2023-11-15 16:56:37	2023-11-15 16:56:37	5
25490	Le projet "Project monitoring " a été mise à jour par PhidiaAdmin	f	127	136	2023-11-17 13:59:24	2023-11-17 13:59:24	7
25305	Fanilo a été assigné à la tâche Mise à jour Code-barres DECAKILA dans le projet QLM - Intervention et accompagnement par Mathieu	f	138	127	2023-11-15 16:54:08	2023-11-15 16:54:08	6
25306	Fanilo a été assigné à la tâche Mise à jour Code-barres DECAKILA dans le projet QLM - Intervention et accompagnement par Mathieu	f	138	130	2023-11-15 16:54:08	2023-11-15 16:54:08	6
25307	Fanilo a été assigné à la tâche Mise à jour Code-barres DECAKILA dans le projet QLM - Intervention et accompagnement par Mathieu	f	138	132	2023-11-15 16:54:08	2023-11-15 16:54:08	6
25317	Koloina a été assigné à la tâche Faire le test pour le recalcul du cumul prix de revient dans le projet MAUVILAC - Intervention et accompagnement par Mathieu	f	138	147	2023-11-15 13:56:37	2023-11-15 13:56:37	6
25321	Tâche nouvellement créee du nom de Modèle d'impression Consommation matière première  par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	127	2023-11-15 16:56:42	2023-11-15 16:56:42	5
25322	Tâche nouvellement créee du nom de Modèle d'impression Consommation matière première  par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	130	2023-11-15 16:56:42	2023-11-15 16:56:42	5
25323	Tâche nouvellement créee du nom de Modèle d'impression Consommation matière première  par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	135	2023-11-15 16:56:42	2023-11-15 16:56:42	5
25324	Tâche nouvellement créee du nom de Modèle d'impression Consommation matière première  par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	136	2023-11-15 16:56:42	2023-11-15 16:56:42	5
25325	Tâche nouvellement créee du nom de Modèle d'impression Consommation matière première  par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	138	2023-11-15 16:56:42	2023-11-15 16:56:42	5
25326	Tâche nouvellement créee du nom de Modèle d'impression Consommation matière première  par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	145	2023-11-15 16:56:42	2023-11-15 16:56:42	5
25327	Tâche nouvellement créee du nom de Modèle d'impression Consommation matière première  par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	132	2023-11-15 16:56:42	2023-11-15 16:56:42	5
25328	Tâche nouvellement créee du nom de Modèle d'impression Consommation matière première  par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	131	2023-11-15 16:56:42	2023-11-15 16:56:42	5
25329	Tâche nouvellement créee du nom de Modèle d'impression Consommation matière première  par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	144	2023-11-15 16:56:42	2023-11-15 16:56:42	5
25330	Tâche nouvellement créee du nom de Modèle d'impression Consommation matière première  par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	129	2023-11-15 16:56:42	2023-11-15 16:56:42	5
25304	Fanilo a été assigné à la tâche Mise à jour Code-barres DECAKILA dans le projet QLM - Intervention et accompagnement par Mathieu	t	138	137	2023-11-15 13:54:08	2023-11-15 13:54:08	6
25313	Tâche nouvellement créee du nom de Faire le test pour le recalcul du cumul prix de revient par Mathieu dans le projet MAUVILAC - Intervention et accompagnement.	f	138	132	2023-11-15 16:56:37	2023-11-15 16:56:37	5
25314	Tâche nouvellement créee du nom de Faire le test pour le recalcul du cumul prix de revient par Mathieu dans le projet MAUVILAC - Intervention et accompagnement.	f	138	131	2023-11-15 16:56:37	2023-11-15 16:56:37	5
25315	Tâche nouvellement créee du nom de Faire le test pour le recalcul du cumul prix de revient par Mathieu dans le projet MAUVILAC - Intervention et accompagnement.	f	138	144	2023-11-15 16:56:37	2023-11-15 16:56:37	5
25316	Tâche nouvellement créee du nom de Faire le test pour le recalcul du cumul prix de revient par Mathieu dans le projet MAUVILAC - Intervention et accompagnement.	f	138	129	2023-11-15 16:56:37	2023-11-15 16:56:37	5
25318	Koloina a été assigné à la tâche Faire le test pour le recalcul du cumul prix de revient dans le projet MAUVILAC - Intervention et accompagnement par Mathieu	f	138	127	2023-11-15 16:56:37	2023-11-15 16:56:37	6
25319	Koloina a été assigné à la tâche Faire le test pour le recalcul du cumul prix de revient dans le projet MAUVILAC - Intervention et accompagnement par Mathieu	f	138	130	2023-11-15 16:56:37	2023-11-15 16:56:37	6
25320	Koloina a été assigné à la tâche Faire le test pour le recalcul du cumul prix de revient dans le projet MAUVILAC - Intervention et accompagnement par Mathieu	f	138	132	2023-11-15 16:56:37	2023-11-15 16:56:37	6
25335	Tâche nouvellement créee du nom de Intégration du fichier mouvement de stock venant de REFLEX par Mathieu dans le projet ZEOP - Mise en place d'une solution.	f	138	127	2023-11-15 16:58:34	2023-11-15 16:58:34	5
25336	Tâche nouvellement créee du nom de Intégration du fichier mouvement de stock venant de REFLEX par Mathieu dans le projet ZEOP - Mise en place d'une solution.	f	138	130	2023-11-15 16:58:34	2023-11-15 16:58:34	5
25337	Tâche nouvellement créee du nom de Intégration du fichier mouvement de stock venant de REFLEX par Mathieu dans le projet ZEOP - Mise en place d'une solution.	f	138	135	2023-11-15 16:58:34	2023-11-15 16:58:34	5
25338	Tâche nouvellement créee du nom de Intégration du fichier mouvement de stock venant de REFLEX par Mathieu dans le projet ZEOP - Mise en place d'une solution.	f	138	136	2023-11-15 16:58:34	2023-11-15 16:58:34	5
25339	Tâche nouvellement créee du nom de Intégration du fichier mouvement de stock venant de REFLEX par Mathieu dans le projet ZEOP - Mise en place d'une solution.	f	138	145	2023-11-15 16:58:34	2023-11-15 16:58:34	5
25340	Tâche nouvellement créee du nom de Intégration du fichier mouvement de stock venant de REFLEX par Mathieu dans le projet ZEOP - Mise en place d'une solution.	f	138	132	2023-11-15 16:58:34	2023-11-15 16:58:34	5
25341	Tâche nouvellement créee du nom de Intégration du fichier mouvement de stock venant de REFLEX par Mathieu dans le projet ZEOP - Mise en place d'une solution.	f	138	131	2023-11-15 16:58:34	2023-11-15 16:58:34	5
25342	Tâche nouvellement créee du nom de Intégration du fichier mouvement de stock venant de REFLEX par Mathieu dans le projet ZEOP - Mise en place d'une solution.	f	138	144	2023-11-15 16:58:34	2023-11-15 16:58:34	5
25343	Tâche nouvellement créee du nom de Intégration du fichier mouvement de stock venant de REFLEX par Mathieu dans le projet ZEOP - Mise en place d'une solution.	f	138	129	2023-11-15 16:58:34	2023-11-15 16:58:34	5
25331	Kevin a été assigné à la tâche Modèle d'impression Consommation matière première  dans le projet MADAPLAST - Intervention et accompagnement par Kevin	t	139	139	2023-11-15 13:56:42	2023-11-15 13:56:42	6
25332	Kevin a été assigné à la tâche Modèle d'impression Consommation matière première  dans le projet MADAPLAST - Intervention et accompagnement par Kevin	f	139	127	2023-11-15 16:56:42	2023-11-15 16:56:42	6
25333	Kevin a été assigné à la tâche Modèle d'impression Consommation matière première  dans le projet MADAPLAST - Intervention et accompagnement par Kevin	f	139	130	2023-11-15 16:56:42	2023-11-15 16:56:42	6
25334	Kevin a été assigné à la tâche Modèle d'impression Consommation matière première  dans le projet MADAPLAST - Intervention et accompagnement par Kevin	f	139	132	2023-11-15 16:56:42	2023-11-15 16:56:42	6
25344	Koloina a été assigné à la tâche Intégration du fichier mouvement de stock venant de REFLEX dans le projet ZEOP - Mise en place d'une solution par Mathieu	f	138	147	2023-11-15 13:58:34	2023-11-15 13:58:34	6
25345	Koloina a été assigné à la tâche Intégration du fichier mouvement de stock venant de REFLEX dans le projet ZEOP - Mise en place d'une solution par Mathieu	f	138	127	2023-11-15 16:58:34	2023-11-15 16:58:34	6
25346	Koloina a été assigné à la tâche Intégration du fichier mouvement de stock venant de REFLEX dans le projet ZEOP - Mise en place d'une solution par Mathieu	f	138	130	2023-11-15 16:58:34	2023-11-15 16:58:34	6
25347	Koloina a été assigné à la tâche Intégration du fichier mouvement de stock venant de REFLEX dans le projet ZEOP - Mise en place d'une solution par Mathieu	f	138	132	2023-11-15 16:58:34	2023-11-15 16:58:34	6
25348	Tâche nouvellement créee du nom de Préparation fichier d'import écriture compta ODOO vers SAGE 06-10/23 par Mathieu dans le projet ISSOUFALI - Intervention et accompagnement.	f	138	127	2023-11-15 17:00:52	2023-11-15 17:00:52	5
25349	Tâche nouvellement créee du nom de Préparation fichier d'import écriture compta ODOO vers SAGE 06-10/23 par Mathieu dans le projet ISSOUFALI - Intervention et accompagnement.	f	138	130	2023-11-15 17:00:52	2023-11-15 17:00:52	5
25350	Tâche nouvellement créee du nom de Préparation fichier d'import écriture compta ODOO vers SAGE 06-10/23 par Mathieu dans le projet ISSOUFALI - Intervention et accompagnement.	f	138	135	2023-11-15 17:00:52	2023-11-15 17:00:52	5
25351	Tâche nouvellement créee du nom de Préparation fichier d'import écriture compta ODOO vers SAGE 06-10/23 par Mathieu dans le projet ISSOUFALI - Intervention et accompagnement.	f	138	136	2023-11-15 17:00:52	2023-11-15 17:00:52	5
25352	Tâche nouvellement créee du nom de Préparation fichier d'import écriture compta ODOO vers SAGE 06-10/23 par Mathieu dans le projet ISSOUFALI - Intervention et accompagnement.	f	138	145	2023-11-15 17:00:52	2023-11-15 17:00:52	5
25353	Tâche nouvellement créee du nom de Préparation fichier d'import écriture compta ODOO vers SAGE 06-10/23 par Mathieu dans le projet ISSOUFALI - Intervention et accompagnement.	f	138	132	2023-11-15 17:00:52	2023-11-15 17:00:52	5
25354	Tâche nouvellement créee du nom de Préparation fichier d'import écriture compta ODOO vers SAGE 06-10/23 par Mathieu dans le projet ISSOUFALI - Intervention et accompagnement.	f	138	131	2023-11-15 17:00:52	2023-11-15 17:00:52	5
25355	Tâche nouvellement créee du nom de Préparation fichier d'import écriture compta ODOO vers SAGE 06-10/23 par Mathieu dans le projet ISSOUFALI - Intervention et accompagnement.	f	138	144	2023-11-15 17:00:52	2023-11-15 17:00:52	5
25356	Tâche nouvellement créee du nom de Préparation fichier d'import écriture compta ODOO vers SAGE 06-10/23 par Mathieu dans le projet ISSOUFALI - Intervention et accompagnement.	f	138	129	2023-11-15 17:00:52	2023-11-15 17:00:52	5
25357	Koloina a été assigné à la tâche Préparation fichier d'import écriture compta ODOO vers SAGE 06-10/23 dans le projet ISSOUFALI - Intervention et accompagnement par Mathieu	f	138	147	2023-11-15 14:00:52	2023-11-15 14:00:52	6
25358	Koloina a été assigné à la tâche Préparation fichier d'import écriture compta ODOO vers SAGE 06-10/23 dans le projet ISSOUFALI - Intervention et accompagnement par Mathieu	f	138	127	2023-11-15 17:00:52	2023-11-15 17:00:52	6
25359	Koloina a été assigné à la tâche Préparation fichier d'import écriture compta ODOO vers SAGE 06-10/23 dans le projet ISSOUFALI - Intervention et accompagnement par Mathieu	f	138	130	2023-11-15 17:00:52	2023-11-15 17:00:52	6
25360	Koloina a été assigné à la tâche Préparation fichier d'import écriture compta ODOO vers SAGE 06-10/23 dans le projet ISSOUFALI - Intervention et accompagnement par Mathieu	f	138	132	2023-11-15 17:00:52	2023-11-15 17:00:52	6
25361	Tâche nouvellement créee du nom de Ajustement de sur le tableau "SendMail" par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	127	2023-11-15 17:04:49	2023-11-15 17:04:49	5
25362	Tâche nouvellement créee du nom de Ajustement de sur le tableau "SendMail" par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	130	2023-11-15 17:04:49	2023-11-15 17:04:49	5
25363	Tâche nouvellement créee du nom de Ajustement de sur le tableau "SendMail" par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	135	2023-11-15 17:04:49	2023-11-15 17:04:49	5
25364	Tâche nouvellement créee du nom de Ajustement de sur le tableau "SendMail" par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	136	2023-11-15 17:04:49	2023-11-15 17:04:49	5
25365	Tâche nouvellement créee du nom de Ajustement de sur le tableau "SendMail" par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	145	2023-11-15 17:04:49	2023-11-15 17:04:49	5
25366	Tâche nouvellement créee du nom de Ajustement de sur le tableau "SendMail" par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	132	2023-11-15 17:04:49	2023-11-15 17:04:49	5
25367	Tâche nouvellement créee du nom de Ajustement de sur le tableau "SendMail" par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	131	2023-11-15 17:04:49	2023-11-15 17:04:49	5
25368	Tâche nouvellement créee du nom de Ajustement de sur le tableau "SendMail" par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	144	2023-11-15 17:04:49	2023-11-15 17:04:49	5
25369	Tâche nouvellement créee du nom de Ajustement de sur le tableau "SendMail" par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	129	2023-11-15 17:04:49	2023-11-15 17:04:49	5
25371	Hassan a été assigné à la tâche Ajustement de sur le tableau "SendMail" dans le projet NAJMI - Intervention et accompagnement par Mathieu	f	138	127	2023-11-15 17:04:49	2023-11-15 17:04:49	6
25372	Hassan a été assigné à la tâche Ajustement de sur le tableau "SendMail" dans le projet NAJMI - Intervention et accompagnement par Mathieu	f	138	130	2023-11-15 17:04:49	2023-11-15 17:04:49	6
25373	Hassan a été assigné à la tâche Ajustement de sur le tableau "SendMail" dans le projet NAJMI - Intervention et accompagnement par Mathieu	f	138	132	2023-11-15 17:04:49	2023-11-15 17:04:49	6
25374	Tâche nouvellement créee du nom de Réalisation tableau "Balance agée" par Mathieu dans le projet MADAPLAST - Intervention et accompagnement.	f	138	127	2023-11-15 17:06:50	2023-11-15 17:06:50	5
25375	Tâche nouvellement créee du nom de Réalisation tableau "Balance agée" par Mathieu dans le projet MADAPLAST - Intervention et accompagnement.	f	138	130	2023-11-15 17:06:50	2023-11-15 17:06:50	5
25376	Tâche nouvellement créee du nom de Réalisation tableau "Balance agée" par Mathieu dans le projet MADAPLAST - Intervention et accompagnement.	f	138	135	2023-11-15 17:06:50	2023-11-15 17:06:50	5
25377	Tâche nouvellement créee du nom de Réalisation tableau "Balance agée" par Mathieu dans le projet MADAPLAST - Intervention et accompagnement.	f	138	136	2023-11-15 17:06:50	2023-11-15 17:06:50	5
25491	Le projet "Project monitoring " a été mise à jour par PhidiaAdmin	f	127	138	2023-11-17 13:59:24	2023-11-17 13:59:24	7
25492	Le projet "Project monitoring " a été mise à jour par PhidiaAdmin	f	127	145	2023-11-17 13:59:24	2023-11-17 13:59:24	7
25378	Tâche nouvellement créee du nom de Réalisation tableau "Balance agée" par Mathieu dans le projet MADAPLAST - Intervention et accompagnement.	f	138	145	2023-11-15 17:06:50	2023-11-15 17:06:50	5
25379	Tâche nouvellement créee du nom de Réalisation tableau "Balance agée" par Mathieu dans le projet MADAPLAST - Intervention et accompagnement.	f	138	132	2023-11-15 17:06:50	2023-11-15 17:06:50	5
25380	Tâche nouvellement créee du nom de Réalisation tableau "Balance agée" par Mathieu dans le projet MADAPLAST - Intervention et accompagnement.	f	138	131	2023-11-15 17:06:50	2023-11-15 17:06:50	5
25381	Tâche nouvellement créee du nom de Réalisation tableau "Balance agée" par Mathieu dans le projet MADAPLAST - Intervention et accompagnement.	f	138	144	2023-11-15 17:06:50	2023-11-15 17:06:50	5
25382	Tâche nouvellement créee du nom de Réalisation tableau "Balance agée" par Mathieu dans le projet MADAPLAST - Intervention et accompagnement.	f	138	129	2023-11-15 17:06:50	2023-11-15 17:06:50	5
25417	Mickaella a été assigné à la tâche Modèle d'impression dans le projet MADAPLAST - Intervention et accompagnement par Mickaella	t	148	148	2023-11-15 14:14:40	2023-11-15 14:14:40	6
25384	Mickaella a été assigné à la tâche Réalisation tableau "Balance agée" dans le projet MADAPLAST - Intervention et accompagnement par Mathieu	f	138	127	2023-11-15 17:06:50	2023-11-15 17:06:50	6
25385	Mickaella a été assigné à la tâche Réalisation tableau "Balance agée" dans le projet MADAPLAST - Intervention et accompagnement par Mathieu	f	138	130	2023-11-15 17:06:50	2023-11-15 17:06:50	6
25386	Mickaella a été assigné à la tâche Réalisation tableau "Balance agée" dans le projet MADAPLAST - Intervention et accompagnement par Mathieu	f	138	132	2023-11-15 17:06:50	2023-11-15 17:06:50	6
25387	La tâche Ajustement de sur le tableau "SendMail" a été mise en cours.	f	142	127	2023-11-15 17:07:20	2023-11-15 17:07:20	4
25388	La tâche Ajustement de sur le tableau "SendMail" a été mise en cours.	f	142	130	2023-11-15 17:07:20	2023-11-15 17:07:20	4
25389	La tâche Ajustement de sur le tableau "SendMail" a été mise en cours.	f	142	135	2023-11-15 17:07:20	2023-11-15 17:07:20	4
25390	La tâche Ajustement de sur le tableau "SendMail" a été mise en cours.	f	142	136	2023-11-15 17:07:20	2023-11-15 17:07:20	4
25391	La tâche Ajustement de sur le tableau "SendMail" a été mise en cours.	f	142	138	2023-11-15 17:07:20	2023-11-15 17:07:20	4
25392	La tâche Ajustement de sur le tableau "SendMail" a été mise en cours.	f	142	145	2023-11-15 17:07:20	2023-11-15 17:07:20	4
25393	La tâche Ajustement de sur le tableau "SendMail" a été mise en cours.	f	142	132	2023-11-15 17:07:20	2023-11-15 17:07:20	4
25394	La tâche Ajustement de sur le tableau "SendMail" a été mise en cours.	f	142	131	2023-11-15 17:07:20	2023-11-15 17:07:20	4
25395	La tâche Ajustement de sur le tableau "SendMail" a été mise en cours.	f	142	144	2023-11-15 17:07:20	2023-11-15 17:07:20	4
25396	La tâche Ajustement de sur le tableau "SendMail" a été mise en cours.	f	142	129	2023-11-15 17:07:20	2023-11-15 17:07:20	4
25397	Tâche "Réalisation tableau "Balance agée""\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Mickaella	f	148	127	2023-11-15 17:11:33	2023-11-15 17:11:33	1
25398	Tâche "Réalisation tableau "Balance agée""\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Mickaella	f	148	130	2023-11-15 17:11:33	2023-11-15 17:11:33	1
25399	Tâche "Réalisation tableau "Balance agée""\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Mickaella	f	148	135	2023-11-15 17:11:33	2023-11-15 17:11:33	1
25400	Tâche "Réalisation tableau "Balance agée""\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Mickaella	f	148	136	2023-11-15 17:11:33	2023-11-15 17:11:33	1
25401	Tâche "Réalisation tableau "Balance agée""\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Mickaella	f	148	138	2023-11-15 17:11:33	2023-11-15 17:11:33	1
25402	Tâche "Réalisation tableau "Balance agée""\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Mickaella	f	148	145	2023-11-15 17:11:33	2023-11-15 17:11:33	1
25403	Tâche "Réalisation tableau "Balance agée""\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Mickaella	f	148	132	2023-11-15 17:11:33	2023-11-15 17:11:33	1
25404	Tâche "Réalisation tableau "Balance agée""\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Mickaella	f	148	131	2023-11-15 17:11:33	2023-11-15 17:11:33	1
25405	Tâche "Réalisation tableau "Balance agée""\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Mickaella	f	148	144	2023-11-15 17:11:33	2023-11-15 17:11:33	1
25406	Tâche "Réalisation tableau "Balance agée""\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Mickaella	f	148	129	2023-11-15 17:11:33	2023-11-15 17:11:33	1
25421	Tâche "Modèle d'impression"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Mickaella	f	148	127	2023-11-15 17:14:52	2023-11-15 17:14:52	1
25422	Tâche "Modèle d'impression"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Mickaella	f	148	130	2023-11-15 17:14:52	2023-11-15 17:14:52	1
25423	Tâche "Modèle d'impression"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Mickaella	f	148	135	2023-11-15 17:14:52	2023-11-15 17:14:52	1
25424	Tâche "Modèle d'impression"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Mickaella	f	148	136	2023-11-15 17:14:52	2023-11-15 17:14:52	1
25425	Tâche "Modèle d'impression"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Mickaella	f	148	138	2023-11-15 17:14:52	2023-11-15 17:14:52	1
25426	Tâche "Modèle d'impression"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Mickaella	f	148	145	2023-11-15 17:14:52	2023-11-15 17:14:52	1
25427	Tâche "Modèle d'impression"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Mickaella	f	148	132	2023-11-15 17:14:52	2023-11-15 17:14:52	1
25428	Tâche "Modèle d'impression"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Mickaella	f	148	131	2023-11-15 17:14:52	2023-11-15 17:14:52	1
25429	Tâche "Modèle d'impression"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Mickaella	f	148	144	2023-11-15 17:14:52	2023-11-15 17:14:52	1
25430	Tâche "Modèle d'impression"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En blocage " par Mickaella	f	148	129	2023-11-15 17:14:52	2023-11-15 17:14:52	1
25452	Hassan a été assigné à la tâche Création d'une liste des clients avec statuts de validation de leurs adresses mails respectifs dans le projet NAJMI - Intervention et accompagnement par Hassan	f	142	127	2023-11-15 17:24:55	2023-11-15 17:24:55	6
25453	Hassan a été assigné à la tâche Création d'une liste des clients avec statuts de validation de leurs adresses mails respectifs dans le projet NAJMI - Intervention et accompagnement par Hassan	f	142	130	2023-11-15 17:24:55	2023-11-15 17:24:55	6
25454	Hassan a été assigné à la tâche Création d'une liste des clients avec statuts de validation de leurs adresses mails respectifs dans le projet NAJMI - Intervention et accompagnement par Hassan	f	142	132	2023-11-15 17:24:55	2023-11-15 17:24:55	6
25383	Mickaella a été assigné à la tâche Réalisation tableau "Balance agée" dans le projet MADAPLAST - Intervention et accompagnement par Mathieu	t	138	148	2023-11-15 14:06:50	2023-11-15 14:06:50	6
25407	Tâche nouvellement créee du nom de Modèle d'impression par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	127	2023-11-15 17:14:40	2023-11-15 17:14:40	5
25408	Tâche nouvellement créee du nom de Modèle d'impression par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	130	2023-11-15 17:14:40	2023-11-15 17:14:40	5
25409	Tâche nouvellement créee du nom de Modèle d'impression par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	135	2023-11-15 17:14:40	2023-11-15 17:14:40	5
25410	Tâche nouvellement créee du nom de Modèle d'impression par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	136	2023-11-15 17:14:40	2023-11-15 17:14:40	5
25411	Tâche nouvellement créee du nom de Modèle d'impression par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	138	2023-11-15 17:14:40	2023-11-15 17:14:40	5
25412	Tâche nouvellement créee du nom de Modèle d'impression par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	145	2023-11-15 17:14:40	2023-11-15 17:14:40	5
26781	Miandrisoa a été assigné à la tâche Taches dans le projet MILLOT par Mathieu	f	138	132	2024-01-24 16:02:25	2024-01-24 16:02:25	6
25413	Tâche nouvellement créee du nom de Modèle d'impression par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	132	2023-11-15 17:14:40	2023-11-15 17:14:40	5
25414	Tâche nouvellement créee du nom de Modèle d'impression par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	131	2023-11-15 17:14:40	2023-11-15 17:14:40	5
25415	Tâche nouvellement créee du nom de Modèle d'impression par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	144	2023-11-15 17:14:40	2023-11-15 17:14:40	5
25416	Tâche nouvellement créee du nom de Modèle d'impression par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	129	2023-11-15 17:14:40	2023-11-15 17:14:40	5
25418	Mickaella a été assigné à la tâche Modèle d'impression dans le projet MADAPLAST - Intervention et accompagnement par Mickaella	f	148	127	2023-11-15 17:14:40	2023-11-15 17:14:40	6
25419	Mickaella a été assigné à la tâche Modèle d'impression dans le projet MADAPLAST - Intervention et accompagnement par Mickaella	f	148	130	2023-11-15 17:14:40	2023-11-15 17:14:40	6
25420	Mickaella a été assigné à la tâche Modèle d'impression dans le projet MADAPLAST - Intervention et accompagnement par Mickaella	f	148	132	2023-11-15 17:14:40	2023-11-15 17:14:40	6
25431	Tâche "Modèle d'impression"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Mickaella	f	148	127	2023-11-15 17:15:10	2023-11-15 17:15:10	1
25432	Tâche "Modèle d'impression"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Mickaella	f	148	130	2023-11-15 17:15:10	2023-11-15 17:15:10	1
25433	Tâche "Modèle d'impression"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Mickaella	f	148	135	2023-11-15 17:15:10	2023-11-15 17:15:10	1
25434	Tâche "Modèle d'impression"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Mickaella	f	148	136	2023-11-15 17:15:10	2023-11-15 17:15:10	1
25435	Tâche "Modèle d'impression"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Mickaella	f	148	138	2023-11-15 17:15:10	2023-11-15 17:15:10	1
25436	Tâche "Modèle d'impression"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Mickaella	f	148	145	2023-11-15 17:15:10	2023-11-15 17:15:10	1
25437	Tâche "Modèle d'impression"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Mickaella	f	148	132	2023-11-15 17:15:10	2023-11-15 17:15:10	1
25438	Tâche "Modèle d'impression"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Mickaella	f	148	131	2023-11-15 17:15:10	2023-11-15 17:15:10	1
25439	Tâche "Modèle d'impression"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Mickaella	f	148	144	2023-11-15 17:15:10	2023-11-15 17:15:10	1
25440	Tâche "Modèle d'impression"\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Mickaella	f	148	129	2023-11-15 17:15:10	2023-11-15 17:15:10	1
25370	Hassan a été assigné à la tâche Ajustement de sur le tableau "SendMail" dans le projet NAJMI - Intervention et accompagnement par Mathieu	t	138	142	2023-11-15 14:04:49	2023-11-15 14:04:49	6
25441	Tâche nouvellement créee du nom de Création d'une liste des clients avec statuts de validation de leurs adresses mails respectifs par Hassan dans le projet NAJMI - Intervention et accompagnement.	f	142	127	2023-11-15 17:24:55	2023-11-15 17:24:55	5
25442	Tâche nouvellement créee du nom de Création d'une liste des clients avec statuts de validation de leurs adresses mails respectifs par Hassan dans le projet NAJMI - Intervention et accompagnement.	f	142	130	2023-11-15 17:24:55	2023-11-15 17:24:55	5
25443	Tâche nouvellement créee du nom de Création d'une liste des clients avec statuts de validation de leurs adresses mails respectifs par Hassan dans le projet NAJMI - Intervention et accompagnement.	f	142	135	2023-11-15 17:24:55	2023-11-15 17:24:55	5
25444	Tâche nouvellement créee du nom de Création d'une liste des clients avec statuts de validation de leurs adresses mails respectifs par Hassan dans le projet NAJMI - Intervention et accompagnement.	f	142	136	2023-11-15 17:24:55	2023-11-15 17:24:55	5
25445	Tâche nouvellement créee du nom de Création d'une liste des clients avec statuts de validation de leurs adresses mails respectifs par Hassan dans le projet NAJMI - Intervention et accompagnement.	f	142	138	2023-11-15 17:24:55	2023-11-15 17:24:55	5
25446	Tâche nouvellement créee du nom de Création d'une liste des clients avec statuts de validation de leurs adresses mails respectifs par Hassan dans le projet NAJMI - Intervention et accompagnement.	f	142	145	2023-11-15 17:24:55	2023-11-15 17:24:55	5
25447	Tâche nouvellement créee du nom de Création d'une liste des clients avec statuts de validation de leurs adresses mails respectifs par Hassan dans le projet NAJMI - Intervention et accompagnement.	f	142	132	2023-11-15 17:24:55	2023-11-15 17:24:55	5
25448	Tâche nouvellement créee du nom de Création d'une liste des clients avec statuts de validation de leurs adresses mails respectifs par Hassan dans le projet NAJMI - Intervention et accompagnement.	f	142	131	2023-11-15 17:24:55	2023-11-15 17:24:55	5
25449	Tâche nouvellement créee du nom de Création d'une liste des clients avec statuts de validation de leurs adresses mails respectifs par Hassan dans le projet NAJMI - Intervention et accompagnement.	f	142	144	2023-11-15 17:24:55	2023-11-15 17:24:55	5
25450	Tâche nouvellement créee du nom de Création d'une liste des clients avec statuts de validation de leurs adresses mails respectifs par Hassan dans le projet NAJMI - Intervention et accompagnement.	f	142	129	2023-11-15 17:24:55	2023-11-15 17:24:55	5
25493	Le projet "Project monitoring " a été mise à jour par PhidiaAdmin	f	127	132	2023-11-17 13:59:24	2023-11-17 13:59:24	7
25455	Tâche "Réalisation tableau "Balance agée""\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Mickaella	f	148	127	2023-11-15 17:30:07	2023-11-15 17:30:07	1
25456	Tâche "Réalisation tableau "Balance agée""\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Mickaella	f	148	130	2023-11-15 17:30:07	2023-11-15 17:30:07	1
25457	Tâche "Réalisation tableau "Balance agée""\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Mickaella	f	148	135	2023-11-15 17:30:07	2023-11-15 17:30:07	1
25458	Tâche "Réalisation tableau "Balance agée""\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Mickaella	f	148	136	2023-11-15 17:30:07	2023-11-15 17:30:07	1
25459	Tâche "Réalisation tableau "Balance agée""\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Mickaella	f	148	138	2023-11-15 17:30:07	2023-11-15 17:30:07	1
26782	Miandrisoa a été assigné à la tâche Taches dans le projet MILLOT par Mathieu	f	138	150	2024-01-24 16:02:25	2024-01-24 16:02:25	6
25460	Tâche "Réalisation tableau "Balance agée""\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Mickaella	f	148	145	2023-11-15 17:30:07	2023-11-15 17:30:07	1
25461	Tâche "Réalisation tableau "Balance agée""\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Mickaella	f	148	132	2023-11-15 17:30:07	2023-11-15 17:30:07	1
25462	Tâche "Réalisation tableau "Balance agée""\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Mickaella	f	148	131	2023-11-15 17:30:07	2023-11-15 17:30:07	1
25463	Tâche "Réalisation tableau "Balance agée""\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Mickaella	f	148	144	2023-11-15 17:30:07	2023-11-15 17:30:07	1
25464	Tâche "Réalisation tableau "Balance agée""\n          du projet MADAPLAST - Intervention et accompagnement mise dans " En cours " par Mickaella	f	148	129	2023-11-15 17:30:07	2023-11-15 17:30:07	1
25451	Hassan a été assigné à la tâche Création d'une liste des clients avec statuts de validation de leurs adresses mails respectifs dans le projet NAJMI - Intervention et accompagnement par Hassan	t	142	142	2023-11-15 14:24:55	2023-11-15 14:24:55	6
25465	Tâche nouvellement créee du nom de Création des historiques de prix de revient unitaire par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	127	2023-11-17 11:31:28	2023-11-17 11:31:28	5
25466	Tâche nouvellement créee du nom de Création des historiques de prix de revient unitaire par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	130	2023-11-17 11:31:28	2023-11-17 11:31:28	5
25467	Tâche nouvellement créee du nom de Création des historiques de prix de revient unitaire par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	135	2023-11-17 11:31:28	2023-11-17 11:31:28	5
25468	Tâche nouvellement créee du nom de Création des historiques de prix de revient unitaire par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	136	2023-11-17 11:31:28	2023-11-17 11:31:28	5
25469	Tâche nouvellement créee du nom de Création des historiques de prix de revient unitaire par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	138	2023-11-17 11:31:28	2023-11-17 11:31:28	5
25470	Tâche nouvellement créee du nom de Création des historiques de prix de revient unitaire par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	145	2023-11-17 11:31:28	2023-11-17 11:31:28	5
25471	Tâche nouvellement créee du nom de Création des historiques de prix de revient unitaire par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	132	2023-11-17 11:31:28	2023-11-17 11:31:28	5
25472	Tâche nouvellement créee du nom de Création des historiques de prix de revient unitaire par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	131	2023-11-17 11:31:28	2023-11-17 11:31:28	5
25473	Tâche nouvellement créee du nom de Création des historiques de prix de revient unitaire par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	144	2023-11-17 11:31:28	2023-11-17 11:31:28	5
25474	Tâche nouvellement créee du nom de Création des historiques de prix de revient unitaire par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	129	2023-11-17 11:31:28	2023-11-17 11:31:28	5
25475	Koloina a été assigné à la tâche Création des historiques de prix de revient unitaire dans le projet MAUVILAC - Intervention et accompagnement par Koloina	f	147	147	2023-11-17 08:31:28	2023-11-17 08:31:28	6
25476	Koloina a été assigné à la tâche Création des historiques de prix de revient unitaire dans le projet MAUVILAC - Intervention et accompagnement par Koloina	f	147	127	2023-11-17 11:31:28	2023-11-17 11:31:28	6
25477	Koloina a été assigné à la tâche Création des historiques de prix de revient unitaire dans le projet MAUVILAC - Intervention et accompagnement par Koloina	f	147	130	2023-11-17 11:31:28	2023-11-17 11:31:28	6
25478	Koloina a été assigné à la tâche Création des historiques de prix de revient unitaire dans le projet MAUVILAC - Intervention et accompagnement par Koloina	f	147	132	2023-11-17 11:31:28	2023-11-17 11:31:28	6
25479	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	127	2023-11-17 13:52:08	2023-11-17 13:52:08	1
25480	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	130	2023-11-17 13:52:08	2023-11-17 13:52:08	1
25481	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	135	2023-11-17 13:52:08	2023-11-17 13:52:08	1
25482	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	136	2023-11-17 13:52:08	2023-11-17 13:52:08	1
25483	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	138	2023-11-17 13:52:08	2023-11-17 13:52:08	1
25484	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	145	2023-11-17 13:52:08	2023-11-17 13:52:08	1
25485	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	132	2023-11-17 13:52:08	2023-11-17 13:52:08	1
25486	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	144	2023-11-17 13:52:08	2023-11-17 13:52:08	1
25487	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	129	2023-11-17 13:52:08	2023-11-17 13:52:08	1
25488	Le projet "Project monitoring " a été mise à jour par PhidiaAdmin	f	127	130	2023-11-17 13:59:24	2023-11-17 13:59:24	7
25489	Le projet "Project monitoring " a été mise à jour par PhidiaAdmin	f	127	135	2023-11-17 13:59:24	2023-11-17 13:59:24	7
25494	Le projet "Project monitoring " a été mise à jour par PhidiaAdmin	f	127	131	2023-11-17 13:59:24	2023-11-17 13:59:24	7
25495	Le projet "Project monitoring " a été mise à jour par PhidiaAdmin	f	127	144	2023-11-17 13:59:24	2023-11-17 13:59:24	7
25496	Le projet "Project monitoring " a été mise à jour par PhidiaAdmin	f	127	129	2023-11-17 13:59:24	2023-11-17 13:59:24	7
25497	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	127	2023-11-17 14:22:24	2023-11-17 14:22:24	1
25498	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	130	2023-11-17 14:22:24	2023-11-17 14:22:24	1
25499	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	135	2023-11-17 14:22:24	2023-11-17 14:22:24	1
25500	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	136	2023-11-17 14:22:24	2023-11-17 14:22:24	1
25501	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	138	2023-11-17 14:22:24	2023-11-17 14:22:24	1
25502	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	145	2023-11-17 14:22:24	2023-11-17 14:22:24	1
25503	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	132	2023-11-17 14:22:24	2023-11-17 14:22:24	1
25504	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	144	2023-11-17 14:22:24	2023-11-17 14:22:24	1
25505	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	129	2023-11-17 14:22:24	2023-11-17 14:22:24	1
25506	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	130	2023-11-17 14:24:16	2023-11-17 14:24:16	1
25507	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	135	2023-11-17 14:24:16	2023-11-17 14:24:16	1
25508	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	136	2023-11-17 14:24:16	2023-11-17 14:24:16	1
25509	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	138	2023-11-17 14:24:16	2023-11-17 14:24:16	1
25510	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	145	2023-11-17 14:24:16	2023-11-17 14:24:16	1
25511	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	132	2023-11-17 14:24:16	2023-11-17 14:24:16	1
25512	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	131	2023-11-17 14:24:16	2023-11-17 14:24:16	1
25513	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	144	2023-11-17 14:24:16	2023-11-17 14:24:16	1
25514	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par PhidiaAdmin	f	127	129	2023-11-17 14:24:16	2023-11-17 14:24:16	1
25515	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	127	2023-11-17 14:37:49	2023-11-17 14:37:49	1
25516	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	130	2023-11-17 14:37:49	2023-11-17 14:37:49	1
25517	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	135	2023-11-17 14:37:49	2023-11-17 14:37:49	1
25518	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	136	2023-11-17 14:37:49	2023-11-17 14:37:49	1
25519	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	138	2023-11-17 14:37:49	2023-11-17 14:37:49	1
25520	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	145	2023-11-17 14:37:49	2023-11-17 14:37:49	1
25521	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	132	2023-11-17 14:37:49	2023-11-17 14:37:49	1
25522	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	144	2023-11-17 14:37:49	2023-11-17 14:37:49	1
25523	Tâche "debug modification d'une tâche "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	129	2023-11-17 14:37:49	2023-11-17 14:37:49	1
25524	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	127	2023-11-17 14:38:29	2023-11-17 14:38:29	1
25525	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	130	2023-11-17 14:38:29	2023-11-17 14:38:29	1
25526	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	135	2023-11-17 14:38:29	2023-11-17 14:38:29	1
25527	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	136	2023-11-17 14:38:29	2023-11-17 14:38:29	1
25528	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	138	2023-11-17 14:38:29	2023-11-17 14:38:29	1
25529	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	145	2023-11-17 14:38:29	2023-11-17 14:38:29	1
25667	Antonio a été assigné à la tâche Design archivage dans le projet Modification du site web  par Hasina	f	131	127	2023-12-19 17:35:26	2023-12-19 17:35:26	6
25530	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	132	2023-11-17 14:38:29	2023-11-17 14:38:29	1
25531	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	144	2023-11-17 14:38:29	2023-11-17 14:38:29	1
25532	Tâche "Correction du bug concernant les historiques des tâches (design) "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	129	2023-11-17 14:38:29	2023-11-17 14:38:29	1
25533	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	127	2023-11-17 14:40:05	2023-11-17 14:40:05	1
25534	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	130	2023-11-17 14:40:05	2023-11-17 14:40:05	1
25535	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	135	2023-11-17 14:40:05	2023-11-17 14:40:05	1
25536	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	136	2023-11-17 14:40:05	2023-11-17 14:40:05	1
25537	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	138	2023-11-17 14:40:05	2023-11-17 14:40:05	1
25538	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	145	2023-11-17 14:40:05	2023-11-17 14:40:05	1
25539	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	132	2023-11-17 14:40:05	2023-11-17 14:40:05	1
25540	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	144	2023-11-17 14:40:05	2023-11-17 14:40:05	1
25541	Tâche "Correction du bug concernant les historiques des tâches "\n          du projet Project monitoring  mise dans " En contrôle " par Hasina	f	131	129	2023-11-17 14:40:05	2023-11-17 14:40:05	1
25542	Tâche nouvellement créee du nom de Optimiser l'exécution du requête SQL dans visual studio par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	127	2023-11-27 17:04:42	2023-11-27 17:04:42	5
25543	Tâche nouvellement créee du nom de Optimiser l'exécution du requête SQL dans visual studio par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	130	2023-11-27 17:04:42	2023-11-27 17:04:42	5
25544	Tâche nouvellement créee du nom de Optimiser l'exécution du requête SQL dans visual studio par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	135	2023-11-27 17:04:42	2023-11-27 17:04:42	5
25545	Tâche nouvellement créee du nom de Optimiser l'exécution du requête SQL dans visual studio par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	136	2023-11-27 17:04:42	2023-11-27 17:04:42	5
25546	Tâche nouvellement créee du nom de Optimiser l'exécution du requête SQL dans visual studio par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	138	2023-11-27 17:04:42	2023-11-27 17:04:42	5
25547	Tâche nouvellement créee du nom de Optimiser l'exécution du requête SQL dans visual studio par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	145	2023-11-27 17:04:42	2023-11-27 17:04:42	5
25548	Tâche nouvellement créee du nom de Optimiser l'exécution du requête SQL dans visual studio par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	132	2023-11-27 17:04:42	2023-11-27 17:04:42	5
25549	Tâche nouvellement créee du nom de Optimiser l'exécution du requête SQL dans visual studio par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	131	2023-11-27 17:04:42	2023-11-27 17:04:42	5
25550	Tâche nouvellement créee du nom de Optimiser l'exécution du requête SQL dans visual studio par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	144	2023-11-27 17:04:42	2023-11-27 17:04:42	5
25551	Tâche nouvellement créee du nom de Optimiser l'exécution du requête SQL dans visual studio par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	129	2023-11-27 17:04:42	2023-11-27 17:04:42	5
25552	Koloina a été assigné à la tâche Optimiser l'exécution du requête SQL dans visual studio dans le projet MAUVILAC - Intervention et accompagnement par Koloina	f	147	147	2023-11-27 14:04:42	2023-11-27 14:04:42	6
25553	Koloina a été assigné à la tâche Optimiser l'exécution du requête SQL dans visual studio dans le projet MAUVILAC - Intervention et accompagnement par Koloina	f	147	127	2023-11-27 17:04:42	2023-11-27 17:04:42	6
25554	Koloina a été assigné à la tâche Optimiser l'exécution du requête SQL dans visual studio dans le projet MAUVILAC - Intervention et accompagnement par Koloina	f	147	130	2023-11-27 17:04:42	2023-11-27 17:04:42	6
25555	Koloina a été assigné à la tâche Optimiser l'exécution du requête SQL dans visual studio dans le projet MAUVILAC - Intervention et accompagnement par Koloina	f	147	132	2023-11-27 17:04:42	2023-11-27 17:04:42	6
25556	Tâche "Optimiser l'exécution du requête SQL dans visual studio"\n          du projet MAUVILAC - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	127	2023-11-28 09:13:57	2023-11-28 09:13:57	1
25557	Tâche "Optimiser l'exécution du requête SQL dans visual studio"\n          du projet MAUVILAC - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	130	2023-11-28 09:13:57	2023-11-28 09:13:57	1
25558	Tâche "Optimiser l'exécution du requête SQL dans visual studio"\n          du projet MAUVILAC - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	135	2023-11-28 09:13:57	2023-11-28 09:13:57	1
25559	Tâche "Optimiser l'exécution du requête SQL dans visual studio"\n          du projet MAUVILAC - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	136	2023-11-28 09:13:57	2023-11-28 09:13:57	1
25560	Tâche "Optimiser l'exécution du requête SQL dans visual studio"\n          du projet MAUVILAC - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	138	2023-11-28 09:13:57	2023-11-28 09:13:57	1
25561	Tâche "Optimiser l'exécution du requête SQL dans visual studio"\n          du projet MAUVILAC - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	145	2023-11-28 09:13:57	2023-11-28 09:13:57	1
25562	Tâche "Optimiser l'exécution du requête SQL dans visual studio"\n          du projet MAUVILAC - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	132	2023-11-28 09:13:57	2023-11-28 09:13:57	1
25563	Tâche "Optimiser l'exécution du requête SQL dans visual studio"\n          du projet MAUVILAC - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	131	2023-11-28 09:13:57	2023-11-28 09:13:57	1
25564	Tâche "Optimiser l'exécution du requête SQL dans visual studio"\n          du projet MAUVILAC - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	144	2023-11-28 09:13:57	2023-11-28 09:13:57	1
25565	Tâche "Optimiser l'exécution du requête SQL dans visual studio"\n          du projet MAUVILAC - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	129	2023-11-28 09:13:57	2023-11-28 09:13:57	1
25566	Tâche "Optimiser l'exécution du requête SQL dans visual studio"\n          du projet MAUVILAC - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	127	2023-11-28 09:14:21	2023-11-28 09:14:21	1
25567	Tâche "Optimiser l'exécution du requête SQL dans visual studio"\n          du projet MAUVILAC - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	130	2023-11-28 09:14:21	2023-11-28 09:14:21	1
25568	Tâche "Optimiser l'exécution du requête SQL dans visual studio"\n          du projet MAUVILAC - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	135	2023-11-28 09:14:21	2023-11-28 09:14:21	1
25569	Tâche "Optimiser l'exécution du requête SQL dans visual studio"\n          du projet MAUVILAC - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	136	2023-11-28 09:14:21	2023-11-28 09:14:21	1
25570	Tâche "Optimiser l'exécution du requête SQL dans visual studio"\n          du projet MAUVILAC - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	138	2023-11-28 09:14:21	2023-11-28 09:14:21	1
25571	Tâche "Optimiser l'exécution du requête SQL dans visual studio"\n          du projet MAUVILAC - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	145	2023-11-28 09:14:21	2023-11-28 09:14:21	1
25572	Tâche "Optimiser l'exécution du requête SQL dans visual studio"\n          du projet MAUVILAC - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	132	2023-11-28 09:14:21	2023-11-28 09:14:21	1
25573	Tâche "Optimiser l'exécution du requête SQL dans visual studio"\n          du projet MAUVILAC - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	131	2023-11-28 09:14:21	2023-11-28 09:14:21	1
25574	Tâche "Optimiser l'exécution du requête SQL dans visual studio"\n          du projet MAUVILAC - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	144	2023-11-28 09:14:21	2023-11-28 09:14:21	1
25575	Tâche "Optimiser l'exécution du requête SQL dans visual studio"\n          du projet MAUVILAC - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	129	2023-11-28 09:14:21	2023-11-28 09:14:21	1
25576	Un projet du nom de Gestion PNR Issoufali a été crée par Alain	f	129	127	2023-12-15 09:53:14	2023-12-15 09:53:14	5
25577	Un projet du nom de Gestion PNR Issoufali a été crée par Alain	f	129	130	2023-12-15 09:53:14	2023-12-15 09:53:14	5
25578	Un projet du nom de Gestion PNR Issoufali a été crée par Alain	f	129	135	2023-12-15 09:53:14	2023-12-15 09:53:14	5
25579	Un projet du nom de Gestion PNR Issoufali a été crée par Alain	f	129	136	2023-12-15 09:53:14	2023-12-15 09:53:14	5
25580	Un projet du nom de Gestion PNR Issoufali a été crée par Alain	f	129	138	2023-12-15 09:53:14	2023-12-15 09:53:14	5
25581	Un projet du nom de Gestion PNR Issoufali a été crée par Alain	f	129	145	2023-12-15 09:53:14	2023-12-15 09:53:14	5
25582	Un projet du nom de Gestion PNR Issoufali a été crée par Alain	f	129	132	2023-12-15 09:53:14	2023-12-15 09:53:14	5
25583	Un projet du nom de Gestion PNR Issoufali a été crée par Alain	f	129	131	2023-12-15 09:53:14	2023-12-15 09:53:14	5
25584	Un projet du nom de Gestion PNR Issoufali a été crée par Alain	f	129	144	2023-12-15 09:53:14	2023-12-15 09:53:14	5
25585	Un projet du nom de Modification du site web  a été crée par PhidiaAdmin	f	127	130	2023-12-18 14:18:19	2023-12-18 14:18:19	5
25586	Un projet du nom de Modification du site web  a été crée par PhidiaAdmin	f	127	135	2023-12-18 14:18:19	2023-12-18 14:18:19	5
25587	Un projet du nom de Modification du site web  a été crée par PhidiaAdmin	f	127	136	2023-12-18 14:18:19	2023-12-18 14:18:19	5
25588	Un projet du nom de Modification du site web  a été crée par PhidiaAdmin	f	127	138	2023-12-18 14:18:19	2023-12-18 14:18:19	5
25589	Un projet du nom de Modification du site web  a été crée par PhidiaAdmin	f	127	145	2023-12-18 14:18:19	2023-12-18 14:18:19	5
25590	Un projet du nom de Modification du site web  a été crée par PhidiaAdmin	f	127	132	2023-12-18 14:18:19	2023-12-18 14:18:19	5
25591	Un projet du nom de Modification du site web  a été crée par PhidiaAdmin	f	127	131	2023-12-18 14:18:19	2023-12-18 14:18:19	5
25592	Un projet du nom de Modification du site web  a été crée par PhidiaAdmin	f	127	144	2023-12-18 14:18:19	2023-12-18 14:18:19	5
25593	Un projet du nom de Modification du site web  a été crée par PhidiaAdmin	f	127	129	2023-12-18 14:18:19	2023-12-18 14:18:19	5
25594	Tâche nouvellement créee du nom de Modification du design recherche avancé avec intégration de la fonctionnalité  par PhidiaAdmin dans le projet Modification du site web .	f	127	130	2023-12-18 14:30:53	2023-12-18 14:30:53	5
25595	Tâche nouvellement créee du nom de Modification du design recherche avancé avec intégration de la fonctionnalité  par PhidiaAdmin dans le projet Modification du site web .	f	127	135	2023-12-18 14:30:53	2023-12-18 14:30:53	5
25596	Tâche nouvellement créee du nom de Modification du design recherche avancé avec intégration de la fonctionnalité  par PhidiaAdmin dans le projet Modification du site web .	f	127	136	2023-12-18 14:30:53	2023-12-18 14:30:53	5
25597	Tâche nouvellement créee du nom de Modification du design recherche avancé avec intégration de la fonctionnalité  par PhidiaAdmin dans le projet Modification du site web .	f	127	138	2023-12-18 14:30:53	2023-12-18 14:30:53	5
25598	Tâche nouvellement créee du nom de Modification du design recherche avancé avec intégration de la fonctionnalité  par PhidiaAdmin dans le projet Modification du site web .	f	127	145	2023-12-18 14:30:53	2023-12-18 14:30:53	5
25599	Tâche nouvellement créee du nom de Modification du design recherche avancé avec intégration de la fonctionnalité  par PhidiaAdmin dans le projet Modification du site web .	f	127	132	2023-12-18 14:30:53	2023-12-18 14:30:53	5
25600	Tâche nouvellement créee du nom de Modification du design recherche avancé avec intégration de la fonctionnalité  par PhidiaAdmin dans le projet Modification du site web .	f	127	131	2023-12-18 14:30:53	2023-12-18 14:30:53	5
25601	Tâche nouvellement créee du nom de Modification du design recherche avancé avec intégration de la fonctionnalité  par PhidiaAdmin dans le projet Modification du site web .	f	127	144	2023-12-18 14:30:53	2023-12-18 14:30:53	5
25602	Tâche nouvellement créee du nom de Modification du design recherche avancé avec intégration de la fonctionnalité  par PhidiaAdmin dans le projet Modification du site web .	f	127	129	2023-12-18 14:30:53	2023-12-18 14:30:53	5
25603	Antonio a été assigné à la tâche Modification du design recherche avancé avec intégration de la fonctionnalité  dans le projet Modification du site web  par PhidiaAdmin	f	127	128	2023-12-18 11:30:53	2023-12-18 11:30:53	6
25604	Antonio a été assigné à la tâche Modification du design recherche avancé avec intégration de la fonctionnalité  dans le projet Modification du site web  par PhidiaAdmin	f	127	130	2023-12-18 14:30:53	2023-12-18 14:30:53	6
25605	Antonio a été assigné à la tâche Modification du design recherche avancé avec intégration de la fonctionnalité  dans le projet Modification du site web  par PhidiaAdmin	f	127	132	2023-12-18 14:30:53	2023-12-18 14:30:53	6
25654	Loïc a été assigné à la tâche Ajout du fonctionnalité archivage  dans le projet Modification du site web  par Hasina	f	131	127	2023-12-19 17:35:02	2023-12-19 17:35:02	6
26783	Un projet du nom de FOCICOM a été crée par Mathieu	f	138	127	2024-01-24 16:03:33	2024-01-24 16:03:33	5
25655	Loïc a été assigné à la tâche Ajout du fonctionnalité archivage  dans le projet Modification du site web  par Hasina	f	131	130	2023-12-19 17:35:02	2023-12-19 17:35:02	6
25656	Loïc a été assigné à la tâche Ajout du fonctionnalité archivage  dans le projet Modification du site web  par Hasina	f	131	132	2023-12-19 17:35:02	2023-12-19 17:35:02	6
25606	Tâche nouvellement créee du nom de Ajout de la fonctionnalité pour les recherches avancés  par PhidiaAdmin dans le projet Modification du site web .	f	127	130	2023-12-18 14:33:18	2023-12-18 14:33:18	5
25607	Tâche nouvellement créee du nom de Ajout de la fonctionnalité pour les recherches avancés  par PhidiaAdmin dans le projet Modification du site web .	f	127	135	2023-12-18 14:33:18	2023-12-18 14:33:18	5
25608	Tâche nouvellement créee du nom de Ajout de la fonctionnalité pour les recherches avancés  par PhidiaAdmin dans le projet Modification du site web .	f	127	136	2023-12-18 14:33:18	2023-12-18 14:33:18	5
25609	Tâche nouvellement créee du nom de Ajout de la fonctionnalité pour les recherches avancés  par PhidiaAdmin dans le projet Modification du site web .	f	127	138	2023-12-18 14:33:18	2023-12-18 14:33:18	5
25610	Tâche nouvellement créee du nom de Ajout de la fonctionnalité pour les recherches avancés  par PhidiaAdmin dans le projet Modification du site web .	f	127	145	2023-12-18 14:33:18	2023-12-18 14:33:18	5
25611	Tâche nouvellement créee du nom de Ajout de la fonctionnalité pour les recherches avancés  par PhidiaAdmin dans le projet Modification du site web .	f	127	132	2023-12-18 14:33:18	2023-12-18 14:33:18	5
25612	Tâche nouvellement créee du nom de Ajout de la fonctionnalité pour les recherches avancés  par PhidiaAdmin dans le projet Modification du site web .	f	127	131	2023-12-18 14:33:18	2023-12-18 14:33:18	5
25613	Tâche nouvellement créee du nom de Ajout de la fonctionnalité pour les recherches avancés  par PhidiaAdmin dans le projet Modification du site web .	f	127	144	2023-12-18 14:33:18	2023-12-18 14:33:18	5
25614	Tâche nouvellement créee du nom de Ajout de la fonctionnalité pour les recherches avancés  par PhidiaAdmin dans le projet Modification du site web .	f	127	129	2023-12-18 14:33:18	2023-12-18 14:33:18	5
25641	Antonio a été assigné à la tâche Modification du design recherche avancé avec intégration de la fonctionnalité dans le projet Modification du site web  par Hasina	f	131	127	2023-12-19 17:28:30	2023-12-19 17:28:30	6
25642	Antonio a été assigné à la tâche Modification du design recherche avancé avec intégration de la fonctionnalité dans le projet Modification du site web  par Hasina	f	131	130	2023-12-19 17:28:30	2023-12-19 17:28:30	6
25643	Antonio a été assigné à la tâche Modification du design recherche avancé avec intégration de la fonctionnalité dans le projet Modification du site web  par Hasina	f	131	132	2023-12-19 17:28:30	2023-12-19 17:28:30	6
25670	Tâche nouvellement créee du nom de Ajout d'un module default_account_receivable_payable par Hasina dans le projet QWEHLI v1 - Integration Odoo 16.	f	131	127	2023-12-19 17:38:09	2023-12-19 17:38:09	5
25671	Tâche nouvellement créee du nom de Ajout d'un module default_account_receivable_payable par Hasina dans le projet QWEHLI v1 - Integration Odoo 16.	f	131	130	2023-12-19 17:38:09	2023-12-19 17:38:09	5
25672	Tâche nouvellement créee du nom de Ajout d'un module default_account_receivable_payable par Hasina dans le projet QWEHLI v1 - Integration Odoo 16.	f	131	135	2023-12-19 17:38:09	2023-12-19 17:38:09	5
25673	Tâche nouvellement créee du nom de Ajout d'un module default_account_receivable_payable par Hasina dans le projet QWEHLI v1 - Integration Odoo 16.	f	131	136	2023-12-19 17:38:09	2023-12-19 17:38:09	5
25674	Tâche nouvellement créee du nom de Ajout d'un module default_account_receivable_payable par Hasina dans le projet QWEHLI v1 - Integration Odoo 16.	f	131	138	2023-12-19 17:38:09	2023-12-19 17:38:09	5
25675	Tâche nouvellement créee du nom de Ajout d'un module default_account_receivable_payable par Hasina dans le projet QWEHLI v1 - Integration Odoo 16.	f	131	145	2023-12-19 17:38:09	2023-12-19 17:38:09	5
25676	Tâche nouvellement créee du nom de Ajout d'un module default_account_receivable_payable par Hasina dans le projet QWEHLI v1 - Integration Odoo 16.	f	131	132	2023-12-19 17:38:09	2023-12-19 17:38:09	5
25677	Tâche nouvellement créee du nom de Ajout d'un module default_account_receivable_payable par Hasina dans le projet QWEHLI v1 - Integration Odoo 16.	f	131	144	2023-12-19 17:38:09	2023-12-19 17:38:09	5
25678	Tâche nouvellement créee du nom de Ajout d'un module default_account_receivable_payable par Hasina dans le projet QWEHLI v1 - Integration Odoo 16.	f	131	129	2023-12-19 17:38:09	2023-12-19 17:38:09	5
25616	Loïc a été assigné à la tâche Ajout de la fonctionnalité pour les recherches avancés  dans le projet Modification du site web  par PhidiaAdmin	f	127	130	2023-12-18 14:33:18	2023-12-18 14:33:18	6
25617	Loïc a été assigné à la tâche Ajout de la fonctionnalité pour les recherches avancés  dans le projet Modification du site web  par PhidiaAdmin	f	127	132	2023-12-18 14:33:18	2023-12-18 14:33:18	6
25618	Tâche nouvellement créee du nom de Ajout de la fonctionnalité pour les recherches avancés  par Hasina dans le projet Modification du site web .	f	131	127	2023-12-19 17:27:53	2023-12-19 17:27:53	5
25619	Tâche nouvellement créee du nom de Ajout de la fonctionnalité pour les recherches avancés  par Hasina dans le projet Modification du site web .	f	131	130	2023-12-19 17:27:53	2023-12-19 17:27:53	5
25620	Tâche nouvellement créee du nom de Ajout de la fonctionnalité pour les recherches avancés  par Hasina dans le projet Modification du site web .	f	131	135	2023-12-19 17:27:53	2023-12-19 17:27:53	5
25621	Tâche nouvellement créee du nom de Ajout de la fonctionnalité pour les recherches avancés  par Hasina dans le projet Modification du site web .	f	131	136	2023-12-19 17:27:53	2023-12-19 17:27:53	5
25622	Tâche nouvellement créee du nom de Ajout de la fonctionnalité pour les recherches avancés  par Hasina dans le projet Modification du site web .	f	131	138	2023-12-19 17:27:53	2023-12-19 17:27:53	5
25623	Tâche nouvellement créee du nom de Ajout de la fonctionnalité pour les recherches avancés  par Hasina dans le projet Modification du site web .	f	131	145	2023-12-19 17:27:53	2023-12-19 17:27:53	5
25624	Tâche nouvellement créee du nom de Ajout de la fonctionnalité pour les recherches avancés  par Hasina dans le projet Modification du site web .	f	131	132	2023-12-19 17:27:53	2023-12-19 17:27:53	5
25625	Tâche nouvellement créee du nom de Ajout de la fonctionnalité pour les recherches avancés  par Hasina dans le projet Modification du site web .	f	131	144	2023-12-19 17:27:53	2023-12-19 17:27:53	5
25626	Tâche nouvellement créee du nom de Ajout de la fonctionnalité pour les recherches avancés  par Hasina dans le projet Modification du site web .	f	131	129	2023-12-19 17:27:53	2023-12-19 17:27:53	5
25628	Loïc a été assigné à la tâche Ajout de la fonctionnalité pour les recherches avancés  dans le projet Modification du site web  par Hasina	f	131	127	2023-12-19 17:27:53	2023-12-19 17:27:53	6
25629	Loïc a été assigné à la tâche Ajout de la fonctionnalité pour les recherches avancés  dans le projet Modification du site web  par Hasina	f	131	130	2023-12-19 17:27:53	2023-12-19 17:27:53	6
25630	Loïc a été assigné à la tâche Ajout de la fonctionnalité pour les recherches avancés  dans le projet Modification du site web  par Hasina	f	131	132	2023-12-19 17:27:53	2023-12-19 17:27:53	6
25631	Tâche nouvellement créee du nom de Modification du design recherche avancé avec intégration de la fonctionnalité par Hasina dans le projet Modification du site web .	f	131	127	2023-12-19 17:28:30	2023-12-19 17:28:30	5
25632	Tâche nouvellement créee du nom de Modification du design recherche avancé avec intégration de la fonctionnalité par Hasina dans le projet Modification du site web .	f	131	130	2023-12-19 17:28:30	2023-12-19 17:28:30	5
25633	Tâche nouvellement créee du nom de Modification du design recherche avancé avec intégration de la fonctionnalité par Hasina dans le projet Modification du site web .	f	131	135	2023-12-19 17:28:30	2023-12-19 17:28:30	5
25634	Tâche nouvellement créee du nom de Modification du design recherche avancé avec intégration de la fonctionnalité par Hasina dans le projet Modification du site web .	f	131	136	2023-12-19 17:28:30	2023-12-19 17:28:30	5
25635	Tâche nouvellement créee du nom de Modification du design recherche avancé avec intégration de la fonctionnalité par Hasina dans le projet Modification du site web .	f	131	138	2023-12-19 17:28:30	2023-12-19 17:28:30	5
25636	Tâche nouvellement créee du nom de Modification du design recherche avancé avec intégration de la fonctionnalité par Hasina dans le projet Modification du site web .	f	131	145	2023-12-19 17:28:30	2023-12-19 17:28:30	5
25637	Tâche nouvellement créee du nom de Modification du design recherche avancé avec intégration de la fonctionnalité par Hasina dans le projet Modification du site web .	f	131	132	2023-12-19 17:28:30	2023-12-19 17:28:30	5
25638	Tâche nouvellement créee du nom de Modification du design recherche avancé avec intégration de la fonctionnalité par Hasina dans le projet Modification du site web .	f	131	144	2023-12-19 17:28:30	2023-12-19 17:28:30	5
25639	Tâche nouvellement créee du nom de Modification du design recherche avancé avec intégration de la fonctionnalité par Hasina dans le projet Modification du site web .	f	131	129	2023-12-19 17:28:30	2023-12-19 17:28:30	5
25640	Antonio a été assigné à la tâche Modification du design recherche avancé avec intégration de la fonctionnalité dans le projet Modification du site web  par Hasina	f	131	128	2023-12-19 14:28:30	2023-12-19 14:28:30	6
25644	Tâche nouvellement créee du nom de Ajout du fonctionnalité archivage  par Hasina dans le projet Modification du site web .	f	131	127	2023-12-19 17:35:02	2023-12-19 17:35:02	5
25645	Tâche nouvellement créee du nom de Ajout du fonctionnalité archivage  par Hasina dans le projet Modification du site web .	f	131	130	2023-12-19 17:35:02	2023-12-19 17:35:02	5
25646	Tâche nouvellement créee du nom de Ajout du fonctionnalité archivage  par Hasina dans le projet Modification du site web .	f	131	135	2023-12-19 17:35:02	2023-12-19 17:35:02	5
25647	Tâche nouvellement créee du nom de Ajout du fonctionnalité archivage  par Hasina dans le projet Modification du site web .	f	131	136	2023-12-19 17:35:02	2023-12-19 17:35:02	5
25648	Tâche nouvellement créee du nom de Ajout du fonctionnalité archivage  par Hasina dans le projet Modification du site web .	f	131	138	2023-12-19 17:35:02	2023-12-19 17:35:02	5
25649	Tâche nouvellement créee du nom de Ajout du fonctionnalité archivage  par Hasina dans le projet Modification du site web .	f	131	145	2023-12-19 17:35:02	2023-12-19 17:35:02	5
25650	Tâche nouvellement créee du nom de Ajout du fonctionnalité archivage  par Hasina dans le projet Modification du site web .	f	131	132	2023-12-19 17:35:02	2023-12-19 17:35:02	5
25651	Tâche nouvellement créee du nom de Ajout du fonctionnalité archivage  par Hasina dans le projet Modification du site web .	f	131	144	2023-12-19 17:35:02	2023-12-19 17:35:02	5
25652	Tâche nouvellement créee du nom de Ajout du fonctionnalité archivage  par Hasina dans le projet Modification du site web .	f	131	129	2023-12-19 17:35:02	2023-12-19 17:35:02	5
25657	Tâche nouvellement créee du nom de Design archivage par Hasina dans le projet Modification du site web .	f	131	127	2023-12-19 17:35:26	2023-12-19 17:35:26	5
25658	Tâche nouvellement créee du nom de Design archivage par Hasina dans le projet Modification du site web .	f	131	130	2023-12-19 17:35:26	2023-12-19 17:35:26	5
25659	Tâche nouvellement créee du nom de Design archivage par Hasina dans le projet Modification du site web .	f	131	135	2023-12-19 17:35:26	2023-12-19 17:35:26	5
25660	Tâche nouvellement créee du nom de Design archivage par Hasina dans le projet Modification du site web .	f	131	136	2023-12-19 17:35:26	2023-12-19 17:35:26	5
25661	Tâche nouvellement créee du nom de Design archivage par Hasina dans le projet Modification du site web .	f	131	138	2023-12-19 17:35:26	2023-12-19 17:35:26	5
25662	Tâche nouvellement créee du nom de Design archivage par Hasina dans le projet Modification du site web .	f	131	145	2023-12-19 17:35:26	2023-12-19 17:35:26	5
25663	Tâche nouvellement créee du nom de Design archivage par Hasina dans le projet Modification du site web .	f	131	132	2023-12-19 17:35:26	2023-12-19 17:35:26	5
25664	Tâche nouvellement créee du nom de Design archivage par Hasina dans le projet Modification du site web .	f	131	144	2023-12-19 17:35:26	2023-12-19 17:35:26	5
25665	Tâche nouvellement créee du nom de Design archivage par Hasina dans le projet Modification du site web .	f	131	129	2023-12-19 17:35:26	2023-12-19 17:35:26	5
25653	Loïc a été assigné à la tâche Ajout du fonctionnalité archivage  dans le projet Modification du site web  par Hasina	t	131	134	2023-12-19 14:35:02	2023-12-19 14:35:02	6
25666	Antonio a été assigné à la tâche Design archivage dans le projet Modification du site web  par Hasina	t	131	128	2023-12-19 14:35:26	2023-12-19 14:35:26	6
25668	Antonio a été assigné à la tâche Design archivage dans le projet Modification du site web  par Hasina	f	131	130	2023-12-19 17:35:26	2023-12-19 17:35:26	6
25669	Antonio a été assigné à la tâche Design archivage dans le projet Modification du site web  par Hasina	f	131	132	2023-12-19 17:35:26	2023-12-19 17:35:26	6
25679	Anja a été assigné à la tâche Ajout d'un module default_account_receivable_payable dans le projet QWEHLI v1 - Integration Odoo 16 par Hasina	f	131	133	2023-12-19 14:38:09	2023-12-19 14:38:09	6
25680	Anja a été assigné à la tâche Ajout d'un module default_account_receivable_payable dans le projet QWEHLI v1 - Integration Odoo 16 par Hasina	f	131	127	2023-12-19 17:38:09	2023-12-19 17:38:09	6
25681	Anja a été assigné à la tâche Ajout d'un module default_account_receivable_payable dans le projet QWEHLI v1 - Integration Odoo 16 par Hasina	f	131	130	2023-12-19 17:38:09	2023-12-19 17:38:09	6
25724	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	130	2024-01-09 14:42:08	2024-01-09 14:42:08	1
25682	Anja a été assigné à la tâche Ajout d'un module default_account_receivable_payable dans le projet QWEHLI v1 - Integration Odoo 16 par Hasina	f	131	132	2023-12-19 17:38:09	2023-12-19 17:38:09	6
24791	Loïc a été assigné à la tâche Correction du bug concernant les historiques des tâches  dans le projet Project monitoring  par Hasina	t	131	134	2023-11-06 13:31:21	2023-11-06 13:31:21	6
25615	Loïc a été assigné à la tâche Ajout de la fonctionnalité pour les recherches avancés  dans le projet Modification du site web  par PhidiaAdmin	t	127	134	2023-12-18 11:33:18	2023-12-18 11:33:18	6
25627	Loïc a été assigné à la tâche Ajout de la fonctionnalité pour les recherches avancés  dans le projet Modification du site web  par Hasina	t	131	134	2023-12-19 14:27:53	2023-12-19 14:27:53	6
25683	Le projet "Gestion PNR Issoufali" a été mise à jour par Alain	f	129	127	2024-01-09 14:40:00	2024-01-09 14:40:00	7
25684	Le projet "Gestion PNR Issoufali" a été mise à jour par Alain	f	129	130	2024-01-09 14:40:00	2024-01-09 14:40:00	7
25685	Le projet "Gestion PNR Issoufali" a été mise à jour par Alain	f	129	135	2024-01-09 14:40:00	2024-01-09 14:40:00	7
25686	Le projet "Gestion PNR Issoufali" a été mise à jour par Alain	f	129	136	2024-01-09 14:40:00	2024-01-09 14:40:00	7
25687	Le projet "Gestion PNR Issoufali" a été mise à jour par Alain	f	129	138	2024-01-09 14:40:00	2024-01-09 14:40:00	7
25688	Le projet "Gestion PNR Issoufali" a été mise à jour par Alain	f	129	145	2024-01-09 14:40:00	2024-01-09 14:40:00	7
25689	Le projet "Gestion PNR Issoufali" a été mise à jour par Alain	f	129	132	2024-01-09 14:40:00	2024-01-09 14:40:00	7
25690	Le projet "Gestion PNR Issoufali" a été mise à jour par Alain	f	129	131	2024-01-09 14:40:00	2024-01-09 14:40:00	7
25691	Le projet "Gestion PNR Issoufali" a été mise à jour par Alain	f	129	144	2024-01-09 14:40:00	2024-01-09 14:40:00	7
25692	Tâche nouvellement créee du nom de PNR à décommander par Alain dans le projet Gestion PNR Issoufali.	f	129	127	2024-01-09 14:41:14	2024-01-09 14:41:14	5
25693	Tâche nouvellement créee du nom de PNR à décommander par Alain dans le projet Gestion PNR Issoufali.	f	129	130	2024-01-09 14:41:14	2024-01-09 14:41:14	5
25694	Tâche nouvellement créee du nom de PNR à décommander par Alain dans le projet Gestion PNR Issoufali.	f	129	135	2024-01-09 14:41:14	2024-01-09 14:41:14	5
25695	Tâche nouvellement créee du nom de PNR à décommander par Alain dans le projet Gestion PNR Issoufali.	f	129	136	2024-01-09 14:41:14	2024-01-09 14:41:14	5
25696	Tâche nouvellement créee du nom de PNR à décommander par Alain dans le projet Gestion PNR Issoufali.	f	129	138	2024-01-09 14:41:14	2024-01-09 14:41:14	5
25697	Tâche nouvellement créee du nom de PNR à décommander par Alain dans le projet Gestion PNR Issoufali.	f	129	145	2024-01-09 14:41:14	2024-01-09 14:41:14	5
25698	Tâche nouvellement créee du nom de PNR à décommander par Alain dans le projet Gestion PNR Issoufali.	f	129	132	2024-01-09 14:41:14	2024-01-09 14:41:14	5
25699	Tâche nouvellement créee du nom de PNR à décommander par Alain dans le projet Gestion PNR Issoufali.	f	129	131	2024-01-09 14:41:14	2024-01-09 14:41:14	5
25700	Tâche nouvellement créee du nom de PNR à décommander par Alain dans le projet Gestion PNR Issoufali.	f	129	144	2024-01-09 14:41:14	2024-01-09 14:41:14	5
25702	Maphie a été assigné à la tâche PNR à décommander dans le projet Gestion PNR Issoufali par Alain	f	129	127	2024-01-09 14:41:16	2024-01-09 14:41:16	6
25703	Maphie a été assigné à la tâche PNR à décommander dans le projet Gestion PNR Issoufali par Alain	f	129	130	2024-01-09 14:41:16	2024-01-09 14:41:16	6
25704	Maphie a été assigné à la tâche PNR à décommander dans le projet Gestion PNR Issoufali par Alain	f	129	132	2024-01-09 14:41:16	2024-01-09 14:41:16	6
25705	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	127	2024-01-09 14:41:45	2024-01-09 14:41:45	1
25706	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	130	2024-01-09 14:41:45	2024-01-09 14:41:45	1
25707	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	135	2024-01-09 14:41:45	2024-01-09 14:41:45	1
25708	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	136	2024-01-09 14:41:45	2024-01-09 14:41:45	1
25709	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	138	2024-01-09 14:41:45	2024-01-09 14:41:45	1
25710	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	145	2024-01-09 14:41:45	2024-01-09 14:41:45	1
25711	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	132	2024-01-09 14:41:45	2024-01-09 14:41:45	1
25712	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	131	2024-01-09 14:41:45	2024-01-09 14:41:45	1
25713	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	144	2024-01-09 14:41:45	2024-01-09 14:41:45	1
25714	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	127	2024-01-09 14:42:03	2024-01-09 14:42:03	1
25715	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	130	2024-01-09 14:42:03	2024-01-09 14:42:03	1
25716	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	135	2024-01-09 14:42:03	2024-01-09 14:42:03	1
25717	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	136	2024-01-09 14:42:03	2024-01-09 14:42:03	1
25718	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	138	2024-01-09 14:42:03	2024-01-09 14:42:03	1
25719	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	145	2024-01-09 14:42:03	2024-01-09 14:42:03	1
25720	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	132	2024-01-09 14:42:03	2024-01-09 14:42:03	1
25721	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	131	2024-01-09 14:42:03	2024-01-09 14:42:03	1
25722	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	144	2024-01-09 14:42:03	2024-01-09 14:42:03	1
25723	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	127	2024-01-09 14:42:08	2024-01-09 14:42:08	1
26784	Un projet du nom de FOCICOM a été crée par Mathieu	f	138	135	2024-01-24 16:03:33	2024-01-24 16:03:33	5
25725	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	135	2024-01-09 14:42:08	2024-01-09 14:42:08	1
25726	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	136	2024-01-09 14:42:08	2024-01-09 14:42:08	1
25727	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	138	2024-01-09 14:42:08	2024-01-09 14:42:08	1
25728	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	145	2024-01-09 14:42:08	2024-01-09 14:42:08	1
25729	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	132	2024-01-09 14:42:08	2024-01-09 14:42:08	1
25730	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	131	2024-01-09 14:42:08	2024-01-09 14:42:08	1
25731	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	144	2024-01-09 14:42:08	2024-01-09 14:42:08	1
25732	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	127	2024-01-09 14:44:01	2024-01-09 14:44:01	1
25733	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	130	2024-01-09 14:44:01	2024-01-09 14:44:01	1
25734	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	135	2024-01-09 14:44:01	2024-01-09 14:44:01	1
25735	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	136	2024-01-09 14:44:01	2024-01-09 14:44:01	1
25736	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	138	2024-01-09 14:44:01	2024-01-09 14:44:01	1
25737	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	145	2024-01-09 14:44:01	2024-01-09 14:44:01	1
25738	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	132	2024-01-09 14:44:01	2024-01-09 14:44:01	1
25739	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	131	2024-01-09 14:44:01	2024-01-09 14:44:01	1
25740	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	144	2024-01-09 14:44:01	2024-01-09 14:44:01	1
25741	Tâche nouvellement créee du nom de Lister les pnr décommandés par Alain dans le projet Gestion PNR Issoufali.	f	129	127	2024-01-09 14:47:06	2024-01-09 14:47:06	5
25742	Tâche nouvellement créee du nom de Lister les pnr décommandés par Alain dans le projet Gestion PNR Issoufali.	f	129	130	2024-01-09 14:47:06	2024-01-09 14:47:06	5
25743	Tâche nouvellement créee du nom de Lister les pnr décommandés par Alain dans le projet Gestion PNR Issoufali.	f	129	135	2024-01-09 14:47:06	2024-01-09 14:47:06	5
25744	Tâche nouvellement créee du nom de Lister les pnr décommandés par Alain dans le projet Gestion PNR Issoufali.	f	129	136	2024-01-09 14:47:06	2024-01-09 14:47:06	5
25745	Tâche nouvellement créee du nom de Lister les pnr décommandés par Alain dans le projet Gestion PNR Issoufali.	f	129	138	2024-01-09 14:47:06	2024-01-09 14:47:06	5
25746	Tâche nouvellement créee du nom de Lister les pnr décommandés par Alain dans le projet Gestion PNR Issoufali.	f	129	145	2024-01-09 14:47:06	2024-01-09 14:47:06	5
25747	Tâche nouvellement créee du nom de Lister les pnr décommandés par Alain dans le projet Gestion PNR Issoufali.	f	129	132	2024-01-09 14:47:06	2024-01-09 14:47:06	5
25748	Tâche nouvellement créee du nom de Lister les pnr décommandés par Alain dans le projet Gestion PNR Issoufali.	f	129	131	2024-01-09 14:47:06	2024-01-09 14:47:06	5
25749	Tâche nouvellement créee du nom de Lister les pnr décommandés par Alain dans le projet Gestion PNR Issoufali.	f	129	144	2024-01-09 14:47:06	2024-01-09 14:47:06	5
25751	Maphie a été assigné à la tâche Lister les pnr décommandés dans le projet Gestion PNR Issoufali par Alain	f	129	127	2024-01-09 14:47:13	2024-01-09 14:47:13	6
25752	Maphie a été assigné à la tâche Lister les pnr décommandés dans le projet Gestion PNR Issoufali par Alain	f	129	130	2024-01-09 14:47:13	2024-01-09 14:47:13	6
25753	Maphie a été assigné à la tâche Lister les pnr décommandés dans le projet Gestion PNR Issoufali par Alain	f	129	132	2024-01-09 14:47:13	2024-01-09 14:47:13	6
25754	Tâche nouvellement créee du nom de Création d'un billet à partir de gestion PNR  par Alain dans le projet Gestion PNR Issoufali.	f	129	127	2024-01-09 14:51:54	2024-01-09 14:51:54	5
25755	Tâche nouvellement créee du nom de Création d'un billet à partir de gestion PNR  par Alain dans le projet Gestion PNR Issoufali.	f	129	130	2024-01-09 14:51:54	2024-01-09 14:51:54	5
25756	Tâche nouvellement créee du nom de Création d'un billet à partir de gestion PNR  par Alain dans le projet Gestion PNR Issoufali.	f	129	135	2024-01-09 14:51:54	2024-01-09 14:51:54	5
25757	Tâche nouvellement créee du nom de Création d'un billet à partir de gestion PNR  par Alain dans le projet Gestion PNR Issoufali.	f	129	136	2024-01-09 14:51:54	2024-01-09 14:51:54	5
25758	Tâche nouvellement créee du nom de Création d'un billet à partir de gestion PNR  par Alain dans le projet Gestion PNR Issoufali.	f	129	138	2024-01-09 14:51:54	2024-01-09 14:51:54	5
25759	Tâche nouvellement créee du nom de Création d'un billet à partir de gestion PNR  par Alain dans le projet Gestion PNR Issoufali.	f	129	145	2024-01-09 14:51:54	2024-01-09 14:51:54	5
25760	Tâche nouvellement créee du nom de Création d'un billet à partir de gestion PNR  par Alain dans le projet Gestion PNR Issoufali.	f	129	132	2024-01-09 14:51:54	2024-01-09 14:51:54	5
25761	Tâche nouvellement créee du nom de Création d'un billet à partir de gestion PNR  par Alain dans le projet Gestion PNR Issoufali.	f	129	131	2024-01-09 14:51:54	2024-01-09 14:51:54	5
25762	Tâche nouvellement créee du nom de Création d'un billet à partir de gestion PNR  par Alain dans le projet Gestion PNR Issoufali.	f	129	144	2024-01-09 14:51:54	2024-01-09 14:51:54	5
25764	Maphie a été assigné à la tâche Création d'un billet à partir de gestion PNR  dans le projet Gestion PNR Issoufali par Alain	f	129	127	2024-01-09 14:51:54	2024-01-09 14:51:54	6
25765	Maphie a été assigné à la tâche Création d'un billet à partir de gestion PNR  dans le projet Gestion PNR Issoufali par Alain	f	129	130	2024-01-09 14:51:54	2024-01-09 14:51:54	6
25766	Maphie a été assigné à la tâche Création d'un billet à partir de gestion PNR  dans le projet Gestion PNR Issoufali par Alain	f	129	132	2024-01-09 14:51:54	2024-01-09 14:51:54	6
26785	Un projet du nom de FOCICOM a été crée par Mathieu	f	138	132	2024-01-24 16:03:33	2024-01-24 16:03:33	5
25776	Maphie a été assigné à la tâche Ajouter une pagination pour les interfaces de la liste d'anomalies, clients et des utilisateur dans le projet Gestion PNR Issoufali par Alain	t	129	162	2024-01-09 11:53:22	2024-01-09 11:53:22	6
25767	Tâche nouvellement créee du nom de Ajouter une pagination pour les interfaces de la liste d'anomalies, clients et des utilisateur par Alain dans le projet Gestion PNR Issoufali.	f	129	127	2024-01-09 14:53:22	2024-01-09 14:53:22	5
25768	Tâche nouvellement créee du nom de Ajouter une pagination pour les interfaces de la liste d'anomalies, clients et des utilisateur par Alain dans le projet Gestion PNR Issoufali.	f	129	130	2024-01-09 14:53:22	2024-01-09 14:53:22	5
25769	Tâche nouvellement créee du nom de Ajouter une pagination pour les interfaces de la liste d'anomalies, clients et des utilisateur par Alain dans le projet Gestion PNR Issoufali.	f	129	135	2024-01-09 14:53:22	2024-01-09 14:53:22	5
25770	Tâche nouvellement créee du nom de Ajouter une pagination pour les interfaces de la liste d'anomalies, clients et des utilisateur par Alain dans le projet Gestion PNR Issoufali.	f	129	136	2024-01-09 14:53:22	2024-01-09 14:53:22	5
25771	Tâche nouvellement créee du nom de Ajouter une pagination pour les interfaces de la liste d'anomalies, clients et des utilisateur par Alain dans le projet Gestion PNR Issoufali.	f	129	138	2024-01-09 14:53:22	2024-01-09 14:53:22	5
25772	Tâche nouvellement créee du nom de Ajouter une pagination pour les interfaces de la liste d'anomalies, clients et des utilisateur par Alain dans le projet Gestion PNR Issoufali.	f	129	145	2024-01-09 14:53:22	2024-01-09 14:53:22	5
25773	Tâche nouvellement créee du nom de Ajouter une pagination pour les interfaces de la liste d'anomalies, clients et des utilisateur par Alain dans le projet Gestion PNR Issoufali.	f	129	132	2024-01-09 14:53:22	2024-01-09 14:53:22	5
25774	Tâche nouvellement créee du nom de Ajouter une pagination pour les interfaces de la liste d'anomalies, clients et des utilisateur par Alain dans le projet Gestion PNR Issoufali.	f	129	131	2024-01-09 14:53:22	2024-01-09 14:53:22	5
25775	Tâche nouvellement créee du nom de Ajouter une pagination pour les interfaces de la liste d'anomalies, clients et des utilisateur par Alain dans le projet Gestion PNR Issoufali.	f	129	144	2024-01-09 14:53:22	2024-01-09 14:53:22	5
25780	Tâche nouvellement créee du nom de Ajouter une champ permettant d'ajouter le numéro d'EMD pour l'AVOIR COMPAGNIE par Alain dans le projet Gestion PNR Issoufali.	f	129	127	2024-01-09 14:54:36	2024-01-09 14:54:36	5
25781	Tâche nouvellement créee du nom de Ajouter une champ permettant d'ajouter le numéro d'EMD pour l'AVOIR COMPAGNIE par Alain dans le projet Gestion PNR Issoufali.	f	129	130	2024-01-09 14:54:36	2024-01-09 14:54:36	5
25782	Tâche nouvellement créee du nom de Ajouter une champ permettant d'ajouter le numéro d'EMD pour l'AVOIR COMPAGNIE par Alain dans le projet Gestion PNR Issoufali.	f	129	135	2024-01-09 14:54:36	2024-01-09 14:54:36	5
25783	Tâche nouvellement créee du nom de Ajouter une champ permettant d'ajouter le numéro d'EMD pour l'AVOIR COMPAGNIE par Alain dans le projet Gestion PNR Issoufali.	f	129	136	2024-01-09 14:54:36	2024-01-09 14:54:36	5
25784	Tâche nouvellement créee du nom de Ajouter une champ permettant d'ajouter le numéro d'EMD pour l'AVOIR COMPAGNIE par Alain dans le projet Gestion PNR Issoufali.	f	129	138	2024-01-09 14:54:36	2024-01-09 14:54:36	5
25785	Tâche nouvellement créee du nom de Ajouter une champ permettant d'ajouter le numéro d'EMD pour l'AVOIR COMPAGNIE par Alain dans le projet Gestion PNR Issoufali.	f	129	145	2024-01-09 14:54:36	2024-01-09 14:54:36	5
25786	Tâche nouvellement créee du nom de Ajouter une champ permettant d'ajouter le numéro d'EMD pour l'AVOIR COMPAGNIE par Alain dans le projet Gestion PNR Issoufali.	f	129	132	2024-01-09 14:54:36	2024-01-09 14:54:36	5
25787	Tâche nouvellement créee du nom de Ajouter une champ permettant d'ajouter le numéro d'EMD pour l'AVOIR COMPAGNIE par Alain dans le projet Gestion PNR Issoufali.	f	129	131	2024-01-09 14:54:36	2024-01-09 14:54:36	5
25788	Tâche nouvellement créee du nom de Ajouter une champ permettant d'ajouter le numéro d'EMD pour l'AVOIR COMPAGNIE par Alain dans le projet Gestion PNR Issoufali.	f	129	144	2024-01-09 14:54:36	2024-01-09 14:54:36	5
25824	Maphie a été assigné à la tâche Remonter les pénalités provenant du reçu dossier (ZENITH) dans le projet Gestion PNR Issoufali par Alain	t	129	162	2024-01-09 12:02:08	2024-01-09 12:02:08	6
25777	Maphie a été assigné à la tâche Ajouter une pagination pour les interfaces de la liste d'anomalies, clients et des utilisateur dans le projet Gestion PNR Issoufali par Alain	f	129	127	2024-01-09 14:53:23	2024-01-09 14:53:23	6
25778	Maphie a été assigné à la tâche Ajouter une pagination pour les interfaces de la liste d'anomalies, clients et des utilisateur dans le projet Gestion PNR Issoufali par Alain	f	129	130	2024-01-09 14:53:23	2024-01-09 14:53:23	6
25779	Maphie a été assigné à la tâche Ajouter une pagination pour les interfaces de la liste d'anomalies, clients et des utilisateur dans le projet Gestion PNR Issoufali par Alain	f	129	132	2024-01-09 14:53:23	2024-01-09 14:53:23	6
25815	Tâche nouvellement créee du nom de Remonter les pénalités provenant du reçu dossier (ZENITH) par Alain dans le projet Gestion PNR Issoufali.	f	129	127	2024-01-09 15:02:08	2024-01-09 15:02:08	5
25816	Tâche nouvellement créee du nom de Remonter les pénalités provenant du reçu dossier (ZENITH) par Alain dans le projet Gestion PNR Issoufali.	f	129	130	2024-01-09 15:02:08	2024-01-09 15:02:08	5
25817	Tâche nouvellement créee du nom de Remonter les pénalités provenant du reçu dossier (ZENITH) par Alain dans le projet Gestion PNR Issoufali.	f	129	135	2024-01-09 15:02:08	2024-01-09 15:02:08	5
25818	Tâche nouvellement créee du nom de Remonter les pénalités provenant du reçu dossier (ZENITH) par Alain dans le projet Gestion PNR Issoufali.	f	129	136	2024-01-09 15:02:08	2024-01-09 15:02:08	5
25819	Tâche nouvellement créee du nom de Remonter les pénalités provenant du reçu dossier (ZENITH) par Alain dans le projet Gestion PNR Issoufali.	f	129	138	2024-01-09 15:02:08	2024-01-09 15:02:08	5
25820	Tâche nouvellement créee du nom de Remonter les pénalités provenant du reçu dossier (ZENITH) par Alain dans le projet Gestion PNR Issoufali.	f	129	145	2024-01-09 15:02:08	2024-01-09 15:02:08	5
25821	Tâche nouvellement créee du nom de Remonter les pénalités provenant du reçu dossier (ZENITH) par Alain dans le projet Gestion PNR Issoufali.	f	129	132	2024-01-09 15:02:08	2024-01-09 15:02:08	5
25822	Tâche nouvellement créee du nom de Remonter les pénalités provenant du reçu dossier (ZENITH) par Alain dans le projet Gestion PNR Issoufali.	f	129	131	2024-01-09 15:02:08	2024-01-09 15:02:08	5
25823	Tâche nouvellement créee du nom de Remonter les pénalités provenant du reçu dossier (ZENITH) par Alain dans le projet Gestion PNR Issoufali.	f	129	144	2024-01-09 15:02:08	2024-01-09 15:02:08	5
25812	Maphie a été assigné à la tâche Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus dans le projet Gestion PNR Issoufali par Alain	f	129	127	2024-01-09 15:00:31	2024-01-09 15:00:31	6
25813	Maphie a été assigné à la tâche Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus dans le projet Gestion PNR Issoufali par Alain	f	129	130	2024-01-09 15:00:31	2024-01-09 15:00:31	6
25814	Maphie a été assigné à la tâche Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus dans le projet Gestion PNR Issoufali par Alain	f	129	132	2024-01-09 15:00:31	2024-01-09 15:00:31	6
25789	Maphie a été assigné à la tâche Ajouter une champ permettant d'ajouter le numéro d'EMD pour l'AVOIR COMPAGNIE dans le projet Gestion PNR Issoufali par Alain	t	129	162	2024-01-09 11:54:36	2024-01-09 11:54:36	6
25790	Maphie a été assigné à la tâche Ajouter une champ permettant d'ajouter le numéro d'EMD pour l'AVOIR COMPAGNIE dans le projet Gestion PNR Issoufali par Alain	f	129	127	2024-01-09 14:54:37	2024-01-09 14:54:37	6
25791	Maphie a été assigné à la tâche Ajouter une champ permettant d'ajouter le numéro d'EMD pour l'AVOIR COMPAGNIE dans le projet Gestion PNR Issoufali par Alain	f	129	130	2024-01-09 14:54:37	2024-01-09 14:54:37	6
25792	Maphie a été assigné à la tâche Ajouter une champ permettant d'ajouter le numéro d'EMD pour l'AVOIR COMPAGNIE dans le projet Gestion PNR Issoufali par Alain	f	129	132	2024-01-09 14:54:37	2024-01-09 14:54:37	6
25802	Tâche nouvellement créee du nom de Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus par Alain dans le projet Gestion PNR Issoufali.	f	129	127	2024-01-09 15:00:30	2024-01-09 15:00:30	5
25803	Tâche nouvellement créee du nom de Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus par Alain dans le projet Gestion PNR Issoufali.	f	129	130	2024-01-09 15:00:30	2024-01-09 15:00:30	5
25804	Tâche nouvellement créee du nom de Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus par Alain dans le projet Gestion PNR Issoufali.	f	129	135	2024-01-09 15:00:30	2024-01-09 15:00:30	5
25805	Tâche nouvellement créee du nom de Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus par Alain dans le projet Gestion PNR Issoufali.	f	129	136	2024-01-09 15:00:30	2024-01-09 15:00:30	5
25806	Tâche nouvellement créee du nom de Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus par Alain dans le projet Gestion PNR Issoufali.	f	129	138	2024-01-09 15:00:30	2024-01-09 15:00:30	5
25807	Tâche nouvellement créee du nom de Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus par Alain dans le projet Gestion PNR Issoufali.	f	129	145	2024-01-09 15:00:30	2024-01-09 15:00:30	5
25808	Tâche nouvellement créee du nom de Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus par Alain dans le projet Gestion PNR Issoufali.	f	129	132	2024-01-09 15:00:30	2024-01-09 15:00:30	5
25809	Tâche nouvellement créee du nom de Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus par Alain dans le projet Gestion PNR Issoufali.	f	129	131	2024-01-09 15:00:30	2024-01-09 15:00:30	5
25810	Tâche nouvellement créee du nom de Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus par Alain dans le projet Gestion PNR Issoufali.	f	129	144	2024-01-09 15:00:30	2024-01-09 15:00:30	5
25793	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	127	2024-01-09 14:55:17	2024-01-09 14:55:17	1
25794	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	130	2024-01-09 14:55:17	2024-01-09 14:55:17	1
25795	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	135	2024-01-09 14:55:17	2024-01-09 14:55:17	1
25796	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	136	2024-01-09 14:55:17	2024-01-09 14:55:17	1
25797	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	138	2024-01-09 14:55:17	2024-01-09 14:55:17	1
25798	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	145	2024-01-09 14:55:17	2024-01-09 14:55:17	1
25799	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	132	2024-01-09 14:55:17	2024-01-09 14:55:17	1
25800	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	131	2024-01-09 14:55:17	2024-01-09 14:55:17	1
25801	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	144	2024-01-09 14:55:17	2024-01-09 14:55:17	1
25811	Maphie a été assigné à la tâche Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus dans le projet Gestion PNR Issoufali par Alain	t	129	162	2024-01-09 12:00:31	2024-01-09 12:00:31	6
25825	Maphie a été assigné à la tâche Remonter les pénalités provenant du reçu dossier (ZENITH) dans le projet Gestion PNR Issoufali par Alain	f	129	127	2024-01-09 15:02:08	2024-01-09 15:02:08	6
25826	Maphie a été assigné à la tâche Remonter les pénalités provenant du reçu dossier (ZENITH) dans le projet Gestion PNR Issoufali par Alain	f	129	130	2024-01-09 15:02:08	2024-01-09 15:02:08	6
25827	Maphie a été assigné à la tâche Remonter les pénalités provenant du reçu dossier (ZENITH) dans le projet Gestion PNR Issoufali par Alain	f	129	132	2024-01-09 15:02:08	2024-01-09 15:02:08	6
25828	Tâche "Design archivage"\n          du projet Modification du site web  mise dans " En cours " par Antonio	f	128	127	2024-01-09 16:56:02	2024-01-09 16:56:02	1
25829	Tâche "Design archivage"\n          du projet Modification du site web  mise dans " En cours " par Antonio	f	128	130	2024-01-09 16:56:02	2024-01-09 16:56:02	1
25830	Tâche "Design archivage"\n          du projet Modification du site web  mise dans " En cours " par Antonio	f	128	135	2024-01-09 16:56:02	2024-01-09 16:56:02	1
25831	Tâche "Design archivage"\n          du projet Modification du site web  mise dans " En cours " par Antonio	f	128	136	2024-01-09 16:56:02	2024-01-09 16:56:02	1
25832	Tâche "Design archivage"\n          du projet Modification du site web  mise dans " En cours " par Antonio	f	128	138	2024-01-09 16:56:02	2024-01-09 16:56:02	1
25833	Tâche "Design archivage"\n          du projet Modification du site web  mise dans " En cours " par Antonio	f	128	145	2024-01-09 16:56:02	2024-01-09 16:56:02	1
25834	Tâche "Design archivage"\n          du projet Modification du site web  mise dans " En cours " par Antonio	f	128	132	2024-01-09 16:56:02	2024-01-09 16:56:02	1
25835	Tâche "Design archivage"\n          du projet Modification du site web  mise dans " En cours " par Antonio	f	128	131	2024-01-09 16:56:02	2024-01-09 16:56:02	1
25836	Tâche "Design archivage"\n          du projet Modification du site web  mise dans " En cours " par Antonio	f	128	129	2024-01-09 16:56:02	2024-01-09 16:56:02	1
25837	Tâche "Design archivage"\n          du projet Modification du site web  mise dans " En cours " par Antonio	f	128	144	2024-01-09 16:56:02	2024-01-09 16:56:02	1
25838	Tâche "Design archivage"\n          du projet Modification du site web  mise dans " En cours " par Antonio	f	128	127	2024-01-09 16:57:17	2024-01-09 16:57:17	1
25839	Tâche "Design archivage"\n          du projet Modification du site web  mise dans " En cours " par Antonio	f	128	130	2024-01-09 16:57:17	2024-01-09 16:57:17	1
25840	Tâche "Design archivage"\n          du projet Modification du site web  mise dans " En cours " par Antonio	f	128	135	2024-01-09 16:57:17	2024-01-09 16:57:17	1
25841	Tâche "Design archivage"\n          du projet Modification du site web  mise dans " En cours " par Antonio	f	128	136	2024-01-09 16:57:17	2024-01-09 16:57:17	1
25842	Tâche "Design archivage"\n          du projet Modification du site web  mise dans " En cours " par Antonio	f	128	138	2024-01-09 16:57:17	2024-01-09 16:57:17	1
25843	Tâche "Design archivage"\n          du projet Modification du site web  mise dans " En cours " par Antonio	f	128	145	2024-01-09 16:57:17	2024-01-09 16:57:17	1
25844	Tâche "Design archivage"\n          du projet Modification du site web  mise dans " En cours " par Antonio	f	128	132	2024-01-09 16:57:17	2024-01-09 16:57:17	1
25845	Tâche "Design archivage"\n          du projet Modification du site web  mise dans " En cours " par Antonio	f	128	131	2024-01-09 16:57:17	2024-01-09 16:57:17	1
25846	Tâche "Design archivage"\n          du projet Modification du site web  mise dans " En cours " par Antonio	f	128	129	2024-01-09 16:57:17	2024-01-09 16:57:17	1
25847	Tâche "Design archivage"\n          du projet Modification du site web  mise dans " En cours " par Antonio	f	128	144	2024-01-09 16:57:17	2024-01-09 16:57:17	1
25848	Tâche nouvellement créee du nom de qlm : correction header  par Antonio dans le projet Modification du site web .	f	128	127	2024-01-10 09:05:07	2024-01-10 09:05:07	5
25849	Tâche nouvellement créee du nom de qlm : correction header  par Antonio dans le projet Modification du site web .	f	128	130	2024-01-10 09:05:07	2024-01-10 09:05:07	5
25850	Tâche nouvellement créee du nom de qlm : correction header  par Antonio dans le projet Modification du site web .	f	128	135	2024-01-10 09:05:07	2024-01-10 09:05:07	5
25851	Tâche nouvellement créee du nom de qlm : correction header  par Antonio dans le projet Modification du site web .	f	128	136	2024-01-10 09:05:07	2024-01-10 09:05:07	5
25852	Tâche nouvellement créee du nom de qlm : correction header  par Antonio dans le projet Modification du site web .	f	128	138	2024-01-10 09:05:07	2024-01-10 09:05:07	5
25853	Tâche nouvellement créee du nom de qlm : correction header  par Antonio dans le projet Modification du site web .	f	128	132	2024-01-10 09:05:07	2024-01-10 09:05:07	5
25854	Tâche nouvellement créee du nom de qlm : correction header  par Antonio dans le projet Modification du site web .	f	128	131	2024-01-10 09:05:07	2024-01-10 09:05:07	5
25855	Tâche nouvellement créee du nom de qlm : correction header  par Antonio dans le projet Modification du site web .	f	128	129	2024-01-10 09:05:07	2024-01-10 09:05:07	5
25856	Tâche nouvellement créee du nom de qlm : correction header  par Antonio dans le projet Modification du site web .	f	128	144	2024-01-10 09:05:07	2024-01-10 09:05:07	5
25857	Tâche nouvellement créee du nom de qlm : correction header  par Antonio dans le projet Modification du site web .	f	128	145	2024-01-10 09:05:07	2024-01-10 09:05:07	5
25859	Antonio a été assigné à la tâche qlm : correction header  dans le projet Modification du site web  par Antonio	f	128	127	2024-01-10 09:05:07	2024-01-10 09:05:07	6
25860	Antonio a été assigné à la tâche qlm : correction header  dans le projet Modification du site web  par Antonio	f	128	130	2024-01-10 09:05:07	2024-01-10 09:05:07	6
25861	Antonio a été assigné à la tâche qlm : correction header  dans le projet Modification du site web  par Antonio	f	128	132	2024-01-10 09:05:07	2024-01-10 09:05:07	6
25862	Tâche nouvellement créee du nom de Formation utilisateur par Loïc dans le projet Modification du site web .	f	134	127	2024-01-10 09:06:50	2024-01-10 09:06:50	5
25863	Tâche nouvellement créee du nom de Formation utilisateur par Loïc dans le projet Modification du site web .	f	134	130	2024-01-10 09:06:50	2024-01-10 09:06:50	5
25864	Tâche nouvellement créee du nom de Formation utilisateur par Loïc dans le projet Modification du site web .	f	134	135	2024-01-10 09:06:50	2024-01-10 09:06:50	5
25865	Tâche nouvellement créee du nom de Formation utilisateur par Loïc dans le projet Modification du site web .	f	134	136	2024-01-10 09:06:50	2024-01-10 09:06:50	5
25866	Tâche nouvellement créee du nom de Formation utilisateur par Loïc dans le projet Modification du site web .	f	134	138	2024-01-10 09:06:50	2024-01-10 09:06:50	5
25867	Tâche nouvellement créee du nom de Formation utilisateur par Loïc dans le projet Modification du site web .	f	134	132	2024-01-10 09:06:50	2024-01-10 09:06:50	5
25868	Tâche nouvellement créee du nom de Formation utilisateur par Loïc dans le projet Modification du site web .	f	134	131	2024-01-10 09:06:50	2024-01-10 09:06:50	5
25869	Tâche nouvellement créee du nom de Formation utilisateur par Loïc dans le projet Modification du site web .	f	134	129	2024-01-10 09:06:50	2024-01-10 09:06:50	5
25870	Tâche nouvellement créee du nom de Formation utilisateur par Loïc dans le projet Modification du site web .	f	134	144	2024-01-10 09:06:50	2024-01-10 09:06:50	5
25871	Tâche nouvellement créee du nom de Formation utilisateur par Loïc dans le projet Modification du site web .	f	134	145	2024-01-10 09:06:50	2024-01-10 09:06:50	5
25873	Loïc a été assigné à la tâche Formation utilisateur dans le projet Modification du site web  par Loïc	f	134	127	2024-01-10 09:06:50	2024-01-10 09:06:50	6
25874	Loïc a été assigné à la tâche Formation utilisateur dans le projet Modification du site web  par Loïc	f	134	130	2024-01-10 09:06:50	2024-01-10 09:06:50	6
25875	Loïc a été assigné à la tâche Formation utilisateur dans le projet Modification du site web  par Loïc	f	134	132	2024-01-10 09:06:50	2024-01-10 09:06:50	6
25876	Tâche nouvellement créee du nom de qlm : correction page produit  par Antonio dans le projet Modification du site web .	f	128	127	2024-01-10 09:07:43	2024-01-10 09:07:43	5
25877	Tâche nouvellement créee du nom de qlm : correction page produit  par Antonio dans le projet Modification du site web .	f	128	130	2024-01-10 09:07:43	2024-01-10 09:07:43	5
25878	Tâche nouvellement créee du nom de qlm : correction page produit  par Antonio dans le projet Modification du site web .	f	128	135	2024-01-10 09:07:43	2024-01-10 09:07:43	5
25879	Tâche nouvellement créee du nom de qlm : correction page produit  par Antonio dans le projet Modification du site web .	f	128	136	2024-01-10 09:07:43	2024-01-10 09:07:43	5
25880	Tâche nouvellement créee du nom de qlm : correction page produit  par Antonio dans le projet Modification du site web .	f	128	138	2024-01-10 09:07:43	2024-01-10 09:07:43	5
25881	Tâche nouvellement créee du nom de qlm : correction page produit  par Antonio dans le projet Modification du site web .	f	128	132	2024-01-10 09:07:43	2024-01-10 09:07:43	5
25882	Tâche nouvellement créee du nom de qlm : correction page produit  par Antonio dans le projet Modification du site web .	f	128	131	2024-01-10 09:07:43	2024-01-10 09:07:43	5
25883	Tâche nouvellement créee du nom de qlm : correction page produit  par Antonio dans le projet Modification du site web .	f	128	129	2024-01-10 09:07:43	2024-01-10 09:07:43	5
25884	Tâche nouvellement créee du nom de qlm : correction page produit  par Antonio dans le projet Modification du site web .	f	128	144	2024-01-10 09:07:43	2024-01-10 09:07:43	5
25885	Tâche nouvellement créee du nom de qlm : correction page produit  par Antonio dans le projet Modification du site web .	f	128	145	2024-01-10 09:07:43	2024-01-10 09:07:43	5
25904	Tâche "Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	127	2024-01-10 09:27:38	2024-01-10 09:27:38	1
25905	Tâche "Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	130	2024-01-10 09:27:38	2024-01-10 09:27:38	1
25906	Tâche "Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	135	2024-01-10 09:27:38	2024-01-10 09:27:38	1
25907	Tâche "Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	136	2024-01-10 09:27:38	2024-01-10 09:27:38	1
25908	Tâche "Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	138	2024-01-10 09:27:38	2024-01-10 09:27:38	1
25909	Tâche "Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	132	2024-01-10 09:27:38	2024-01-10 09:27:38	1
25910	Tâche "Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	131	2024-01-10 09:27:38	2024-01-10 09:27:38	1
25911	Tâche "Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	144	2024-01-10 09:27:38	2024-01-10 09:27:38	1
25912	Tâche "Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	145	2024-01-10 09:27:38	2024-01-10 09:27:38	1
25913	Tâche "Lister les pnr décommandés"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	127	2024-01-10 09:27:45	2024-01-10 09:27:45	1
25914	Tâche "Lister les pnr décommandés"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	130	2024-01-10 09:27:45	2024-01-10 09:27:45	1
25915	Tâche "Lister les pnr décommandés"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	135	2024-01-10 09:27:45	2024-01-10 09:27:45	1
25916	Tâche "Lister les pnr décommandés"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	136	2024-01-10 09:27:45	2024-01-10 09:27:45	1
25917	Tâche "Lister les pnr décommandés"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	138	2024-01-10 09:27:45	2024-01-10 09:27:45	1
25918	Tâche "Lister les pnr décommandés"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	132	2024-01-10 09:27:45	2024-01-10 09:27:45	1
25919	Tâche "Lister les pnr décommandés"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	131	2024-01-10 09:27:45	2024-01-10 09:27:45	1
25920	Tâche "Lister les pnr décommandés"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	144	2024-01-10 09:27:45	2024-01-10 09:27:45	1
25887	Antonio a été assigné à la tâche qlm : correction page produit  dans le projet Modification du site web  par Antonio	f	128	127	2024-01-10 09:07:43	2024-01-10 09:07:43	6
25888	Antonio a été assigné à la tâche qlm : correction page produit  dans le projet Modification du site web  par Antonio	f	128	130	2024-01-10 09:07:43	2024-01-10 09:07:43	6
25889	Antonio a été assigné à la tâche qlm : correction page produit  dans le projet Modification du site web  par Antonio	f	128	132	2024-01-10 09:07:43	2024-01-10 09:07:43	6
25890	Tâche nouvellement créee du nom de Amélioration et correction des fonctions de recherche  par Antonio dans le projet Project monitoring .	f	128	127	2024-01-10 09:10:18	2024-01-10 09:10:18	5
25891	Tâche nouvellement créee du nom de Amélioration et correction des fonctions de recherche  par Antonio dans le projet Project monitoring .	f	128	130	2024-01-10 09:10:18	2024-01-10 09:10:18	5
25892	Tâche nouvellement créee du nom de Amélioration et correction des fonctions de recherche  par Antonio dans le projet Project monitoring .	f	128	135	2024-01-10 09:10:18	2024-01-10 09:10:18	5
25893	Tâche nouvellement créee du nom de Amélioration et correction des fonctions de recherche  par Antonio dans le projet Project monitoring .	f	128	136	2024-01-10 09:10:18	2024-01-10 09:10:18	5
25894	Tâche nouvellement créee du nom de Amélioration et correction des fonctions de recherche  par Antonio dans le projet Project monitoring .	f	128	138	2024-01-10 09:10:18	2024-01-10 09:10:18	5
25895	Tâche nouvellement créee du nom de Amélioration et correction des fonctions de recherche  par Antonio dans le projet Project monitoring .	f	128	132	2024-01-10 09:10:18	2024-01-10 09:10:18	5
25896	Tâche nouvellement créee du nom de Amélioration et correction des fonctions de recherche  par Antonio dans le projet Project monitoring .	f	128	131	2024-01-10 09:10:18	2024-01-10 09:10:18	5
25897	Tâche nouvellement créee du nom de Amélioration et correction des fonctions de recherche  par Antonio dans le projet Project monitoring .	f	128	129	2024-01-10 09:10:18	2024-01-10 09:10:18	5
25898	Tâche nouvellement créee du nom de Amélioration et correction des fonctions de recherche  par Antonio dans le projet Project monitoring .	f	128	144	2024-01-10 09:10:18	2024-01-10 09:10:18	5
25899	Tâche nouvellement créee du nom de Amélioration et correction des fonctions de recherche  par Antonio dans le projet Project monitoring .	f	128	145	2024-01-10 09:10:18	2024-01-10 09:10:18	5
25901	Antonio a été assigné à la tâche Amélioration et correction des fonctions de recherche  dans le projet Project monitoring  par Antonio	f	128	127	2024-01-10 09:10:18	2024-01-10 09:10:18	6
25902	Antonio a été assigné à la tâche Amélioration et correction des fonctions de recherche  dans le projet Project monitoring  par Antonio	f	128	130	2024-01-10 09:10:18	2024-01-10 09:10:18	6
25903	Antonio a été assigné à la tâche Amélioration et correction des fonctions de recherche  dans le projet Project monitoring  par Antonio	f	128	132	2024-01-10 09:10:18	2024-01-10 09:10:18	6
25921	Tâche "Lister les pnr décommandés"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	145	2024-01-10 09:27:45	2024-01-10 09:27:45	1
25922	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	127	2024-01-10 09:27:49	2024-01-10 09:27:49	1
25923	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	130	2024-01-10 09:27:49	2024-01-10 09:27:49	1
25924	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	135	2024-01-10 09:27:49	2024-01-10 09:27:49	1
25925	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	136	2024-01-10 09:27:49	2024-01-10 09:27:49	1
25926	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	138	2024-01-10 09:27:49	2024-01-10 09:27:49	1
25927	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	132	2024-01-10 09:27:49	2024-01-10 09:27:49	1
25928	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	131	2024-01-10 09:27:49	2024-01-10 09:27:49	1
25929	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	144	2024-01-10 09:27:49	2024-01-10 09:27:49	1
25930	Tâche "PNR à décommander"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	145	2024-01-10 09:27:49	2024-01-10 09:27:49	1
25931	Tâche "Ajout du fonctionnalité archivage "\n          du projet Modification du site web  mise dans " En blocage " par Tahina	f	132	127	2024-01-10 10:46:24	2024-01-10 10:46:24	1
25932	Tâche "Ajout du fonctionnalité archivage "\n          du projet Modification du site web  mise dans " En blocage " par Tahina	f	132	130	2024-01-10 10:46:24	2024-01-10 10:46:24	1
25933	Tâche "Ajout du fonctionnalité archivage "\n          du projet Modification du site web  mise dans " En blocage " par Tahina	f	132	135	2024-01-10 10:46:24	2024-01-10 10:46:24	1
25934	Tâche "Ajout du fonctionnalité archivage "\n          du projet Modification du site web  mise dans " En blocage " par Tahina	f	132	138	2024-01-10 10:46:24	2024-01-10 10:46:24	1
25935	Tâche "Ajout du fonctionnalité archivage "\n          du projet Modification du site web  mise dans " En blocage " par Tahina	f	132	131	2024-01-10 10:46:24	2024-01-10 10:46:24	1
25936	Tâche "Ajout du fonctionnalité archivage "\n          du projet Modification du site web  mise dans " En blocage " par Tahina	f	132	129	2024-01-10 10:46:24	2024-01-10 10:46:24	1
25937	Tâche "Ajout du fonctionnalité archivage "\n          du projet Modification du site web  mise dans " En blocage " par Tahina	f	132	145	2024-01-10 10:46:24	2024-01-10 10:46:24	1
25938	Tâche nouvellement créee du nom de décommander PNR par Maphie dans le projet Gestion PNR Issoufali.	f	162	127	2024-01-10 10:56:31	2024-01-10 10:56:31	5
25939	Tâche nouvellement créee du nom de décommander PNR par Maphie dans le projet Gestion PNR Issoufali.	f	162	130	2024-01-10 10:56:31	2024-01-10 10:56:31	5
25940	Tâche nouvellement créee du nom de décommander PNR par Maphie dans le projet Gestion PNR Issoufali.	f	162	135	2024-01-10 10:56:31	2024-01-10 10:56:31	5
25941	Tâche nouvellement créee du nom de décommander PNR par Maphie dans le projet Gestion PNR Issoufali.	f	162	138	2024-01-10 10:56:31	2024-01-10 10:56:31	5
25942	Tâche nouvellement créee du nom de décommander PNR par Maphie dans le projet Gestion PNR Issoufali.	f	162	132	2024-01-10 10:56:31	2024-01-10 10:56:31	5
25943	Tâche nouvellement créee du nom de décommander PNR par Maphie dans le projet Gestion PNR Issoufali.	f	162	131	2024-01-10 10:56:31	2024-01-10 10:56:31	5
25944	Tâche nouvellement créee du nom de décommander PNR par Maphie dans le projet Gestion PNR Issoufali.	f	162	129	2024-01-10 10:56:31	2024-01-10 10:56:31	5
25945	Tâche nouvellement créee du nom de décommander PNR par Maphie dans le projet Gestion PNR Issoufali.	f	162	145	2024-01-10 10:56:31	2024-01-10 10:56:31	5
25947	Maphie a été assigné à la tâche décommander PNR dans le projet Gestion PNR Issoufali par Maphie	f	162	127	2024-01-10 10:56:32	2024-01-10 10:56:32	6
25948	Maphie a été assigné à la tâche décommander PNR dans le projet Gestion PNR Issoufali par Maphie	f	162	130	2024-01-10 10:56:32	2024-01-10 10:56:32	6
25949	Maphie a été assigné à la tâche décommander PNR dans le projet Gestion PNR Issoufali par Maphie	f	162	132	2024-01-10 10:56:32	2024-01-10 10:56:32	6
25701	Maphie a été assigné à la tâche PNR à décommander dans le projet Gestion PNR Issoufali par Alain	t	129	162	2024-01-09 11:41:15	2024-01-09 11:41:15	6
25750	Maphie a été assigné à la tâche Lister les pnr décommandés dans le projet Gestion PNR Issoufali par Alain	t	129	162	2024-01-09 11:47:13	2024-01-09 11:47:13	6
25763	Maphie a été assigné à la tâche Création d'un billet à partir de gestion PNR  dans le projet Gestion PNR Issoufali par Alain	t	129	162	2024-01-09 11:51:54	2024-01-09 11:51:54	6
25946	Maphie a été assigné à la tâche décommander PNR dans le projet Gestion PNR Issoufali par Maphie	t	162	162	2024-01-10 07:56:31	2024-01-10 07:56:31	6
25950	Tâche nouvellement créee du nom de Préparation TJQ de l'agent Sity par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	127	2024-01-10 11:21:25	2024-01-10 11:21:25	5
25951	Tâche nouvellement créee du nom de Préparation TJQ de l'agent Sity par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	130	2024-01-10 11:21:25	2024-01-10 11:21:25	5
25952	Tâche nouvellement créee du nom de Préparation TJQ de l'agent Sity par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	135	2024-01-10 11:21:25	2024-01-10 11:21:25	5
25953	Tâche nouvellement créee du nom de Préparation TJQ de l'agent Sity par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	138	2024-01-10 11:21:25	2024-01-10 11:21:25	5
25954	Tâche nouvellement créee du nom de Préparation TJQ de l'agent Sity par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	132	2024-01-10 11:21:25	2024-01-10 11:21:25	5
25955	Tâche nouvellement créee du nom de Préparation TJQ de l'agent Sity par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	131	2024-01-10 11:21:25	2024-01-10 11:21:25	5
25956	Tâche nouvellement créee du nom de Préparation TJQ de l'agent Sity par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	129	2024-01-10 11:21:25	2024-01-10 11:21:25	5
25957	Tâche nouvellement créee du nom de Préparation TJQ de l'agent Sity par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	145	2024-01-10 11:21:25	2024-01-10 11:21:25	5
25958	Koloina a été assigné à la tâche Préparation TJQ de l'agent Sity dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	147	2024-01-10 08:21:25	2024-01-10 08:21:25	6
25959	Koloina a été assigné à la tâche Préparation TJQ de l'agent Sity dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	127	2024-01-10 11:21:26	2024-01-10 11:21:26	6
25960	Koloina a été assigné à la tâche Préparation TJQ de l'agent Sity dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	130	2024-01-10 11:21:26	2024-01-10 11:21:26	6
25961	Koloina a été assigné à la tâche Préparation TJQ de l'agent Sity dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	132	2024-01-10 11:21:26	2024-01-10 11:21:26	6
25970	Koloina a été assigné à la tâche PNR VERIFICATION dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	147	2024-01-10 08:25:31	2024-01-10 08:25:31	6
25962	Tâche nouvellement créee du nom de PNR VERIFICATION par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	127	2024-01-10 11:25:31	2024-01-10 11:25:31	5
25963	Tâche nouvellement créee du nom de PNR VERIFICATION par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	130	2024-01-10 11:25:31	2024-01-10 11:25:31	5
25964	Tâche nouvellement créee du nom de PNR VERIFICATION par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	135	2024-01-10 11:25:31	2024-01-10 11:25:31	5
25965	Tâche nouvellement créee du nom de PNR VERIFICATION par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	138	2024-01-10 11:25:31	2024-01-10 11:25:31	5
25966	Tâche nouvellement créee du nom de PNR VERIFICATION par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	132	2024-01-10 11:25:31	2024-01-10 11:25:31	5
25967	Tâche nouvellement créee du nom de PNR VERIFICATION par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	131	2024-01-10 11:25:31	2024-01-10 11:25:31	5
25968	Tâche nouvellement créee du nom de PNR VERIFICATION par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	129	2024-01-10 11:25:31	2024-01-10 11:25:31	5
25969	Tâche nouvellement créee du nom de PNR VERIFICATION par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	145	2024-01-10 11:25:31	2024-01-10 11:25:31	5
25974	Tâche nouvellement créee du nom de Envoyer le fichier compta journalier par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	127	2024-01-10 11:28:58	2024-01-10 11:28:58	5
25975	Tâche nouvellement créee du nom de Envoyer le fichier compta journalier par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	130	2024-01-10 11:28:58	2024-01-10 11:28:58	5
25976	Tâche nouvellement créee du nom de Envoyer le fichier compta journalier par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	135	2024-01-10 11:28:58	2024-01-10 11:28:58	5
25977	Tâche nouvellement créee du nom de Envoyer le fichier compta journalier par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	138	2024-01-10 11:28:58	2024-01-10 11:28:58	5
25978	Tâche nouvellement créee du nom de Envoyer le fichier compta journalier par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	132	2024-01-10 11:28:58	2024-01-10 11:28:58	5
25979	Tâche nouvellement créee du nom de Envoyer le fichier compta journalier par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	131	2024-01-10 11:28:58	2024-01-10 11:28:58	5
25980	Tâche nouvellement créee du nom de Envoyer le fichier compta journalier par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	129	2024-01-10 11:28:58	2024-01-10 11:28:58	5
25981	Tâche nouvellement créee du nom de Envoyer le fichier compta journalier par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	145	2024-01-10 11:28:58	2024-01-10 11:28:58	5
25971	Koloina a été assigné à la tâche PNR VERIFICATION dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	127	2024-01-10 11:25:31	2024-01-10 11:25:31	6
25972	Koloina a été assigné à la tâche PNR VERIFICATION dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	130	2024-01-10 11:25:31	2024-01-10 11:25:31	6
25973	Koloina a été assigné à la tâche PNR VERIFICATION dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	132	2024-01-10 11:25:31	2024-01-10 11:25:31	6
25982	Koloina a été assigné à la tâche Envoyer le fichier compta journalier dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	147	2024-01-10 08:28:58	2024-01-10 08:28:58	6
25983	Koloina a été assigné à la tâche Envoyer le fichier compta journalier dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	127	2024-01-10 11:28:59	2024-01-10 11:28:59	6
25984	Koloina a été assigné à la tâche Envoyer le fichier compta journalier dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	130	2024-01-10 11:28:59	2024-01-10 11:28:59	6
25985	Koloina a été assigné à la tâche Envoyer le fichier compta journalier dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	132	2024-01-10 11:28:59	2024-01-10 11:28:59	6
25986	Tâche nouvellement créee du nom de Automatiser l'envoi du fichier comptabilité par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	127	2024-01-10 11:31:19	2024-01-10 11:31:19	5
25987	Tâche nouvellement créee du nom de Automatiser l'envoi du fichier comptabilité par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	130	2024-01-10 11:31:19	2024-01-10 11:31:19	5
25988	Tâche nouvellement créee du nom de Automatiser l'envoi du fichier comptabilité par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	135	2024-01-10 11:31:19	2024-01-10 11:31:19	5
25989	Tâche nouvellement créee du nom de Automatiser l'envoi du fichier comptabilité par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	138	2024-01-10 11:31:19	2024-01-10 11:31:19	5
25990	Tâche nouvellement créee du nom de Automatiser l'envoi du fichier comptabilité par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	132	2024-01-10 11:31:19	2024-01-10 11:31:19	5
26241	Koloina a été assigné à la tâche Automatisation de l'import ARTICLE dans le projet MOLLAN par Koloina	f	147	127	2024-01-11 15:06:00	2024-01-11 15:06:00	6
25991	Tâche nouvellement créee du nom de Automatiser l'envoi du fichier comptabilité par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	131	2024-01-10 11:31:19	2024-01-10 11:31:19	5
25992	Tâche nouvellement créee du nom de Automatiser l'envoi du fichier comptabilité par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	129	2024-01-10 11:31:19	2024-01-10 11:31:19	5
25993	Tâche nouvellement créee du nom de Automatiser l'envoi du fichier comptabilité par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	145	2024-01-10 11:31:19	2024-01-10 11:31:19	5
25994	Koloina a été assigné à la tâche Automatiser l'envoi du fichier comptabilité dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	147	2024-01-10 08:31:26	2024-01-10 08:31:26	6
25995	Koloina a été assigné à la tâche Automatiser l'envoi du fichier comptabilité dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	127	2024-01-10 11:31:30	2024-01-10 11:31:30	6
25996	Koloina a été assigné à la tâche Automatiser l'envoi du fichier comptabilité dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	130	2024-01-10 11:31:30	2024-01-10 11:31:30	6
25997	Koloina a été assigné à la tâche Automatiser l'envoi du fichier comptabilité dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	132	2024-01-10 11:31:30	2024-01-10 11:31:30	6
25998	Tâche nouvellement créee du nom de CA Cies - 23/11 par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	127	2024-01-10 11:36:10	2024-01-10 11:36:10	5
25999	Tâche nouvellement créee du nom de CA Cies - 23/11 par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	130	2024-01-10 11:36:10	2024-01-10 11:36:10	5
26000	Tâche nouvellement créee du nom de CA Cies - 23/11 par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	135	2024-01-10 11:36:10	2024-01-10 11:36:10	5
26001	Tâche nouvellement créee du nom de CA Cies - 23/11 par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	138	2024-01-10 11:36:10	2024-01-10 11:36:10	5
26002	Tâche nouvellement créee du nom de CA Cies - 23/11 par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	132	2024-01-10 11:36:10	2024-01-10 11:36:10	5
26003	Tâche nouvellement créee du nom de CA Cies - 23/11 par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	131	2024-01-10 11:36:10	2024-01-10 11:36:10	5
26004	Tâche nouvellement créee du nom de CA Cies - 23/11 par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	129	2024-01-10 11:36:10	2024-01-10 11:36:10	5
26005	Tâche nouvellement créee du nom de CA Cies - 23/11 par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	145	2024-01-10 11:36:10	2024-01-10 11:36:10	5
26006	Tâche nouvellement créee du nom de CA Cies - 23/11 par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	167	2024-01-10 11:36:10	2024-01-10 11:36:10	5
26007	Koloina a été assigné à la tâche CA Cies - 23/11 dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	147	2024-01-10 08:36:10	2024-01-10 08:36:10	6
26008	Koloina a été assigné à la tâche CA Cies - 23/11 dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	127	2024-01-10 11:36:10	2024-01-10 11:36:10	6
26009	Koloina a été assigné à la tâche CA Cies - 23/11 dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	130	2024-01-10 11:36:10	2024-01-10 11:36:10	6
26010	Koloina a été assigné à la tâche CA Cies - 23/11 dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	132	2024-01-10 11:36:10	2024-01-10 11:36:10	6
26011	Tâche nouvellement créee du nom de Données brutes 3 Cies par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	127	2024-01-10 11:40:38	2024-01-10 11:40:38	5
26012	Tâche nouvellement créee du nom de Données brutes 3 Cies par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	130	2024-01-10 11:40:38	2024-01-10 11:40:38	5
26013	Tâche nouvellement créee du nom de Données brutes 3 Cies par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	135	2024-01-10 11:40:38	2024-01-10 11:40:38	5
26014	Tâche nouvellement créee du nom de Données brutes 3 Cies par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	138	2024-01-10 11:40:38	2024-01-10 11:40:38	5
26015	Tâche nouvellement créee du nom de Données brutes 3 Cies par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	132	2024-01-10 11:40:38	2024-01-10 11:40:38	5
26016	Tâche nouvellement créee du nom de Données brutes 3 Cies par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	131	2024-01-10 11:40:38	2024-01-10 11:40:38	5
26017	Tâche nouvellement créee du nom de Données brutes 3 Cies par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	129	2024-01-10 11:40:38	2024-01-10 11:40:38	5
26018	Tâche nouvellement créee du nom de Données brutes 3 Cies par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	145	2024-01-10 11:40:38	2024-01-10 11:40:38	5
26019	Tâche nouvellement créee du nom de Données brutes 3 Cies par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	167	2024-01-10 11:40:38	2024-01-10 11:40:38	5
26020	Koloina a été assigné à la tâche Données brutes 3 Cies dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	147	2024-01-10 08:40:39	2024-01-10 08:40:39	6
26021	Koloina a été assigné à la tâche Données brutes 3 Cies dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	127	2024-01-10 11:40:39	2024-01-10 11:40:39	6
26022	Koloina a été assigné à la tâche Données brutes 3 Cies dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	130	2024-01-10 11:40:39	2024-01-10 11:40:39	6
26023	Koloina a été assigné à la tâche Données brutes 3 Cies dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	132	2024-01-10 11:40:39	2024-01-10 11:40:39	6
26024	Tâche nouvellement créee du nom de les avoirs ladom non retrouvés 01-03/23 par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	127	2024-01-10 11:44:51	2024-01-10 11:44:51	5
26025	Tâche nouvellement créee du nom de les avoirs ladom non retrouvés 01-03/23 par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	130	2024-01-10 11:44:51	2024-01-10 11:44:51	5
26026	Tâche nouvellement créee du nom de les avoirs ladom non retrouvés 01-03/23 par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	135	2024-01-10 11:44:51	2024-01-10 11:44:51	5
26027	Tâche nouvellement créee du nom de les avoirs ladom non retrouvés 01-03/23 par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	138	2024-01-10 11:44:51	2024-01-10 11:44:51	5
26669	Tâche SMEF supprimé par Mathieu.	f	138	132	2024-01-24 15:46:08	2024-01-24 15:46:08	3
26028	Tâche nouvellement créee du nom de les avoirs ladom non retrouvés 01-03/23 par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	132	2024-01-10 11:44:51	2024-01-10 11:44:51	5
26029	Tâche nouvellement créee du nom de les avoirs ladom non retrouvés 01-03/23 par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	131	2024-01-10 11:44:51	2024-01-10 11:44:51	5
26030	Tâche nouvellement créee du nom de les avoirs ladom non retrouvés 01-03/23 par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	129	2024-01-10 11:44:51	2024-01-10 11:44:51	5
26031	Tâche nouvellement créee du nom de les avoirs ladom non retrouvés 01-03/23 par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	145	2024-01-10 11:44:51	2024-01-10 11:44:51	5
26032	Tâche nouvellement créee du nom de les avoirs ladom non retrouvés 01-03/23 par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	167	2024-01-10 11:44:51	2024-01-10 11:44:51	5
26033	Koloina a été assigné à la tâche les avoirs ladom non retrouvés 01-03/23 dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	147	2024-01-10 08:44:51	2024-01-10 08:44:51	6
26034	Koloina a été assigné à la tâche les avoirs ladom non retrouvés 01-03/23 dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	127	2024-01-10 11:44:52	2024-01-10 11:44:52	6
26035	Koloina a été assigné à la tâche les avoirs ladom non retrouvés 01-03/23 dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	130	2024-01-10 11:44:52	2024-01-10 11:44:52	6
26036	Koloina a été assigné à la tâche les avoirs ladom non retrouvés 01-03/23 dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	132	2024-01-10 11:44:52	2024-01-10 11:44:52	6
26037	Tâche nouvellement créee du nom de Application pour le recalcul de prix de revient par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	127	2024-01-10 12:04:23	2024-01-10 12:04:23	5
26038	Tâche nouvellement créee du nom de Application pour le recalcul de prix de revient par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	130	2024-01-10 12:04:23	2024-01-10 12:04:23	5
26039	Tâche nouvellement créee du nom de Application pour le recalcul de prix de revient par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	135	2024-01-10 12:04:23	2024-01-10 12:04:23	5
26040	Tâche nouvellement créee du nom de Application pour le recalcul de prix de revient par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	138	2024-01-10 12:04:23	2024-01-10 12:04:23	5
26041	Tâche nouvellement créee du nom de Application pour le recalcul de prix de revient par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	132	2024-01-10 12:04:23	2024-01-10 12:04:23	5
26042	Tâche nouvellement créee du nom de Application pour le recalcul de prix de revient par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	131	2024-01-10 12:04:23	2024-01-10 12:04:23	5
26043	Tâche nouvellement créee du nom de Application pour le recalcul de prix de revient par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	129	2024-01-10 12:04:23	2024-01-10 12:04:23	5
26044	Tâche nouvellement créee du nom de Application pour le recalcul de prix de revient par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	145	2024-01-10 12:04:23	2024-01-10 12:04:23	5
26045	Tâche nouvellement créee du nom de Application pour le recalcul de prix de revient par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	167	2024-01-10 12:04:23	2024-01-10 12:04:23	5
26060	Koloina a été assigné à la tâche Mise en place de la Procédure MAUVILAC dans le projet MAUVILAC - Intervention et accompagnement par Koloina	f	147	127	2024-01-10 12:06:48	2024-01-10 12:06:48	6
26061	Koloina a été assigné à la tâche Mise en place de la Procédure MAUVILAC dans le projet MAUVILAC - Intervention et accompagnement par Koloina	f	147	130	2024-01-10 12:06:48	2024-01-10 12:06:48	6
26062	Koloina a été assigné à la tâche Mise en place de la Procédure MAUVILAC dans le projet MAUVILAC - Intervention et accompagnement par Koloina	f	147	132	2024-01-10 12:06:48	2024-01-10 12:06:48	6
26085	Koloina a été assigné à la tâche Résolution - Articles non descendues dans le projet ZEOP - Mise en place d'une solution par Koloina	f	147	147	2024-01-10 10:27:27	2024-01-10 10:27:27	6
26137	Koloina a été assigné à la tâche TJQ non remontée par agent dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	147	2024-01-10 10:51:02	2024-01-10 10:51:02	6
26150	Tâche "TJQ non remontée par agent"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	127	2024-01-10 14:08:09	2024-01-10 14:08:09	1
26151	Tâche "TJQ non remontée par agent"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	130	2024-01-10 14:08:09	2024-01-10 14:08:09	1
26152	Tâche "TJQ non remontée par agent"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	135	2024-01-10 14:08:09	2024-01-10 14:08:09	1
26046	Koloina a été assigné à la tâche Application pour le recalcul de prix de revient dans le projet MAUVILAC - Intervention et accompagnement par Koloina	f	147	147	2024-01-10 09:04:24	2024-01-10 09:04:24	6
26099	Koloina a été assigné à la tâche Résolution - BL non transformé dans le projet ZEOP - Mise en place d'une solution par Koloina	f	147	127	2024-01-10 13:29:08	2024-01-10 13:29:08	6
26100	Koloina a été assigné à la tâche Résolution - BL non transformé dans le projet ZEOP - Mise en place d'une solution par Koloina	f	147	130	2024-01-10 13:29:08	2024-01-10 13:29:08	6
26101	Koloina a été assigné à la tâche Résolution - BL non transformé dans le projet ZEOP - Mise en place d'une solution par Koloina	f	147	132	2024-01-10 13:29:08	2024-01-10 13:29:08	6
26047	Koloina a été assigné à la tâche Application pour le recalcul de prix de revient dans le projet MAUVILAC - Intervention et accompagnement par Koloina	f	147	127	2024-01-10 12:04:26	2024-01-10 12:04:26	6
26048	Koloina a été assigné à la tâche Application pour le recalcul de prix de revient dans le projet MAUVILAC - Intervention et accompagnement par Koloina	f	147	130	2024-01-10 12:04:26	2024-01-10 12:04:26	6
26049	Koloina a été assigné à la tâche Application pour le recalcul de prix de revient dans le projet MAUVILAC - Intervention et accompagnement par Koloina	f	147	132	2024-01-10 12:04:26	2024-01-10 12:04:26	6
26050	Tâche nouvellement créee du nom de Mise en place de la Procédure MAUVILAC par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	127	2024-01-10 12:06:47	2024-01-10 12:06:47	5
26051	Tâche nouvellement créee du nom de Mise en place de la Procédure MAUVILAC par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	130	2024-01-10 12:06:47	2024-01-10 12:06:47	5
26052	Tâche nouvellement créee du nom de Mise en place de la Procédure MAUVILAC par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	135	2024-01-10 12:06:47	2024-01-10 12:06:47	5
26053	Tâche nouvellement créee du nom de Mise en place de la Procédure MAUVILAC par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	138	2024-01-10 12:06:47	2024-01-10 12:06:47	5
26054	Tâche nouvellement créee du nom de Mise en place de la Procédure MAUVILAC par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	132	2024-01-10 12:06:47	2024-01-10 12:06:47	5
26055	Tâche nouvellement créee du nom de Mise en place de la Procédure MAUVILAC par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	131	2024-01-10 12:06:47	2024-01-10 12:06:47	5
26056	Tâche nouvellement créee du nom de Mise en place de la Procédure MAUVILAC par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	129	2024-01-10 12:06:47	2024-01-10 12:06:47	5
26057	Tâche nouvellement créee du nom de Mise en place de la Procédure MAUVILAC par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	145	2024-01-10 12:06:47	2024-01-10 12:06:47	5
26058	Tâche nouvellement créee du nom de Mise en place de la Procédure MAUVILAC par Koloina dans le projet MAUVILAC - Intervention et accompagnement.	f	147	167	2024-01-10 12:06:47	2024-01-10 12:06:47	5
26086	Koloina a été assigné à la tâche Résolution - Articles non descendues dans le projet ZEOP - Mise en place d'une solution par Koloina	f	147	127	2024-01-10 13:27:27	2024-01-10 13:27:27	6
26087	Koloina a été assigné à la tâche Résolution - Articles non descendues dans le projet ZEOP - Mise en place d'une solution par Koloina	f	147	130	2024-01-10 13:27:27	2024-01-10 13:27:27	6
26088	Koloina a été assigné à la tâche Résolution - Articles non descendues dans le projet ZEOP - Mise en place d'une solution par Koloina	f	147	132	2024-01-10 13:27:27	2024-01-10 13:27:27	6
26125	Koloina a été assigné à la tâche Préparation du réunion ZEOP et Réunion ZEOP dans le projet ZEOP - Mise en place d'une solution par Koloina	f	147	127	2024-01-10 13:38:59	2024-01-10 13:38:59	6
26126	Koloina a été assigné à la tâche Préparation du réunion ZEOP et Réunion ZEOP dans le projet ZEOP - Mise en place d'une solution par Koloina	f	147	130	2024-01-10 13:38:59	2024-01-10 13:38:59	6
26127	Koloina a été assigné à la tâche Préparation du réunion ZEOP et Réunion ZEOP dans le projet ZEOP - Mise en place d'une solution par Koloina	f	147	132	2024-01-10 13:38:59	2024-01-10 13:38:59	6
26059	Koloina a été assigné à la tâche Mise en place de la Procédure MAUVILAC dans le projet MAUVILAC - Intervention et accompagnement par Koloina	f	147	147	2024-01-10 09:06:47	2024-01-10 09:06:47	6
26063	Tâche nouvellement créee du nom de Mise en place de la Procédure Zeop par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	127	2024-01-10 12:07:55	2024-01-10 12:07:55	5
26064	Tâche nouvellement créee du nom de Mise en place de la Procédure Zeop par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	130	2024-01-10 12:07:55	2024-01-10 12:07:55	5
26065	Tâche nouvellement créee du nom de Mise en place de la Procédure Zeop par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	135	2024-01-10 12:07:55	2024-01-10 12:07:55	5
26066	Tâche nouvellement créee du nom de Mise en place de la Procédure Zeop par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	138	2024-01-10 12:07:55	2024-01-10 12:07:55	5
26067	Tâche nouvellement créee du nom de Mise en place de la Procédure Zeop par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	132	2024-01-10 12:07:55	2024-01-10 12:07:55	5
26068	Tâche nouvellement créee du nom de Mise en place de la Procédure Zeop par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	131	2024-01-10 12:07:55	2024-01-10 12:07:55	5
26069	Tâche nouvellement créee du nom de Mise en place de la Procédure Zeop par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	129	2024-01-10 12:07:55	2024-01-10 12:07:55	5
26070	Tâche nouvellement créee du nom de Mise en place de la Procédure Zeop par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	145	2024-01-10 12:07:55	2024-01-10 12:07:55	5
26071	Tâche nouvellement créee du nom de Mise en place de la Procédure Zeop par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	167	2024-01-10 12:07:55	2024-01-10 12:07:55	5
26072	Koloina a été assigné à la tâche Mise en place de la Procédure Zeop dans le projet ZEOP - Mise en place d'une solution par Koloina	f	147	147	2024-01-10 09:07:55	2024-01-10 09:07:55	6
26089	Tâche nouvellement créee du nom de Résolution - BL non transformé par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	127	2024-01-10 13:29:08	2024-01-10 13:29:08	5
26090	Tâche nouvellement créee du nom de Résolution - BL non transformé par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	130	2024-01-10 13:29:08	2024-01-10 13:29:08	5
26091	Tâche nouvellement créee du nom de Résolution - BL non transformé par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	135	2024-01-10 13:29:08	2024-01-10 13:29:08	5
26092	Tâche nouvellement créee du nom de Résolution - BL non transformé par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	138	2024-01-10 13:29:08	2024-01-10 13:29:08	5
26093	Tâche nouvellement créee du nom de Résolution - BL non transformé par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	132	2024-01-10 13:29:08	2024-01-10 13:29:08	5
26094	Tâche nouvellement créee du nom de Résolution - BL non transformé par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	131	2024-01-10 13:29:08	2024-01-10 13:29:08	5
26095	Tâche nouvellement créee du nom de Résolution - BL non transformé par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	129	2024-01-10 13:29:08	2024-01-10 13:29:08	5
26096	Tâche nouvellement créee du nom de Résolution - BL non transformé par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	145	2024-01-10 13:29:08	2024-01-10 13:29:08	5
26097	Tâche nouvellement créee du nom de Résolution - BL non transformé par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	167	2024-01-10 13:29:08	2024-01-10 13:29:08	5
26098	Koloina a été assigné à la tâche Résolution - BL non transformé dans le projet ZEOP - Mise en place d'une solution par Koloina	f	147	147	2024-01-10 10:29:08	2024-01-10 10:29:08	6
26102	Tâche nouvellement créee du nom de Export manuel du BC créer à la date J par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	127	2024-01-10 13:34:31	2024-01-10 13:34:31	5
26103	Tâche nouvellement créee du nom de Export manuel du BC créer à la date J par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	130	2024-01-10 13:34:31	2024-01-10 13:34:31	5
26670	Tâche SMEF supprimé par Mathieu.	f	138	131	2024-01-24 15:46:08	2024-01-24 15:46:08	3
26104	Tâche nouvellement créee du nom de Export manuel du BC créer à la date J par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	135	2024-01-10 13:34:31	2024-01-10 13:34:31	5
26105	Tâche nouvellement créee du nom de Export manuel du BC créer à la date J par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	138	2024-01-10 13:34:31	2024-01-10 13:34:31	5
26106	Tâche nouvellement créee du nom de Export manuel du BC créer à la date J par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	132	2024-01-10 13:34:31	2024-01-10 13:34:31	5
26107	Tâche nouvellement créee du nom de Export manuel du BC créer à la date J par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	131	2024-01-10 13:34:31	2024-01-10 13:34:31	5
26108	Tâche nouvellement créee du nom de Export manuel du BC créer à la date J par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	129	2024-01-10 13:34:31	2024-01-10 13:34:31	5
26109	Tâche nouvellement créee du nom de Export manuel du BC créer à la date J par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	145	2024-01-10 13:34:31	2024-01-10 13:34:31	5
26110	Tâche nouvellement créee du nom de Export manuel du BC créer à la date J par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	167	2024-01-10 13:34:31	2024-01-10 13:34:31	5
26111	Koloina a été assigné à la tâche Export manuel du BC créer à la date J dans le projet ZEOP - Mise en place d'une solution par Koloina	f	147	147	2024-01-10 10:34:31	2024-01-10 10:34:31	6
26112	Koloina a été assigné à la tâche Export manuel du BC créer à la date J dans le projet ZEOP - Mise en place d'une solution par Koloina	f	147	127	2024-01-10 13:34:31	2024-01-10 13:34:31	6
26113	Koloina a été assigné à la tâche Export manuel du BC créer à la date J dans le projet ZEOP - Mise en place d'une solution par Koloina	f	147	130	2024-01-10 13:34:31	2024-01-10 13:34:31	6
26114	Koloina a été assigné à la tâche Export manuel du BC créer à la date J dans le projet ZEOP - Mise en place d'une solution par Koloina	f	147	132	2024-01-10 13:34:31	2024-01-10 13:34:31	6
26124	Koloina a été assigné à la tâche Préparation du réunion ZEOP et Réunion ZEOP dans le projet ZEOP - Mise en place d'une solution par Koloina	f	147	147	2024-01-10 10:38:59	2024-01-10 10:38:59	6
26128	Tâche nouvellement créee du nom de TJQ non remontée par agent par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	127	2024-01-10 13:51:02	2024-01-10 13:51:02	5
26073	Koloina a été assigné à la tâche Mise en place de la Procédure Zeop dans le projet ZEOP - Mise en place d'une solution par Koloina	f	147	127	2024-01-10 12:07:55	2024-01-10 12:07:55	6
26074	Koloina a été assigné à la tâche Mise en place de la Procédure Zeop dans le projet ZEOP - Mise en place d'une solution par Koloina	f	147	130	2024-01-10 12:07:55	2024-01-10 12:07:55	6
26075	Koloina a été assigné à la tâche Mise en place de la Procédure Zeop dans le projet ZEOP - Mise en place d'une solution par Koloina	f	147	132	2024-01-10 12:07:55	2024-01-10 12:07:55	6
26076	Tâche nouvellement créee du nom de Résolution - Articles non descendues par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	127	2024-01-10 13:27:27	2024-01-10 13:27:27	5
26077	Tâche nouvellement créee du nom de Résolution - Articles non descendues par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	130	2024-01-10 13:27:27	2024-01-10 13:27:27	5
26078	Tâche nouvellement créee du nom de Résolution - Articles non descendues par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	135	2024-01-10 13:27:27	2024-01-10 13:27:27	5
26079	Tâche nouvellement créee du nom de Résolution - Articles non descendues par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	138	2024-01-10 13:27:27	2024-01-10 13:27:27	5
26080	Tâche nouvellement créee du nom de Résolution - Articles non descendues par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	132	2024-01-10 13:27:27	2024-01-10 13:27:27	5
26081	Tâche nouvellement créee du nom de Résolution - Articles non descendues par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	131	2024-01-10 13:27:27	2024-01-10 13:27:27	5
26082	Tâche nouvellement créee du nom de Résolution - Articles non descendues par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	129	2024-01-10 13:27:27	2024-01-10 13:27:27	5
26083	Tâche nouvellement créee du nom de Résolution - Articles non descendues par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	145	2024-01-10 13:27:27	2024-01-10 13:27:27	5
26084	Tâche nouvellement créee du nom de Résolution - Articles non descendues par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	167	2024-01-10 13:27:27	2024-01-10 13:27:27	5
26115	Tâche nouvellement créee du nom de Préparation du réunion ZEOP et Réunion ZEOP par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	127	2024-01-10 13:38:58	2024-01-10 13:38:58	5
26116	Tâche nouvellement créee du nom de Préparation du réunion ZEOP et Réunion ZEOP par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	130	2024-01-10 13:38:58	2024-01-10 13:38:58	5
26117	Tâche nouvellement créee du nom de Préparation du réunion ZEOP et Réunion ZEOP par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	135	2024-01-10 13:38:58	2024-01-10 13:38:58	5
26118	Tâche nouvellement créee du nom de Préparation du réunion ZEOP et Réunion ZEOP par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	138	2024-01-10 13:38:58	2024-01-10 13:38:58	5
26119	Tâche nouvellement créee du nom de Préparation du réunion ZEOP et Réunion ZEOP par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	132	2024-01-10 13:38:58	2024-01-10 13:38:58	5
26120	Tâche nouvellement créee du nom de Préparation du réunion ZEOP et Réunion ZEOP par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	131	2024-01-10 13:38:58	2024-01-10 13:38:58	5
26121	Tâche nouvellement créee du nom de Préparation du réunion ZEOP et Réunion ZEOP par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	129	2024-01-10 13:38:58	2024-01-10 13:38:58	5
26122	Tâche nouvellement créee du nom de Préparation du réunion ZEOP et Réunion ZEOP par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	145	2024-01-10 13:38:58	2024-01-10 13:38:58	5
26123	Tâche nouvellement créee du nom de Préparation du réunion ZEOP et Réunion ZEOP par Koloina dans le projet ZEOP - Mise en place d'une solution.	f	147	167	2024-01-10 13:38:58	2024-01-10 13:38:58	5
26159	Tâche "Amélioration et correction des fonctions de recherche "\n          du projet Project monitoring  mise dans " En blocage " par Antonio	f	128	127	2024-01-10 14:21:47	2024-01-10 14:21:47	1
26160	Tâche "Amélioration et correction des fonctions de recherche "\n          du projet Project monitoring  mise dans " En blocage " par Antonio	f	128	130	2024-01-10 14:21:47	2024-01-10 14:21:47	1
26161	Tâche "Amélioration et correction des fonctions de recherche "\n          du projet Project monitoring  mise dans " En blocage " par Antonio	f	128	135	2024-01-10 14:21:47	2024-01-10 14:21:47	1
26162	Tâche "Amélioration et correction des fonctions de recherche "\n          du projet Project monitoring  mise dans " En blocage " par Antonio	f	128	138	2024-01-10 14:21:47	2024-01-10 14:21:47	1
26163	Tâche "Amélioration et correction des fonctions de recherche "\n          du projet Project monitoring  mise dans " En blocage " par Antonio	f	128	132	2024-01-10 14:21:47	2024-01-10 14:21:47	1
26164	Tâche "Amélioration et correction des fonctions de recherche "\n          du projet Project monitoring  mise dans " En blocage " par Antonio	f	128	131	2024-01-10 14:21:47	2024-01-10 14:21:47	1
26165	Tâche "Amélioration et correction des fonctions de recherche "\n          du projet Project monitoring  mise dans " En blocage " par Antonio	f	128	129	2024-01-10 14:21:47	2024-01-10 14:21:47	1
26166	Tâche "Amélioration et correction des fonctions de recherche "\n          du projet Project monitoring  mise dans " En blocage " par Antonio	f	128	145	2024-01-10 14:21:47	2024-01-10 14:21:47	1
26167	Tâche "Amélioration et correction des fonctions de recherche "\n          du projet Project monitoring  mise dans " En blocage " par Antonio	f	128	167	2024-01-10 14:21:47	2024-01-10 14:21:47	1
26129	Tâche nouvellement créee du nom de TJQ non remontée par agent par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	130	2024-01-10 13:51:02	2024-01-10 13:51:02	5
26130	Tâche nouvellement créee du nom de TJQ non remontée par agent par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	135	2024-01-10 13:51:02	2024-01-10 13:51:02	5
26131	Tâche nouvellement créee du nom de TJQ non remontée par agent par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	138	2024-01-10 13:51:02	2024-01-10 13:51:02	5
26132	Tâche nouvellement créee du nom de TJQ non remontée par agent par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	132	2024-01-10 13:51:02	2024-01-10 13:51:02	5
26133	Tâche nouvellement créee du nom de TJQ non remontée par agent par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	131	2024-01-10 13:51:02	2024-01-10 13:51:02	5
26134	Tâche nouvellement créee du nom de TJQ non remontée par agent par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	129	2024-01-10 13:51:02	2024-01-10 13:51:02	5
26135	Tâche nouvellement créee du nom de TJQ non remontée par agent par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	145	2024-01-10 13:51:02	2024-01-10 13:51:02	5
26136	Tâche nouvellement créee du nom de TJQ non remontée par agent par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	167	2024-01-10 13:51:02	2024-01-10 13:51:02	5
26138	Koloina a été assigné à la tâche TJQ non remontée par agent dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	127	2024-01-10 13:51:02	2024-01-10 13:51:02	6
26139	Koloina a été assigné à la tâche TJQ non remontée par agent dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	130	2024-01-10 13:51:02	2024-01-10 13:51:02	6
26140	Koloina a été assigné à la tâche TJQ non remontée par agent dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	132	2024-01-10 13:51:02	2024-01-10 13:51:02	6
26141	Tâche "TJQ non remontée par agent"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	127	2024-01-10 13:51:41	2024-01-10 13:51:41	1
26142	Tâche "TJQ non remontée par agent"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	130	2024-01-10 13:51:41	2024-01-10 13:51:41	1
26143	Tâche "TJQ non remontée par agent"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	135	2024-01-10 13:51:41	2024-01-10 13:51:41	1
26144	Tâche "TJQ non remontée par agent"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	138	2024-01-10 13:51:41	2024-01-10 13:51:41	1
26145	Tâche "TJQ non remontée par agent"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	132	2024-01-10 13:51:41	2024-01-10 13:51:41	1
26146	Tâche "TJQ non remontée par agent"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	131	2024-01-10 13:51:41	2024-01-10 13:51:41	1
26147	Tâche "TJQ non remontée par agent"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	129	2024-01-10 13:51:41	2024-01-10 13:51:41	1
26148	Tâche "TJQ non remontée par agent"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	145	2024-01-10 13:51:41	2024-01-10 13:51:41	1
26149	Tâche "TJQ non remontée par agent"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	167	2024-01-10 13:51:41	2024-01-10 13:51:41	1
26153	Tâche "TJQ non remontée par agent"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	138	2024-01-10 14:08:09	2024-01-10 14:08:09	1
26154	Tâche "TJQ non remontée par agent"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	132	2024-01-10 14:08:09	2024-01-10 14:08:09	1
26155	Tâche "TJQ non remontée par agent"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	131	2024-01-10 14:08:09	2024-01-10 14:08:09	1
26156	Tâche "TJQ non remontée par agent"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	129	2024-01-10 14:08:09	2024-01-10 14:08:09	1
26157	Tâche "TJQ non remontée par agent"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	145	2024-01-10 14:08:09	2024-01-10 14:08:09	1
26158	Tâche "TJQ non remontée par agent"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	167	2024-01-10 14:08:09	2024-01-10 14:08:09	1
26168	Tâche "Amélioration et correction des fonctions de recherche "\n          du projet Project monitoring  mise dans " En cours " par Antonio	f	128	127	2024-01-10 14:22:40	2024-01-10 14:22:40	1
26169	Tâche "Amélioration et correction des fonctions de recherche "\n          du projet Project monitoring  mise dans " En cours " par Antonio	f	128	130	2024-01-10 14:22:40	2024-01-10 14:22:40	1
26170	Tâche "Amélioration et correction des fonctions de recherche "\n          du projet Project monitoring  mise dans " En cours " par Antonio	f	128	135	2024-01-10 14:22:40	2024-01-10 14:22:40	1
26671	Tâche SMEF supprimé par Mathieu.	f	138	145	2024-01-24 15:46:08	2024-01-24 15:46:08	3
26171	Tâche "Amélioration et correction des fonctions de recherche "\n          du projet Project monitoring  mise dans " En cours " par Antonio	f	128	138	2024-01-10 14:22:40	2024-01-10 14:22:40	1
26172	Tâche "Amélioration et correction des fonctions de recherche "\n          du projet Project monitoring  mise dans " En cours " par Antonio	f	128	132	2024-01-10 14:22:40	2024-01-10 14:22:40	1
26173	Tâche "Amélioration et correction des fonctions de recherche "\n          du projet Project monitoring  mise dans " En cours " par Antonio	f	128	131	2024-01-10 14:22:40	2024-01-10 14:22:40	1
26174	Tâche "Amélioration et correction des fonctions de recherche "\n          du projet Project monitoring  mise dans " En cours " par Antonio	f	128	129	2024-01-10 14:22:40	2024-01-10 14:22:40	1
26175	Tâche "Amélioration et correction des fonctions de recherche "\n          du projet Project monitoring  mise dans " En cours " par Antonio	f	128	145	2024-01-10 14:22:40	2024-01-10 14:22:40	1
26176	Tâche "Amélioration et correction des fonctions de recherche "\n          du projet Project monitoring  mise dans " En cours " par Antonio	f	128	167	2024-01-10 14:22:40	2024-01-10 14:22:40	1
25858	Antonio a été assigné à la tâche qlm : correction header  dans le projet Modification du site web  par Antonio	t	128	128	2024-01-10 06:05:07	2024-01-10 06:05:07	6
25886	Antonio a été assigné à la tâche qlm : correction page produit  dans le projet Modification du site web  par Antonio	t	128	128	2024-01-10 06:07:43	2024-01-10 06:07:43	6
25900	Antonio a été assigné à la tâche Amélioration et correction des fonctions de recherche  dans le projet Project monitoring  par Antonio	t	128	128	2024-01-10 06:10:18	2024-01-10 06:10:18	6
26177	Un projet du nom de MOLLAN a été crée par Mathieu	f	138	127	2024-01-11 14:34:32	2024-01-11 14:34:32	5
26178	Un projet du nom de MOLLAN a été crée par Mathieu	f	138	130	2024-01-11 14:34:32	2024-01-11 14:34:32	5
26179	Un projet du nom de MOLLAN a été crée par Mathieu	f	138	135	2024-01-11 14:34:32	2024-01-11 14:34:32	5
26180	Un projet du nom de MOLLAN a été crée par Mathieu	f	138	132	2024-01-11 14:34:32	2024-01-11 14:34:32	5
26181	Un projet du nom de MOLLAN a été crée par Mathieu	f	138	131	2024-01-11 14:34:32	2024-01-11 14:34:32	5
26182	Un projet du nom de MOLLAN a été crée par Mathieu	f	138	129	2024-01-11 14:34:32	2024-01-11 14:34:32	5
26183	Un projet du nom de MOLLAN a été crée par Mathieu	f	138	145	2024-01-11 14:34:32	2024-01-11 14:34:32	5
26184	Un projet du nom de MOLLAN a été crée par Mathieu	f	138	167	2024-01-11 14:34:32	2024-01-11 14:34:32	5
26185	Tâche nouvellement créee du nom de a par Mathieu dans le projet MOLLAN.	f	138	127	2024-01-11 14:41:46	2024-01-11 14:41:46	5
26186	Tâche nouvellement créee du nom de a par Mathieu dans le projet MOLLAN.	f	138	130	2024-01-11 14:41:46	2024-01-11 14:41:46	5
26187	Tâche nouvellement créee du nom de a par Mathieu dans le projet MOLLAN.	f	138	135	2024-01-11 14:41:46	2024-01-11 14:41:46	5
26188	Tâche nouvellement créee du nom de a par Mathieu dans le projet MOLLAN.	f	138	132	2024-01-11 14:41:46	2024-01-11 14:41:46	5
26189	Tâche nouvellement créee du nom de a par Mathieu dans le projet MOLLAN.	f	138	131	2024-01-11 14:41:46	2024-01-11 14:41:46	5
26190	Tâche nouvellement créee du nom de a par Mathieu dans le projet MOLLAN.	f	138	129	2024-01-11 14:41:46	2024-01-11 14:41:46	5
26191	Tâche nouvellement créee du nom de a par Mathieu dans le projet MOLLAN.	f	138	145	2024-01-11 14:41:46	2024-01-11 14:41:46	5
26192	Tâche nouvellement créee du nom de a par Mathieu dans le projet MOLLAN.	f	138	167	2024-01-11 14:41:46	2024-01-11 14:41:46	5
26193	Koloina a été assigné à la tâche a dans le projet MOLLAN par Mathieu	f	138	147	2024-01-11 11:41:46	2024-01-11 11:41:46	6
26194	Koloina a été assigné à la tâche a dans le projet MOLLAN par Mathieu	f	138	127	2024-01-11 14:41:47	2024-01-11 14:41:47	6
26195	Koloina a été assigné à la tâche a dans le projet MOLLAN par Mathieu	f	138	130	2024-01-11 14:41:47	2024-01-11 14:41:47	6
26196	Koloina a été assigné à la tâche a dans le projet MOLLAN par Mathieu	f	138	132	2024-01-11 14:41:47	2024-01-11 14:41:47	6
26197	Tâche nouvellement créee du nom de Automatisation de l'import DEVIS par Koloina dans le projet MOLLAN.	f	147	127	2024-01-11 14:45:02	2024-01-11 14:45:02	5
26198	Tâche nouvellement créee du nom de Automatisation de l'import DEVIS par Koloina dans le projet MOLLAN.	f	147	130	2024-01-11 14:45:02	2024-01-11 14:45:02	5
26199	Tâche nouvellement créee du nom de Automatisation de l'import DEVIS par Koloina dans le projet MOLLAN.	f	147	135	2024-01-11 14:45:02	2024-01-11 14:45:02	5
26200	Tâche nouvellement créee du nom de Automatisation de l'import DEVIS par Koloina dans le projet MOLLAN.	f	147	138	2024-01-11 14:45:02	2024-01-11 14:45:02	5
26201	Tâche nouvellement créee du nom de Automatisation de l'import DEVIS par Koloina dans le projet MOLLAN.	f	147	132	2024-01-11 14:45:02	2024-01-11 14:45:02	5
26202	Tâche nouvellement créee du nom de Automatisation de l'import DEVIS par Koloina dans le projet MOLLAN.	f	147	131	2024-01-11 14:45:02	2024-01-11 14:45:02	5
26811	Mickaella a été assigné à la tâche Taches dans le projet FOCICOM par Mathieu	f	138	148	2024-01-24 13:05:20	2024-01-24 13:05:20	6
26203	Tâche nouvellement créee du nom de Automatisation de l'import DEVIS par Koloina dans le projet MOLLAN.	f	147	129	2024-01-11 14:45:02	2024-01-11 14:45:02	5
26205	Tâche nouvellement créee du nom de Automatisation de l'import DEVIS par Koloina dans le projet MOLLAN.	f	147	167	2024-01-11 14:45:02	2024-01-11 14:45:02	5
26206	Koloina a été assigné à la tâche Automatisation de l'import DEVIS dans le projet MOLLAN par Koloina	f	147	147	2024-01-11 11:45:04	2024-01-11 11:45:04	6
26207	Tâche nouvellement créee du nom de Modification sur le tableau REAPPROVISIONNEMENT par Mathieu dans le projet MOLLAN.	f	138	127	2024-01-11 14:52:00	2024-01-11 14:52:00	5
26208	Tâche nouvellement créee du nom de Modification sur le tableau REAPPROVISIONNEMENT par Mathieu dans le projet MOLLAN.	f	138	130	2024-01-11 14:52:00	2024-01-11 14:52:00	5
26209	Tâche nouvellement créee du nom de Modification sur le tableau REAPPROVISIONNEMENT par Mathieu dans le projet MOLLAN.	f	138	135	2024-01-11 14:52:00	2024-01-11 14:52:00	5
26210	Tâche nouvellement créee du nom de Modification sur le tableau REAPPROVISIONNEMENT par Mathieu dans le projet MOLLAN.	f	138	132	2024-01-11 14:52:00	2024-01-11 14:52:00	5
26211	Tâche nouvellement créee du nom de Modification sur le tableau REAPPROVISIONNEMENT par Mathieu dans le projet MOLLAN.	f	138	131	2024-01-11 14:52:00	2024-01-11 14:52:00	5
26212	Tâche nouvellement créee du nom de Modification sur le tableau REAPPROVISIONNEMENT par Mathieu dans le projet MOLLAN.	f	138	129	2024-01-11 14:52:00	2024-01-11 14:52:00	5
26214	Tâche nouvellement créee du nom de Modification sur le tableau REAPPROVISIONNEMENT par Mathieu dans le projet MOLLAN.	f	138	167	2024-01-11 14:52:00	2024-01-11 14:52:00	5
26242	Koloina a été assigné à la tâche Automatisation de l'import ARTICLE dans le projet MOLLAN par Koloina	f	147	130	2024-01-11 15:06:00	2024-01-11 15:06:00	6
26243	Koloina a été assigné à la tâche Automatisation de l'import ARTICLE dans le projet MOLLAN par Koloina	f	147	132	2024-01-11 15:06:00	2024-01-11 15:06:00	6
26204	Tâche nouvellement créee du nom de Automatisation de l'import DEVIS par Koloina dans le projet MOLLAN.	t	147	145	2024-01-11 14:45:02	2024-01-11 14:45:02	5
26213	Tâche nouvellement créee du nom de Modification sur le tableau REAPPROVISIONNEMENT par Mathieu dans le projet MOLLAN.	t	138	145	2024-01-11 14:52:00	2024-01-11 14:52:00	5
26215	Ioly a été assigné à la tâche Modification sur le tableau REAPPROVISIONNEMENT dans le projet MOLLAN par Mathieu	f	138	135	2024-01-11 11:52:00	2024-01-11 11:52:00	6
26216	Ioly a été assigné à la tâche Modification sur le tableau REAPPROVISIONNEMENT dans le projet MOLLAN par Mathieu	f	138	127	2024-01-11 14:52:01	2024-01-11 14:52:01	6
26217	Ioly a été assigné à la tâche Modification sur le tableau REAPPROVISIONNEMENT dans le projet MOLLAN par Mathieu	f	138	130	2024-01-11 14:52:01	2024-01-11 14:52:01	6
26218	Ioly a été assigné à la tâche Modification sur le tableau REAPPROVISIONNEMENT dans le projet MOLLAN par Mathieu	f	138	132	2024-01-11 14:52:01	2024-01-11 14:52:01	6
26219	Tâche nouvellement créee du nom de Modification sur le tableau REAPPROVISIONNEMENT par Mathieu dans le projet MOLLAN.	f	138	127	2024-01-11 14:54:18	2024-01-11 14:54:18	5
26220	Tâche nouvellement créee du nom de Modification sur le tableau REAPPROVISIONNEMENT par Mathieu dans le projet MOLLAN.	f	138	130	2024-01-11 14:54:18	2024-01-11 14:54:18	5
26221	Tâche nouvellement créee du nom de Modification sur le tableau REAPPROVISIONNEMENT par Mathieu dans le projet MOLLAN.	f	138	135	2024-01-11 14:54:18	2024-01-11 14:54:18	5
26222	Tâche nouvellement créee du nom de Modification sur le tableau REAPPROVISIONNEMENT par Mathieu dans le projet MOLLAN.	f	138	132	2024-01-11 14:54:18	2024-01-11 14:54:18	5
26223	Tâche nouvellement créee du nom de Modification sur le tableau REAPPROVISIONNEMENT par Mathieu dans le projet MOLLAN.	f	138	131	2024-01-11 14:54:18	2024-01-11 14:54:18	5
26224	Tâche nouvellement créee du nom de Modification sur le tableau REAPPROVISIONNEMENT par Mathieu dans le projet MOLLAN.	f	138	129	2024-01-11 14:54:18	2024-01-11 14:54:18	5
26226	Tâche nouvellement créee du nom de Modification sur le tableau REAPPROVISIONNEMENT par Mathieu dans le projet MOLLAN.	f	138	167	2024-01-11 14:54:18	2024-01-11 14:54:18	5
26228	Hassan a été assigné à la tâche Modification sur le tableau REAPPROVISIONNEMENT dans le projet MOLLAN par Mathieu	f	138	127	2024-01-11 14:54:19	2024-01-11 14:54:19	6
26229	Hassan a été assigné à la tâche Modification sur le tableau REAPPROVISIONNEMENT dans le projet MOLLAN par Mathieu	f	138	130	2024-01-11 14:54:19	2024-01-11 14:54:19	6
26230	Hassan a été assigné à la tâche Modification sur le tableau REAPPROVISIONNEMENT dans le projet MOLLAN par Mathieu	f	138	132	2024-01-11 14:54:19	2024-01-11 14:54:19	6
26231	Tâche nouvellement créee du nom de Automatisation de l'import ARTICLE par Koloina dans le projet MOLLAN.	f	147	127	2024-01-11 15:06:00	2024-01-11 15:06:00	5
26232	Tâche nouvellement créee du nom de Automatisation de l'import ARTICLE par Koloina dans le projet MOLLAN.	f	147	130	2024-01-11 15:06:00	2024-01-11 15:06:00	5
26233	Tâche nouvellement créee du nom de Automatisation de l'import ARTICLE par Koloina dans le projet MOLLAN.	f	147	135	2024-01-11 15:06:00	2024-01-11 15:06:00	5
26234	Tâche nouvellement créee du nom de Automatisation de l'import ARTICLE par Koloina dans le projet MOLLAN.	f	147	138	2024-01-11 15:06:00	2024-01-11 15:06:00	5
26235	Tâche nouvellement créee du nom de Automatisation de l'import ARTICLE par Koloina dans le projet MOLLAN.	f	147	132	2024-01-11 15:06:00	2024-01-11 15:06:00	5
26236	Tâche nouvellement créee du nom de Automatisation de l'import ARTICLE par Koloina dans le projet MOLLAN.	f	147	131	2024-01-11 15:06:00	2024-01-11 15:06:00	5
26237	Tâche nouvellement créee du nom de Automatisation de l'import ARTICLE par Koloina dans le projet MOLLAN.	f	147	129	2024-01-11 15:06:00	2024-01-11 15:06:00	5
26239	Tâche nouvellement créee du nom de Automatisation de l'import ARTICLE par Koloina dans le projet MOLLAN.	f	147	167	2024-01-11 15:06:00	2024-01-11 15:06:00	5
26240	Koloina a été assigné à la tâche Automatisation de l'import ARTICLE dans le projet MOLLAN par Koloina	f	147	147	2024-01-11 12:06:00	2024-01-11 12:06:00	6
26225	Tâche nouvellement créee du nom de Modification sur le tableau REAPPROVISIONNEMENT par Mathieu dans le projet MOLLAN.	t	138	145	2024-01-11 14:54:18	2024-01-11 14:54:18	5
26238	Tâche nouvellement créee du nom de Automatisation de l'import ARTICLE par Koloina dans le projet MOLLAN.	t	147	145	2024-01-11 15:06:00	2024-01-11 15:06:00	5
26244	Tâche nouvellement créee du nom de Faire les test de toutes les modifications apportées par Maphie au niveau de gestion PNR par Alain dans le projet Gestion PNR Issoufali.	f	129	127	2024-01-15 10:14:39	2024-01-15 10:14:39	5
26245	Tâche nouvellement créee du nom de Faire les test de toutes les modifications apportées par Maphie au niveau de gestion PNR par Alain dans le projet Gestion PNR Issoufali.	f	129	130	2024-01-15 10:14:39	2024-01-15 10:14:39	5
26246	Tâche nouvellement créee du nom de Faire les test de toutes les modifications apportées par Maphie au niveau de gestion PNR par Alain dans le projet Gestion PNR Issoufali.	f	129	135	2024-01-15 10:14:39	2024-01-15 10:14:39	5
26247	Tâche nouvellement créee du nom de Faire les test de toutes les modifications apportées par Maphie au niveau de gestion PNR par Alain dans le projet Gestion PNR Issoufali.	f	129	138	2024-01-15 10:14:39	2024-01-15 10:14:39	5
26248	Tâche nouvellement créee du nom de Faire les test de toutes les modifications apportées par Maphie au niveau de gestion PNR par Alain dans le projet Gestion PNR Issoufali.	f	129	132	2024-01-15 10:14:39	2024-01-15 10:14:39	5
26249	Tâche nouvellement créee du nom de Faire les test de toutes les modifications apportées par Maphie au niveau de gestion PNR par Alain dans le projet Gestion PNR Issoufali.	f	129	131	2024-01-15 10:14:39	2024-01-15 10:14:39	5
26250	Tâche nouvellement créee du nom de Faire les test de toutes les modifications apportées par Maphie au niveau de gestion PNR par Alain dans le projet Gestion PNR Issoufali.	f	129	145	2024-01-15 10:14:39	2024-01-15 10:14:39	5
26251	Tâche nouvellement créee du nom de Faire les test de toutes les modifications apportées par Maphie au niveau de gestion PNR par Alain dans le projet Gestion PNR Issoufali.	f	129	167	2024-01-15 10:14:39	2024-01-15 10:14:39	5
26252	Alain a été assigné à la tâche Faire les test de toutes les modifications apportées par Maphie au niveau de gestion PNR dans le projet Gestion PNR Issoufali par Alain	f	129	129	2024-01-15 07:14:40	2024-01-15 07:14:40	6
26672	Tâche SMEF supprimé par Mathieu.	f	138	129	2024-01-24 15:46:08	2024-01-24 15:46:08	3
26253	Alain a été assigné à la tâche Faire les test de toutes les modifications apportées par Maphie au niveau de gestion PNR dans le projet Gestion PNR Issoufali par Alain	f	129	127	2024-01-15 10:14:40	2024-01-15 10:14:40	6
26254	Alain a été assigné à la tâche Faire les test de toutes les modifications apportées par Maphie au niveau de gestion PNR dans le projet Gestion PNR Issoufali par Alain	f	129	130	2024-01-15 10:14:40	2024-01-15 10:14:40	6
26383	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	130	2024-01-19 12:07:19	2024-01-19 12:07:19	5
26255	Alain a été assigné à la tâche Faire les test de toutes les modifications apportées par Maphie au niveau de gestion PNR dans le projet Gestion PNR Issoufali par Alain	f	129	132	2024-01-15 10:14:40	2024-01-15 10:14:40	6
26256	Tâche nouvellement créee du nom de Lister toutes les nouvelles modifications du 15 janvier 2024 par Alain dans le projet Gestion PNR Issoufali.	f	129	127	2024-01-15 10:15:30	2024-01-15 10:15:30	5
26257	Tâche nouvellement créee du nom de Lister toutes les nouvelles modifications du 15 janvier 2024 par Alain dans le projet Gestion PNR Issoufali.	f	129	130	2024-01-15 10:15:30	2024-01-15 10:15:30	5
26258	Tâche nouvellement créee du nom de Lister toutes les nouvelles modifications du 15 janvier 2024 par Alain dans le projet Gestion PNR Issoufali.	f	129	135	2024-01-15 10:15:30	2024-01-15 10:15:30	5
26259	Tâche nouvellement créee du nom de Lister toutes les nouvelles modifications du 15 janvier 2024 par Alain dans le projet Gestion PNR Issoufali.	f	129	138	2024-01-15 10:15:30	2024-01-15 10:15:30	5
26260	Tâche nouvellement créee du nom de Lister toutes les nouvelles modifications du 15 janvier 2024 par Alain dans le projet Gestion PNR Issoufali.	f	129	132	2024-01-15 10:15:30	2024-01-15 10:15:30	5
26261	Tâche nouvellement créee du nom de Lister toutes les nouvelles modifications du 15 janvier 2024 par Alain dans le projet Gestion PNR Issoufali.	f	129	131	2024-01-15 10:15:30	2024-01-15 10:15:30	5
26262	Tâche nouvellement créee du nom de Lister toutes les nouvelles modifications du 15 janvier 2024 par Alain dans le projet Gestion PNR Issoufali.	f	129	145	2024-01-15 10:15:30	2024-01-15 10:15:30	5
26263	Tâche nouvellement créee du nom de Lister toutes les nouvelles modifications du 15 janvier 2024 par Alain dans le projet Gestion PNR Issoufali.	f	129	167	2024-01-15 10:15:30	2024-01-15 10:15:30	5
26264	Alain a été assigné à la tâche Lister toutes les nouvelles modifications du 15 janvier 2024 dans le projet Gestion PNR Issoufali par Alain	f	129	129	2024-01-15 07:15:30	2024-01-15 07:15:30	6
26268	Tâche nouvellement créee du nom de Ecrire un mail indiquant à toutes les utilisateurs de gestion PNR pour la mise à jour le 15 janvier 2024 par Alain dans le projet Gestion PNR Issoufali.	f	129	127	2024-01-15 10:17:19	2024-01-15 10:17:19	5
26269	Tâche nouvellement créee du nom de Ecrire un mail indiquant à toutes les utilisateurs de gestion PNR pour la mise à jour le 15 janvier 2024 par Alain dans le projet Gestion PNR Issoufali.	f	129	130	2024-01-15 10:17:19	2024-01-15 10:17:19	5
26270	Tâche nouvellement créee du nom de Ecrire un mail indiquant à toutes les utilisateurs de gestion PNR pour la mise à jour le 15 janvier 2024 par Alain dans le projet Gestion PNR Issoufali.	f	129	135	2024-01-15 10:17:19	2024-01-15 10:17:19	5
26271	Tâche nouvellement créee du nom de Ecrire un mail indiquant à toutes les utilisateurs de gestion PNR pour la mise à jour le 15 janvier 2024 par Alain dans le projet Gestion PNR Issoufali.	f	129	138	2024-01-15 10:17:19	2024-01-15 10:17:19	5
26272	Tâche nouvellement créee du nom de Ecrire un mail indiquant à toutes les utilisateurs de gestion PNR pour la mise à jour le 15 janvier 2024 par Alain dans le projet Gestion PNR Issoufali.	f	129	132	2024-01-15 10:17:19	2024-01-15 10:17:19	5
26273	Tâche nouvellement créee du nom de Ecrire un mail indiquant à toutes les utilisateurs de gestion PNR pour la mise à jour le 15 janvier 2024 par Alain dans le projet Gestion PNR Issoufali.	f	129	131	2024-01-15 10:17:19	2024-01-15 10:17:19	5
26274	Tâche nouvellement créee du nom de Ecrire un mail indiquant à toutes les utilisateurs de gestion PNR pour la mise à jour le 15 janvier 2024 par Alain dans le projet Gestion PNR Issoufali.	f	129	145	2024-01-15 10:17:19	2024-01-15 10:17:19	5
26275	Tâche nouvellement créee du nom de Ecrire un mail indiquant à toutes les utilisateurs de gestion PNR pour la mise à jour le 15 janvier 2024 par Alain dans le projet Gestion PNR Issoufali.	f	129	167	2024-01-15 10:17:19	2024-01-15 10:17:19	5
26265	Alain a été assigné à la tâche Lister toutes les nouvelles modifications du 15 janvier 2024 dans le projet Gestion PNR Issoufali par Alain	f	129	127	2024-01-15 10:15:30	2024-01-15 10:15:30	6
26266	Alain a été assigné à la tâche Lister toutes les nouvelles modifications du 15 janvier 2024 dans le projet Gestion PNR Issoufali par Alain	f	129	130	2024-01-15 10:15:30	2024-01-15 10:15:30	6
26267	Alain a été assigné à la tâche Lister toutes les nouvelles modifications du 15 janvier 2024 dans le projet Gestion PNR Issoufali par Alain	f	129	132	2024-01-15 10:15:30	2024-01-15 10:15:30	6
26276	Alain a été assigné à la tâche Ecrire un mail indiquant à toutes les utilisateurs de gestion PNR pour la mise à jour le 15 janvier 2024 dans le projet Gestion PNR Issoufali par Alain	f	129	129	2024-01-15 07:17:20	2024-01-15 07:17:20	6
26277	Alain a été assigné à la tâche Ecrire un mail indiquant à toutes les utilisateurs de gestion PNR pour la mise à jour le 15 janvier 2024 dans le projet Gestion PNR Issoufali par Alain	f	129	127	2024-01-15 10:17:21	2024-01-15 10:17:21	6
26278	Alain a été assigné à la tâche Ecrire un mail indiquant à toutes les utilisateurs de gestion PNR pour la mise à jour le 15 janvier 2024 dans le projet Gestion PNR Issoufali par Alain	f	129	130	2024-01-15 10:17:21	2024-01-15 10:17:21	6
26279	Alain a été assigné à la tâche Ecrire un mail indiquant à toutes les utilisateurs de gestion PNR pour la mise à jour le 15 janvier 2024 dans le projet Gestion PNR Issoufali par Alain	f	129	132	2024-01-15 10:17:21	2024-01-15 10:17:21	6
26280	Tâche "Ajouter une pagination pour les interfaces de la liste d'anomalies, clients et des utilisateur"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	127	2024-01-17 09:44:01	2024-01-17 09:44:01	1
26281	Tâche "Ajouter une pagination pour les interfaces de la liste d'anomalies, clients et des utilisateur"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	130	2024-01-17 09:44:01	2024-01-17 09:44:01	1
26282	Tâche "Ajouter une pagination pour les interfaces de la liste d'anomalies, clients et des utilisateur"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	135	2024-01-17 09:44:01	2024-01-17 09:44:01	1
26283	Tâche "Ajouter une pagination pour les interfaces de la liste d'anomalies, clients et des utilisateur"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	138	2024-01-17 09:44:01	2024-01-17 09:44:01	1
26284	Tâche "Ajouter une pagination pour les interfaces de la liste d'anomalies, clients et des utilisateur"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	132	2024-01-17 09:44:01	2024-01-17 09:44:01	1
26285	Tâche "Ajouter une pagination pour les interfaces de la liste d'anomalies, clients et des utilisateur"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	131	2024-01-17 09:44:01	2024-01-17 09:44:01	1
26286	Tâche "Ajouter une pagination pour les interfaces de la liste d'anomalies, clients et des utilisateur"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	145	2024-01-17 09:44:01	2024-01-17 09:44:01	1
26287	Tâche "Ajouter une pagination pour les interfaces de la liste d'anomalies, clients et des utilisateur"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	167	2024-01-17 09:44:01	2024-01-17 09:44:01	1
26288	Tâche "Lister les pnr décommandés"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	127	2024-01-17 09:44:30	2024-01-17 09:44:30	1
26289	Tâche "Lister les pnr décommandés"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	130	2024-01-17 09:44:30	2024-01-17 09:44:30	1
26290	Tâche "Lister les pnr décommandés"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	135	2024-01-17 09:44:30	2024-01-17 09:44:30	1
26291	Tâche "Lister les pnr décommandés"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	138	2024-01-17 09:44:30	2024-01-17 09:44:30	1
26292	Tâche "Lister les pnr décommandés"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	132	2024-01-17 09:44:30	2024-01-17 09:44:30	1
26293	Tâche "Lister les pnr décommandés"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	131	2024-01-17 09:44:30	2024-01-17 09:44:30	1
26294	Tâche "Lister les pnr décommandés"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	145	2024-01-17 09:44:30	2024-01-17 09:44:30	1
26295	Tâche "Lister les pnr décommandés"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	167	2024-01-17 09:44:30	2024-01-17 09:44:30	1
26296	Tâche "Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	127	2024-01-17 09:44:40	2024-01-17 09:44:40	1
26297	Tâche "Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	130	2024-01-17 09:44:40	2024-01-17 09:44:40	1
26298	Tâche "Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	135	2024-01-17 09:44:40	2024-01-17 09:44:40	1
26299	Tâche "Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	138	2024-01-17 09:44:40	2024-01-17 09:44:40	1
26300	Tâche "Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	132	2024-01-17 09:44:40	2024-01-17 09:44:40	1
26301	Tâche "Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	131	2024-01-17 09:44:40	2024-01-17 09:44:40	1
26302	Tâche "Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	145	2024-01-17 09:44:40	2024-01-17 09:44:40	1
26303	Tâche "Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	167	2024-01-17 09:44:40	2024-01-17 09:44:40	1
26304	Tâche "Ajouter une champ permettant d'ajouter le numéro d'EMD pour l'AVOIR COMPAGNIE"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	127	2024-01-17 09:44:44	2024-01-17 09:44:44	1
26384	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	135	2024-01-19 12:07:19	2024-01-19 12:07:19	5
26305	Tâche "Ajouter une champ permettant d'ajouter le numéro d'EMD pour l'AVOIR COMPAGNIE"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	130	2024-01-17 09:44:44	2024-01-17 09:44:44	1
26306	Tâche "Ajouter une champ permettant d'ajouter le numéro d'EMD pour l'AVOIR COMPAGNIE"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	135	2024-01-17 09:44:44	2024-01-17 09:44:44	1
26307	Tâche "Ajouter une champ permettant d'ajouter le numéro d'EMD pour l'AVOIR COMPAGNIE"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	138	2024-01-17 09:44:44	2024-01-17 09:44:44	1
26308	Tâche "Ajouter une champ permettant d'ajouter le numéro d'EMD pour l'AVOIR COMPAGNIE"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	132	2024-01-17 09:44:44	2024-01-17 09:44:44	1
26309	Tâche "Ajouter une champ permettant d'ajouter le numéro d'EMD pour l'AVOIR COMPAGNIE"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	131	2024-01-17 09:44:44	2024-01-17 09:44:44	1
26310	Tâche "Ajouter une champ permettant d'ajouter le numéro d'EMD pour l'AVOIR COMPAGNIE"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	145	2024-01-17 09:44:44	2024-01-17 09:44:44	1
26311	Tâche "Ajouter une champ permettant d'ajouter le numéro d'EMD pour l'AVOIR COMPAGNIE"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	167	2024-01-17 09:44:44	2024-01-17 09:44:44	1
26312	Tâche "Permettre de décommander le PNR dans gestion PNR"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	127	2024-01-17 09:44:49	2024-01-17 09:44:49	1
26313	Tâche "Permettre de décommander le PNR dans gestion PNR"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	130	2024-01-17 09:44:49	2024-01-17 09:44:49	1
26314	Tâche "Permettre de décommander le PNR dans gestion PNR"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	135	2024-01-17 09:44:49	2024-01-17 09:44:49	1
26315	Tâche "Permettre de décommander le PNR dans gestion PNR"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	138	2024-01-17 09:44:49	2024-01-17 09:44:49	1
26316	Tâche "Permettre de décommander le PNR dans gestion PNR"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	132	2024-01-17 09:44:49	2024-01-17 09:44:49	1
26317	Tâche "Permettre de décommander le PNR dans gestion PNR"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	131	2024-01-17 09:44:49	2024-01-17 09:44:49	1
26318	Tâche "Permettre de décommander le PNR dans gestion PNR"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	145	2024-01-17 09:44:49	2024-01-17 09:44:49	1
26319	Tâche "Permettre de décommander le PNR dans gestion PNR"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	167	2024-01-17 09:44:49	2024-01-17 09:44:49	1
26320	Tâche "Création d'un billet à partir de gestion PNR "\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	127	2024-01-17 09:44:53	2024-01-17 09:44:53	1
26321	Tâche "Création d'un billet à partir de gestion PNR "\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	130	2024-01-17 09:44:53	2024-01-17 09:44:53	1
26322	Tâche "Création d'un billet à partir de gestion PNR "\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	135	2024-01-17 09:44:53	2024-01-17 09:44:53	1
26323	Tâche "Création d'un billet à partir de gestion PNR "\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	138	2024-01-17 09:44:53	2024-01-17 09:44:53	1
26324	Tâche "Création d'un billet à partir de gestion PNR "\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	132	2024-01-17 09:44:53	2024-01-17 09:44:53	1
26325	Tâche "Création d'un billet à partir de gestion PNR "\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	131	2024-01-17 09:44:53	2024-01-17 09:44:53	1
26326	Tâche "Création d'un billet à partir de gestion PNR "\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	145	2024-01-17 09:44:53	2024-01-17 09:44:53	1
26327	Tâche "Création d'un billet à partir de gestion PNR "\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	167	2024-01-17 09:44:53	2024-01-17 09:44:53	1
26328	Tâche nouvellement créee du nom de Optimisation de la liste des PNRs (réduction du temps de rechargement de la page) par Alain dans le projet Gestion PNR Issoufali.	f	129	127	2024-01-17 09:47:21	2024-01-17 09:47:21	5
26329	Tâche nouvellement créee du nom de Optimisation de la liste des PNRs (réduction du temps de rechargement de la page) par Alain dans le projet Gestion PNR Issoufali.	f	129	130	2024-01-17 09:47:21	2024-01-17 09:47:21	5
26330	Tâche nouvellement créee du nom de Optimisation de la liste des PNRs (réduction du temps de rechargement de la page) par Alain dans le projet Gestion PNR Issoufali.	f	129	135	2024-01-17 09:47:21	2024-01-17 09:47:21	5
26331	Tâche nouvellement créee du nom de Optimisation de la liste des PNRs (réduction du temps de rechargement de la page) par Alain dans le projet Gestion PNR Issoufali.	f	129	138	2024-01-17 09:47:21	2024-01-17 09:47:21	5
26332	Tâche nouvellement créee du nom de Optimisation de la liste des PNRs (réduction du temps de rechargement de la page) par Alain dans le projet Gestion PNR Issoufali.	f	129	132	2024-01-17 09:47:21	2024-01-17 09:47:21	5
26333	Tâche nouvellement créee du nom de Optimisation de la liste des PNRs (réduction du temps de rechargement de la page) par Alain dans le projet Gestion PNR Issoufali.	f	129	131	2024-01-17 09:47:21	2024-01-17 09:47:21	5
26334	Tâche nouvellement créee du nom de Optimisation de la liste des PNRs (réduction du temps de rechargement de la page) par Alain dans le projet Gestion PNR Issoufali.	f	129	145	2024-01-17 09:47:21	2024-01-17 09:47:21	5
26335	Tâche nouvellement créee du nom de Optimisation de la liste des PNRs (réduction du temps de rechargement de la page) par Alain dans le projet Gestion PNR Issoufali.	f	129	167	2024-01-17 09:47:21	2024-01-17 09:47:21	5
26336	Alain a été assigné à la tâche Optimisation de la liste des PNRs (réduction du temps de rechargement de la page) dans le projet Gestion PNR Issoufali par Alain	f	129	129	2024-01-17 06:47:21	2024-01-17 06:47:21	6
26337	Alain a été assigné à la tâche Optimisation de la liste des PNRs (réduction du temps de rechargement de la page) dans le projet Gestion PNR Issoufali par Alain	f	129	127	2024-01-17 09:47:21	2024-01-17 09:47:21	6
26338	Alain a été assigné à la tâche Optimisation de la liste des PNRs (réduction du temps de rechargement de la page) dans le projet Gestion PNR Issoufali par Alain	f	129	130	2024-01-17 09:47:21	2024-01-17 09:47:21	6
26339	Alain a été assigné à la tâche Optimisation de la liste des PNRs (réduction du temps de rechargement de la page) dans le projet Gestion PNR Issoufali par Alain	f	129	132	2024-01-17 09:47:21	2024-01-17 09:47:21	6
26340	Tâche nouvellement créee du nom de Ajout module tracked_reserved_qty par Hasina dans le projet QWEHLI v1 - Integration Odoo 16.	f	131	127	2024-01-19 12:04:24	2024-01-19 12:04:24	5
26341	Tâche nouvellement créee du nom de Ajout module tracked_reserved_qty par Hasina dans le projet QWEHLI v1 - Integration Odoo 16.	f	131	130	2024-01-19 12:04:24	2024-01-19 12:04:24	5
26342	Tâche nouvellement créee du nom de Ajout module tracked_reserved_qty par Hasina dans le projet QWEHLI v1 - Integration Odoo 16.	f	131	135	2024-01-19 12:04:24	2024-01-19 12:04:24	5
26343	Tâche nouvellement créee du nom de Ajout module tracked_reserved_qty par Hasina dans le projet QWEHLI v1 - Integration Odoo 16.	f	131	138	2024-01-19 12:04:24	2024-01-19 12:04:24	5
26344	Tâche nouvellement créee du nom de Ajout module tracked_reserved_qty par Hasina dans le projet QWEHLI v1 - Integration Odoo 16.	f	131	132	2024-01-19 12:04:24	2024-01-19 12:04:24	5
26345	Tâche nouvellement créee du nom de Ajout module tracked_reserved_qty par Hasina dans le projet QWEHLI v1 - Integration Odoo 16.	f	131	150	2024-01-19 12:04:24	2024-01-19 12:04:24	5
26346	Tâche nouvellement créee du nom de Ajout module tracked_reserved_qty par Hasina dans le projet QWEHLI v1 - Integration Odoo 16.	f	131	145	2024-01-19 12:04:24	2024-01-19 12:04:24	5
26347	Tâche nouvellement créee du nom de Ajout module tracked_reserved_qty par Hasina dans le projet QWEHLI v1 - Integration Odoo 16.	f	131	129	2024-01-19 12:04:24	2024-01-19 12:04:24	5
26348	Tâche nouvellement créee du nom de Ajout module tracked_reserved_qty par Hasina dans le projet QWEHLI v1 - Integration Odoo 16.	f	131	167	2024-01-19 12:04:24	2024-01-19 12:04:24	5
26349	Anja a été assigné à la tâche Ajout module tracked_reserved_qty dans le projet QWEHLI v1 - Integration Odoo 16 par Hasina	f	131	133	2024-01-19 09:04:24	2024-01-19 09:04:24	6
26350	Anja a été assigné à la tâche Ajout module tracked_reserved_qty dans le projet QWEHLI v1 - Integration Odoo 16 par Hasina	f	131	127	2024-01-19 12:04:24	2024-01-19 12:04:24	6
26351	Anja a été assigné à la tâche Ajout module tracked_reserved_qty dans le projet QWEHLI v1 - Integration Odoo 16 par Hasina	f	131	130	2024-01-19 12:04:24	2024-01-19 12:04:24	6
26352	Anja a été assigné à la tâche Ajout module tracked_reserved_qty dans le projet QWEHLI v1 - Integration Odoo 16 par Hasina	f	131	132	2024-01-19 12:04:24	2024-01-19 12:04:24	6
26353	Anja a été assigné à la tâche Ajout module tracked_reserved_qty dans le projet QWEHLI v1 - Integration Odoo 16 par Hasina	f	131	150	2024-01-19 12:04:24	2024-01-19 12:04:24	6
26354	Tâche Ajout module tracked_reserved_qty supprimé par Hasina.	f	131	127	2024-01-19 12:04:31	2024-01-19 12:04:31	3
26355	Tâche Ajout module tracked_reserved_qty supprimé par Hasina.	f	131	130	2024-01-19 12:04:31	2024-01-19 12:04:31	3
26356	Tâche Ajout module tracked_reserved_qty supprimé par Hasina.	f	131	135	2024-01-19 12:04:31	2024-01-19 12:04:31	3
26357	Tâche Ajout module tracked_reserved_qty supprimé par Hasina.	f	131	138	2024-01-19 12:04:31	2024-01-19 12:04:31	3
26358	Tâche Ajout module tracked_reserved_qty supprimé par Hasina.	f	131	132	2024-01-19 12:04:31	2024-01-19 12:04:31	3
26359	Tâche Ajout module tracked_reserved_qty supprimé par Hasina.	f	131	150	2024-01-19 12:04:31	2024-01-19 12:04:31	3
26360	Tâche Ajout module tracked_reserved_qty supprimé par Hasina.	f	131	145	2024-01-19 12:04:31	2024-01-19 12:04:31	3
26361	Tâche Ajout module tracked_reserved_qty supprimé par Hasina.	f	131	129	2024-01-19 12:04:31	2024-01-19 12:04:31	3
26362	Tâche Ajout module tracked_reserved_qty supprimé par Hasina.	f	131	167	2024-01-19 12:04:31	2024-01-19 12:04:31	3
26363	Tâche Ajout module tracked_reserved_qty supprimé par Hasina.	f	131	127	2024-01-19 12:04:38	2024-01-19 12:04:38	3
26364	Tâche Ajout module tracked_reserved_qty supprimé par Hasina.	f	131	130	2024-01-19 12:04:38	2024-01-19 12:04:38	3
26365	Tâche Ajout module tracked_reserved_qty supprimé par Hasina.	f	131	135	2024-01-19 12:04:38	2024-01-19 12:04:38	3
26366	Tâche Ajout module tracked_reserved_qty supprimé par Hasina.	f	131	138	2024-01-19 12:04:38	2024-01-19 12:04:38	3
26367	Tâche Ajout module tracked_reserved_qty supprimé par Hasina.	f	131	132	2024-01-19 12:04:38	2024-01-19 12:04:38	3
26368	Tâche Ajout module tracked_reserved_qty supprimé par Hasina.	f	131	150	2024-01-19 12:04:38	2024-01-19 12:04:38	3
26369	Tâche Ajout module tracked_reserved_qty supprimé par Hasina.	f	131	145	2024-01-19 12:04:38	2024-01-19 12:04:38	3
26370	Tâche Ajout module tracked_reserved_qty supprimé par Hasina.	f	131	129	2024-01-19 12:04:38	2024-01-19 12:04:38	3
26371	Tâche Ajout module tracked_reserved_qty supprimé par Hasina.	f	131	167	2024-01-19 12:04:38	2024-01-19 12:04:38	3
26372	Tâche "Ajout module tracked_reserved_qty"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " En blocage " par Anja	f	133	127	2024-01-19 12:07:14	2024-01-19 12:07:14	1
26373	Tâche "Ajout module tracked_reserved_qty"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " En blocage " par Anja	f	133	130	2024-01-19 12:07:14	2024-01-19 12:07:14	1
26374	Tâche "Ajout module tracked_reserved_qty"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " En blocage " par Anja	f	133	135	2024-01-19 12:07:14	2024-01-19 12:07:14	1
26375	Tâche "Ajout module tracked_reserved_qty"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " En blocage " par Anja	f	133	138	2024-01-19 12:07:14	2024-01-19 12:07:14	1
26376	Tâche "Ajout module tracked_reserved_qty"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " En blocage " par Anja	f	133	132	2024-01-19 12:07:14	2024-01-19 12:07:14	1
26377	Tâche "Ajout module tracked_reserved_qty"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " En blocage " par Anja	f	133	131	2024-01-19 12:07:14	2024-01-19 12:07:14	1
26378	Tâche "Ajout module tracked_reserved_qty"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " En blocage " par Anja	f	133	145	2024-01-19 12:07:14	2024-01-19 12:07:14	1
26379	Tâche "Ajout module tracked_reserved_qty"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " En blocage " par Anja	f	133	129	2024-01-19 12:07:14	2024-01-19 12:07:14	1
26380	Tâche "Ajout module tracked_reserved_qty"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " En blocage " par Anja	f	133	150	2024-01-19 12:07:14	2024-01-19 12:07:14	1
26381	Tâche "Ajout module tracked_reserved_qty"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " En blocage " par Anja	f	133	167	2024-01-19 12:07:14	2024-01-19 12:07:14	1
26382	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	127	2024-01-19 12:07:19	2024-01-19 12:07:19	5
26675	Tâche SMEF supprimé par Mathieu.	f	138	127	2024-01-24 15:46:16	2024-01-24 15:46:16	3
26385	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	138	2024-01-19 12:07:19	2024-01-19 12:07:19	5
26386	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	132	2024-01-19 12:07:19	2024-01-19 12:07:19	5
26387	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	131	2024-01-19 12:07:19	2024-01-19 12:07:19	5
26388	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	145	2024-01-19 12:07:19	2024-01-19 12:07:19	5
26389	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	129	2024-01-19 12:07:19	2024-01-19 12:07:19	5
26390	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	150	2024-01-19 12:07:19	2024-01-19 12:07:19	5
26391	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	167	2024-01-19 12:07:19	2024-01-19 12:07:19	5
26393	Mickaella a été assigné à la tâche SMEF dans le projet MADAPLAST - Intervention et accompagnement par Mickaella	f	148	127	2024-01-19 12:07:19	2024-01-19 12:07:19	6
26394	Mickaella a été assigné à la tâche SMEF dans le projet MADAPLAST - Intervention et accompagnement par Mickaella	f	148	130	2024-01-19 12:07:19	2024-01-19 12:07:19	6
26395	Mickaella a été assigné à la tâche SMEF dans le projet MADAPLAST - Intervention et accompagnement par Mickaella	f	148	132	2024-01-19 12:07:19	2024-01-19 12:07:19	6
26396	Mickaella a été assigné à la tâche SMEF dans le projet MADAPLAST - Intervention et accompagnement par Mickaella	f	148	150	2024-01-19 12:07:19	2024-01-19 12:07:19	6
26397	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	127	2024-01-19 12:10:08	2024-01-19 12:10:08	5
26398	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	130	2024-01-19 12:10:08	2024-01-19 12:10:08	5
26399	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	135	2024-01-19 12:10:08	2024-01-19 12:10:08	5
26400	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	138	2024-01-19 12:10:08	2024-01-19 12:10:08	5
26401	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	132	2024-01-19 12:10:08	2024-01-19 12:10:08	5
26402	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	131	2024-01-19 12:10:08	2024-01-19 12:10:08	5
26403	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	145	2024-01-19 12:10:08	2024-01-19 12:10:08	5
26404	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	129	2024-01-19 12:10:08	2024-01-19 12:10:08	5
26405	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	150	2024-01-19 12:10:08	2024-01-19 12:10:08	5
26406	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	167	2024-01-19 12:10:08	2024-01-19 12:10:08	5
26408	Mickaella a été assigné à la tâche SMEF dans le projet MADAPLAST - Intervention et accompagnement par Mickaella	f	148	127	2024-01-19 12:10:08	2024-01-19 12:10:08	6
26409	Mickaella a été assigné à la tâche SMEF dans le projet MADAPLAST - Intervention et accompagnement par Mickaella	f	148	130	2024-01-19 12:10:08	2024-01-19 12:10:08	6
26410	Mickaella a été assigné à la tâche SMEF dans le projet MADAPLAST - Intervention et accompagnement par Mickaella	f	148	132	2024-01-19 12:10:08	2024-01-19 12:10:08	6
26411	Mickaella a été assigné à la tâche SMEF dans le projet MADAPLAST - Intervention et accompagnement par Mickaella	f	148	150	2024-01-19 12:10:08	2024-01-19 12:10:08	6
26412	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	127	2024-01-19 12:11:22	2024-01-19 12:11:22	5
26413	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	130	2024-01-19 12:11:22	2024-01-19 12:11:22	5
26414	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	135	2024-01-19 12:11:22	2024-01-19 12:11:22	5
26415	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	138	2024-01-19 12:11:22	2024-01-19 12:11:22	5
26416	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	132	2024-01-19 12:11:22	2024-01-19 12:11:22	5
26417	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	131	2024-01-19 12:11:22	2024-01-19 12:11:22	5
26418	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	145	2024-01-19 12:11:22	2024-01-19 12:11:22	5
26419	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	129	2024-01-19 12:11:22	2024-01-19 12:11:22	5
26420	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	150	2024-01-19 12:11:22	2024-01-19 12:11:22	5
26421	Tâche nouvellement créee du nom de SMEF par Mickaella dans le projet MADAPLAST - Intervention et accompagnement.	f	148	167	2024-01-19 12:11:22	2024-01-19 12:11:22	5
26423	Mickaella a été assigné à la tâche SMEF dans le projet MADAPLAST - Intervention et accompagnement par Mickaella	f	148	127	2024-01-19 12:11:22	2024-01-19 12:11:22	6
26424	Mickaella a été assigné à la tâche SMEF dans le projet MADAPLAST - Intervention et accompagnement par Mickaella	f	148	130	2024-01-19 12:11:22	2024-01-19 12:11:22	6
26425	Mickaella a été assigné à la tâche SMEF dans le projet MADAPLAST - Intervention et accompagnement par Mickaella	f	148	132	2024-01-19 12:11:22	2024-01-19 12:11:22	6
26426	Mickaella a été assigné à la tâche SMEF dans le projet MADAPLAST - Intervention et accompagnement par Mickaella	f	148	150	2024-01-19 12:11:22	2024-01-19 12:11:22	6
26427	Tâche nouvellement créee du nom de ISSOUFALI - Déploiement du fichier "Préparation d'import" par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	127	2024-01-19 12:12:30	2024-01-19 12:12:30	5
26428	Tâche nouvellement créee du nom de ISSOUFALI - Déploiement du fichier "Préparation d'import" par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	130	2024-01-19 12:12:30	2024-01-19 12:12:30	5
26429	Tâche nouvellement créee du nom de ISSOUFALI - Déploiement du fichier "Préparation d'import" par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	135	2024-01-19 12:12:30	2024-01-19 12:12:30	5
26430	Tâche nouvellement créee du nom de ISSOUFALI - Déploiement du fichier "Préparation d'import" par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	138	2024-01-19 12:12:30	2024-01-19 12:12:30	5
26431	Tâche nouvellement créee du nom de ISSOUFALI - Déploiement du fichier "Préparation d'import" par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	132	2024-01-19 12:12:30	2024-01-19 12:12:30	5
26432	Tâche nouvellement créee du nom de ISSOUFALI - Déploiement du fichier "Préparation d'import" par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	131	2024-01-19 12:12:30	2024-01-19 12:12:30	5
26433	Tâche nouvellement créee du nom de ISSOUFALI - Déploiement du fichier "Préparation d'import" par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	145	2024-01-19 12:12:30	2024-01-19 12:12:30	5
26434	Tâche nouvellement créee du nom de ISSOUFALI - Déploiement du fichier "Préparation d'import" par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	129	2024-01-19 12:12:30	2024-01-19 12:12:30	5
26435	Tâche nouvellement créee du nom de ISSOUFALI - Déploiement du fichier "Préparation d'import" par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	150	2024-01-19 12:12:30	2024-01-19 12:12:30	5
26436	Tâche nouvellement créee du nom de ISSOUFALI - Déploiement du fichier "Préparation d'import" par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	167	2024-01-19 12:12:30	2024-01-19 12:12:30	5
26442	Tâche nouvellement créee du nom de ISSOUFALI - Actualisation du fichier import compta  par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	127	2024-01-19 12:19:26	2024-01-19 12:19:26	5
26443	Tâche nouvellement créee du nom de ISSOUFALI - Actualisation du fichier import compta  par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	130	2024-01-19 12:19:26	2024-01-19 12:19:26	5
26444	Tâche nouvellement créee du nom de ISSOUFALI - Actualisation du fichier import compta  par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	135	2024-01-19 12:19:26	2024-01-19 12:19:26	5
26673	Tâche SMEF supprimé par Mathieu.	f	138	150	2024-01-24 15:46:08	2024-01-24 15:46:08	3
26445	Tâche nouvellement créee du nom de ISSOUFALI - Actualisation du fichier import compta  par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	138	2024-01-19 12:19:26	2024-01-19 12:19:26	5
26446	Tâche nouvellement créee du nom de ISSOUFALI - Actualisation du fichier import compta  par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	132	2024-01-19 12:19:26	2024-01-19 12:19:26	5
26447	Tâche nouvellement créee du nom de ISSOUFALI - Actualisation du fichier import compta  par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	131	2024-01-19 12:19:26	2024-01-19 12:19:26	5
26448	Tâche nouvellement créee du nom de ISSOUFALI - Actualisation du fichier import compta  par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	145	2024-01-19 12:19:26	2024-01-19 12:19:26	5
26449	Tâche nouvellement créee du nom de ISSOUFALI - Actualisation du fichier import compta  par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	129	2024-01-19 12:19:26	2024-01-19 12:19:26	5
26450	Tâche nouvellement créee du nom de ISSOUFALI - Actualisation du fichier import compta  par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	150	2024-01-19 12:19:26	2024-01-19 12:19:26	5
26451	Tâche nouvellement créee du nom de ISSOUFALI - Actualisation du fichier import compta  par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	167	2024-01-19 12:19:26	2024-01-19 12:19:26	5
26437	Koloina a été assigné à la tâche ISSOUFALI - Déploiement du fichier "Préparation d'import" dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	147	2024-01-19 09:12:30	2024-01-19 09:12:30	6
26482	Tâche nouvellement créee du nom de MOLLAN - Import objets métiers avec vba par Koloina dans le projet MOLLAN.	f	147	127	2024-01-19 12:24:44	2024-01-19 12:24:44	5
26483	Tâche nouvellement créee du nom de MOLLAN - Import objets métiers avec vba par Koloina dans le projet MOLLAN.	f	147	130	2024-01-19 12:24:44	2024-01-19 12:24:44	5
26484	Tâche nouvellement créee du nom de MOLLAN - Import objets métiers avec vba par Koloina dans le projet MOLLAN.	f	147	135	2024-01-19 12:24:44	2024-01-19 12:24:44	5
26485	Tâche nouvellement créee du nom de MOLLAN - Import objets métiers avec vba par Koloina dans le projet MOLLAN.	f	147	138	2024-01-19 12:24:44	2024-01-19 12:24:44	5
26486	Tâche nouvellement créee du nom de MOLLAN - Import objets métiers avec vba par Koloina dans le projet MOLLAN.	f	147	132	2024-01-19 12:24:44	2024-01-19 12:24:44	5
26487	Tâche nouvellement créee du nom de MOLLAN - Import objets métiers avec vba par Koloina dans le projet MOLLAN.	f	147	131	2024-01-19 12:24:44	2024-01-19 12:24:44	5
26488	Tâche nouvellement créee du nom de MOLLAN - Import objets métiers avec vba par Koloina dans le projet MOLLAN.	f	147	145	2024-01-19 12:24:44	2024-01-19 12:24:44	5
26489	Tâche nouvellement créee du nom de MOLLAN - Import objets métiers avec vba par Koloina dans le projet MOLLAN.	f	147	129	2024-01-19 12:24:44	2024-01-19 12:24:44	5
26490	Tâche nouvellement créee du nom de MOLLAN - Import objets métiers avec vba par Koloina dans le projet MOLLAN.	f	147	150	2024-01-19 12:24:44	2024-01-19 12:24:44	5
26491	Tâche nouvellement créee du nom de MOLLAN - Import objets métiers avec vba par Koloina dans le projet MOLLAN.	f	147	167	2024-01-19 12:24:44	2024-01-19 12:24:44	5
26537	Koloina a été assigné à la tâche MOLLAN - Réduction du fichier log dans le projet MOLLAN par Koloina	f	147	147	2024-01-19 09:29:57	2024-01-19 09:29:57	6
26438	Koloina a été assigné à la tâche ISSOUFALI - Déploiement du fichier "Préparation d'import" dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	127	2024-01-19 12:12:30	2024-01-19 12:12:30	6
26439	Koloina a été assigné à la tâche ISSOUFALI - Déploiement du fichier "Préparation d'import" dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	130	2024-01-19 12:12:30	2024-01-19 12:12:30	6
26440	Koloina a été assigné à la tâche ISSOUFALI - Déploiement du fichier "Préparation d'import" dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	132	2024-01-19 12:12:30	2024-01-19 12:12:30	6
26441	Koloina a été assigné à la tâche ISSOUFALI - Déploiement du fichier "Préparation d'import" dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	150	2024-01-19 12:12:30	2024-01-19 12:12:30	6
26452	Koloina a été assigné à la tâche ISSOUFALI - Actualisation du fichier import compta  dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	147	2024-01-19 09:19:26	2024-01-19 09:19:26	6
26493	Koloina a été assigné à la tâche MOLLAN - Import objets métiers avec vba dans le projet MOLLAN par Koloina	f	147	127	2024-01-19 12:24:44	2024-01-19 12:24:44	6
26494	Koloina a été assigné à la tâche MOLLAN - Import objets métiers avec vba dans le projet MOLLAN par Koloina	f	147	130	2024-01-19 12:24:44	2024-01-19 12:24:44	6
26495	Koloina a été assigné à la tâche MOLLAN - Import objets métiers avec vba dans le projet MOLLAN par Koloina	f	147	132	2024-01-19 12:24:44	2024-01-19 12:24:44	6
26496	Koloina a été assigné à la tâche MOLLAN - Import objets métiers avec vba dans le projet MOLLAN par Koloina	f	147	150	2024-01-19 12:24:44	2024-01-19 12:24:44	6
26522	Koloina a été assigné à la tâche MOLLAN - Mise en place de l'objet métier dans le projet MOLLAN par Koloina	f	147	147	2024-01-19 09:27:33	2024-01-19 09:27:33	6
26453	Koloina a été assigné à la tâche ISSOUFALI - Actualisation du fichier import compta  dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	127	2024-01-19 12:19:26	2024-01-19 12:19:26	6
26454	Koloina a été assigné à la tâche ISSOUFALI - Actualisation du fichier import compta  dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	130	2024-01-19 12:19:26	2024-01-19 12:19:26	6
26455	Koloina a été assigné à la tâche ISSOUFALI - Actualisation du fichier import compta  dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	132	2024-01-19 12:19:26	2024-01-19 12:19:26	6
26456	Koloina a été assigné à la tâche ISSOUFALI - Actualisation du fichier import compta  dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	150	2024-01-19 12:19:26	2024-01-19 12:19:26	6
26457	Tâche "ISSOUFALI - Actualisation du fichier import compta "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	127	2024-01-19 12:19:28	2024-01-19 12:19:28	1
26458	Tâche "ISSOUFALI - Actualisation du fichier import compta "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	130	2024-01-19 12:19:28	2024-01-19 12:19:28	1
26459	Tâche "ISSOUFALI - Actualisation du fichier import compta "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	135	2024-01-19 12:19:28	2024-01-19 12:19:28	1
26460	Tâche "ISSOUFALI - Actualisation du fichier import compta "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	138	2024-01-19 12:19:28	2024-01-19 12:19:28	1
26461	Tâche "ISSOUFALI - Actualisation du fichier import compta "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	132	2024-01-19 12:19:28	2024-01-19 12:19:28	1
26462	Tâche "ISSOUFALI - Actualisation du fichier import compta "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	131	2024-01-19 12:19:28	2024-01-19 12:19:28	1
26463	Tâche "ISSOUFALI - Actualisation du fichier import compta "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	145	2024-01-19 12:19:28	2024-01-19 12:19:28	1
26464	Tâche "ISSOUFALI - Actualisation du fichier import compta "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	129	2024-01-19 12:19:28	2024-01-19 12:19:28	1
26465	Tâche "ISSOUFALI - Actualisation du fichier import compta "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	150	2024-01-19 12:19:28	2024-01-19 12:19:28	1
26466	Tâche "ISSOUFALI - Actualisation du fichier import compta "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	167	2024-01-19 12:19:28	2024-01-19 12:19:28	1
26477	Koloina a été assigné à la tâche MOLLAN - Import Bon de commande  dans le projet MOLLAN par Koloina	f	147	147	2024-01-19 09:22:58	2024-01-19 09:22:58	6
26492	Koloina a été assigné à la tâche MOLLAN - Import objets métiers avec vba dans le projet MOLLAN par Koloina	f	147	147	2024-01-19 09:24:44	2024-01-19 09:24:44	6
26507	Koloina a été assigné à la tâche MOLLAN - Modification des propriétés pour le serveur PROD dans le projet MOLLAN par Koloina	f	147	147	2024-01-19 09:26:25	2024-01-19 09:26:25	6
26527	Tâche nouvellement créee du nom de MOLLAN - Réduction du fichier log par Koloina dans le projet MOLLAN.	f	147	127	2024-01-19 12:29:57	2024-01-19 12:29:57	5
26528	Tâche nouvellement créee du nom de MOLLAN - Réduction du fichier log par Koloina dans le projet MOLLAN.	f	147	130	2024-01-19 12:29:57	2024-01-19 12:29:57	5
26529	Tâche nouvellement créee du nom de MOLLAN - Réduction du fichier log par Koloina dans le projet MOLLAN.	f	147	135	2024-01-19 12:29:57	2024-01-19 12:29:57	5
26530	Tâche nouvellement créee du nom de MOLLAN - Réduction du fichier log par Koloina dans le projet MOLLAN.	f	147	138	2024-01-19 12:29:57	2024-01-19 12:29:57	5
26531	Tâche nouvellement créee du nom de MOLLAN - Réduction du fichier log par Koloina dans le projet MOLLAN.	f	147	132	2024-01-19 12:29:57	2024-01-19 12:29:57	5
26532	Tâche nouvellement créee du nom de MOLLAN - Réduction du fichier log par Koloina dans le projet MOLLAN.	f	147	131	2024-01-19 12:29:57	2024-01-19 12:29:57	5
26533	Tâche nouvellement créee du nom de MOLLAN - Réduction du fichier log par Koloina dans le projet MOLLAN.	f	147	145	2024-01-19 12:29:57	2024-01-19 12:29:57	5
26534	Tâche nouvellement créee du nom de MOLLAN - Réduction du fichier log par Koloina dans le projet MOLLAN.	f	147	129	2024-01-19 12:29:57	2024-01-19 12:29:57	5
26535	Tâche nouvellement créee du nom de MOLLAN - Réduction du fichier log par Koloina dans le projet MOLLAN.	f	147	150	2024-01-19 12:29:57	2024-01-19 12:29:57	5
26536	Tâche nouvellement créee du nom de MOLLAN - Réduction du fichier log par Koloina dans le projet MOLLAN.	f	147	167	2024-01-19 12:29:57	2024-01-19 12:29:57	5
26467	Tâche nouvellement créee du nom de MOLLAN - Import Bon de commande  par Koloina dans le projet MOLLAN.	f	147	127	2024-01-19 12:22:58	2024-01-19 12:22:58	5
26468	Tâche nouvellement créee du nom de MOLLAN - Import Bon de commande  par Koloina dans le projet MOLLAN.	f	147	130	2024-01-19 12:22:58	2024-01-19 12:22:58	5
26469	Tâche nouvellement créee du nom de MOLLAN - Import Bon de commande  par Koloina dans le projet MOLLAN.	f	147	135	2024-01-19 12:22:58	2024-01-19 12:22:58	5
26470	Tâche nouvellement créee du nom de MOLLAN - Import Bon de commande  par Koloina dans le projet MOLLAN.	f	147	138	2024-01-19 12:22:58	2024-01-19 12:22:58	5
26471	Tâche nouvellement créee du nom de MOLLAN - Import Bon de commande  par Koloina dans le projet MOLLAN.	f	147	132	2024-01-19 12:22:58	2024-01-19 12:22:58	5
26472	Tâche nouvellement créee du nom de MOLLAN - Import Bon de commande  par Koloina dans le projet MOLLAN.	f	147	131	2024-01-19 12:22:58	2024-01-19 12:22:58	5
26473	Tâche nouvellement créee du nom de MOLLAN - Import Bon de commande  par Koloina dans le projet MOLLAN.	f	147	145	2024-01-19 12:22:58	2024-01-19 12:22:58	5
26474	Tâche nouvellement créee du nom de MOLLAN - Import Bon de commande  par Koloina dans le projet MOLLAN.	f	147	129	2024-01-19 12:22:58	2024-01-19 12:22:58	5
26475	Tâche nouvellement créee du nom de MOLLAN - Import Bon de commande  par Koloina dans le projet MOLLAN.	f	147	150	2024-01-19 12:22:58	2024-01-19 12:22:58	5
26476	Tâche nouvellement créee du nom de MOLLAN - Import Bon de commande  par Koloina dans le projet MOLLAN.	f	147	167	2024-01-19 12:22:58	2024-01-19 12:22:58	5
26478	Koloina a été assigné à la tâche MOLLAN - Import Bon de commande  dans le projet MOLLAN par Koloina	f	147	127	2024-01-19 12:22:58	2024-01-19 12:22:58	6
26479	Koloina a été assigné à la tâche MOLLAN - Import Bon de commande  dans le projet MOLLAN par Koloina	f	147	130	2024-01-19 12:22:58	2024-01-19 12:22:58	6
26480	Koloina a été assigné à la tâche MOLLAN - Import Bon de commande  dans le projet MOLLAN par Koloina	f	147	132	2024-01-19 12:22:58	2024-01-19 12:22:58	6
26481	Koloina a été assigné à la tâche MOLLAN - Import Bon de commande  dans le projet MOLLAN par Koloina	f	147	150	2024-01-19 12:22:58	2024-01-19 12:22:58	6
26497	Tâche nouvellement créee du nom de MOLLAN - Modification des propriétés pour le serveur PROD par Koloina dans le projet MOLLAN.	f	147	127	2024-01-19 12:26:25	2024-01-19 12:26:25	5
26498	Tâche nouvellement créee du nom de MOLLAN - Modification des propriétés pour le serveur PROD par Koloina dans le projet MOLLAN.	f	147	130	2024-01-19 12:26:25	2024-01-19 12:26:25	5
26499	Tâche nouvellement créee du nom de MOLLAN - Modification des propriétés pour le serveur PROD par Koloina dans le projet MOLLAN.	f	147	135	2024-01-19 12:26:25	2024-01-19 12:26:25	5
26500	Tâche nouvellement créee du nom de MOLLAN - Modification des propriétés pour le serveur PROD par Koloina dans le projet MOLLAN.	f	147	138	2024-01-19 12:26:25	2024-01-19 12:26:25	5
26501	Tâche nouvellement créee du nom de MOLLAN - Modification des propriétés pour le serveur PROD par Koloina dans le projet MOLLAN.	f	147	132	2024-01-19 12:26:25	2024-01-19 12:26:25	5
26502	Tâche nouvellement créee du nom de MOLLAN - Modification des propriétés pour le serveur PROD par Koloina dans le projet MOLLAN.	f	147	131	2024-01-19 12:26:25	2024-01-19 12:26:25	5
26503	Tâche nouvellement créee du nom de MOLLAN - Modification des propriétés pour le serveur PROD par Koloina dans le projet MOLLAN.	f	147	145	2024-01-19 12:26:25	2024-01-19 12:26:25	5
26504	Tâche nouvellement créee du nom de MOLLAN - Modification des propriétés pour le serveur PROD par Koloina dans le projet MOLLAN.	f	147	129	2024-01-19 12:26:25	2024-01-19 12:26:25	5
26505	Tâche nouvellement créee du nom de MOLLAN - Modification des propriétés pour le serveur PROD par Koloina dans le projet MOLLAN.	f	147	150	2024-01-19 12:26:25	2024-01-19 12:26:25	5
26506	Tâche nouvellement créee du nom de MOLLAN - Modification des propriétés pour le serveur PROD par Koloina dans le projet MOLLAN.	f	147	167	2024-01-19 12:26:25	2024-01-19 12:26:25	5
26508	Koloina a été assigné à la tâche MOLLAN - Modification des propriétés pour le serveur PROD dans le projet MOLLAN par Koloina	f	147	127	2024-01-19 12:26:25	2024-01-19 12:26:25	6
26509	Koloina a été assigné à la tâche MOLLAN - Modification des propriétés pour le serveur PROD dans le projet MOLLAN par Koloina	f	147	130	2024-01-19 12:26:25	2024-01-19 12:26:25	6
26510	Koloina a été assigné à la tâche MOLLAN - Modification des propriétés pour le serveur PROD dans le projet MOLLAN par Koloina	f	147	132	2024-01-19 12:26:25	2024-01-19 12:26:25	6
26511	Koloina a été assigné à la tâche MOLLAN - Modification des propriétés pour le serveur PROD dans le projet MOLLAN par Koloina	f	147	150	2024-01-19 12:26:25	2024-01-19 12:26:25	6
26512	Tâche nouvellement créee du nom de MOLLAN - Mise en place de l'objet métier par Koloina dans le projet MOLLAN.	f	147	127	2024-01-19 12:27:33	2024-01-19 12:27:33	5
26513	Tâche nouvellement créee du nom de MOLLAN - Mise en place de l'objet métier par Koloina dans le projet MOLLAN.	f	147	130	2024-01-19 12:27:33	2024-01-19 12:27:33	5
26514	Tâche nouvellement créee du nom de MOLLAN - Mise en place de l'objet métier par Koloina dans le projet MOLLAN.	f	147	135	2024-01-19 12:27:33	2024-01-19 12:27:33	5
26515	Tâche nouvellement créee du nom de MOLLAN - Mise en place de l'objet métier par Koloina dans le projet MOLLAN.	f	147	138	2024-01-19 12:27:33	2024-01-19 12:27:33	5
26516	Tâche nouvellement créee du nom de MOLLAN - Mise en place de l'objet métier par Koloina dans le projet MOLLAN.	f	147	132	2024-01-19 12:27:33	2024-01-19 12:27:33	5
26517	Tâche nouvellement créee du nom de MOLLAN - Mise en place de l'objet métier par Koloina dans le projet MOLLAN.	f	147	131	2024-01-19 12:27:33	2024-01-19 12:27:33	5
26518	Tâche nouvellement créee du nom de MOLLAN - Mise en place de l'objet métier par Koloina dans le projet MOLLAN.	f	147	145	2024-01-19 12:27:33	2024-01-19 12:27:33	5
26519	Tâche nouvellement créee du nom de MOLLAN - Mise en place de l'objet métier par Koloina dans le projet MOLLAN.	f	147	129	2024-01-19 12:27:33	2024-01-19 12:27:33	5
26520	Tâche nouvellement créee du nom de MOLLAN - Mise en place de l'objet métier par Koloina dans le projet MOLLAN.	f	147	150	2024-01-19 12:27:33	2024-01-19 12:27:33	5
26521	Tâche nouvellement créee du nom de MOLLAN - Mise en place de l'objet métier par Koloina dans le projet MOLLAN.	f	147	167	2024-01-19 12:27:33	2024-01-19 12:27:33	5
26523	Koloina a été assigné à la tâche MOLLAN - Mise en place de l'objet métier dans le projet MOLLAN par Koloina	f	147	127	2024-01-19 12:27:33	2024-01-19 12:27:33	6
26524	Koloina a été assigné à la tâche MOLLAN - Mise en place de l'objet métier dans le projet MOLLAN par Koloina	f	147	130	2024-01-19 12:27:33	2024-01-19 12:27:33	6
26525	Koloina a été assigné à la tâche MOLLAN - Mise en place de l'objet métier dans le projet MOLLAN par Koloina	f	147	132	2024-01-19 12:27:33	2024-01-19 12:27:33	6
26526	Koloina a été assigné à la tâche MOLLAN - Mise en place de l'objet métier dans le projet MOLLAN par Koloina	f	147	150	2024-01-19 12:27:33	2024-01-19 12:27:33	6
26538	Koloina a été assigné à la tâche MOLLAN - Réduction du fichier log dans le projet MOLLAN par Koloina	f	147	127	2024-01-19 12:29:57	2024-01-19 12:29:57	6
26539	Koloina a été assigné à la tâche MOLLAN - Réduction du fichier log dans le projet MOLLAN par Koloina	f	147	130	2024-01-19 12:29:57	2024-01-19 12:29:57	6
26540	Koloina a été assigné à la tâche MOLLAN - Réduction du fichier log dans le projet MOLLAN par Koloina	f	147	132	2024-01-19 12:29:57	2024-01-19 12:29:57	6
26541	Koloina a été assigné à la tâche MOLLAN - Réduction du fichier log dans le projet MOLLAN par Koloina	f	147	150	2024-01-19 12:29:57	2024-01-19 12:29:57	6
26392	Mickaella a été assigné à la tâche SMEF dans le projet MADAPLAST - Intervention et accompagnement par Mickaella	t	148	148	2024-01-19 09:07:19	2024-01-19 09:07:19	6
26407	Mickaella a été assigné à la tâche SMEF dans le projet MADAPLAST - Intervention et accompagnement par Mickaella	t	148	148	2024-01-19 09:10:08	2024-01-19 09:10:08	6
26422	Mickaella a été assigné à la tâche SMEF dans le projet MADAPLAST - Intervention et accompagnement par Mickaella	t	148	148	2024-01-19 09:11:22	2024-01-19 09:11:22	6
26676	Tâche SMEF supprimé par Mathieu.	f	138	135	2024-01-24 15:46:16	2024-01-24 15:46:16	3
26677	Tâche SMEF supprimé par Mathieu.	f	138	132	2024-01-24 15:46:16	2024-01-24 15:46:16	3
26678	Tâche SMEF supprimé par Mathieu.	f	138	131	2024-01-24 15:46:16	2024-01-24 15:46:16	3
26543	Tâche nouvellement créee du nom de Front Ajout compagnie information (configurations) par Maphie dans le projet Gestion PNR Issoufali.	f	162	130	2024-01-19 16:40:03	2024-01-19 16:40:03	5
26544	Tâche nouvellement créee du nom de Front Ajout compagnie information (configurations) par Maphie dans le projet Gestion PNR Issoufali.	f	162	135	2024-01-19 16:40:03	2024-01-19 16:40:03	5
26545	Tâche nouvellement créee du nom de Front Ajout compagnie information (configurations) par Maphie dans le projet Gestion PNR Issoufali.	f	162	138	2024-01-19 16:40:03	2024-01-19 16:40:03	5
26546	Tâche nouvellement créee du nom de Front Ajout compagnie information (configurations) par Maphie dans le projet Gestion PNR Issoufali.	f	162	132	2024-01-19 16:40:03	2024-01-19 16:40:03	5
26547	Tâche nouvellement créee du nom de Front Ajout compagnie information (configurations) par Maphie dans le projet Gestion PNR Issoufali.	f	162	131	2024-01-19 16:40:03	2024-01-19 16:40:03	5
26548	Tâche nouvellement créee du nom de Front Ajout compagnie information (configurations) par Maphie dans le projet Gestion PNR Issoufali.	f	162	145	2024-01-19 16:40:03	2024-01-19 16:40:03	5
26549	Tâche nouvellement créee du nom de Front Ajout compagnie information (configurations) par Maphie dans le projet Gestion PNR Issoufali.	f	162	129	2024-01-19 16:40:03	2024-01-19 16:40:03	5
26550	Tâche nouvellement créee du nom de Front Ajout compagnie information (configurations) par Maphie dans le projet Gestion PNR Issoufali.	f	162	150	2024-01-19 16:40:03	2024-01-19 16:40:03	5
26551	Tâche nouvellement créee du nom de Front Ajout compagnie information (configurations) par Maphie dans le projet Gestion PNR Issoufali.	f	162	167	2024-01-19 16:40:03	2024-01-19 16:40:03	5
26552	Maphie a été assigné à la tâche Front Ajout compagnie information (configurations) dans le projet Gestion PNR Issoufali par Maphie	f	162	162	2024-01-19 13:40:03	2024-01-19 13:40:03	6
26554	Maphie a été assigné à la tâche Front Ajout compagnie information (configurations) dans le projet Gestion PNR Issoufali par Maphie	f	162	130	2024-01-19 16:40:03	2024-01-19 16:40:03	6
26555	Maphie a été assigné à la tâche Front Ajout compagnie information (configurations) dans le projet Gestion PNR Issoufali par Maphie	f	162	132	2024-01-19 16:40:03	2024-01-19 16:40:03	6
26556	Maphie a été assigné à la tâche Front Ajout compagnie information (configurations) dans le projet Gestion PNR Issoufali par Maphie	f	162	150	2024-01-19 16:40:03	2024-01-19 16:40:03	6
26558	Tâche nouvellement créee du nom de Front Ajout Email PNR par Maphie dans le projet Gestion PNR Issoufali.	f	162	130	2024-01-19 16:41:31	2024-01-19 16:41:31	5
26559	Tâche nouvellement créee du nom de Front Ajout Email PNR par Maphie dans le projet Gestion PNR Issoufali.	f	162	135	2024-01-19 16:41:31	2024-01-19 16:41:31	5
26560	Tâche nouvellement créee du nom de Front Ajout Email PNR par Maphie dans le projet Gestion PNR Issoufali.	f	162	138	2024-01-19 16:41:31	2024-01-19 16:41:31	5
26561	Tâche nouvellement créee du nom de Front Ajout Email PNR par Maphie dans le projet Gestion PNR Issoufali.	f	162	132	2024-01-19 16:41:31	2024-01-19 16:41:31	5
26562	Tâche nouvellement créee du nom de Front Ajout Email PNR par Maphie dans le projet Gestion PNR Issoufali.	f	162	131	2024-01-19 16:41:31	2024-01-19 16:41:31	5
26563	Tâche nouvellement créee du nom de Front Ajout Email PNR par Maphie dans le projet Gestion PNR Issoufali.	f	162	145	2024-01-19 16:41:31	2024-01-19 16:41:31	5
26564	Tâche nouvellement créee du nom de Front Ajout Email PNR par Maphie dans le projet Gestion PNR Issoufali.	f	162	129	2024-01-19 16:41:31	2024-01-19 16:41:31	5
26565	Tâche nouvellement créee du nom de Front Ajout Email PNR par Maphie dans le projet Gestion PNR Issoufali.	f	162	150	2024-01-19 16:41:31	2024-01-19 16:41:31	5
26566	Tâche nouvellement créee du nom de Front Ajout Email PNR par Maphie dans le projet Gestion PNR Issoufali.	f	162	167	2024-01-19 16:41:31	2024-01-19 16:41:31	5
26567	Maphie a été assigné à la tâche Front Ajout Email PNR dans le projet Gestion PNR Issoufali par Maphie	f	162	162	2024-01-19 13:41:31	2024-01-19 13:41:31	6
26569	Maphie a été assigné à la tâche Front Ajout Email PNR dans le projet Gestion PNR Issoufali par Maphie	f	162	130	2024-01-19 16:41:31	2024-01-19 16:41:31	6
26570	Maphie a été assigné à la tâche Front Ajout Email PNR dans le projet Gestion PNR Issoufali par Maphie	f	162	132	2024-01-19 16:41:31	2024-01-19 16:41:31	6
26571	Maphie a été assigné à la tâche Front Ajout Email PNR dans le projet Gestion PNR Issoufali par Maphie	f	162	150	2024-01-19 16:41:31	2024-01-19 16:41:31	6
26542	Tâche nouvellement créee du nom de Front Ajout compagnie information (configurations) par Maphie dans le projet Gestion PNR Issoufali.	t	162	127	2024-01-19 16:40:03	2024-01-19 16:40:03	5
26553	Maphie a été assigné à la tâche Front Ajout compagnie information (configurations) dans le projet Gestion PNR Issoufali par Maphie	t	162	127	2024-01-19 16:40:03	2024-01-19 16:40:03	6
26557	Tâche nouvellement créee du nom de Front Ajout Email PNR par Maphie dans le projet Gestion PNR Issoufali.	t	162	127	2024-01-19 16:41:31	2024-01-19 16:41:31	5
26568	Maphie a été assigné à la tâche Front Ajout Email PNR dans le projet Gestion PNR Issoufali par Maphie	t	162	127	2024-01-19 16:41:31	2024-01-19 16:41:31	6
26572	Tâche nouvellement créee du nom de Gérer les configurations du projet avec toutes les modifications qu'on doit apporter avec Maphie par Alain dans le projet Gestion PNR Issoufali.	f	129	127	2024-01-22 14:11:38	2024-01-22 14:11:38	5
26573	Tâche nouvellement créee du nom de Gérer les configurations du projet avec toutes les modifications qu'on doit apporter avec Maphie par Alain dans le projet Gestion PNR Issoufali.	f	129	135	2024-01-22 14:11:38	2024-01-22 14:11:38	5
26574	Tâche nouvellement créee du nom de Gérer les configurations du projet avec toutes les modifications qu'on doit apporter avec Maphie par Alain dans le projet Gestion PNR Issoufali.	f	129	138	2024-01-22 14:11:38	2024-01-22 14:11:38	5
26575	Tâche nouvellement créee du nom de Gérer les configurations du projet avec toutes les modifications qu'on doit apporter avec Maphie par Alain dans le projet Gestion PNR Issoufali.	f	129	132	2024-01-22 14:11:38	2024-01-22 14:11:38	5
26576	Tâche nouvellement créee du nom de Gérer les configurations du projet avec toutes les modifications qu'on doit apporter avec Maphie par Alain dans le projet Gestion PNR Issoufali.	f	129	131	2024-01-22 14:11:38	2024-01-22 14:11:38	5
26577	Tâche nouvellement créee du nom de Gérer les configurations du projet avec toutes les modifications qu'on doit apporter avec Maphie par Alain dans le projet Gestion PNR Issoufali.	f	129	145	2024-01-22 14:11:38	2024-01-22 14:11:38	5
26578	Tâche nouvellement créee du nom de Gérer les configurations du projet avec toutes les modifications qu'on doit apporter avec Maphie par Alain dans le projet Gestion PNR Issoufali.	f	129	150	2024-01-22 14:11:38	2024-01-22 14:11:38	5
26579	Tâche nouvellement créee du nom de Gérer les configurations du projet avec toutes les modifications qu'on doit apporter avec Maphie par Alain dans le projet Gestion PNR Issoufali.	f	129	167	2024-01-22 14:11:38	2024-01-22 14:11:38	5
26580	Maphie a été assigné à la tâche Gérer les configurations du projet avec toutes les modifications qu'on doit apporter avec Maphie dans le projet Gestion PNR Issoufali par Alain	f	129	162	2024-01-22 11:11:38	2024-01-22 11:11:38	6
26581	Maphie a été assigné à la tâche Gérer les configurations du projet avec toutes les modifications qu'on doit apporter avec Maphie dans le projet Gestion PNR Issoufali par Alain	f	129	127	2024-01-22 14:11:38	2024-01-22 14:11:38	6
26582	Maphie a été assigné à la tâche Gérer les configurations du projet avec toutes les modifications qu'on doit apporter avec Maphie dans le projet Gestion PNR Issoufali par Alain	f	129	132	2024-01-22 14:11:38	2024-01-22 14:11:38	6
26583	Maphie a été assigné à la tâche Gérer les configurations du projet avec toutes les modifications qu'on doit apporter avec Maphie dans le projet Gestion PNR Issoufali par Alain	f	129	150	2024-01-22 14:11:38	2024-01-22 14:11:38	6
26584	Tâche nouvellement créee du nom de Annuler la modification dans gestion PNR le 22 janvier par Alain dans le projet Gestion PNR Issoufali.	f	129	127	2024-01-23 10:16:57	2024-01-23 10:16:57	5
26585	Tâche nouvellement créee du nom de Annuler la modification dans gestion PNR le 22 janvier par Alain dans le projet Gestion PNR Issoufali.	f	129	135	2024-01-23 10:16:57	2024-01-23 10:16:57	5
26586	Tâche nouvellement créee du nom de Annuler la modification dans gestion PNR le 22 janvier par Alain dans le projet Gestion PNR Issoufali.	f	129	138	2024-01-23 10:16:57	2024-01-23 10:16:57	5
26674	Tâche SMEF supprimé par Mathieu.	f	138	167	2024-01-24 15:46:08	2024-01-24 15:46:08	3
26587	Tâche nouvellement créee du nom de Annuler la modification dans gestion PNR le 22 janvier par Alain dans le projet Gestion PNR Issoufali.	f	129	132	2024-01-23 10:16:57	2024-01-23 10:16:57	5
26588	Tâche nouvellement créee du nom de Annuler la modification dans gestion PNR le 22 janvier par Alain dans le projet Gestion PNR Issoufali.	f	129	131	2024-01-23 10:16:57	2024-01-23 10:16:57	5
26589	Tâche nouvellement créee du nom de Annuler la modification dans gestion PNR le 22 janvier par Alain dans le projet Gestion PNR Issoufali.	f	129	145	2024-01-23 10:16:57	2024-01-23 10:16:57	5
26590	Tâche nouvellement créee du nom de Annuler la modification dans gestion PNR le 22 janvier par Alain dans le projet Gestion PNR Issoufali.	f	129	150	2024-01-23 10:16:57	2024-01-23 10:16:57	5
26591	Tâche nouvellement créee du nom de Annuler la modification dans gestion PNR le 22 janvier par Alain dans le projet Gestion PNR Issoufali.	f	129	167	2024-01-23 10:16:57	2024-01-23 10:16:57	5
26592	Alain a été assigné à la tâche Annuler la modification dans gestion PNR le 22 janvier dans le projet Gestion PNR Issoufali par Alain	f	129	129	2024-01-23 07:16:57	2024-01-23 07:16:57	6
26593	Alain a été assigné à la tâche Annuler la modification dans gestion PNR le 22 janvier dans le projet Gestion PNR Issoufali par Alain	f	129	127	2024-01-23 10:16:57	2024-01-23 10:16:57	6
26594	Alain a été assigné à la tâche Annuler la modification dans gestion PNR le 22 janvier dans le projet Gestion PNR Issoufali par Alain	f	129	132	2024-01-23 10:16:57	2024-01-23 10:16:57	6
26595	Alain a été assigné à la tâche Annuler la modification dans gestion PNR le 22 janvier dans le projet Gestion PNR Issoufali par Alain	f	129	150	2024-01-23 10:16:57	2024-01-23 10:16:57	6
26596	Tâche nouvellement créee du nom de ISSOUFALI - Récap billet  par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	127	2024-01-23 10:45:16	2024-01-23 10:45:16	5
26597	Tâche nouvellement créee du nom de ISSOUFALI - Récap billet  par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	135	2024-01-23 10:45:16	2024-01-23 10:45:16	5
26598	Tâche nouvellement créee du nom de ISSOUFALI - Récap billet  par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	138	2024-01-23 10:45:16	2024-01-23 10:45:16	5
26599	Tâche nouvellement créee du nom de ISSOUFALI - Récap billet  par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	132	2024-01-23 10:45:16	2024-01-23 10:45:16	5
26600	Tâche nouvellement créee du nom de ISSOUFALI - Récap billet  par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	131	2024-01-23 10:45:16	2024-01-23 10:45:16	5
26601	Tâche nouvellement créee du nom de ISSOUFALI - Récap billet  par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	145	2024-01-23 10:45:16	2024-01-23 10:45:16	5
26602	Tâche nouvellement créee du nom de ISSOUFALI - Récap billet  par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	129	2024-01-23 10:45:16	2024-01-23 10:45:16	5
26603	Tâche nouvellement créee du nom de ISSOUFALI - Récap billet  par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	150	2024-01-23 10:45:16	2024-01-23 10:45:16	5
26604	Tâche nouvellement créee du nom de ISSOUFALI - Récap billet  par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	167	2024-01-23 10:45:16	2024-01-23 10:45:16	5
26605	Koloina a été assigné à la tâche ISSOUFALI - Récap billet  dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	147	2024-01-23 07:45:16	2024-01-23 07:45:16	6
26606	Koloina a été assigné à la tâche ISSOUFALI - Récap billet  dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	127	2024-01-23 10:45:16	2024-01-23 10:45:16	6
26607	Koloina a été assigné à la tâche ISSOUFALI - Récap billet  dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	132	2024-01-23 10:45:16	2024-01-23 10:45:16	6
26608	Koloina a été assigné à la tâche ISSOUFALI - Récap billet  dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	150	2024-01-23 10:45:16	2024-01-23 10:45:16	6
26609	Tâche "ISSOUFALI - Récap billet "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	127	2024-01-23 10:45:19	2024-01-23 10:45:19	1
26610	Tâche "ISSOUFALI - Récap billet "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	135	2024-01-23 10:45:19	2024-01-23 10:45:19	1
26611	Tâche "ISSOUFALI - Récap billet "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	138	2024-01-23 10:45:19	2024-01-23 10:45:19	1
26679	Tâche SMEF supprimé par Mathieu.	f	138	145	2024-01-24 15:46:16	2024-01-24 15:46:16	3
26612	Tâche "ISSOUFALI - Récap billet "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	132	2024-01-23 10:45:19	2024-01-23 10:45:19	1
26613	Tâche "ISSOUFALI - Récap billet "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	131	2024-01-23 10:45:19	2024-01-23 10:45:19	1
26614	Tâche "ISSOUFALI - Récap billet "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	145	2024-01-23 10:45:19	2024-01-23 10:45:19	1
26615	Tâche "ISSOUFALI - Récap billet "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	129	2024-01-23 10:45:19	2024-01-23 10:45:19	1
26616	Tâche "ISSOUFALI - Récap billet "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	150	2024-01-23 10:45:19	2024-01-23 10:45:19	1
26617	Tâche "ISSOUFALI - Récap billet "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Koloina	f	147	167	2024-01-23 10:45:19	2024-01-23 10:45:19	1
26618	Tâche "ISSOUFALI - Récap billet "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " A faire " par Koloina	f	147	127	2024-01-23 10:45:33	2024-01-23 10:45:33	1
26619	Tâche "ISSOUFALI - Récap billet "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " A faire " par Koloina	f	147	135	2024-01-23 10:45:33	2024-01-23 10:45:33	1
26620	Tâche "ISSOUFALI - Récap billet "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " A faire " par Koloina	f	147	138	2024-01-23 10:45:33	2024-01-23 10:45:33	1
26621	Tâche "ISSOUFALI - Récap billet "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " A faire " par Koloina	f	147	132	2024-01-23 10:45:33	2024-01-23 10:45:33	1
26622	Tâche "ISSOUFALI - Récap billet "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " A faire " par Koloina	f	147	131	2024-01-23 10:45:33	2024-01-23 10:45:33	1
26786	Un projet du nom de FOCICOM a été crée par Mathieu	f	138	131	2024-01-24 16:03:33	2024-01-24 16:03:33	5
26623	Tâche "ISSOUFALI - Récap billet "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " A faire " par Koloina	f	147	145	2024-01-23 10:45:33	2024-01-23 10:45:33	1
26624	Tâche "ISSOUFALI - Récap billet "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " A faire " par Koloina	f	147	129	2024-01-23 10:45:33	2024-01-23 10:45:33	1
26625	Tâche "ISSOUFALI - Récap billet "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " A faire " par Koloina	f	147	150	2024-01-23 10:45:33	2024-01-23 10:45:33	1
26626	Tâche "ISSOUFALI - Récap billet "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " A faire " par Koloina	f	147	167	2024-01-23 10:45:33	2024-01-23 10:45:33	1
26627	Tâche "Annuler la modification dans gestion PNR le 22 janvier"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	127	2024-01-23 11:59:19	2024-01-23 11:59:19	1
26628	Tâche "Annuler la modification dans gestion PNR le 22 janvier"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	135	2024-01-23 11:59:19	2024-01-23 11:59:19	1
26629	Tâche "Annuler la modification dans gestion PNR le 22 janvier"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	138	2024-01-23 11:59:19	2024-01-23 11:59:19	1
26630	Tâche "Annuler la modification dans gestion PNR le 22 janvier"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	132	2024-01-23 11:59:19	2024-01-23 11:59:19	1
26631	Tâche "Annuler la modification dans gestion PNR le 22 janvier"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	131	2024-01-23 11:59:19	2024-01-23 11:59:19	1
26632	Tâche "Annuler la modification dans gestion PNR le 22 janvier"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	145	2024-01-23 11:59:19	2024-01-23 11:59:19	1
26633	Tâche "Annuler la modification dans gestion PNR le 22 janvier"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	150	2024-01-23 11:59:19	2024-01-23 11:59:19	1
26634	Tâche "Annuler la modification dans gestion PNR le 22 janvier"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	167	2024-01-23 11:59:19	2024-01-23 11:59:19	1
26635	Un projet du nom de SMEF a été crée par Mathieu	f	138	127	2024-01-24 15:35:53	2024-01-24 15:35:53	5
26636	Un projet du nom de SMEF a été crée par Mathieu	f	138	135	2024-01-24 15:35:53	2024-01-24 15:35:53	5
26637	Un projet du nom de SMEF a été crée par Mathieu	f	138	132	2024-01-24 15:35:53	2024-01-24 15:35:53	5
26638	Un projet du nom de SMEF a été crée par Mathieu	f	138	131	2024-01-24 15:35:53	2024-01-24 15:35:53	5
26639	Un projet du nom de SMEF a été crée par Mathieu	f	138	145	2024-01-24 15:35:53	2024-01-24 15:35:53	5
26640	Un projet du nom de SMEF a été crée par Mathieu	f	138	129	2024-01-24 15:35:53	2024-01-24 15:35:53	5
26641	Un projet du nom de SMEF a été crée par Mathieu	f	138	150	2024-01-24 15:35:53	2024-01-24 15:35:53	5
26642	Un projet du nom de SMEF a été crée par Mathieu	f	138	167	2024-01-24 15:35:53	2024-01-24 15:35:53	5
26643	Tâche nouvellement créee du nom de Préparation import Fournisseur par Mathieu dans le projet SMEF.	f	138	127	2024-01-24 15:36:45	2024-01-24 15:36:45	5
26644	Tâche nouvellement créee du nom de Préparation import Fournisseur par Mathieu dans le projet SMEF.	f	138	135	2024-01-24 15:36:45	2024-01-24 15:36:45	5
26645	Tâche nouvellement créee du nom de Préparation import Fournisseur par Mathieu dans le projet SMEF.	f	138	132	2024-01-24 15:36:45	2024-01-24 15:36:45	5
26646	Tâche nouvellement créee du nom de Préparation import Fournisseur par Mathieu dans le projet SMEF.	f	138	131	2024-01-24 15:36:45	2024-01-24 15:36:45	5
26647	Tâche nouvellement créee du nom de Préparation import Fournisseur par Mathieu dans le projet SMEF.	f	138	145	2024-01-24 15:36:45	2024-01-24 15:36:45	5
26648	Tâche nouvellement créee du nom de Préparation import Fournisseur par Mathieu dans le projet SMEF.	f	138	129	2024-01-24 15:36:45	2024-01-24 15:36:45	5
26649	Tâche nouvellement créee du nom de Préparation import Fournisseur par Mathieu dans le projet SMEF.	f	138	150	2024-01-24 15:36:45	2024-01-24 15:36:45	5
26650	Tâche nouvellement créee du nom de Préparation import Fournisseur par Mathieu dans le projet SMEF.	f	138	167	2024-01-24 15:36:45	2024-01-24 15:36:45	5
26652	Adrien a été assigné à la tâche Préparation import Fournisseur dans le projet SMEF par Mathieu	f	138	127	2024-01-24 15:36:45	2024-01-24 15:36:45	6
26653	Adrien a été assigné à la tâche Préparation import Fournisseur dans le projet SMEF par Mathieu	f	138	132	2024-01-24 15:36:45	2024-01-24 15:36:45	6
26654	Adrien a été assigné à la tâche Préparation import Fournisseur dans le projet SMEF par Mathieu	f	138	150	2024-01-24 15:36:45	2024-01-24 15:36:45	6
26655	Tâche nouvellement créee du nom de Préparation import Fournitures par Mathieu dans le projet SMEF.	f	138	127	2024-01-24 15:38:13	2024-01-24 15:38:13	5
26656	Tâche nouvellement créee du nom de Préparation import Fournitures par Mathieu dans le projet SMEF.	f	138	135	2024-01-24 15:38:13	2024-01-24 15:38:13	5
26657	Tâche nouvellement créee du nom de Préparation import Fournitures par Mathieu dans le projet SMEF.	f	138	132	2024-01-24 15:38:13	2024-01-24 15:38:13	5
26658	Tâche nouvellement créee du nom de Préparation import Fournitures par Mathieu dans le projet SMEF.	f	138	131	2024-01-24 15:38:13	2024-01-24 15:38:13	5
26659	Tâche nouvellement créee du nom de Préparation import Fournitures par Mathieu dans le projet SMEF.	f	138	145	2024-01-24 15:38:13	2024-01-24 15:38:13	5
26660	Tâche nouvellement créee du nom de Préparation import Fournitures par Mathieu dans le projet SMEF.	f	138	129	2024-01-24 15:38:13	2024-01-24 15:38:13	5
26661	Tâche nouvellement créee du nom de Préparation import Fournitures par Mathieu dans le projet SMEF.	f	138	150	2024-01-24 15:38:13	2024-01-24 15:38:13	5
26662	Tâche nouvellement créee du nom de Préparation import Fournitures par Mathieu dans le projet SMEF.	f	138	167	2024-01-24 15:38:13	2024-01-24 15:38:13	5
26664	Mickaella a été assigné à la tâche Préparation import Fournitures dans le projet SMEF par Mathieu	f	138	127	2024-01-24 15:38:13	2024-01-24 15:38:13	6
26665	Mickaella a été assigné à la tâche Préparation import Fournitures dans le projet SMEF par Mathieu	f	138	132	2024-01-24 15:38:13	2024-01-24 15:38:13	6
26666	Mickaella a été assigné à la tâche Préparation import Fournitures dans le projet SMEF par Mathieu	f	138	150	2024-01-24 15:38:13	2024-01-24 15:38:13	6
26663	Mickaella a été assigné à la tâche Préparation import Fournitures dans le projet SMEF par Mathieu	t	138	148	2024-01-24 12:38:13	2024-01-24 12:38:13	6
26667	Tâche SMEF supprimé par Mathieu.	f	138	127	2024-01-24 15:46:08	2024-01-24 15:46:08	3
26668	Tâche SMEF supprimé par Mathieu.	f	138	135	2024-01-24 15:46:08	2024-01-24 15:46:08	3
26683	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	127	2024-01-24 15:54:36	2024-01-24 15:54:36	5
26684	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	135	2024-01-24 15:54:36	2024-01-24 15:54:36	5
26685	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	132	2024-01-24 15:54:36	2024-01-24 15:54:36	5
26686	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	131	2024-01-24 15:54:36	2024-01-24 15:54:36	5
26687	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	145	2024-01-24 15:54:36	2024-01-24 15:54:36	5
26688	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	129	2024-01-24 15:54:36	2024-01-24 15:54:36	5
26689	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	150	2024-01-24 15:54:36	2024-01-24 15:54:36	5
26690	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	167	2024-01-24 15:54:36	2024-01-24 15:54:36	5
26703	Koloina a été assigné à la tâche Taches 1 dans le projet MADAPLAST - Intervention et accompagnement par Mathieu	f	138	147	2024-01-24 12:56:09	2024-01-24 12:56:09	6
26707	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet QWEHLI v1 - Integration Odoo 16.	f	138	127	2024-01-24 15:57:23	2024-01-24 15:57:23	5
26708	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet QWEHLI v1 - Integration Odoo 16.	f	138	135	2024-01-24 15:57:23	2024-01-24 15:57:23	5
26709	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet QWEHLI v1 - Integration Odoo 16.	f	138	132	2024-01-24 15:57:23	2024-01-24 15:57:23	5
26710	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet QWEHLI v1 - Integration Odoo 16.	f	138	131	2024-01-24 15:57:23	2024-01-24 15:57:23	5
26711	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet QWEHLI v1 - Integration Odoo 16.	f	138	145	2024-01-24 15:57:23	2024-01-24 15:57:23	5
26712	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet QWEHLI v1 - Integration Odoo 16.	f	138	129	2024-01-24 15:57:23	2024-01-24 15:57:23	5
26713	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet QWEHLI v1 - Integration Odoo 16.	f	138	150	2024-01-24 15:57:23	2024-01-24 15:57:23	5
26714	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet QWEHLI v1 - Integration Odoo 16.	f	138	167	2024-01-24 15:57:23	2024-01-24 15:57:23	5
26691	Mickaella a été assigné à la tâche Taches dans le projet NAJMI - Intervention et accompagnement par Mathieu	f	138	148	2024-01-24 12:54:36	2024-01-24 12:54:36	6
26692	Mickaella a été assigné à la tâche Taches dans le projet NAJMI - Intervention et accompagnement par Mathieu	f	138	127	2024-01-24 15:54:36	2024-01-24 15:54:36	6
26693	Mickaella a été assigné à la tâche Taches dans le projet NAJMI - Intervention et accompagnement par Mathieu	f	138	132	2024-01-24 15:54:36	2024-01-24 15:54:36	6
26694	Mickaella a été assigné à la tâche Taches dans le projet NAJMI - Intervention et accompagnement par Mathieu	f	138	150	2024-01-24 15:54:36	2024-01-24 15:54:36	6
26719	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet QWEHLI v1 - Integration Odoo 16.	f	138	127	2024-01-24 15:58:21	2024-01-24 15:58:21	5
26720	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet QWEHLI v1 - Integration Odoo 16.	f	138	135	2024-01-24 15:58:21	2024-01-24 15:58:21	5
26721	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet QWEHLI v1 - Integration Odoo 16.	f	138	132	2024-01-24 15:58:21	2024-01-24 15:58:21	5
26722	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet QWEHLI v1 - Integration Odoo 16.	f	138	131	2024-01-24 15:58:21	2024-01-24 15:58:21	5
26723	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet QWEHLI v1 - Integration Odoo 16.	f	138	145	2024-01-24 15:58:21	2024-01-24 15:58:21	5
26724	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet QWEHLI v1 - Integration Odoo 16.	f	138	129	2024-01-24 15:58:21	2024-01-24 15:58:21	5
26725	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet QWEHLI v1 - Integration Odoo 16.	f	138	150	2024-01-24 15:58:21	2024-01-24 15:58:21	5
26726	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet QWEHLI v1 - Integration Odoo 16.	f	138	167	2024-01-24 15:58:21	2024-01-24 15:58:21	5
26739	Ioly a été assigné à la tâche Taches dans le projet NAJMI - Intervention et accompagnement par Mathieu	f	138	135	2024-01-24 12:59:18	2024-01-24 12:59:18	6
26751	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet CDC.	f	138	127	2024-01-24 16:00:52	2024-01-24 16:00:52	5
26752	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet CDC.	f	138	135	2024-01-24 16:00:52	2024-01-24 16:00:52	5
26753	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet CDC.	f	138	132	2024-01-24 16:00:52	2024-01-24 16:00:52	5
26754	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet CDC.	f	138	131	2024-01-24 16:00:52	2024-01-24 16:00:52	5
26755	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet CDC.	f	138	145	2024-01-24 16:00:52	2024-01-24 16:00:52	5
26756	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet CDC.	f	138	129	2024-01-24 16:00:52	2024-01-24 16:00:52	5
26757	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet CDC.	f	138	150	2024-01-24 16:00:52	2024-01-24 16:00:52	5
26758	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet CDC.	f	138	167	2024-01-24 16:00:52	2024-01-24 16:00:52	5
26695	Tâche nouvellement créee du nom de Taches 1 par Mathieu dans le projet MADAPLAST - Intervention et accompagnement.	f	138	127	2024-01-24 15:56:09	2024-01-24 15:56:09	5
26696	Tâche nouvellement créee du nom de Taches 1 par Mathieu dans le projet MADAPLAST - Intervention et accompagnement.	f	138	135	2024-01-24 15:56:09	2024-01-24 15:56:09	5
26697	Tâche nouvellement créee du nom de Taches 1 par Mathieu dans le projet MADAPLAST - Intervention et accompagnement.	f	138	132	2024-01-24 15:56:09	2024-01-24 15:56:09	5
26698	Tâche nouvellement créee du nom de Taches 1 par Mathieu dans le projet MADAPLAST - Intervention et accompagnement.	f	138	131	2024-01-24 15:56:09	2024-01-24 15:56:09	5
26699	Tâche nouvellement créee du nom de Taches 1 par Mathieu dans le projet MADAPLAST - Intervention et accompagnement.	f	138	145	2024-01-24 15:56:09	2024-01-24 15:56:09	5
26700	Tâche nouvellement créee du nom de Taches 1 par Mathieu dans le projet MADAPLAST - Intervention et accompagnement.	f	138	129	2024-01-24 15:56:09	2024-01-24 15:56:09	5
26701	Tâche nouvellement créee du nom de Taches 1 par Mathieu dans le projet MADAPLAST - Intervention et accompagnement.	f	138	150	2024-01-24 15:56:09	2024-01-24 15:56:09	5
26702	Tâche nouvellement créee du nom de Taches 1 par Mathieu dans le projet MADAPLAST - Intervention et accompagnement.	f	138	167	2024-01-24 15:56:09	2024-01-24 15:56:09	5
26704	Koloina a été assigné à la tâche Taches 1 dans le projet MADAPLAST - Intervention et accompagnement par Mathieu	f	138	127	2024-01-24 15:56:09	2024-01-24 15:56:09	6
26705	Koloina a été assigné à la tâche Taches 1 dans le projet MADAPLAST - Intervention et accompagnement par Mathieu	f	138	132	2024-01-24 15:56:09	2024-01-24 15:56:09	6
26706	Koloina a été assigné à la tâche Taches 1 dans le projet MADAPLAST - Intervention et accompagnement par Mathieu	f	138	150	2024-01-24 15:56:09	2024-01-24 15:56:09	6
26727	Miandrisoa a été assigné à la tâche Taches dans le projet QWEHLI v1 - Integration Odoo 16 par Mathieu	f	138	146	2024-01-24 12:58:21	2024-01-24 12:58:21	6
26740	Ioly a été assigné à la tâche Taches dans le projet NAJMI - Intervention et accompagnement par Mathieu	f	138	127	2024-01-24 15:59:18	2024-01-24 15:59:18	6
26741	Ioly a été assigné à la tâche Taches dans le projet NAJMI - Intervention et accompagnement par Mathieu	f	138	132	2024-01-24 15:59:18	2024-01-24 15:59:18	6
26742	Ioly a été assigné à la tâche Taches dans le projet NAJMI - Intervention et accompagnement par Mathieu	f	138	150	2024-01-24 15:59:18	2024-01-24 15:59:18	6
26763	Un projet du nom de MILLOT a été crée par Mathieu	f	138	127	2024-01-24 16:01:51	2024-01-24 16:01:51	5
26764	Un projet du nom de MILLOT a été crée par Mathieu	f	138	135	2024-01-24 16:01:51	2024-01-24 16:01:51	5
26765	Un projet du nom de MILLOT a été crée par Mathieu	f	138	132	2024-01-24 16:01:51	2024-01-24 16:01:51	5
26766	Un projet du nom de MILLOT a été crée par Mathieu	f	138	131	2024-01-24 16:01:51	2024-01-24 16:01:51	5
26767	Un projet du nom de MILLOT a été crée par Mathieu	f	138	145	2024-01-24 16:01:51	2024-01-24 16:01:51	5
26768	Un projet du nom de MILLOT a été crée par Mathieu	f	138	129	2024-01-24 16:01:51	2024-01-24 16:01:51	5
26769	Un projet du nom de MILLOT a été crée par Mathieu	f	138	150	2024-01-24 16:01:51	2024-01-24 16:01:51	5
26770	Un projet du nom de MILLOT a été crée par Mathieu	f	138	167	2024-01-24 16:01:51	2024-01-24 16:01:51	5
26715	Fanilo a été assigné à la tâche Taches dans le projet QWEHLI v1 - Integration Odoo 16 par Mathieu	t	138	137	2024-01-24 12:57:23	2024-01-24 12:57:23	6
26716	Fanilo a été assigné à la tâche Taches dans le projet QWEHLI v1 - Integration Odoo 16 par Mathieu	f	138	127	2024-01-24 15:57:23	2024-01-24 15:57:23	6
26717	Fanilo a été assigné à la tâche Taches dans le projet QWEHLI v1 - Integration Odoo 16 par Mathieu	f	138	132	2024-01-24 15:57:23	2024-01-24 15:57:23	6
26718	Fanilo a été assigné à la tâche Taches dans le projet QWEHLI v1 - Integration Odoo 16 par Mathieu	f	138	150	2024-01-24 15:57:23	2024-01-24 15:57:23	6
26728	Miandrisoa a été assigné à la tâche Taches dans le projet QWEHLI v1 - Integration Odoo 16 par Mathieu	f	138	127	2024-01-24 15:58:21	2024-01-24 15:58:21	6
26729	Miandrisoa a été assigné à la tâche Taches dans le projet QWEHLI v1 - Integration Odoo 16 par Mathieu	f	138	132	2024-01-24 15:58:21	2024-01-24 15:58:21	6
26730	Miandrisoa a été assigné à la tâche Taches dans le projet QWEHLI v1 - Integration Odoo 16 par Mathieu	f	138	150	2024-01-24 15:58:21	2024-01-24 15:58:21	6
26759	Miandrisoa a été assigné à la tâche Taches dans le projet CDC par Mathieu	f	138	146	2024-01-24 13:00:52	2024-01-24 13:00:52	6
26760	Miandrisoa a été assigné à la tâche Taches dans le projet CDC par Mathieu	f	138	127	2024-01-24 16:00:52	2024-01-24 16:00:52	6
26761	Miandrisoa a été assigné à la tâche Taches dans le projet CDC par Mathieu	f	138	132	2024-01-24 16:00:52	2024-01-24 16:00:52	6
26762	Miandrisoa a été assigné à la tâche Taches dans le projet CDC par Mathieu	f	138	150	2024-01-24 16:00:52	2024-01-24 16:00:52	6
26735	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	145	2024-01-24 15:59:18	2024-01-24 15:59:18	5
26736	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	129	2024-01-24 15:59:18	2024-01-24 15:59:18	5
26737	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	150	2024-01-24 15:59:18	2024-01-24 15:59:18	5
26738	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	167	2024-01-24 15:59:18	2024-01-24 15:59:18	5
26743	Un projet du nom de CDC a été crée par Mathieu	f	138	127	2024-01-24 16:00:19	2024-01-24 16:00:19	5
26744	Un projet du nom de CDC a été crée par Mathieu	f	138	135	2024-01-24 16:00:19	2024-01-24 16:00:19	5
26745	Un projet du nom de CDC a été crée par Mathieu	f	138	132	2024-01-24 16:00:19	2024-01-24 16:00:19	5
26746	Un projet du nom de CDC a été crée par Mathieu	f	138	131	2024-01-24 16:00:19	2024-01-24 16:00:19	5
26747	Un projet du nom de CDC a été crée par Mathieu	f	138	145	2024-01-24 16:00:19	2024-01-24 16:00:19	5
26748	Un projet du nom de CDC a été crée par Mathieu	f	138	129	2024-01-24 16:00:19	2024-01-24 16:00:19	5
26749	Un projet du nom de CDC a été crée par Mathieu	f	138	150	2024-01-24 16:00:19	2024-01-24 16:00:19	5
26750	Un projet du nom de CDC a été crée par Mathieu	f	138	167	2024-01-24 16:00:19	2024-01-24 16:00:19	5
26771	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet MILLOT.	f	138	127	2024-01-24 16:02:25	2024-01-24 16:02:25	5
26772	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet MILLOT.	f	138	135	2024-01-24 16:02:25	2024-01-24 16:02:25	5
26773	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet MILLOT.	f	138	132	2024-01-24 16:02:25	2024-01-24 16:02:25	5
26774	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet MILLOT.	f	138	131	2024-01-24 16:02:25	2024-01-24 16:02:25	5
26775	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet MILLOT.	f	138	145	2024-01-24 16:02:25	2024-01-24 16:02:25	5
26776	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet MILLOT.	f	138	129	2024-01-24 16:02:25	2024-01-24 16:02:25	5
26777	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet MILLOT.	f	138	150	2024-01-24 16:02:25	2024-01-24 16:02:25	5
26778	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet MILLOT.	f	138	167	2024-01-24 16:02:25	2024-01-24 16:02:25	5
26779	Miandrisoa a été assigné à la tâche Taches dans le projet MILLOT par Mathieu	f	138	146	2024-01-24 13:02:25	2024-01-24 13:02:25	6
26780	Miandrisoa a été assigné à la tâche Taches dans le projet MILLOT par Mathieu	f	138	127	2024-01-24 16:02:25	2024-01-24 16:02:25	6
26787	Un projet du nom de FOCICOM a été crée par Mathieu	f	138	145	2024-01-24 16:03:33	2024-01-24 16:03:33	5
26788	Un projet du nom de FOCICOM a été crée par Mathieu	f	138	129	2024-01-24 16:03:33	2024-01-24 16:03:33	5
26789	Un projet du nom de FOCICOM a été crée par Mathieu	f	138	150	2024-01-24 16:03:33	2024-01-24 16:03:33	5
26790	Un projet du nom de FOCICOM a été crée par Mathieu	f	138	167	2024-01-24 16:03:33	2024-01-24 16:03:33	5
26791	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet FOCICOM.	f	138	127	2024-01-24 16:04:30	2024-01-24 16:04:30	5
26792	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet FOCICOM.	f	138	135	2024-01-24 16:04:30	2024-01-24 16:04:30	5
26793	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet FOCICOM.	f	138	132	2024-01-24 16:04:30	2024-01-24 16:04:30	5
26794	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet FOCICOM.	f	138	131	2024-01-24 16:04:30	2024-01-24 16:04:30	5
26795	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet FOCICOM.	f	138	145	2024-01-24 16:04:30	2024-01-24 16:04:30	5
26796	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet FOCICOM.	f	138	129	2024-01-24 16:04:30	2024-01-24 16:04:30	5
26797	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet FOCICOM.	f	138	150	2024-01-24 16:04:30	2024-01-24 16:04:30	5
26798	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet FOCICOM.	f	138	167	2024-01-24 16:04:30	2024-01-24 16:04:30	5
26799	Miandrisoa a été assigné à la tâche Taches dans le projet FOCICOM par Mathieu	f	138	146	2024-01-24 13:04:30	2024-01-24 13:04:30	6
26800	Miandrisoa a été assigné à la tâche Taches dans le projet FOCICOM par Mathieu	f	138	127	2024-01-24 16:04:30	2024-01-24 16:04:30	6
26801	Miandrisoa a été assigné à la tâche Taches dans le projet FOCICOM par Mathieu	f	138	132	2024-01-24 16:04:30	2024-01-24 16:04:30	6
26802	Miandrisoa a été assigné à la tâche Taches dans le projet FOCICOM par Mathieu	f	138	150	2024-01-24 16:04:30	2024-01-24 16:04:30	6
26803	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet FOCICOM.	f	138	127	2024-01-24 16:05:20	2024-01-24 16:05:20	5
26804	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet FOCICOM.	f	138	135	2024-01-24 16:05:20	2024-01-24 16:05:20	5
26805	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet FOCICOM.	f	138	132	2024-01-24 16:05:20	2024-01-24 16:05:20	5
26806	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet FOCICOM.	f	138	131	2024-01-24 16:05:20	2024-01-24 16:05:20	5
26807	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet FOCICOM.	f	138	145	2024-01-24 16:05:20	2024-01-24 16:05:20	5
26808	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet FOCICOM.	f	138	129	2024-01-24 16:05:20	2024-01-24 16:05:20	5
26809	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet FOCICOM.	f	138	150	2024-01-24 16:05:20	2024-01-24 16:05:20	5
26810	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet FOCICOM.	f	138	167	2024-01-24 16:05:20	2024-01-24 16:05:20	5
26812	Mickaella a été assigné à la tâche Taches dans le projet FOCICOM par Mathieu	f	138	127	2024-01-24 16:05:20	2024-01-24 16:05:20	6
26813	Mickaella a été assigné à la tâche Taches dans le projet FOCICOM par Mathieu	f	138	132	2024-01-24 16:05:20	2024-01-24 16:05:20	6
26814	Mickaella a été assigné à la tâche Taches dans le projet FOCICOM par Mathieu	f	138	150	2024-01-24 16:05:20	2024-01-24 16:05:20	6
26876	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet MILLOT.	f	138	127	2024-01-24 16:10:28	2024-01-24 16:10:28	5
26877	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet MILLOT.	f	138	135	2024-01-24 16:10:28	2024-01-24 16:10:28	5
26878	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet MILLOT.	f	138	132	2024-01-24 16:10:28	2024-01-24 16:10:28	5
26879	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet MILLOT.	f	138	131	2024-01-24 16:10:28	2024-01-24 16:10:28	5
26880	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet MILLOT.	f	138	145	2024-01-24 16:10:28	2024-01-24 16:10:28	5
26881	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet MILLOT.	f	138	129	2024-01-24 16:10:28	2024-01-24 16:10:28	5
26882	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet MILLOT.	f	138	150	2024-01-24 16:10:28	2024-01-24 16:10:28	5
26883	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet MILLOT.	f	138	167	2024-01-24 16:10:28	2024-01-24 16:10:28	5
26888	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	127	2024-01-24 16:11:31	2024-01-24 16:11:31	5
26889	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	135	2024-01-24 16:11:31	2024-01-24 16:11:31	5
26890	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	132	2024-01-24 16:11:31	2024-01-24 16:11:31	5
26891	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	131	2024-01-24 16:11:31	2024-01-24 16:11:31	5
26892	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	145	2024-01-24 16:11:31	2024-01-24 16:11:31	5
26893	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	129	2024-01-24 16:11:31	2024-01-24 16:11:31	5
26894	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	150	2024-01-24 16:11:31	2024-01-24 16:11:31	5
26895	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet NAJMI - Intervention et accompagnement.	f	138	167	2024-01-24 16:11:31	2024-01-24 16:11:31	5
26651	Adrien a été assigné à la tâche Préparation import Fournisseur dans le projet SMEF par Mathieu	t	138	141	2024-01-24 12:36:45	2024-01-24 12:36:45	6
26926	Tâche "Taches"\n          du projet MILLOT mise dans " En blocage " par Kevin	f	139	127	2024-01-24 16:18:17	2024-01-24 16:18:17	1
26927	Tâche "Taches"\n          du projet MILLOT mise dans " En blocage " par Kevin	f	139	135	2024-01-24 16:18:17	2024-01-24 16:18:17	1
26928	Tâche "Taches"\n          du projet MILLOT mise dans " En blocage " par Kevin	f	139	138	2024-01-24 16:18:17	2024-01-24 16:18:17	1
26929	Tâche "Taches"\n          du projet MILLOT mise dans " En blocage " par Kevin	f	139	132	2024-01-24 16:18:17	2024-01-24 16:18:17	1
26930	Tâche "Taches"\n          du projet MILLOT mise dans " En blocage " par Kevin	f	139	131	2024-01-24 16:18:17	2024-01-24 16:18:17	1
26931	Tâche "Taches"\n          du projet MILLOT mise dans " En blocage " par Kevin	f	139	145	2024-01-24 16:18:17	2024-01-24 16:18:17	1
26932	Tâche "Taches"\n          du projet MILLOT mise dans " En blocage " par Kevin	f	139	129	2024-01-24 16:18:17	2024-01-24 16:18:17	1
26933	Tâche "Taches"\n          du projet MILLOT mise dans " En blocage " par Kevin	f	139	150	2024-01-24 16:18:17	2024-01-24 16:18:17	1
26934	Tâche "Taches"\n          du projet MILLOT mise dans " En blocage " par Kevin	f	139	167	2024-01-24 16:18:17	2024-01-24 16:18:17	1
26954	Mickaella a été assigné à la tâche Importation des exercices : Prod dans le projet NAJMI - Intervention et accompagnement par Mickaella	f	148	127	2024-01-24 16:19:19	2024-01-24 16:19:19	6
26955	Mickaella a été assigné à la tâche Importation des exercices : Prod dans le projet NAJMI - Intervention et accompagnement par Mickaella	f	148	132	2024-01-24 16:19:19	2024-01-24 16:19:19	6
26956	Mickaella a été assigné à la tâche Importation des exercices : Prod dans le projet NAJMI - Intervention et accompagnement par Mickaella	f	148	150	2024-01-24 16:19:19	2024-01-24 16:19:19	6
26993	Mickaella a été assigné à la tâche Création d'un modèle d'impression dans le projet FOCICOM par Mickaella	f	148	127	2024-01-24 16:27:24	2024-01-24 16:27:24	6
26994	Mickaella a été assigné à la tâche Création d'un modèle d'impression dans le projet FOCICOM par Mickaella	f	148	132	2024-01-24 16:27:24	2024-01-24 16:27:24	6
26995	Mickaella a été assigné à la tâche Création d'un modèle d'impression dans le projet FOCICOM par Mickaella	f	148	150	2024-01-24 16:27:24	2024-01-24 16:27:24	6
27006	Miandrisoa a été assigné à la tâche Préparation du fichier de comparaison du GESCOM et COMPTA, pour la clôture de l'exercice 2022 dans le projet CDC par Miandrisoa	f	146	127	2024-01-24 16:29:39	2024-01-24 16:29:39	6
27007	Miandrisoa a été assigné à la tâche Préparation du fichier de comparaison du GESCOM et COMPTA, pour la clôture de l'exercice 2022 dans le projet CDC par Miandrisoa	f	146	132	2024-01-24 16:29:39	2024-01-24 16:29:39	6
27008	Miandrisoa a été assigné à la tâche Préparation du fichier de comparaison du GESCOM et COMPTA, pour la clôture de l'exercice 2022 dans le projet CDC par Miandrisoa	f	146	150	2024-01-24 16:29:39	2024-01-24 16:29:39	6
26815	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet MADAPLAST - Intervention et accompagnement.	f	138	127	2024-01-24 16:06:32	2024-01-24 16:06:32	5
26816	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet MADAPLAST - Intervention et accompagnement.	f	138	135	2024-01-24 16:06:32	2024-01-24 16:06:32	5
26817	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet MADAPLAST - Intervention et accompagnement.	f	138	132	2024-01-24 16:06:32	2024-01-24 16:06:32	5
26818	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet MADAPLAST - Intervention et accompagnement.	f	138	131	2024-01-24 16:06:32	2024-01-24 16:06:32	5
26819	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet MADAPLAST - Intervention et accompagnement.	f	138	145	2024-01-24 16:06:32	2024-01-24 16:06:32	5
26820	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet MADAPLAST - Intervention et accompagnement.	f	138	129	2024-01-24 16:06:32	2024-01-24 16:06:32	5
26821	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet MADAPLAST - Intervention et accompagnement.	f	138	150	2024-01-24 16:06:32	2024-01-24 16:06:32	5
26822	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet MADAPLAST - Intervention et accompagnement.	f	138	167	2024-01-24 16:06:32	2024-01-24 16:06:32	5
26885	Kevin a été assigné à la tâche Taches dans le projet MILLOT par Mathieu	f	138	127	2024-01-24 16:10:28	2024-01-24 16:10:28	6
26886	Kevin a été assigné à la tâche Taches dans le projet MILLOT par Mathieu	f	138	132	2024-01-24 16:10:28	2024-01-24 16:10:28	6
26887	Kevin a été assigné à la tâche Taches dans le projet MILLOT par Mathieu	f	138	150	2024-01-24 16:10:28	2024-01-24 16:10:28	6
26896	Kevin a été assigné à la tâche Taches dans le projet NAJMI - Intervention et accompagnement par Mathieu	f	138	139	2024-01-24 13:11:31	2024-01-24 13:11:31	6
26823	Miandrisoa a été assigné à la tâche Taches dans le projet MADAPLAST - Intervention et accompagnement par Mathieu	f	138	146	2024-01-24 13:06:32	2024-01-24 13:06:32	6
26824	Miandrisoa a été assigné à la tâche Taches dans le projet MADAPLAST - Intervention et accompagnement par Mathieu	f	138	127	2024-01-24 16:06:32	2024-01-24 16:06:32	6
26825	Miandrisoa a été assigné à la tâche Taches dans le projet MADAPLAST - Intervention et accompagnement par Mathieu	f	138	132	2024-01-24 16:06:32	2024-01-24 16:06:32	6
26826	Miandrisoa a été assigné à la tâche Taches dans le projet MADAPLAST - Intervention et accompagnement par Mathieu	f	138	150	2024-01-24 16:06:32	2024-01-24 16:06:32	6
26849	Mickaella a été assigné à la tâche Comparaison des données Client par rapport à EBP dans le projet NAJMI - Intervention et accompagnement par Mickaella	f	148	127	2024-01-24 16:08:51	2024-01-24 16:08:51	6
26850	Mickaella a été assigné à la tâche Comparaison des données Client par rapport à EBP dans le projet NAJMI - Intervention et accompagnement par Mickaella	f	148	132	2024-01-24 16:08:51	2024-01-24 16:08:51	6
26851	Mickaella a été assigné à la tâche Comparaison des données Client par rapport à EBP dans le projet NAJMI - Intervention et accompagnement par Mickaella	f	148	150	2024-01-24 16:08:51	2024-01-24 16:08:51	6
26852	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet ISSOUFALI - Intervention et accompagnement.	f	138	127	2024-01-24 16:09:02	2024-01-24 16:09:02	5
26853	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet ISSOUFALI - Intervention et accompagnement.	f	138	135	2024-01-24 16:09:02	2024-01-24 16:09:02	5
26854	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet ISSOUFALI - Intervention et accompagnement.	f	138	132	2024-01-24 16:09:02	2024-01-24 16:09:02	5
26855	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet ISSOUFALI - Intervention et accompagnement.	f	138	131	2024-01-24 16:09:02	2024-01-24 16:09:02	5
26856	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet ISSOUFALI - Intervention et accompagnement.	f	138	145	2024-01-24 16:09:02	2024-01-24 16:09:02	5
26857	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet ISSOUFALI - Intervention et accompagnement.	f	138	129	2024-01-24 16:09:02	2024-01-24 16:09:02	5
26858	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet ISSOUFALI - Intervention et accompagnement.	f	138	150	2024-01-24 16:09:02	2024-01-24 16:09:02	5
26859	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet ISSOUFALI - Intervention et accompagnement.	f	138	167	2024-01-24 16:09:02	2024-01-24 16:09:02	5
26861	Hassan a été assigné à la tâche Taches dans le projet ISSOUFALI - Intervention et accompagnement par Mathieu	f	138	127	2024-01-24 16:09:02	2024-01-24 16:09:02	6
26862	Hassan a été assigné à la tâche Taches dans le projet ISSOUFALI - Intervention et accompagnement par Mathieu	f	138	132	2024-01-24 16:09:02	2024-01-24 16:09:02	6
26863	Hassan a été assigné à la tâche Taches dans le projet ISSOUFALI - Intervention et accompagnement par Mathieu	f	138	150	2024-01-24 16:09:02	2024-01-24 16:09:02	6
26913	Tâche nouvellement créee du nom de Dotation des immobilisations au 31/12/2023 par Miandrisoa dans le projet MILLOT.	f	146	127	2024-01-24 16:16:17	2024-01-24 16:16:17	5
26914	Tâche nouvellement créee du nom de Dotation des immobilisations au 31/12/2023 par Miandrisoa dans le projet MILLOT.	f	146	135	2024-01-24 16:16:17	2024-01-24 16:16:17	5
26915	Tâche nouvellement créee du nom de Dotation des immobilisations au 31/12/2023 par Miandrisoa dans le projet MILLOT.	f	146	138	2024-01-24 16:16:17	2024-01-24 16:16:17	5
26916	Tâche nouvellement créee du nom de Dotation des immobilisations au 31/12/2023 par Miandrisoa dans le projet MILLOT.	f	146	132	2024-01-24 16:16:17	2024-01-24 16:16:17	5
26917	Tâche nouvellement créee du nom de Dotation des immobilisations au 31/12/2023 par Miandrisoa dans le projet MILLOT.	f	146	131	2024-01-24 16:16:17	2024-01-24 16:16:17	5
26918	Tâche nouvellement créee du nom de Dotation des immobilisations au 31/12/2023 par Miandrisoa dans le projet MILLOT.	f	146	145	2024-01-24 16:16:17	2024-01-24 16:16:17	5
26919	Tâche nouvellement créee du nom de Dotation des immobilisations au 31/12/2023 par Miandrisoa dans le projet MILLOT.	f	146	129	2024-01-24 16:16:17	2024-01-24 16:16:17	5
26920	Tâche nouvellement créee du nom de Dotation des immobilisations au 31/12/2023 par Miandrisoa dans le projet MILLOT.	f	146	150	2024-01-24 16:16:17	2024-01-24 16:16:17	5
26921	Tâche nouvellement créee du nom de Dotation des immobilisations au 31/12/2023 par Miandrisoa dans le projet MILLOT.	f	146	167	2024-01-24 16:16:17	2024-01-24 16:16:17	5
26923	Miandrisoa a été assigné à la tâche Dotation des immobilisations au 31/12/2023 dans le projet MILLOT par Miandrisoa	f	146	127	2024-01-24 16:16:17	2024-01-24 16:16:17	6
26924	Miandrisoa a été assigné à la tâche Dotation des immobilisations au 31/12/2023 dans le projet MILLOT par Miandrisoa	f	146	132	2024-01-24 16:16:17	2024-01-24 16:16:17	6
26925	Miandrisoa a été assigné à la tâche Dotation des immobilisations au 31/12/2023 dans le projet MILLOT par Miandrisoa	f	146	150	2024-01-24 16:16:17	2024-01-24 16:16:17	6
26970	Tâche nouvellement créee du nom de Ajout moyen de paiement par Mickaella dans le projet FOCICOM.	f	148	127	2024-01-24 16:26:36	2024-01-24 16:26:36	5
26971	Tâche nouvellement créee du nom de Ajout moyen de paiement par Mickaella dans le projet FOCICOM.	f	148	135	2024-01-24 16:26:36	2024-01-24 16:26:36	5
26972	Tâche nouvellement créee du nom de Ajout moyen de paiement par Mickaella dans le projet FOCICOM.	f	148	138	2024-01-24 16:26:36	2024-01-24 16:26:36	5
26973	Tâche nouvellement créee du nom de Ajout moyen de paiement par Mickaella dans le projet FOCICOM.	f	148	132	2024-01-24 16:26:36	2024-01-24 16:26:36	5
26974	Tâche nouvellement créee du nom de Ajout moyen de paiement par Mickaella dans le projet FOCICOM.	f	148	131	2024-01-24 16:26:36	2024-01-24 16:26:36	5
26975	Tâche nouvellement créee du nom de Ajout moyen de paiement par Mickaella dans le projet FOCICOM.	f	148	145	2024-01-24 16:26:36	2024-01-24 16:26:36	5
26976	Tâche nouvellement créee du nom de Ajout moyen de paiement par Mickaella dans le projet FOCICOM.	f	148	129	2024-01-24 16:26:36	2024-01-24 16:26:36	5
26977	Tâche nouvellement créee du nom de Ajout moyen de paiement par Mickaella dans le projet FOCICOM.	f	148	150	2024-01-24 16:26:36	2024-01-24 16:26:36	5
26978	Tâche nouvellement créee du nom de Ajout moyen de paiement par Mickaella dans le projet FOCICOM.	f	148	167	2024-01-24 16:26:36	2024-01-24 16:26:36	5
26980	Mickaella a été assigné à la tâche Ajout moyen de paiement dans le projet FOCICOM par Mickaella	f	148	127	2024-01-24 16:26:36	2024-01-24 16:26:36	6
26827	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet ISSOUFALI - Intervention et accompagnement.	f	138	127	2024-01-24 16:08:37	2024-01-24 16:08:37	5
26828	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet ISSOUFALI - Intervention et accompagnement.	f	138	135	2024-01-24 16:08:37	2024-01-24 16:08:37	5
26829	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet ISSOUFALI - Intervention et accompagnement.	f	138	132	2024-01-24 16:08:37	2024-01-24 16:08:37	5
26830	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet ISSOUFALI - Intervention et accompagnement.	f	138	131	2024-01-24 16:08:37	2024-01-24 16:08:37	5
26831	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet ISSOUFALI - Intervention et accompagnement.	f	138	145	2024-01-24 16:08:37	2024-01-24 16:08:37	5
26832	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet ISSOUFALI - Intervention et accompagnement.	f	138	129	2024-01-24 16:08:37	2024-01-24 16:08:37	5
26833	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet ISSOUFALI - Intervention et accompagnement.	f	138	150	2024-01-24 16:08:37	2024-01-24 16:08:37	5
26834	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet ISSOUFALI - Intervention et accompagnement.	f	138	167	2024-01-24 16:08:37	2024-01-24 16:08:37	5
26836	Adrien a été assigné à la tâche Taches dans le projet ISSOUFALI - Intervention et accompagnement par Mathieu	f	138	127	2024-01-24 16:08:37	2024-01-24 16:08:37	6
26837	Adrien a été assigné à la tâche Taches dans le projet ISSOUFALI - Intervention et accompagnement par Mathieu	f	138	132	2024-01-24 16:08:37	2024-01-24 16:08:37	6
26838	Adrien a été assigné à la tâche Taches dans le projet ISSOUFALI - Intervention et accompagnement par Mathieu	f	138	150	2024-01-24 16:08:37	2024-01-24 16:08:37	6
26839	Tâche nouvellement créee du nom de Comparaison des données Client par rapport à EBP par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	127	2024-01-24 16:08:51	2024-01-24 16:08:51	5
26840	Tâche nouvellement créee du nom de Comparaison des données Client par rapport à EBP par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	135	2024-01-24 16:08:51	2024-01-24 16:08:51	5
26841	Tâche nouvellement créee du nom de Comparaison des données Client par rapport à EBP par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	138	2024-01-24 16:08:51	2024-01-24 16:08:51	5
26842	Tâche nouvellement créee du nom de Comparaison des données Client par rapport à EBP par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	132	2024-01-24 16:08:51	2024-01-24 16:08:51	5
26843	Tâche nouvellement créee du nom de Comparaison des données Client par rapport à EBP par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	131	2024-01-24 16:08:51	2024-01-24 16:08:51	5
26844	Tâche nouvellement créee du nom de Comparaison des données Client par rapport à EBP par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	145	2024-01-24 16:08:51	2024-01-24 16:08:51	5
26845	Tâche nouvellement créee du nom de Comparaison des données Client par rapport à EBP par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	129	2024-01-24 16:08:51	2024-01-24 16:08:51	5
26846	Tâche nouvellement créee du nom de Comparaison des données Client par rapport à EBP par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	150	2024-01-24 16:08:51	2024-01-24 16:08:51	5
26847	Tâche nouvellement créee du nom de Comparaison des données Client par rapport à EBP par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	167	2024-01-24 16:08:51	2024-01-24 16:08:51	5
26848	Mickaella a été assigné à la tâche Comparaison des données Client par rapport à EBP dans le projet NAJMI - Intervention et accompagnement par Mickaella	f	148	148	2024-01-24 13:08:51	2024-01-24 13:08:51	6
26860	Hassan a été assigné à la tâche Taches dans le projet ISSOUFALI - Intervention et accompagnement par Mathieu	t	138	142	2024-01-24 13:09:02	2024-01-24 13:09:02	6
26864	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet ZEOP - Mise en place d'une solution.	f	138	127	2024-01-24 16:09:34	2024-01-24 16:09:34	5
26865	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet ZEOP - Mise en place d'une solution.	f	138	135	2024-01-24 16:09:34	2024-01-24 16:09:34	5
26866	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet ZEOP - Mise en place d'une solution.	f	138	132	2024-01-24 16:09:34	2024-01-24 16:09:34	5
26867	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet ZEOP - Mise en place d'une solution.	f	138	131	2024-01-24 16:09:34	2024-01-24 16:09:34	5
26868	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet ZEOP - Mise en place d'une solution.	f	138	145	2024-01-24 16:09:34	2024-01-24 16:09:34	5
26869	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet ZEOP - Mise en place d'une solution.	f	138	129	2024-01-24 16:09:34	2024-01-24 16:09:34	5
26870	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet ZEOP - Mise en place d'une solution.	f	138	150	2024-01-24 16:09:34	2024-01-24 16:09:34	5
26871	Tâche nouvellement créee du nom de Taches par Mathieu dans le projet ZEOP - Mise en place d'une solution.	f	138	167	2024-01-24 16:09:34	2024-01-24 16:09:34	5
26884	Kevin a été assigné à la tâche Taches dans le projet MILLOT par Mathieu	f	138	139	2024-01-24 13:10:28	2024-01-24 13:10:28	6
26909	Mickaella a été assigné à la tâche Préparation du fichier d'import dans le projet NAJMI - Intervention et accompagnement par Mickaella	f	148	148	2024-01-24 13:11:40	2024-01-24 13:11:40	6
26910	Mickaella a été assigné à la tâche Préparation du fichier d'import dans le projet NAJMI - Intervention et accompagnement par Mickaella	f	148	127	2024-01-24 16:11:40	2024-01-24 16:11:40	6
26911	Mickaella a été assigné à la tâche Préparation du fichier d'import dans le projet NAJMI - Intervention et accompagnement par Mickaella	f	148	132	2024-01-24 16:11:40	2024-01-24 16:11:40	6
26912	Mickaella a été assigné à la tâche Préparation du fichier d'import dans le projet NAJMI - Intervention et accompagnement par Mickaella	f	148	150	2024-01-24 16:11:40	2024-01-24 16:11:40	6
26835	Adrien a été assigné à la tâche Taches dans le projet ISSOUFALI - Intervention et accompagnement par Mathieu	t	138	141	2024-01-24 13:08:37	2024-01-24 13:08:37	6
26922	Miandrisoa a été assigné à la tâche Dotation des immobilisations au 31/12/2023 dans le projet MILLOT par Miandrisoa	f	146	146	2024-01-24 13:16:17	2024-01-24 13:16:17	6
26967	Mickaella a été assigné à la tâche Modification des modèles d'impression  dans le projet NAJMI - Intervention et accompagnement par Mickaella	f	148	127	2024-01-24 16:24:31	2024-01-24 16:24:31	6
26227	Hassan a été assigné à la tâche Modification sur le tableau REAPPROVISIONNEMENT dans le projet MOLLAN par Mathieu	t	138	142	2024-01-11 11:54:19	2024-01-11 11:54:19	6
26873	Hassan a été assigné à la tâche Taches dans le projet ZEOP - Mise en place d'une solution par Mathieu	f	138	127	2024-01-24 16:09:34	2024-01-24 16:09:34	6
26874	Hassan a été assigné à la tâche Taches dans le projet ZEOP - Mise en place d'une solution par Mathieu	f	138	132	2024-01-24 16:09:34	2024-01-24 16:09:34	6
26875	Hassan a été assigné à la tâche Taches dans le projet ZEOP - Mise en place d'une solution par Mathieu	f	138	150	2024-01-24 16:09:34	2024-01-24 16:09:34	6
26944	Tâche nouvellement créee du nom de Importation des exercices : Prod par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	127	2024-01-24 16:19:19	2024-01-24 16:19:19	5
26945	Tâche nouvellement créee du nom de Importation des exercices : Prod par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	135	2024-01-24 16:19:19	2024-01-24 16:19:19	5
26946	Tâche nouvellement créee du nom de Importation des exercices : Prod par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	138	2024-01-24 16:19:19	2024-01-24 16:19:19	5
26947	Tâche nouvellement créee du nom de Importation des exercices : Prod par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	132	2024-01-24 16:19:19	2024-01-24 16:19:19	5
26948	Tâche nouvellement créee du nom de Importation des exercices : Prod par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	131	2024-01-24 16:19:19	2024-01-24 16:19:19	5
26949	Tâche nouvellement créee du nom de Importation des exercices : Prod par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	145	2024-01-24 16:19:19	2024-01-24 16:19:19	5
26950	Tâche nouvellement créee du nom de Importation des exercices : Prod par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	129	2024-01-24 16:19:19	2024-01-24 16:19:19	5
26951	Tâche nouvellement créee du nom de Importation des exercices : Prod par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	150	2024-01-24 16:19:19	2024-01-24 16:19:19	5
26952	Tâche nouvellement créee du nom de Importation des exercices : Prod par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	167	2024-01-24 16:19:19	2024-01-24 16:19:19	5
27005	Miandrisoa a été assigné à la tâche Préparation du fichier de comparaison du GESCOM et COMPTA, pour la clôture de l'exercice 2022 dans le projet CDC par Miandrisoa	f	146	146	2024-01-24 13:29:39	2024-01-24 13:29:39	6
26872	Hassan a été assigné à la tâche Taches dans le projet ZEOP - Mise en place d'une solution par Mathieu	t	138	142	2024-01-24 13:09:34	2024-01-24 13:09:34	6
26897	Kevin a été assigné à la tâche Taches dans le projet NAJMI - Intervention et accompagnement par Mathieu	f	138	127	2024-01-24 16:11:31	2024-01-24 16:11:31	6
26898	Kevin a été assigné à la tâche Taches dans le projet NAJMI - Intervention et accompagnement par Mathieu	f	138	132	2024-01-24 16:11:31	2024-01-24 16:11:31	6
26899	Kevin a été assigné à la tâche Taches dans le projet NAJMI - Intervention et accompagnement par Mathieu	f	138	150	2024-01-24 16:11:31	2024-01-24 16:11:31	6
26900	Tâche nouvellement créee du nom de Préparation du fichier d'import par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	127	2024-01-24 16:11:40	2024-01-24 16:11:40	5
26901	Tâche nouvellement créee du nom de Préparation du fichier d'import par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	135	2024-01-24 16:11:40	2024-01-24 16:11:40	5
26902	Tâche nouvellement créee du nom de Préparation du fichier d'import par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	138	2024-01-24 16:11:40	2024-01-24 16:11:40	5
26903	Tâche nouvellement créee du nom de Préparation du fichier d'import par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	132	2024-01-24 16:11:40	2024-01-24 16:11:40	5
26904	Tâche nouvellement créee du nom de Préparation du fichier d'import par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	131	2024-01-24 16:11:40	2024-01-24 16:11:40	5
26905	Tâche nouvellement créee du nom de Préparation du fichier d'import par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	145	2024-01-24 16:11:40	2024-01-24 16:11:40	5
26906	Tâche nouvellement créee du nom de Préparation du fichier d'import par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	129	2024-01-24 16:11:40	2024-01-24 16:11:40	5
26907	Tâche nouvellement créee du nom de Préparation du fichier d'import par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	150	2024-01-24 16:11:40	2024-01-24 16:11:40	5
26908	Tâche nouvellement créee du nom de Préparation du fichier d'import par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	167	2024-01-24 16:11:40	2024-01-24 16:11:40	5
26935	Tâche "Taches"\n          du projet MILLOT mise dans " A faire " par Kevin	f	139	127	2024-01-24 16:18:52	2024-01-24 16:18:52	1
26936	Tâche "Taches"\n          du projet MILLOT mise dans " A faire " par Kevin	f	139	135	2024-01-24 16:18:52	2024-01-24 16:18:52	1
26937	Tâche "Taches"\n          du projet MILLOT mise dans " A faire " par Kevin	f	139	138	2024-01-24 16:18:52	2024-01-24 16:18:52	1
26938	Tâche "Taches"\n          du projet MILLOT mise dans " A faire " par Kevin	f	139	132	2024-01-24 16:18:52	2024-01-24 16:18:52	1
26939	Tâche "Taches"\n          du projet MILLOT mise dans " A faire " par Kevin	f	139	131	2024-01-24 16:18:52	2024-01-24 16:18:52	1
26940	Tâche "Taches"\n          du projet MILLOT mise dans " A faire " par Kevin	f	139	145	2024-01-24 16:18:52	2024-01-24 16:18:52	1
26941	Tâche "Taches"\n          du projet MILLOT mise dans " A faire " par Kevin	f	139	129	2024-01-24 16:18:52	2024-01-24 16:18:52	1
26942	Tâche "Taches"\n          du projet MILLOT mise dans " A faire " par Kevin	f	139	150	2024-01-24 16:18:52	2024-01-24 16:18:52	1
26943	Tâche "Taches"\n          du projet MILLOT mise dans " A faire " par Kevin	f	139	167	2024-01-24 16:18:52	2024-01-24 16:18:52	1
26953	Mickaella a été assigné à la tâche Importation des exercices : Prod dans le projet NAJMI - Intervention et accompagnement par Mickaella	f	148	148	2024-01-24 13:19:19	2024-01-24 13:19:19	6
26957	Tâche nouvellement créee du nom de Modification des modèles d'impression  par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	127	2024-01-24 16:24:31	2024-01-24 16:24:31	5
26958	Tâche nouvellement créee du nom de Modification des modèles d'impression  par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	135	2024-01-24 16:24:31	2024-01-24 16:24:31	5
26959	Tâche nouvellement créee du nom de Modification des modèles d'impression  par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	138	2024-01-24 16:24:31	2024-01-24 16:24:31	5
26960	Tâche nouvellement créee du nom de Modification des modèles d'impression  par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	132	2024-01-24 16:24:31	2024-01-24 16:24:31	5
26961	Tâche nouvellement créee du nom de Modification des modèles d'impression  par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	131	2024-01-24 16:24:31	2024-01-24 16:24:31	5
26962	Tâche nouvellement créee du nom de Modification des modèles d'impression  par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	145	2024-01-24 16:24:31	2024-01-24 16:24:31	5
26963	Tâche nouvellement créee du nom de Modification des modèles d'impression  par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	129	2024-01-24 16:24:31	2024-01-24 16:24:31	5
26964	Tâche nouvellement créee du nom de Modification des modèles d'impression  par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	150	2024-01-24 16:24:31	2024-01-24 16:24:31	5
26965	Tâche nouvellement créee du nom de Modification des modèles d'impression  par Mickaella dans le projet NAJMI - Intervention et accompagnement.	f	148	167	2024-01-24 16:24:31	2024-01-24 16:24:31	5
26966	Mickaella a été assigné à la tâche Modification des modèles d'impression  dans le projet NAJMI - Intervention et accompagnement par Mickaella	f	148	148	2024-01-24 13:24:31	2024-01-24 13:24:31	6
26996	Tâche nouvellement créee du nom de Préparation du fichier de comparaison du GESCOM et COMPTA, pour la clôture de l'exercice 2022 par Miandrisoa dans le projet CDC.	f	146	127	2024-01-24 16:29:39	2024-01-24 16:29:39	5
26997	Tâche nouvellement créee du nom de Préparation du fichier de comparaison du GESCOM et COMPTA, pour la clôture de l'exercice 2022 par Miandrisoa dans le projet CDC.	f	146	135	2024-01-24 16:29:39	2024-01-24 16:29:39	5
26998	Tâche nouvellement créee du nom de Préparation du fichier de comparaison du GESCOM et COMPTA, pour la clôture de l'exercice 2022 par Miandrisoa dans le projet CDC.	f	146	138	2024-01-24 16:29:39	2024-01-24 16:29:39	5
26999	Tâche nouvellement créee du nom de Préparation du fichier de comparaison du GESCOM et COMPTA, pour la clôture de l'exercice 2022 par Miandrisoa dans le projet CDC.	f	146	132	2024-01-24 16:29:39	2024-01-24 16:29:39	5
27000	Tâche nouvellement créee du nom de Préparation du fichier de comparaison du GESCOM et COMPTA, pour la clôture de l'exercice 2022 par Miandrisoa dans le projet CDC.	f	146	131	2024-01-24 16:29:39	2024-01-24 16:29:39	5
26968	Mickaella a été assigné à la tâche Modification des modèles d'impression  dans le projet NAJMI - Intervention et accompagnement par Mickaella	f	148	132	2024-01-24 16:24:31	2024-01-24 16:24:31	6
26969	Mickaella a été assigné à la tâche Modification des modèles d'impression  dans le projet NAJMI - Intervention et accompagnement par Mickaella	f	148	150	2024-01-24 16:24:31	2024-01-24 16:24:31	6
26981	Mickaella a été assigné à la tâche Ajout moyen de paiement dans le projet FOCICOM par Mickaella	f	148	132	2024-01-24 16:26:36	2024-01-24 16:26:36	6
26982	Mickaella a été assigné à la tâche Ajout moyen de paiement dans le projet FOCICOM par Mickaella	f	148	150	2024-01-24 16:26:36	2024-01-24 16:26:36	6
26983	Tâche nouvellement créee du nom de Création d'un modèle d'impression par Mickaella dans le projet FOCICOM.	f	148	127	2024-01-24 16:27:24	2024-01-24 16:27:24	5
26984	Tâche nouvellement créee du nom de Création d'un modèle d'impression par Mickaella dans le projet FOCICOM.	f	148	135	2024-01-24 16:27:24	2024-01-24 16:27:24	5
26985	Tâche nouvellement créee du nom de Création d'un modèle d'impression par Mickaella dans le projet FOCICOM.	f	148	138	2024-01-24 16:27:24	2024-01-24 16:27:24	5
26986	Tâche nouvellement créee du nom de Création d'un modèle d'impression par Mickaella dans le projet FOCICOM.	f	148	132	2024-01-24 16:27:24	2024-01-24 16:27:24	5
26987	Tâche nouvellement créee du nom de Création d'un modèle d'impression par Mickaella dans le projet FOCICOM.	f	148	131	2024-01-24 16:27:24	2024-01-24 16:27:24	5
26988	Tâche nouvellement créee du nom de Création d'un modèle d'impression par Mickaella dans le projet FOCICOM.	f	148	145	2024-01-24 16:27:24	2024-01-24 16:27:24	5
26989	Tâche nouvellement créee du nom de Création d'un modèle d'impression par Mickaella dans le projet FOCICOM.	f	148	129	2024-01-24 16:27:24	2024-01-24 16:27:24	5
26990	Tâche nouvellement créee du nom de Création d'un modèle d'impression par Mickaella dans le projet FOCICOM.	f	148	150	2024-01-24 16:27:24	2024-01-24 16:27:24	5
26991	Tâche nouvellement créee du nom de Création d'un modèle d'impression par Mickaella dans le projet FOCICOM.	f	148	167	2024-01-24 16:27:24	2024-01-24 16:27:24	5
27001	Tâche nouvellement créee du nom de Préparation du fichier de comparaison du GESCOM et COMPTA, pour la clôture de l'exercice 2022 par Miandrisoa dans le projet CDC.	f	146	145	2024-01-24 16:29:39	2024-01-24 16:29:39	5
27002	Tâche nouvellement créee du nom de Préparation du fichier de comparaison du GESCOM et COMPTA, pour la clôture de l'exercice 2022 par Miandrisoa dans le projet CDC.	f	146	129	2024-01-24 16:29:39	2024-01-24 16:29:39	5
27003	Tâche nouvellement créee du nom de Préparation du fichier de comparaison du GESCOM et COMPTA, pour la clôture de l'exercice 2022 par Miandrisoa dans le projet CDC.	f	146	150	2024-01-24 16:29:39	2024-01-24 16:29:39	5
27004	Tâche nouvellement créee du nom de Préparation du fichier de comparaison du GESCOM et COMPTA, pour la clôture de l'exercice 2022 par Miandrisoa dans le projet CDC.	f	146	167	2024-01-24 16:29:39	2024-01-24 16:29:39	5
27009	Tâche nouvellement créee du nom de Simulation paramétrages Utilisateur 'Caissier' par Mickaella dans le projet FOCICOM.	f	148	127	2024-01-24 16:29:50	2024-01-24 16:29:50	5
27010	Tâche nouvellement créee du nom de Simulation paramétrages Utilisateur 'Caissier' par Mickaella dans le projet FOCICOM.	f	148	135	2024-01-24 16:29:50	2024-01-24 16:29:50	5
27011	Tâche nouvellement créee du nom de Simulation paramétrages Utilisateur 'Caissier' par Mickaella dans le projet FOCICOM.	f	148	138	2024-01-24 16:29:50	2024-01-24 16:29:50	5
27012	Tâche nouvellement créee du nom de Simulation paramétrages Utilisateur 'Caissier' par Mickaella dans le projet FOCICOM.	f	148	132	2024-01-24 16:29:50	2024-01-24 16:29:50	5
27013	Tâche nouvellement créee du nom de Simulation paramétrages Utilisateur 'Caissier' par Mickaella dans le projet FOCICOM.	f	148	131	2024-01-24 16:29:50	2024-01-24 16:29:50	5
27014	Tâche nouvellement créee du nom de Simulation paramétrages Utilisateur 'Caissier' par Mickaella dans le projet FOCICOM.	f	148	145	2024-01-24 16:29:50	2024-01-24 16:29:50	5
27015	Tâche nouvellement créee du nom de Simulation paramétrages Utilisateur 'Caissier' par Mickaella dans le projet FOCICOM.	f	148	129	2024-01-24 16:29:50	2024-01-24 16:29:50	5
27016	Tâche nouvellement créee du nom de Simulation paramétrages Utilisateur 'Caissier' par Mickaella dans le projet FOCICOM.	f	148	150	2024-01-24 16:29:50	2024-01-24 16:29:50	5
27017	Tâche nouvellement créee du nom de Simulation paramétrages Utilisateur 'Caissier' par Mickaella dans le projet FOCICOM.	f	148	167	2024-01-24 16:29:50	2024-01-24 16:29:50	5
27019	Mickaella a été assigné à la tâche Simulation paramétrages Utilisateur 'Caissier' dans le projet FOCICOM par Mickaella	f	148	127	2024-01-24 16:29:50	2024-01-24 16:29:50	6
27020	Mickaella a été assigné à la tâche Simulation paramétrages Utilisateur 'Caissier' dans le projet FOCICOM par Mickaella	f	148	132	2024-01-24 16:29:50	2024-01-24 16:29:50	6
27021	Mickaella a été assigné à la tâche Simulation paramétrages Utilisateur 'Caissier' dans le projet FOCICOM par Mickaella	f	148	150	2024-01-24 16:29:50	2024-01-24 16:29:50	6
27022	Tâche nouvellement créee du nom de Préparation import Facture par Mickaella dans le projet SMEF.	f	148	127	2024-01-24 16:32:47	2024-01-24 16:32:47	5
27023	Tâche nouvellement créee du nom de Préparation import Facture par Mickaella dans le projet SMEF.	f	148	135	2024-01-24 16:32:47	2024-01-24 16:32:47	5
27024	Tâche nouvellement créee du nom de Préparation import Facture par Mickaella dans le projet SMEF.	f	148	138	2024-01-24 16:32:47	2024-01-24 16:32:47	5
27025	Tâche nouvellement créee du nom de Préparation import Facture par Mickaella dans le projet SMEF.	f	148	132	2024-01-24 16:32:47	2024-01-24 16:32:47	5
27026	Tâche nouvellement créee du nom de Préparation import Facture par Mickaella dans le projet SMEF.	f	148	131	2024-01-24 16:32:47	2024-01-24 16:32:47	5
27027	Tâche nouvellement créee du nom de Préparation import Facture par Mickaella dans le projet SMEF.	f	148	145	2024-01-24 16:32:47	2024-01-24 16:32:47	5
27028	Tâche nouvellement créee du nom de Préparation import Facture par Mickaella dans le projet SMEF.	f	148	129	2024-01-24 16:32:47	2024-01-24 16:32:47	5
27029	Tâche nouvellement créee du nom de Préparation import Facture par Mickaella dans le projet SMEF.	f	148	150	2024-01-24 16:32:47	2024-01-24 16:32:47	5
27030	Tâche nouvellement créee du nom de Préparation import Facture par Mickaella dans le projet SMEF.	f	148	167	2024-01-24 16:32:47	2024-01-24 16:32:47	5
27032	Mickaella a été assigné à la tâche Préparation import Facture dans le projet SMEF par Mickaella	f	148	127	2024-01-24 16:32:47	2024-01-24 16:32:47	6
27033	Mickaella a été assigné à la tâche Préparation import Facture dans le projet SMEF par Mickaella	f	148	132	2024-01-24 16:32:47	2024-01-24 16:32:47	6
27034	Mickaella a été assigné à la tâche Préparation import Facture dans le projet SMEF par Mickaella	f	148	150	2024-01-24 16:32:47	2024-01-24 16:32:47	6
27035	Tâche nouvellement créee du nom de Clôture de l'exercice comptable 2022 (CDC) et ouverture de l'exercice 2024 par Miandrisoa dans le projet CDC.	f	146	127	2024-01-24 16:33:03	2024-01-24 16:33:03	5
27036	Tâche nouvellement créee du nom de Clôture de l'exercice comptable 2022 (CDC) et ouverture de l'exercice 2024 par Miandrisoa dans le projet CDC.	f	146	135	2024-01-24 16:33:03	2024-01-24 16:33:03	5
27037	Tâche nouvellement créee du nom de Clôture de l'exercice comptable 2022 (CDC) et ouverture de l'exercice 2024 par Miandrisoa dans le projet CDC.	f	146	138	2024-01-24 16:33:03	2024-01-24 16:33:03	5
27038	Tâche nouvellement créee du nom de Clôture de l'exercice comptable 2022 (CDC) et ouverture de l'exercice 2024 par Miandrisoa dans le projet CDC.	f	146	132	2024-01-24 16:33:03	2024-01-24 16:33:03	5
27039	Tâche nouvellement créee du nom de Clôture de l'exercice comptable 2022 (CDC) et ouverture de l'exercice 2024 par Miandrisoa dans le projet CDC.	f	146	131	2024-01-24 16:33:03	2024-01-24 16:33:03	5
27040	Tâche nouvellement créee du nom de Clôture de l'exercice comptable 2022 (CDC) et ouverture de l'exercice 2024 par Miandrisoa dans le projet CDC.	f	146	145	2024-01-24 16:33:03	2024-01-24 16:33:03	5
27041	Tâche nouvellement créee du nom de Clôture de l'exercice comptable 2022 (CDC) et ouverture de l'exercice 2024 par Miandrisoa dans le projet CDC.	f	146	129	2024-01-24 16:33:03	2024-01-24 16:33:03	5
27042	Tâche nouvellement créee du nom de Clôture de l'exercice comptable 2022 (CDC) et ouverture de l'exercice 2024 par Miandrisoa dans le projet CDC.	f	146	150	2024-01-24 16:33:03	2024-01-24 16:33:03	5
27043	Tâche nouvellement créee du nom de Clôture de l'exercice comptable 2022 (CDC) et ouverture de l'exercice 2024 par Miandrisoa dans le projet CDC.	f	146	167	2024-01-24 16:33:03	2024-01-24 16:33:03	5
27044	Miandrisoa a été assigné à la tâche Clôture de l'exercice comptable 2022 (CDC) et ouverture de l'exercice 2024 dans le projet CDC par Miandrisoa	f	146	146	2024-01-24 13:33:03	2024-01-24 13:33:03	6
27045	Miandrisoa a été assigné à la tâche Clôture de l'exercice comptable 2022 (CDC) et ouverture de l'exercice 2024 dans le projet CDC par Miandrisoa	f	146	127	2024-01-24 16:33:03	2024-01-24 16:33:03	6
27046	Miandrisoa a été assigné à la tâche Clôture de l'exercice comptable 2022 (CDC) et ouverture de l'exercice 2024 dans le projet CDC par Miandrisoa	f	146	132	2024-01-24 16:33:03	2024-01-24 16:33:03	6
27047	Miandrisoa a été assigné à la tâche Clôture de l'exercice comptable 2022 (CDC) et ouverture de l'exercice 2024 dans le projet CDC par Miandrisoa	f	146	150	2024-01-24 16:33:03	2024-01-24 16:33:03	6
27048	Tâche nouvellement créee du nom de PRESTIGE: ajout d'un bouton de rappel de BL et création d'un moyen de paiement "Virement" sur le point de vente de la caisse. par Miandrisoa dans le projet FOCICOM.	f	146	127	2024-01-24 16:36:42	2024-01-24 16:36:42	5
27049	Tâche nouvellement créee du nom de PRESTIGE: ajout d'un bouton de rappel de BL et création d'un moyen de paiement "Virement" sur le point de vente de la caisse. par Miandrisoa dans le projet FOCICOM.	f	146	135	2024-01-24 16:36:42	2024-01-24 16:36:42	5
27050	Tâche nouvellement créee du nom de PRESTIGE: ajout d'un bouton de rappel de BL et création d'un moyen de paiement "Virement" sur le point de vente de la caisse. par Miandrisoa dans le projet FOCICOM.	f	146	138	2024-01-24 16:36:42	2024-01-24 16:36:42	5
27051	Tâche nouvellement créee du nom de PRESTIGE: ajout d'un bouton de rappel de BL et création d'un moyen de paiement "Virement" sur le point de vente de la caisse. par Miandrisoa dans le projet FOCICOM.	f	146	132	2024-01-24 16:36:42	2024-01-24 16:36:42	5
27052	Tâche nouvellement créee du nom de PRESTIGE: ajout d'un bouton de rappel de BL et création d'un moyen de paiement "Virement" sur le point de vente de la caisse. par Miandrisoa dans le projet FOCICOM.	f	146	131	2024-01-24 16:36:42	2024-01-24 16:36:42	5
27053	Tâche nouvellement créee du nom de PRESTIGE: ajout d'un bouton de rappel de BL et création d'un moyen de paiement "Virement" sur le point de vente de la caisse. par Miandrisoa dans le projet FOCICOM.	f	146	145	2024-01-24 16:36:42	2024-01-24 16:36:42	5
27054	Tâche nouvellement créee du nom de PRESTIGE: ajout d'un bouton de rappel de BL et création d'un moyen de paiement "Virement" sur le point de vente de la caisse. par Miandrisoa dans le projet FOCICOM.	f	146	129	2024-01-24 16:36:42	2024-01-24 16:36:42	5
27055	Tâche nouvellement créee du nom de PRESTIGE: ajout d'un bouton de rappel de BL et création d'un moyen de paiement "Virement" sur le point de vente de la caisse. par Miandrisoa dans le projet FOCICOM.	f	146	150	2024-01-24 16:36:42	2024-01-24 16:36:42	5
27056	Tâche nouvellement créee du nom de PRESTIGE: ajout d'un bouton de rappel de BL et création d'un moyen de paiement "Virement" sur le point de vente de la caisse. par Miandrisoa dans le projet FOCICOM.	f	146	167	2024-01-24 16:36:42	2024-01-24 16:36:42	5
27129	Koloina a été assigné à la tâche MADAPLAST - Analyse du contrôle du prix de revient dans le projet MADAPLAST - Intervention et accompagnement par Koloina	f	147	147	2024-01-26 06:27:15	2024-01-26 06:27:15	6
27057	Miandrisoa a été assigné à la tâche PRESTIGE: ajout d'un bouton de rappel de BL et création d'un moyen de paiement "Virement" sur le point de vente de la caisse. dans le projet FOCICOM par Miandrisoa	f	146	146	2024-01-24 13:36:42	2024-01-24 13:36:42	6
27069	Tâche nouvellement créee du nom de Préparation et import des écritures du novembre/décembre 2023 pour HOME DESIGN par Miandrisoa dans le projet ACTIVE NEGOCE - Transfert Compta.	f	146	127	2024-01-24 16:41:26	2024-01-24 16:41:26	5
27070	Tâche nouvellement créee du nom de Préparation et import des écritures du novembre/décembre 2023 pour HOME DESIGN par Miandrisoa dans le projet ACTIVE NEGOCE - Transfert Compta.	f	146	135	2024-01-24 16:41:26	2024-01-24 16:41:26	5
27071	Tâche nouvellement créee du nom de Préparation et import des écritures du novembre/décembre 2023 pour HOME DESIGN par Miandrisoa dans le projet ACTIVE NEGOCE - Transfert Compta.	f	146	138	2024-01-24 16:41:26	2024-01-24 16:41:26	5
27072	Tâche nouvellement créee du nom de Préparation et import des écritures du novembre/décembre 2023 pour HOME DESIGN par Miandrisoa dans le projet ACTIVE NEGOCE - Transfert Compta.	f	146	132	2024-01-24 16:41:26	2024-01-24 16:41:26	5
27073	Tâche nouvellement créee du nom de Préparation et import des écritures du novembre/décembre 2023 pour HOME DESIGN par Miandrisoa dans le projet ACTIVE NEGOCE - Transfert Compta.	f	146	131	2024-01-24 16:41:26	2024-01-24 16:41:26	5
27074	Tâche nouvellement créee du nom de Préparation et import des écritures du novembre/décembre 2023 pour HOME DESIGN par Miandrisoa dans le projet ACTIVE NEGOCE - Transfert Compta.	f	146	145	2024-01-24 16:41:26	2024-01-24 16:41:26	5
27075	Tâche nouvellement créee du nom de Préparation et import des écritures du novembre/décembre 2023 pour HOME DESIGN par Miandrisoa dans le projet ACTIVE NEGOCE - Transfert Compta.	f	146	129	2024-01-24 16:41:26	2024-01-24 16:41:26	5
27407	Tâche nouvellement créee du nom de Front ajout pour  parsing pnr par Maphie dans le projet Gestion PNR Issoufali.	f	162	129	2024-01-31 10:20:56	2024-01-31 10:20:56	5
27076	Tâche nouvellement créee du nom de Préparation et import des écritures du novembre/décembre 2023 pour HOME DESIGN par Miandrisoa dans le projet ACTIVE NEGOCE - Transfert Compta.	f	146	150	2024-01-24 16:41:26	2024-01-24 16:41:26	5
27077	Tâche nouvellement créee du nom de Préparation et import des écritures du novembre/décembre 2023 pour HOME DESIGN par Miandrisoa dans le projet ACTIVE NEGOCE - Transfert Compta.	f	146	167	2024-01-24 16:41:26	2024-01-24 16:41:26	5
27078	Miandrisoa a été assigné à la tâche Préparation et import des écritures du novembre/décembre 2023 pour HOME DESIGN dans le projet ACTIVE NEGOCE - Transfert Compta par Miandrisoa	f	146	146	2024-01-24 13:41:26	2024-01-24 13:41:26	6
27058	Miandrisoa a été assigné à la tâche PRESTIGE: ajout d'un bouton de rappel de BL et création d'un moyen de paiement "Virement" sur le point de vente de la caisse. dans le projet FOCICOM par Miandrisoa	f	146	127	2024-01-24 16:36:42	2024-01-24 16:36:42	6
27059	Miandrisoa a été assigné à la tâche PRESTIGE: ajout d'un bouton de rappel de BL et création d'un moyen de paiement "Virement" sur le point de vente de la caisse. dans le projet FOCICOM par Miandrisoa	f	146	132	2024-01-24 16:36:42	2024-01-24 16:36:42	6
27060	Miandrisoa a été assigné à la tâche PRESTIGE: ajout d'un bouton de rappel de BL et création d'un moyen de paiement "Virement" sur le point de vente de la caisse. dans le projet FOCICOM par Miandrisoa	f	146	150	2024-01-24 16:36:42	2024-01-24 16:36:42	6
27061	Tâche "Test "\n          du projet Test PM mise dans " En blocage " par Mathieu	f	138	127	2024-01-24 16:38:28	2024-01-24 16:38:28	1
27062	Tâche "Test "\n          du projet Test PM mise dans " En blocage " par Mathieu	f	138	135	2024-01-24 16:38:28	2024-01-24 16:38:28	1
27063	Tâche "Test "\n          du projet Test PM mise dans " En blocage " par Mathieu	f	138	132	2024-01-24 16:38:28	2024-01-24 16:38:28	1
27064	Tâche "Test "\n          du projet Test PM mise dans " En blocage " par Mathieu	f	138	131	2024-01-24 16:38:28	2024-01-24 16:38:28	1
27065	Tâche "Test "\n          du projet Test PM mise dans " En blocage " par Mathieu	f	138	145	2024-01-24 16:38:28	2024-01-24 16:38:28	1
27066	Tâche "Test "\n          du projet Test PM mise dans " En blocage " par Mathieu	f	138	129	2024-01-24 16:38:28	2024-01-24 16:38:28	1
27067	Tâche "Test "\n          du projet Test PM mise dans " En blocage " par Mathieu	f	138	150	2024-01-24 16:38:28	2024-01-24 16:38:28	1
27068	Tâche "Test "\n          du projet Test PM mise dans " En blocage " par Mathieu	f	138	167	2024-01-24 16:38:28	2024-01-24 16:38:28	1
27079	Miandrisoa a été assigné à la tâche Préparation et import des écritures du novembre/décembre 2023 pour HOME DESIGN dans le projet ACTIVE NEGOCE - Transfert Compta par Miandrisoa	f	146	127	2024-01-24 16:41:26	2024-01-24 16:41:26	6
27080	Miandrisoa a été assigné à la tâche Préparation et import des écritures du novembre/décembre 2023 pour HOME DESIGN dans le projet ACTIVE NEGOCE - Transfert Compta par Miandrisoa	f	146	132	2024-01-24 16:41:26	2024-01-24 16:41:26	6
27081	Miandrisoa a été assigné à la tâche Préparation et import des écritures du novembre/décembre 2023 pour HOME DESIGN dans le projet ACTIVE NEGOCE - Transfert Compta par Miandrisoa	f	146	150	2024-01-24 16:41:26	2024-01-24 16:41:26	6
27082	Tâche "Taches"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " A faire " par Adrien	f	141	127	2024-01-24 16:42:01	2024-01-24 16:42:01	1
27083	Tâche "Taches"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " A faire " par Adrien	f	141	135	2024-01-24 16:42:01	2024-01-24 16:42:01	1
27084	Tâche "Taches"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " A faire " par Adrien	f	141	138	2024-01-24 16:42:01	2024-01-24 16:42:01	1
27085	Tâche "Taches"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " A faire " par Adrien	f	141	132	2024-01-24 16:42:01	2024-01-24 16:42:01	1
27086	Tâche "Taches"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " A faire " par Adrien	f	141	131	2024-01-24 16:42:01	2024-01-24 16:42:01	1
27087	Tâche "Taches"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " A faire " par Adrien	f	141	145	2024-01-24 16:42:01	2024-01-24 16:42:01	1
27088	Tâche "Taches"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " A faire " par Adrien	f	141	129	2024-01-24 16:42:01	2024-01-24 16:42:01	1
27089	Tâche "Taches"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " A faire " par Adrien	f	141	150	2024-01-24 16:42:01	2024-01-24 16:42:01	1
27090	Tâche "Taches"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " A faire " par Adrien	f	141	167	2024-01-24 16:42:01	2024-01-24 16:42:01	1
27091	Tâche nouvellement créee du nom de test par Mathieu dans le projet Modification du site web .	f	138	127	2024-01-24 16:43:00	2024-01-24 16:43:00	5
27092	Tâche nouvellement créee du nom de test par Mathieu dans le projet Modification du site web .	f	138	135	2024-01-24 16:43:00	2024-01-24 16:43:00	5
27093	Tâche nouvellement créee du nom de test par Mathieu dans le projet Modification du site web .	f	138	132	2024-01-24 16:43:00	2024-01-24 16:43:00	5
27094	Tâche nouvellement créee du nom de test par Mathieu dans le projet Modification du site web .	f	138	131	2024-01-24 16:43:00	2024-01-24 16:43:00	5
27095	Tâche nouvellement créee du nom de test par Mathieu dans le projet Modification du site web .	f	138	145	2024-01-24 16:43:00	2024-01-24 16:43:00	5
27096	Tâche nouvellement créee du nom de test par Mathieu dans le projet Modification du site web .	f	138	129	2024-01-24 16:43:00	2024-01-24 16:43:00	5
27097	Tâche nouvellement créee du nom de test par Mathieu dans le projet Modification du site web .	f	138	150	2024-01-24 16:43:00	2024-01-24 16:43:00	5
27098	Tâche nouvellement créee du nom de test par Mathieu dans le projet Modification du site web .	f	138	167	2024-01-24 16:43:00	2024-01-24 16:43:00	5
27100	Tahina_contributeur a été assigné à la tâche test dans le projet Modification du site web  par Mathieu	f	138	127	2024-01-24 16:43:00	2024-01-24 16:43:00	6
27101	Tahina_contributeur a été assigné à la tâche test dans le projet Modification du site web  par Mathieu	f	138	132	2024-01-24 16:43:00	2024-01-24 16:43:00	6
27102	Tahina_contributeur a été assigné à la tâche test dans le projet Modification du site web  par Mathieu	f	138	150	2024-01-24 16:43:00	2024-01-24 16:43:00	6
27103	Alain a été assigné à la sous-tâche Créer une interface pour les autres commandes RTN, TTH (pour les PNR archivés) du projet Gestion PNR Issoufali par Alain	f	129	129	2024-01-25 07:25:26	2024-01-25 07:25:26	6
27104	Alain a été assigné à la sous-tâche Créer une interface pour les autres commandes RTN, TTH (pour les PNR archivés) du projet Gestion PNR Issoufali par Alain	f	129	127	2024-01-25 10:25:26	2024-01-25 10:25:26	6
27105	Alain a été assigné à la sous-tâche Créer une interface pour les autres commandes RTN, TTH (pour les PNR archivés) du projet Gestion PNR Issoufali par Alain	f	129	132	2024-01-25 10:25:26	2024-01-25 10:25:26	6
27106	Alain a été assigné à la sous-tâche Créer une interface pour les autres commandes RTN, TTH (pour les PNR archivés) du projet Gestion PNR Issoufali par Alain	f	129	150	2024-01-25 10:25:26	2024-01-25 10:25:26	6
27107	Tâche nouvellement créee du nom de QWEHLI SAS: Paramétrage des comptes par défaut utilisés pour les entrants et sortant de chaque journal de trésorerie. par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	127	2024-01-25 17:37:00	2024-01-25 17:37:00	5
27099	Tahina_contributeur a été assigné à la tâche test dans le projet Modification du site web  par Mathieu	f	138	166	2024-01-24 13:43:00	2024-01-24 13:43:00	6
27108	Tâche nouvellement créee du nom de QWEHLI SAS: Paramétrage des comptes par défaut utilisés pour les entrants et sortant de chaque journal de trésorerie. par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	135	2024-01-25 17:37:00	2024-01-25 17:37:00	5
27109	Tâche nouvellement créee du nom de QWEHLI SAS: Paramétrage des comptes par défaut utilisés pour les entrants et sortant de chaque journal de trésorerie. par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	138	2024-01-25 17:37:00	2024-01-25 17:37:00	5
27110	Tâche nouvellement créee du nom de QWEHLI SAS: Paramétrage des comptes par défaut utilisés pour les entrants et sortant de chaque journal de trésorerie. par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	132	2024-01-25 17:37:00	2024-01-25 17:37:00	5
27111	Tâche nouvellement créee du nom de QWEHLI SAS: Paramétrage des comptes par défaut utilisés pour les entrants et sortant de chaque journal de trésorerie. par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	131	2024-01-25 17:37:00	2024-01-25 17:37:00	5
27112	Tâche nouvellement créee du nom de QWEHLI SAS: Paramétrage des comptes par défaut utilisés pour les entrants et sortant de chaque journal de trésorerie. par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	145	2024-01-25 17:37:00	2024-01-25 17:37:00	5
27113	Tâche nouvellement créee du nom de QWEHLI SAS: Paramétrage des comptes par défaut utilisés pour les entrants et sortant de chaque journal de trésorerie. par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	129	2024-01-25 17:37:00	2024-01-25 17:37:00	5
27114	Tâche nouvellement créee du nom de QWEHLI SAS: Paramétrage des comptes par défaut utilisés pour les entrants et sortant de chaque journal de trésorerie. par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	150	2024-01-25 17:37:00	2024-01-25 17:37:00	5
27115	Tâche nouvellement créee du nom de QWEHLI SAS: Paramétrage des comptes par défaut utilisés pour les entrants et sortant de chaque journal de trésorerie. par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	167	2024-01-25 17:37:00	2024-01-25 17:37:00	5
27116	Miandrisoa a été assigné à la tâche QWEHLI SAS: Paramétrage des comptes par défaut utilisés pour les entrants et sortant de chaque journal de trésorerie. dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	146	2024-01-25 14:37:00	2024-01-25 14:37:00	6
27117	Miandrisoa a été assigné à la tâche QWEHLI SAS: Paramétrage des comptes par défaut utilisés pour les entrants et sortant de chaque journal de trésorerie. dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	127	2024-01-25 17:37:00	2024-01-25 17:37:00	6
27118	Miandrisoa a été assigné à la tâche QWEHLI SAS: Paramétrage des comptes par défaut utilisés pour les entrants et sortant de chaque journal de trésorerie. dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	132	2024-01-25 17:37:00	2024-01-25 17:37:00	6
27119	Miandrisoa a été assigné à la tâche QWEHLI SAS: Paramétrage des comptes par défaut utilisés pour les entrants et sortant de chaque journal de trésorerie. dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	150	2024-01-25 17:37:00	2024-01-25 17:37:00	6
27120	Tâche nouvellement créee du nom de MADAPLAST - Analyse du contrôle du prix de revient par Koloina dans le projet MADAPLAST - Intervention et accompagnement.	f	147	127	2024-01-26 09:27:15	2024-01-26 09:27:15	5
27121	Tâche nouvellement créee du nom de MADAPLAST - Analyse du contrôle du prix de revient par Koloina dans le projet MADAPLAST - Intervention et accompagnement.	f	147	135	2024-01-26 09:27:15	2024-01-26 09:27:15	5
27122	Tâche nouvellement créee du nom de MADAPLAST - Analyse du contrôle du prix de revient par Koloina dans le projet MADAPLAST - Intervention et accompagnement.	f	147	138	2024-01-26 09:27:15	2024-01-26 09:27:15	5
27123	Tâche nouvellement créee du nom de MADAPLAST - Analyse du contrôle du prix de revient par Koloina dans le projet MADAPLAST - Intervention et accompagnement.	f	147	132	2024-01-26 09:27:15	2024-01-26 09:27:15	5
27124	Tâche nouvellement créee du nom de MADAPLAST - Analyse du contrôle du prix de revient par Koloina dans le projet MADAPLAST - Intervention et accompagnement.	f	147	131	2024-01-26 09:27:15	2024-01-26 09:27:15	5
27125	Tâche nouvellement créee du nom de MADAPLAST - Analyse du contrôle du prix de revient par Koloina dans le projet MADAPLAST - Intervention et accompagnement.	f	147	145	2024-01-26 09:27:15	2024-01-26 09:27:15	5
27126	Tâche nouvellement créee du nom de MADAPLAST - Analyse du contrôle du prix de revient par Koloina dans le projet MADAPLAST - Intervention et accompagnement.	f	147	129	2024-01-26 09:27:15	2024-01-26 09:27:15	5
27127	Tâche nouvellement créee du nom de MADAPLAST - Analyse du contrôle du prix de revient par Koloina dans le projet MADAPLAST - Intervention et accompagnement.	f	147	150	2024-01-26 09:27:15	2024-01-26 09:27:15	5
27128	Tâche nouvellement créee du nom de MADAPLAST - Analyse du contrôle du prix de revient par Koloina dans le projet MADAPLAST - Intervention et accompagnement.	f	147	167	2024-01-26 09:27:15	2024-01-26 09:27:15	5
27130	Koloina a été assigné à la tâche MADAPLAST - Analyse du contrôle du prix de revient dans le projet MADAPLAST - Intervention et accompagnement par Koloina	f	147	127	2024-01-26 09:27:15	2024-01-26 09:27:15	6
27131	Koloina a été assigné à la tâche MADAPLAST - Analyse du contrôle du prix de revient dans le projet MADAPLAST - Intervention et accompagnement par Koloina	f	147	132	2024-01-26 09:27:15	2024-01-26 09:27:15	6
27132	Koloina a été assigné à la tâche MADAPLAST - Analyse du contrôle du prix de revient dans le projet MADAPLAST - Intervention et accompagnement par Koloina	f	147	150	2024-01-26 09:27:15	2024-01-26 09:27:15	6
27133	Tâche "ISSOUFALI - Actualisation du fichier import compta "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	127	2024-01-26 09:29:15	2024-01-26 09:29:15	1
27134	Tâche "ISSOUFALI - Actualisation du fichier import compta "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	135	2024-01-26 09:29:15	2024-01-26 09:29:15	1
27135	Tâche "ISSOUFALI - Actualisation du fichier import compta "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	138	2024-01-26 09:29:15	2024-01-26 09:29:15	1
27136	Tâche "ISSOUFALI - Actualisation du fichier import compta "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	132	2024-01-26 09:29:15	2024-01-26 09:29:15	1
27137	Tâche "ISSOUFALI - Actualisation du fichier import compta "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	131	2024-01-26 09:29:15	2024-01-26 09:29:15	1
27138	Tâche "ISSOUFALI - Actualisation du fichier import compta "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	145	2024-01-26 09:29:15	2024-01-26 09:29:15	1
27139	Tâche "ISSOUFALI - Actualisation du fichier import compta "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	129	2024-01-26 09:29:15	2024-01-26 09:29:15	1
27140	Tâche "ISSOUFALI - Actualisation du fichier import compta "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	150	2024-01-26 09:29:15	2024-01-26 09:29:15	1
27141	Tâche "ISSOUFALI - Actualisation du fichier import compta "\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En cours " par Koloina	f	147	167	2024-01-26 09:29:15	2024-01-26 09:29:15	1
27142	Tâche nouvellement créee du nom de Conditionnement d'article par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	127	2024-01-26 11:22:27	2024-01-26 11:22:27	5
27143	Tâche nouvellement créee du nom de Conditionnement d'article par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	135	2024-01-26 11:22:27	2024-01-26 11:22:27	5
27144	Tâche nouvellement créee du nom de Conditionnement d'article par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	138	2024-01-26 11:22:27	2024-01-26 11:22:27	5
27145	Tâche nouvellement créee du nom de Conditionnement d'article par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	132	2024-01-26 11:22:27	2024-01-26 11:22:27	5
27146	Tâche nouvellement créee du nom de Conditionnement d'article par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	131	2024-01-26 11:22:27	2024-01-26 11:22:27	5
27147	Tâche nouvellement créee du nom de Conditionnement d'article par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	145	2024-01-26 11:22:27	2024-01-26 11:22:27	5
27148	Tâche nouvellement créee du nom de Conditionnement d'article par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	129	2024-01-26 11:22:27	2024-01-26 11:22:27	5
27149	Tâche nouvellement créee du nom de Conditionnement d'article par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	150	2024-01-26 11:22:27	2024-01-26 11:22:27	5
27150	Tâche nouvellement créee du nom de Conditionnement d'article par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	167	2024-01-26 11:22:27	2024-01-26 11:22:27	5
27151	Tâche nouvellement créee du nom de Supression devis  par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	127	2024-01-26 11:24:07	2024-01-26 11:24:07	5
27152	Tâche nouvellement créee du nom de Supression devis  par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	135	2024-01-26 11:24:07	2024-01-26 11:24:07	5
27153	Tâche nouvellement créee du nom de Supression devis  par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	138	2024-01-26 11:24:07	2024-01-26 11:24:07	5
27154	Tâche nouvellement créee du nom de Supression devis  par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	132	2024-01-26 11:24:07	2024-01-26 11:24:07	5
27155	Tâche nouvellement créee du nom de Supression devis  par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	131	2024-01-26 11:24:07	2024-01-26 11:24:07	5
27156	Tâche nouvellement créee du nom de Supression devis  par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	145	2024-01-26 11:24:07	2024-01-26 11:24:07	5
27157	Tâche nouvellement créee du nom de Supression devis  par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	129	2024-01-26 11:24:07	2024-01-26 11:24:07	5
27158	Tâche nouvellement créee du nom de Supression devis  par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	150	2024-01-26 11:24:07	2024-01-26 11:24:07	5
27159	Tâche nouvellement créee du nom de Supression devis  par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	167	2024-01-26 11:24:07	2024-01-26 11:24:07	5
27160	Tâche nouvellement créee du nom de Avoir avec montant du signe positif par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	127	2024-01-26 11:26:02	2024-01-26 11:26:02	5
27161	Tâche nouvellement créee du nom de Avoir avec montant du signe positif par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	135	2024-01-26 11:26:02	2024-01-26 11:26:02	5
27162	Tâche nouvellement créee du nom de Avoir avec montant du signe positif par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	138	2024-01-26 11:26:02	2024-01-26 11:26:02	5
27163	Tâche nouvellement créee du nom de Avoir avec montant du signe positif par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	132	2024-01-26 11:26:02	2024-01-26 11:26:02	5
27164	Tâche nouvellement créee du nom de Avoir avec montant du signe positif par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	131	2024-01-26 11:26:02	2024-01-26 11:26:02	5
27165	Tâche nouvellement créee du nom de Avoir avec montant du signe positif par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	145	2024-01-26 11:26:02	2024-01-26 11:26:02	5
27166	Tâche nouvellement créee du nom de Avoir avec montant du signe positif par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	129	2024-01-26 11:26:02	2024-01-26 11:26:02	5
27167	Tâche nouvellement créee du nom de Avoir avec montant du signe positif par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	150	2024-01-26 11:26:02	2024-01-26 11:26:02	5
27168	Tâche nouvellement créee du nom de Avoir avec montant du signe positif par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	167	2024-01-26 11:26:02	2024-01-26 11:26:02	5
27169	Tâche nouvellement créee du nom de Catalogue Image article sur QLM et CHT par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	127	2024-01-26 11:43:46	2024-01-26 11:43:46	5
27170	Tâche nouvellement créee du nom de Catalogue Image article sur QLM et CHT par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	135	2024-01-26 11:43:46	2024-01-26 11:43:46	5
27171	Tâche nouvellement créee du nom de Catalogue Image article sur QLM et CHT par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	138	2024-01-26 11:43:46	2024-01-26 11:43:46	5
27172	Tâche nouvellement créee du nom de Catalogue Image article sur QLM et CHT par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	132	2024-01-26 11:43:46	2024-01-26 11:43:46	5
27173	Tâche nouvellement créee du nom de Catalogue Image article sur QLM et CHT par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	131	2024-01-26 11:43:46	2024-01-26 11:43:46	5
27174	Tâche nouvellement créee du nom de Catalogue Image article sur QLM et CHT par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	145	2024-01-26 11:43:46	2024-01-26 11:43:46	5
27175	Tâche nouvellement créee du nom de Catalogue Image article sur QLM et CHT par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	129	2024-01-26 11:43:46	2024-01-26 11:43:46	5
27176	Tâche nouvellement créee du nom de Catalogue Image article sur QLM et CHT par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	150	2024-01-26 11:43:46	2024-01-26 11:43:46	5
27177	Tâche nouvellement créee du nom de Catalogue Image article sur QLM et CHT par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	167	2024-01-26 11:43:46	2024-01-26 11:43:46	5
27178	Tâche nouvellement créee du nom de Mise à jour des paramétrages dans EBP Gestion commerciale et Comptabilité par Miandrisoa dans le projet ACTIVE NEGOCE - Transfert Compta.	f	146	127	2024-01-26 14:46:30	2024-01-26 14:46:30	5
27179	Tâche nouvellement créee du nom de Mise à jour des paramétrages dans EBP Gestion commerciale et Comptabilité par Miandrisoa dans le projet ACTIVE NEGOCE - Transfert Compta.	f	146	135	2024-01-26 14:46:30	2024-01-26 14:46:30	5
27180	Tâche nouvellement créee du nom de Mise à jour des paramétrages dans EBP Gestion commerciale et Comptabilité par Miandrisoa dans le projet ACTIVE NEGOCE - Transfert Compta.	f	146	138	2024-01-26 14:46:30	2024-01-26 14:46:30	5
27181	Tâche nouvellement créee du nom de Mise à jour des paramétrages dans EBP Gestion commerciale et Comptabilité par Miandrisoa dans le projet ACTIVE NEGOCE - Transfert Compta.	f	146	132	2024-01-26 14:46:30	2024-01-26 14:46:30	5
27182	Tâche nouvellement créee du nom de Mise à jour des paramétrages dans EBP Gestion commerciale et Comptabilité par Miandrisoa dans le projet ACTIVE NEGOCE - Transfert Compta.	f	146	131	2024-01-26 14:46:30	2024-01-26 14:46:30	5
27183	Tâche nouvellement créee du nom de Mise à jour des paramétrages dans EBP Gestion commerciale et Comptabilité par Miandrisoa dans le projet ACTIVE NEGOCE - Transfert Compta.	f	146	145	2024-01-26 14:46:30	2024-01-26 14:46:30	5
27184	Tâche nouvellement créee du nom de Mise à jour des paramétrages dans EBP Gestion commerciale et Comptabilité par Miandrisoa dans le projet ACTIVE NEGOCE - Transfert Compta.	f	146	129	2024-01-26 14:46:30	2024-01-26 14:46:30	5
27185	Tâche nouvellement créee du nom de Mise à jour des paramétrages dans EBP Gestion commerciale et Comptabilité par Miandrisoa dans le projet ACTIVE NEGOCE - Transfert Compta.	f	146	150	2024-01-26 14:46:30	2024-01-26 14:46:30	5
27186	Tâche nouvellement créee du nom de Mise à jour des paramétrages dans EBP Gestion commerciale et Comptabilité par Miandrisoa dans le projet ACTIVE NEGOCE - Transfert Compta.	f	146	167	2024-01-26 14:46:30	2024-01-26 14:46:30	5
27187	Miandrisoa a été assigné à la tâche Mise à jour des paramétrages dans EBP Gestion commerciale et Comptabilité dans le projet ACTIVE NEGOCE - Transfert Compta par Miandrisoa	f	146	146	2024-01-26 11:46:30	2024-01-26 11:46:30	6
27191	Tâche nouvellement créee du nom de Rectifier la valeur IRSA fausse sur un bulletin par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	127	2024-01-26 17:22:30	2024-01-26 17:22:30	5
27192	Tâche nouvellement créee du nom de Rectifier la valeur IRSA fausse sur un bulletin par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	135	2024-01-26 17:22:30	2024-01-26 17:22:30	5
27193	Tâche nouvellement créee du nom de Rectifier la valeur IRSA fausse sur un bulletin par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	138	2024-01-26 17:22:30	2024-01-26 17:22:30	5
27194	Tâche nouvellement créee du nom de Rectifier la valeur IRSA fausse sur un bulletin par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	132	2024-01-26 17:22:30	2024-01-26 17:22:30	5
27195	Tâche nouvellement créee du nom de Rectifier la valeur IRSA fausse sur un bulletin par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	131	2024-01-26 17:22:30	2024-01-26 17:22:30	5
27196	Tâche nouvellement créee du nom de Rectifier la valeur IRSA fausse sur un bulletin par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	145	2024-01-26 17:22:30	2024-01-26 17:22:30	5
27197	Tâche nouvellement créee du nom de Rectifier la valeur IRSA fausse sur un bulletin par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	129	2024-01-26 17:22:30	2024-01-26 17:22:30	5
27198	Tâche nouvellement créee du nom de Rectifier la valeur IRSA fausse sur un bulletin par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	150	2024-01-26 17:22:30	2024-01-26 17:22:30	5
27199	Tâche nouvellement créee du nom de Rectifier la valeur IRSA fausse sur un bulletin par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	167	2024-01-26 17:22:30	2024-01-26 17:22:30	5
27214	Miandrisoa a été assigné à la tâche Modification de la formule sur le rubrique "avantage en nature" dans le projet MILLOT par Miandrisoa	f	146	127	2024-01-26 17:27:39	2024-01-26 17:27:39	6
27215	Miandrisoa a été assigné à la tâche Modification de la formule sur le rubrique "avantage en nature" dans le projet MILLOT par Miandrisoa	f	146	132	2024-01-26 17:27:39	2024-01-26 17:27:39	6
27216	Miandrisoa a été assigné à la tâche Modification de la formule sur le rubrique "avantage en nature" dans le projet MILLOT par Miandrisoa	f	146	150	2024-01-26 17:27:39	2024-01-26 17:27:39	6
27188	Miandrisoa a été assigné à la tâche Mise à jour des paramétrages dans EBP Gestion commerciale et Comptabilité dans le projet ACTIVE NEGOCE - Transfert Compta par Miandrisoa	f	146	127	2024-01-26 14:46:30	2024-01-26 14:46:30	6
27189	Miandrisoa a été assigné à la tâche Mise à jour des paramétrages dans EBP Gestion commerciale et Comptabilité dans le projet ACTIVE NEGOCE - Transfert Compta par Miandrisoa	f	146	132	2024-01-26 14:46:30	2024-01-26 14:46:30	6
27190	Miandrisoa a été assigné à la tâche Mise à jour des paramétrages dans EBP Gestion commerciale et Comptabilité dans le projet ACTIVE NEGOCE - Transfert Compta par Miandrisoa	f	146	150	2024-01-26 14:46:30	2024-01-26 14:46:30	6
27213	Miandrisoa a été assigné à la tâche Modification de la formule sur le rubrique "avantage en nature" dans le projet MILLOT par Miandrisoa	f	146	146	2024-01-26 14:27:39	2024-01-26 14:27:39	6
27200	Miandrisoa a été assigné à la tâche Rectifier la valeur IRSA fausse sur un bulletin dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	146	2024-01-26 14:22:30	2024-01-26 14:22:30	6
27201	Miandrisoa a été assigné à la tâche Rectifier la valeur IRSA fausse sur un bulletin dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	127	2024-01-26 17:22:30	2024-01-26 17:22:30	6
27202	Miandrisoa a été assigné à la tâche Rectifier la valeur IRSA fausse sur un bulletin dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	132	2024-01-26 17:22:30	2024-01-26 17:22:30	6
27203	Miandrisoa a été assigné à la tâche Rectifier la valeur IRSA fausse sur un bulletin dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	150	2024-01-26 17:22:30	2024-01-26 17:22:30	6
27204	Tâche nouvellement créee du nom de Modification de la formule sur le rubrique "avantage en nature" par Miandrisoa dans le projet MILLOT.	f	146	127	2024-01-26 17:27:39	2024-01-26 17:27:39	5
27205	Tâche nouvellement créee du nom de Modification de la formule sur le rubrique "avantage en nature" par Miandrisoa dans le projet MILLOT.	f	146	135	2024-01-26 17:27:39	2024-01-26 17:27:39	5
27206	Tâche nouvellement créee du nom de Modification de la formule sur le rubrique "avantage en nature" par Miandrisoa dans le projet MILLOT.	f	146	138	2024-01-26 17:27:39	2024-01-26 17:27:39	5
27207	Tâche nouvellement créee du nom de Modification de la formule sur le rubrique "avantage en nature" par Miandrisoa dans le projet MILLOT.	f	146	132	2024-01-26 17:27:39	2024-01-26 17:27:39	5
27208	Tâche nouvellement créee du nom de Modification de la formule sur le rubrique "avantage en nature" par Miandrisoa dans le projet MILLOT.	f	146	131	2024-01-26 17:27:39	2024-01-26 17:27:39	5
27209	Tâche nouvellement créee du nom de Modification de la formule sur le rubrique "avantage en nature" par Miandrisoa dans le projet MILLOT.	f	146	145	2024-01-26 17:27:39	2024-01-26 17:27:39	5
27210	Tâche nouvellement créee du nom de Modification de la formule sur le rubrique "avantage en nature" par Miandrisoa dans le projet MILLOT.	f	146	129	2024-01-26 17:27:39	2024-01-26 17:27:39	5
27211	Tâche nouvellement créee du nom de Modification de la formule sur le rubrique "avantage en nature" par Miandrisoa dans le projet MILLOT.	f	146	150	2024-01-26 17:27:39	2024-01-26 17:27:39	5
27212	Tâche nouvellement créee du nom de Modification de la formule sur le rubrique "avantage en nature" par Miandrisoa dans le projet MILLOT.	f	146	167	2024-01-26 17:27:39	2024-01-26 17:27:39	5
27217	Tâche nouvellement créee du nom de Ajouter le champ du rubrique "Bonus COA" dans les tableaux Contrôle paie, IRSA par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	127	2024-01-29 09:59:05	2024-01-29 09:59:05	5
27218	Tâche nouvellement créee du nom de Ajouter le champ du rubrique "Bonus COA" dans les tableaux Contrôle paie, IRSA par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	135	2024-01-29 09:59:05	2024-01-29 09:59:05	5
27219	Tâche nouvellement créee du nom de Ajouter le champ du rubrique "Bonus COA" dans les tableaux Contrôle paie, IRSA par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	138	2024-01-29 09:59:05	2024-01-29 09:59:05	5
27220	Tâche nouvellement créee du nom de Ajouter le champ du rubrique "Bonus COA" dans les tableaux Contrôle paie, IRSA par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	132	2024-01-29 09:59:05	2024-01-29 09:59:05	5
27221	Tâche nouvellement créee du nom de Ajouter le champ du rubrique "Bonus COA" dans les tableaux Contrôle paie, IRSA par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	131	2024-01-29 09:59:05	2024-01-29 09:59:05	5
27222	Tâche nouvellement créee du nom de Ajouter le champ du rubrique "Bonus COA" dans les tableaux Contrôle paie, IRSA par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	145	2024-01-29 09:59:05	2024-01-29 09:59:05	5
27223	Tâche nouvellement créee du nom de Ajouter le champ du rubrique "Bonus COA" dans les tableaux Contrôle paie, IRSA par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	129	2024-01-29 09:59:05	2024-01-29 09:59:05	5
27224	Tâche nouvellement créee du nom de Ajouter le champ du rubrique "Bonus COA" dans les tableaux Contrôle paie, IRSA par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	150	2024-01-29 09:59:05	2024-01-29 09:59:05	5
27225	Tâche nouvellement créee du nom de Ajouter le champ du rubrique "Bonus COA" dans les tableaux Contrôle paie, IRSA par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	167	2024-01-29 09:59:05	2024-01-29 09:59:05	5
27226	Miandrisoa a été assigné à la tâche Ajouter le champ du rubrique "Bonus COA" dans les tableaux Contrôle paie, IRSA dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	146	2024-01-29 06:59:05	2024-01-29 06:59:05	6
27227	Miandrisoa a été assigné à la tâche Ajouter le champ du rubrique "Bonus COA" dans les tableaux Contrôle paie, IRSA dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	127	2024-01-29 09:59:05	2024-01-29 09:59:05	6
27228	Miandrisoa a été assigné à la tâche Ajouter le champ du rubrique "Bonus COA" dans les tableaux Contrôle paie, IRSA dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	132	2024-01-29 09:59:05	2024-01-29 09:59:05	6
27229	Miandrisoa a été assigné à la tâche Ajouter le champ du rubrique "Bonus COA" dans les tableaux Contrôle paie, IRSA dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	150	2024-01-29 09:59:05	2024-01-29 09:59:05	6
27230	Tâche nouvellement créee du nom de Envoyer un fichier pour l'état de facture et avoir clients/fournisseurs pour FOCICOM REUNION daté du 01/01/2023 au 31/12/2023. par Miandrisoa dans le projet FOCICOM.	f	146	127	2024-01-29 14:36:14	2024-01-29 14:36:14	5
27231	Tâche nouvellement créee du nom de Envoyer un fichier pour l'état de facture et avoir clients/fournisseurs pour FOCICOM REUNION daté du 01/01/2023 au 31/12/2023. par Miandrisoa dans le projet FOCICOM.	f	146	135	2024-01-29 14:36:14	2024-01-29 14:36:14	5
27232	Tâche nouvellement créee du nom de Envoyer un fichier pour l'état de facture et avoir clients/fournisseurs pour FOCICOM REUNION daté du 01/01/2023 au 31/12/2023. par Miandrisoa dans le projet FOCICOM.	f	146	138	2024-01-29 14:36:14	2024-01-29 14:36:14	5
27233	Tâche nouvellement créee du nom de Envoyer un fichier pour l'état de facture et avoir clients/fournisseurs pour FOCICOM REUNION daté du 01/01/2023 au 31/12/2023. par Miandrisoa dans le projet FOCICOM.	f	146	132	2024-01-29 14:36:14	2024-01-29 14:36:14	5
27234	Tâche nouvellement créee du nom de Envoyer un fichier pour l'état de facture et avoir clients/fournisseurs pour FOCICOM REUNION daté du 01/01/2023 au 31/12/2023. par Miandrisoa dans le projet FOCICOM.	f	146	131	2024-01-29 14:36:14	2024-01-29 14:36:14	5
27235	Tâche nouvellement créee du nom de Envoyer un fichier pour l'état de facture et avoir clients/fournisseurs pour FOCICOM REUNION daté du 01/01/2023 au 31/12/2023. par Miandrisoa dans le projet FOCICOM.	f	146	145	2024-01-29 14:36:14	2024-01-29 14:36:14	5
27236	Tâche nouvellement créee du nom de Envoyer un fichier pour l'état de facture et avoir clients/fournisseurs pour FOCICOM REUNION daté du 01/01/2023 au 31/12/2023. par Miandrisoa dans le projet FOCICOM.	f	146	129	2024-01-29 14:36:14	2024-01-29 14:36:14	5
27237	Tâche nouvellement créee du nom de Envoyer un fichier pour l'état de facture et avoir clients/fournisseurs pour FOCICOM REUNION daté du 01/01/2023 au 31/12/2023. par Miandrisoa dans le projet FOCICOM.	f	146	150	2024-01-29 14:36:14	2024-01-29 14:36:14	5
27238	Tâche nouvellement créee du nom de Envoyer un fichier pour l'état de facture et avoir clients/fournisseurs pour FOCICOM REUNION daté du 01/01/2023 au 31/12/2023. par Miandrisoa dans le projet FOCICOM.	f	146	167	2024-01-29 14:36:14	2024-01-29 14:36:14	5
27239	Miandrisoa a été assigné à la tâche Envoyer un fichier pour l'état de facture et avoir clients/fournisseurs pour FOCICOM REUNION daté du 01/01/2023 au 31/12/2023. dans le projet FOCICOM par Miandrisoa	f	146	146	2024-01-29 11:36:14	2024-01-29 11:36:14	6
27240	Miandrisoa a été assigné à la tâche Envoyer un fichier pour l'état de facture et avoir clients/fournisseurs pour FOCICOM REUNION daté du 01/01/2023 au 31/12/2023. dans le projet FOCICOM par Miandrisoa	f	146	127	2024-01-29 14:36:14	2024-01-29 14:36:14	6
27241	Miandrisoa a été assigné à la tâche Envoyer un fichier pour l'état de facture et avoir clients/fournisseurs pour FOCICOM REUNION daté du 01/01/2023 au 31/12/2023. dans le projet FOCICOM par Miandrisoa	f	146	132	2024-01-29 14:36:14	2024-01-29 14:36:14	6
27242	Miandrisoa a été assigné à la tâche Envoyer un fichier pour l'état de facture et avoir clients/fournisseurs pour FOCICOM REUNION daté du 01/01/2023 au 31/12/2023. dans le projet FOCICOM par Miandrisoa	f	146	150	2024-01-29 14:36:14	2024-01-29 14:36:14	6
27243	Tâche nouvellement créee du nom de Modifier les taux salaires horaires sur les salariés horaire et gardien par Miandrisoa dans le projet MILLOT.	f	146	127	2024-01-29 14:39:16	2024-01-29 14:39:16	5
27244	Tâche nouvellement créee du nom de Modifier les taux salaires horaires sur les salariés horaire et gardien par Miandrisoa dans le projet MILLOT.	f	146	135	2024-01-29 14:39:16	2024-01-29 14:39:16	5
27245	Tâche nouvellement créee du nom de Modifier les taux salaires horaires sur les salariés horaire et gardien par Miandrisoa dans le projet MILLOT.	f	146	138	2024-01-29 14:39:16	2024-01-29 14:39:16	5
27246	Tâche nouvellement créee du nom de Modifier les taux salaires horaires sur les salariés horaire et gardien par Miandrisoa dans le projet MILLOT.	f	146	132	2024-01-29 14:39:16	2024-01-29 14:39:16	5
27247	Tâche nouvellement créee du nom de Modifier les taux salaires horaires sur les salariés horaire et gardien par Miandrisoa dans le projet MILLOT.	f	146	131	2024-01-29 14:39:16	2024-01-29 14:39:16	5
27248	Tâche nouvellement créee du nom de Modifier les taux salaires horaires sur les salariés horaire et gardien par Miandrisoa dans le projet MILLOT.	f	146	145	2024-01-29 14:39:16	2024-01-29 14:39:16	5
27249	Tâche nouvellement créee du nom de Modifier les taux salaires horaires sur les salariés horaire et gardien par Miandrisoa dans le projet MILLOT.	f	146	129	2024-01-29 14:39:16	2024-01-29 14:39:16	5
27250	Tâche nouvellement créee du nom de Modifier les taux salaires horaires sur les salariés horaire et gardien par Miandrisoa dans le projet MILLOT.	f	146	150	2024-01-29 14:39:16	2024-01-29 14:39:16	5
27251	Tâche nouvellement créee du nom de Modifier les taux salaires horaires sur les salariés horaire et gardien par Miandrisoa dans le projet MILLOT.	f	146	167	2024-01-29 14:39:16	2024-01-29 14:39:16	5
27253	Miandrisoa a été assigné à la tâche Modifier les taux salaires horaires sur les salariés horaire et gardien dans le projet MILLOT par Miandrisoa	f	146	127	2024-01-29 14:39:16	2024-01-29 14:39:16	6
27254	Miandrisoa a été assigné à la tâche Modifier les taux salaires horaires sur les salariés horaire et gardien dans le projet MILLOT par Miandrisoa	f	146	132	2024-01-29 14:39:16	2024-01-29 14:39:16	6
27255	Miandrisoa a été assigné à la tâche Modifier les taux salaires horaires sur les salariés horaire et gardien dans le projet MILLOT par Miandrisoa	f	146	150	2024-01-29 14:39:16	2024-01-29 14:39:16	6
27252	Miandrisoa a été assigné à la tâche Modifier les taux salaires horaires sur les salariés horaire et gardien dans le projet MILLOT par Miandrisoa	f	146	146	2024-01-29 11:39:16	2024-01-29 11:39:16	6
27256	Tâche nouvellement créee du nom de Ajouter une modèle d'archivage des utilisateurs par Alain dans le projet Gestion PNR Issoufali.	f	129	127	2024-01-30 10:08:46	2024-01-30 10:08:46	5
27257	Tâche nouvellement créee du nom de Ajouter une modèle d'archivage des utilisateurs par Alain dans le projet Gestion PNR Issoufali.	f	129	135	2024-01-30 10:08:46	2024-01-30 10:08:46	5
27258	Tâche nouvellement créee du nom de Ajouter une modèle d'archivage des utilisateurs par Alain dans le projet Gestion PNR Issoufali.	f	129	138	2024-01-30 10:08:46	2024-01-30 10:08:46	5
27259	Tâche nouvellement créee du nom de Ajouter une modèle d'archivage des utilisateurs par Alain dans le projet Gestion PNR Issoufali.	f	129	132	2024-01-30 10:08:46	2024-01-30 10:08:46	5
27260	Tâche nouvellement créee du nom de Ajouter une modèle d'archivage des utilisateurs par Alain dans le projet Gestion PNR Issoufali.	f	129	131	2024-01-30 10:08:46	2024-01-30 10:08:46	5
27261	Tâche nouvellement créee du nom de Ajouter une modèle d'archivage des utilisateurs par Alain dans le projet Gestion PNR Issoufali.	f	129	145	2024-01-30 10:08:46	2024-01-30 10:08:46	5
27262	Tâche nouvellement créee du nom de Ajouter une modèle d'archivage des utilisateurs par Alain dans le projet Gestion PNR Issoufali.	f	129	150	2024-01-30 10:08:46	2024-01-30 10:08:46	5
27263	Tâche nouvellement créee du nom de Ajouter une modèle d'archivage des utilisateurs par Alain dans le projet Gestion PNR Issoufali.	f	129	167	2024-01-30 10:08:46	2024-01-30 10:08:46	5
27264	Maphie a été assigné à la tâche Ajouter une modèle d'archivage des utilisateurs dans le projet Gestion PNR Issoufali par Alain	f	129	162	2024-01-30 07:08:46	2024-01-30 07:08:46	6
27265	Maphie a été assigné à la tâche Ajouter une modèle d'archivage des utilisateurs dans le projet Gestion PNR Issoufali par Alain	f	129	127	2024-01-30 10:08:46	2024-01-30 10:08:46	6
27266	Maphie a été assigné à la tâche Ajouter une modèle d'archivage des utilisateurs dans le projet Gestion PNR Issoufali par Alain	f	129	132	2024-01-30 10:08:46	2024-01-30 10:08:46	6
27267	Maphie a été assigné à la tâche Ajouter une modèle d'archivage des utilisateurs dans le projet Gestion PNR Issoufali par Alain	f	129	150	2024-01-30 10:08:46	2024-01-30 10:08:46	6
27268	Tâche nouvellement créee du nom de Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement par Alain dans le projet Gestion PNR Issoufali.	f	129	127	2024-01-30 10:09:51	2024-01-30 10:09:51	5
27269	Tâche nouvellement créee du nom de Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement par Alain dans le projet Gestion PNR Issoufali.	f	129	135	2024-01-30 10:09:51	2024-01-30 10:09:51	5
27270	Tâche nouvellement créee du nom de Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement par Alain dans le projet Gestion PNR Issoufali.	f	129	138	2024-01-30 10:09:51	2024-01-30 10:09:51	5
27271	Tâche nouvellement créee du nom de Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement par Alain dans le projet Gestion PNR Issoufali.	f	129	132	2024-01-30 10:09:51	2024-01-30 10:09:51	5
27272	Tâche nouvellement créee du nom de Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement par Alain dans le projet Gestion PNR Issoufali.	f	129	131	2024-01-30 10:09:51	2024-01-30 10:09:51	5
27273	Tâche nouvellement créee du nom de Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement par Alain dans le projet Gestion PNR Issoufali.	f	129	145	2024-01-30 10:09:51	2024-01-30 10:09:51	5
27274	Tâche nouvellement créee du nom de Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement par Alain dans le projet Gestion PNR Issoufali.	f	129	150	2024-01-30 10:09:51	2024-01-30 10:09:51	5
27275	Tâche nouvellement créee du nom de Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement par Alain dans le projet Gestion PNR Issoufali.	f	129	167	2024-01-30 10:09:51	2024-01-30 10:09:51	5
27276	Alain a été assigné à la tâche Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement dans le projet Gestion PNR Issoufali par Alain	f	129	129	2024-01-30 07:09:51	2024-01-30 07:09:51	6
27277	Alain a été assigné à la tâche Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement dans le projet Gestion PNR Issoufali par Alain	f	129	127	2024-01-30 10:09:51	2024-01-30 10:09:51	6
27278	Alain a été assigné à la tâche Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement dans le projet Gestion PNR Issoufali par Alain	f	129	132	2024-01-30 10:09:51	2024-01-30 10:09:51	6
27279	Alain a été assigné à la tâche Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement dans le projet Gestion PNR Issoufali par Alain	f	129	150	2024-01-30 10:09:51	2024-01-30 10:09:51	6
27280	Tâche nouvellement créee du nom de Faire une étude pour remonter les ventes diverses (Zenith) par Alain dans le projet Gestion PNR Issoufali.	f	129	127	2024-01-30 10:11:09	2024-01-30 10:11:09	5
27281	Tâche nouvellement créee du nom de Faire une étude pour remonter les ventes diverses (Zenith) par Alain dans le projet Gestion PNR Issoufali.	f	129	135	2024-01-30 10:11:09	2024-01-30 10:11:09	5
27282	Tâche nouvellement créee du nom de Faire une étude pour remonter les ventes diverses (Zenith) par Alain dans le projet Gestion PNR Issoufali.	f	129	138	2024-01-30 10:11:09	2024-01-30 10:11:09	5
27283	Tâche nouvellement créee du nom de Faire une étude pour remonter les ventes diverses (Zenith) par Alain dans le projet Gestion PNR Issoufali.	f	129	132	2024-01-30 10:11:09	2024-01-30 10:11:09	5
27284	Tâche nouvellement créee du nom de Faire une étude pour remonter les ventes diverses (Zenith) par Alain dans le projet Gestion PNR Issoufali.	f	129	131	2024-01-30 10:11:09	2024-01-30 10:11:09	5
27285	Tâche nouvellement créee du nom de Faire une étude pour remonter les ventes diverses (Zenith) par Alain dans le projet Gestion PNR Issoufali.	f	129	145	2024-01-30 10:11:09	2024-01-30 10:11:09	5
27286	Tâche nouvellement créee du nom de Faire une étude pour remonter les ventes diverses (Zenith) par Alain dans le projet Gestion PNR Issoufali.	f	129	150	2024-01-30 10:11:09	2024-01-30 10:11:09	5
27287	Tâche nouvellement créee du nom de Faire une étude pour remonter les ventes diverses (Zenith) par Alain dans le projet Gestion PNR Issoufali.	f	129	167	2024-01-30 10:11:09	2024-01-30 10:11:09	5
27288	Maphie a été assigné à la tâche Faire une étude pour remonter les ventes diverses (Zenith) dans le projet Gestion PNR Issoufali par Alain	f	129	162	2024-01-30 07:11:09	2024-01-30 07:11:09	6
27289	Maphie a été assigné à la tâche Faire une étude pour remonter les ventes diverses (Zenith) dans le projet Gestion PNR Issoufali par Alain	f	129	127	2024-01-30 10:11:09	2024-01-30 10:11:09	6
27290	Maphie a été assigné à la tâche Faire une étude pour remonter les ventes diverses (Zenith) dans le projet Gestion PNR Issoufali par Alain	f	129	132	2024-01-30 10:11:09	2024-01-30 10:11:09	6
27291	Maphie a été assigné à la tâche Faire une étude pour remonter les ventes diverses (Zenith) dans le projet Gestion PNR Issoufali par Alain	f	129	150	2024-01-30 10:11:09	2024-01-30 10:11:09	6
27292	Tâche nouvellement créee du nom de Remonter les billets en FO PAX (billet initial) par Alain dans le projet Gestion PNR Issoufali.	f	129	127	2024-01-30 10:11:57	2024-01-30 10:11:57	5
27293	Tâche nouvellement créee du nom de Remonter les billets en FO PAX (billet initial) par Alain dans le projet Gestion PNR Issoufali.	f	129	135	2024-01-30 10:11:57	2024-01-30 10:11:57	5
27294	Tâche nouvellement créee du nom de Remonter les billets en FO PAX (billet initial) par Alain dans le projet Gestion PNR Issoufali.	f	129	138	2024-01-30 10:11:57	2024-01-30 10:11:57	5
27295	Tâche nouvellement créee du nom de Remonter les billets en FO PAX (billet initial) par Alain dans le projet Gestion PNR Issoufali.	f	129	132	2024-01-30 10:11:57	2024-01-30 10:11:57	5
27296	Tâche nouvellement créee du nom de Remonter les billets en FO PAX (billet initial) par Alain dans le projet Gestion PNR Issoufali.	f	129	131	2024-01-30 10:11:57	2024-01-30 10:11:57	5
27297	Tâche nouvellement créee du nom de Remonter les billets en FO PAX (billet initial) par Alain dans le projet Gestion PNR Issoufali.	f	129	145	2024-01-30 10:11:57	2024-01-30 10:11:57	5
27298	Tâche nouvellement créee du nom de Remonter les billets en FO PAX (billet initial) par Alain dans le projet Gestion PNR Issoufali.	f	129	150	2024-01-30 10:11:57	2024-01-30 10:11:57	5
27299	Tâche nouvellement créee du nom de Remonter les billets en FO PAX (billet initial) par Alain dans le projet Gestion PNR Issoufali.	f	129	167	2024-01-30 10:11:57	2024-01-30 10:11:57	5
27300	Maphie a été assigné à la tâche Remonter les billets en FO PAX (billet initial) dans le projet Gestion PNR Issoufali par Alain	f	129	162	2024-01-30 07:11:57	2024-01-30 07:11:57	6
27301	Maphie a été assigné à la tâche Remonter les billets en FO PAX (billet initial) dans le projet Gestion PNR Issoufali par Alain	f	129	127	2024-01-30 10:11:57	2024-01-30 10:11:57	6
27302	Maphie a été assigné à la tâche Remonter les billets en FO PAX (billet initial) dans le projet Gestion PNR Issoufali par Alain	f	129	132	2024-01-30 10:11:57	2024-01-30 10:11:57	6
27303	Maphie a été assigné à la tâche Remonter les billets en FO PAX (billet initial) dans le projet Gestion PNR Issoufali par Alain	f	129	150	2024-01-30 10:11:57	2024-01-30 10:11:57	6
27304	Tâche nouvellement créee du nom de Etudier les cancelations (Demander à Mr. Tahine) une réunion est peut être requis par Alain dans le projet Gestion PNR Issoufali.	f	129	127	2024-01-30 10:13:05	2024-01-30 10:13:05	5
27305	Tâche nouvellement créee du nom de Etudier les cancelations (Demander à Mr. Tahine) une réunion est peut être requis par Alain dans le projet Gestion PNR Issoufali.	f	129	135	2024-01-30 10:13:05	2024-01-30 10:13:05	5
27306	Tâche nouvellement créee du nom de Etudier les cancelations (Demander à Mr. Tahine) une réunion est peut être requis par Alain dans le projet Gestion PNR Issoufali.	f	129	138	2024-01-30 10:13:05	2024-01-30 10:13:05	5
27307	Tâche nouvellement créee du nom de Etudier les cancelations (Demander à Mr. Tahine) une réunion est peut être requis par Alain dans le projet Gestion PNR Issoufali.	f	129	132	2024-01-30 10:13:05	2024-01-30 10:13:05	5
27308	Tâche nouvellement créee du nom de Etudier les cancelations (Demander à Mr. Tahine) une réunion est peut être requis par Alain dans le projet Gestion PNR Issoufali.	f	129	131	2024-01-30 10:13:05	2024-01-30 10:13:05	5
27309	Tâche nouvellement créee du nom de Etudier les cancelations (Demander à Mr. Tahine) une réunion est peut être requis par Alain dans le projet Gestion PNR Issoufali.	f	129	145	2024-01-30 10:13:05	2024-01-30 10:13:05	5
27310	Tâche nouvellement créee du nom de Etudier les cancelations (Demander à Mr. Tahine) une réunion est peut être requis par Alain dans le projet Gestion PNR Issoufali.	f	129	150	2024-01-30 10:13:05	2024-01-30 10:13:05	5
27311	Tâche nouvellement créee du nom de Etudier les cancelations (Demander à Mr. Tahine) une réunion est peut être requis par Alain dans le projet Gestion PNR Issoufali.	f	129	167	2024-01-30 10:13:05	2024-01-30 10:13:05	5
27313	Maphie a été assigné à la tâche Etudier les cancelations (Demander à Mr. Tahine) une réunion est peut être requis dans le projet Gestion PNR Issoufali par Alain	f	129	127	2024-01-30 10:13:05	2024-01-30 10:13:05	6
27314	Maphie a été assigné à la tâche Etudier les cancelations (Demander à Mr. Tahine) une réunion est peut être requis dans le projet Gestion PNR Issoufali par Alain	f	129	132	2024-01-30 10:13:05	2024-01-30 10:13:05	6
27315	Maphie a été assigné à la tâche Etudier les cancelations (Demander à Mr. Tahine) une réunion est peut être requis dans le projet Gestion PNR Issoufali par Alain	f	129	150	2024-01-30 10:13:05	2024-01-30 10:13:05	6
27316	Tâche "Annuler la modification dans gestion PNR le 22 janvier"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	127	2024-01-30 14:42:02	2024-01-30 14:42:02	1
27317	Tâche "Annuler la modification dans gestion PNR le 22 janvier"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	135	2024-01-30 14:42:02	2024-01-30 14:42:02	1
27318	Tâche "Annuler la modification dans gestion PNR le 22 janvier"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	138	2024-01-30 14:42:02	2024-01-30 14:42:02	1
27319	Tâche "Annuler la modification dans gestion PNR le 22 janvier"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	132	2024-01-30 14:42:02	2024-01-30 14:42:02	1
27320	Tâche "Annuler la modification dans gestion PNR le 22 janvier"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	131	2024-01-30 14:42:02	2024-01-30 14:42:02	1
27321	Tâche "Annuler la modification dans gestion PNR le 22 janvier"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	145	2024-01-30 14:42:02	2024-01-30 14:42:02	1
27322	Tâche "Annuler la modification dans gestion PNR le 22 janvier"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	150	2024-01-30 14:42:02	2024-01-30 14:42:02	1
27323	Tâche "Annuler la modification dans gestion PNR le 22 janvier"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	167	2024-01-30 14:42:02	2024-01-30 14:42:02	1
27324	Tâche nouvellement créee du nom de Documentation sur gestion PNR par Alain dans le projet Gestion PNR Issoufali.	f	129	127	2024-01-30 14:43:33	2024-01-30 14:43:33	5
27325	Tâche nouvellement créee du nom de Documentation sur gestion PNR par Alain dans le projet Gestion PNR Issoufali.	f	129	135	2024-01-30 14:43:33	2024-01-30 14:43:33	5
27326	Tâche nouvellement créee du nom de Documentation sur gestion PNR par Alain dans le projet Gestion PNR Issoufali.	f	129	138	2024-01-30 14:43:33	2024-01-30 14:43:33	5
27327	Tâche nouvellement créee du nom de Documentation sur gestion PNR par Alain dans le projet Gestion PNR Issoufali.	f	129	132	2024-01-30 14:43:33	2024-01-30 14:43:33	5
27328	Tâche nouvellement créee du nom de Documentation sur gestion PNR par Alain dans le projet Gestion PNR Issoufali.	f	129	131	2024-01-30 14:43:33	2024-01-30 14:43:33	5
27329	Tâche nouvellement créee du nom de Documentation sur gestion PNR par Alain dans le projet Gestion PNR Issoufali.	f	129	145	2024-01-30 14:43:33	2024-01-30 14:43:33	5
27330	Tâche nouvellement créee du nom de Documentation sur gestion PNR par Alain dans le projet Gestion PNR Issoufali.	f	129	150	2024-01-30 14:43:33	2024-01-30 14:43:33	5
27331	Tâche nouvellement créee du nom de Documentation sur gestion PNR par Alain dans le projet Gestion PNR Issoufali.	f	129	167	2024-01-30 14:43:33	2024-01-30 14:43:33	5
27332	Hasina a été assigné à la tâche Documentation sur gestion PNR dans le projet Gestion PNR Issoufali par Alain	f	129	131	2024-01-30 11:43:33	2024-01-30 11:43:33	6
27333	Hasina a été assigné à la tâche Documentation sur gestion PNR dans le projet Gestion PNR Issoufali par Alain	f	129	127	2024-01-30 14:43:33	2024-01-30 14:43:33	6
27334	Hasina a été assigné à la tâche Documentation sur gestion PNR dans le projet Gestion PNR Issoufali par Alain	f	129	132	2024-01-30 14:43:33	2024-01-30 14:43:33	6
27335	Hasina a été assigné à la tâche Documentation sur gestion PNR dans le projet Gestion PNR Issoufali par Alain	f	129	150	2024-01-30 14:43:33	2024-01-30 14:43:33	6
27336	Tâche nouvellement créee du nom de Compte rendu de la réunion avec Coralie par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	127	2024-01-31 08:48:56	2024-01-31 08:48:56	5
27337	Tâche nouvellement créee du nom de Compte rendu de la réunion avec Coralie par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	135	2024-01-31 08:48:56	2024-01-31 08:48:56	5
27338	Tâche nouvellement créee du nom de Compte rendu de la réunion avec Coralie par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	138	2024-01-31 08:48:56	2024-01-31 08:48:56	5
27339	Tâche nouvellement créee du nom de Compte rendu de la réunion avec Coralie par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	132	2024-01-31 08:48:56	2024-01-31 08:48:56	5
27340	Tâche nouvellement créee du nom de Compte rendu de la réunion avec Coralie par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	131	2024-01-31 08:48:56	2024-01-31 08:48:56	5
27341	Tâche nouvellement créee du nom de Compte rendu de la réunion avec Coralie par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	145	2024-01-31 08:48:56	2024-01-31 08:48:56	5
27342	Tâche nouvellement créee du nom de Compte rendu de la réunion avec Coralie par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	129	2024-01-31 08:48:56	2024-01-31 08:48:56	5
27343	Tâche nouvellement créee du nom de Compte rendu de la réunion avec Coralie par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	150	2024-01-31 08:48:56	2024-01-31 08:48:56	5
27344	Tâche nouvellement créee du nom de Compte rendu de la réunion avec Coralie par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	167	2024-01-31 08:48:56	2024-01-31 08:48:56	5
27371	Miandrisoa a été assigné à la tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	146	2024-01-31 05:51:05	2024-01-31 05:51:05	6
27411	Maphie a été assigné à la tâche Front ajout pour  parsing pnr dans le projet Gestion PNR Issoufali par Maphie	f	162	127	2024-01-31 10:20:56	2024-01-31 10:20:56	6
27412	Maphie a été assigné à la tâche Front ajout pour  parsing pnr dans le projet Gestion PNR Issoufali par Maphie	f	162	132	2024-01-31 10:20:56	2024-01-31 10:20:56	6
27413	Maphie a été assigné à la tâche Front ajout pour  parsing pnr dans le projet Gestion PNR Issoufali par Maphie	f	162	150	2024-01-31 10:20:56	2024-01-31 10:20:56	6
27453	Tâche nouvellement créee du nom de Front ajout et liste ticket et zenith receipt parsing par Maphie dans le projet Gestion PNR Issoufali.	f	162	127	2024-01-31 10:28:04	2024-01-31 10:28:04	5
27454	Tâche nouvellement créee du nom de Front ajout et liste ticket et zenith receipt parsing par Maphie dans le projet Gestion PNR Issoufali.	f	162	135	2024-01-31 10:28:04	2024-01-31 10:28:04	5
27455	Tâche nouvellement créee du nom de Front ajout et liste ticket et zenith receipt parsing par Maphie dans le projet Gestion PNR Issoufali.	f	162	138	2024-01-31 10:28:04	2024-01-31 10:28:04	5
27456	Tâche nouvellement créee du nom de Front ajout et liste ticket et zenith receipt parsing par Maphie dans le projet Gestion PNR Issoufali.	f	162	132	2024-01-31 10:28:04	2024-01-31 10:28:04	5
27457	Tâche nouvellement créee du nom de Front ajout et liste ticket et zenith receipt parsing par Maphie dans le projet Gestion PNR Issoufali.	f	162	131	2024-01-31 10:28:04	2024-01-31 10:28:04	5
27458	Tâche nouvellement créee du nom de Front ajout et liste ticket et zenith receipt parsing par Maphie dans le projet Gestion PNR Issoufali.	f	162	145	2024-01-31 10:28:04	2024-01-31 10:28:04	5
27459	Tâche nouvellement créee du nom de Front ajout et liste ticket et zenith receipt parsing par Maphie dans le projet Gestion PNR Issoufali.	f	162	129	2024-01-31 10:28:04	2024-01-31 10:28:04	5
27460	Tâche nouvellement créee du nom de Front ajout et liste ticket et zenith receipt parsing par Maphie dans le projet Gestion PNR Issoufali.	f	162	150	2024-01-31 10:28:04	2024-01-31 10:28:04	5
27461	Tâche nouvellement créee du nom de Front ajout et liste ticket et zenith receipt parsing par Maphie dans le projet Gestion PNR Issoufali.	f	162	167	2024-01-31 10:28:04	2024-01-31 10:28:04	5
27345	Miandrisoa a été assigné à la tâche Compte rendu de la réunion avec Coralie dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	146	2024-01-31 05:48:56	2024-01-31 05:48:56	6
27346	Miandrisoa a été assigné à la tâche Compte rendu de la réunion avec Coralie dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	127	2024-01-31 08:48:56	2024-01-31 08:48:56	6
27347	Miandrisoa a été assigné à la tâche Compte rendu de la réunion avec Coralie dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	132	2024-01-31 08:48:56	2024-01-31 08:48:56	6
27348	Miandrisoa a été assigné à la tâche Compte rendu de la réunion avec Coralie dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	150	2024-01-31 08:48:56	2024-01-31 08:48:56	6
27358	Miandrisoa a été assigné à la tâche Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	146	2024-01-31 05:49:53	2024-01-31 05:49:53	6
27362	Tâche nouvellement créee du nom de Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	127	2024-01-31 08:51:04	2024-01-31 08:51:04	5
27363	Tâche nouvellement créee du nom de Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	135	2024-01-31 08:51:04	2024-01-31 08:51:04	5
27364	Tâche nouvellement créee du nom de Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	138	2024-01-31 08:51:04	2024-01-31 08:51:04	5
27365	Tâche nouvellement créee du nom de Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	132	2024-01-31 08:51:04	2024-01-31 08:51:04	5
27366	Tâche nouvellement créee du nom de Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	131	2024-01-31 08:51:04	2024-01-31 08:51:04	5
27367	Tâche nouvellement créee du nom de Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	145	2024-01-31 08:51:04	2024-01-31 08:51:04	5
27368	Tâche nouvellement créee du nom de Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	129	2024-01-31 08:51:04	2024-01-31 08:51:04	5
27369	Tâche nouvellement créee du nom de Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	150	2024-01-31 08:51:04	2024-01-31 08:51:04	5
27370	Tâche nouvellement créee du nom de Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	167	2024-01-31 08:51:04	2024-01-31 08:51:04	5
27388	Tâche nouvellement créee du nom de Front modifier email pnr, notification, fee par Maphie dans le projet Gestion PNR Issoufali.	f	162	127	2024-01-31 10:18:30	2024-01-31 10:18:30	5
27389	Tâche nouvellement créee du nom de Front modifier email pnr, notification, fee par Maphie dans le projet Gestion PNR Issoufali.	f	162	135	2024-01-31 10:18:30	2024-01-31 10:18:30	5
27390	Tâche nouvellement créee du nom de Front modifier email pnr, notification, fee par Maphie dans le projet Gestion PNR Issoufali.	f	162	138	2024-01-31 10:18:30	2024-01-31 10:18:30	5
27391	Tâche nouvellement créee du nom de Front modifier email pnr, notification, fee par Maphie dans le projet Gestion PNR Issoufali.	f	162	132	2024-01-31 10:18:30	2024-01-31 10:18:30	5
27392	Tâche nouvellement créee du nom de Front modifier email pnr, notification, fee par Maphie dans le projet Gestion PNR Issoufali.	f	162	131	2024-01-31 10:18:30	2024-01-31 10:18:30	5
27393	Tâche nouvellement créee du nom de Front modifier email pnr, notification, fee par Maphie dans le projet Gestion PNR Issoufali.	f	162	145	2024-01-31 10:18:30	2024-01-31 10:18:30	5
27394	Tâche nouvellement créee du nom de Front modifier email pnr, notification, fee par Maphie dans le projet Gestion PNR Issoufali.	f	162	129	2024-01-31 10:18:30	2024-01-31 10:18:30	5
27395	Tâche nouvellement créee du nom de Front modifier email pnr, notification, fee par Maphie dans le projet Gestion PNR Issoufali.	f	162	150	2024-01-31 10:18:30	2024-01-31 10:18:30	5
27396	Tâche nouvellement créee du nom de Front modifier email pnr, notification, fee par Maphie dans le projet Gestion PNR Issoufali.	f	162	167	2024-01-31 10:18:30	2024-01-31 10:18:30	5
27398	Maphie a été assigné à la tâche Front modifier email pnr, notification, fee dans le projet Gestion PNR Issoufali par Maphie	f	162	127	2024-01-31 10:18:30	2024-01-31 10:18:30	6
27399	Maphie a été assigné à la tâche Front modifier email pnr, notification, fee dans le projet Gestion PNR Issoufali par Maphie	f	162	132	2024-01-31 10:18:30	2024-01-31 10:18:30	6
27400	Maphie a été assigné à la tâche Front modifier email pnr, notification, fee dans le projet Gestion PNR Issoufali par Maphie	f	162	150	2024-01-31 10:18:30	2024-01-31 10:18:30	6
27384	Maphie a été assigné à la tâche Front modifier compagnie information (configurations) dans le projet Gestion PNR Issoufali par Maphie	t	162	162	2024-01-31 07:17:54	2024-01-31 07:17:54	6
27410	Maphie a été assigné à la tâche Front ajout pour  parsing pnr dans le projet Gestion PNR Issoufali par Maphie	t	162	162	2024-01-31 07:20:56	2024-01-31 07:20:56	6
27414	Tâche nouvellement créee du nom de Front Ajout et liste pour parsing emd par Maphie dans le projet Gestion PNR Issoufali.	f	162	127	2024-01-31 10:22:54	2024-01-31 10:22:54	5
27415	Tâche nouvellement créee du nom de Front Ajout et liste pour parsing emd par Maphie dans le projet Gestion PNR Issoufali.	f	162	135	2024-01-31 10:22:54	2024-01-31 10:22:54	5
27416	Tâche nouvellement créee du nom de Front Ajout et liste pour parsing emd par Maphie dans le projet Gestion PNR Issoufali.	f	162	138	2024-01-31 10:22:54	2024-01-31 10:22:54	5
27417	Tâche nouvellement créee du nom de Front Ajout et liste pour parsing emd par Maphie dans le projet Gestion PNR Issoufali.	f	162	132	2024-01-31 10:22:54	2024-01-31 10:22:54	5
27423	Maphie a été assigné à la tâche Front Ajout et liste pour parsing emd dans le projet Gestion PNR Issoufali par Maphie	f	162	162	2024-01-31 07:22:54	2024-01-31 07:22:54	6
27440	Tâche nouvellement créee du nom de Front ajout et liste TST parsing par Maphie dans le projet Gestion PNR Issoufali.	f	162	127	2024-01-31 10:26:15	2024-01-31 10:26:15	5
27349	Tâche nouvellement créee du nom de Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	127	2024-01-31 08:49:53	2024-01-31 08:49:53	5
27350	Tâche nouvellement créee du nom de Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	135	2024-01-31 08:49:53	2024-01-31 08:49:53	5
27351	Tâche nouvellement créee du nom de Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	138	2024-01-31 08:49:53	2024-01-31 08:49:53	5
27352	Tâche nouvellement créee du nom de Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	132	2024-01-31 08:49:53	2024-01-31 08:49:53	5
27353	Tâche nouvellement créee du nom de Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	131	2024-01-31 08:49:53	2024-01-31 08:49:53	5
27354	Tâche nouvellement créee du nom de Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	145	2024-01-31 08:49:53	2024-01-31 08:49:53	5
27355	Tâche nouvellement créee du nom de Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	129	2024-01-31 08:49:53	2024-01-31 08:49:53	5
27356	Tâche nouvellement créee du nom de Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	150	2024-01-31 08:49:53	2024-01-31 08:49:53	5
27357	Tâche nouvellement créee du nom de Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	167	2024-01-31 08:49:53	2024-01-31 08:49:53	5
27359	Miandrisoa a été assigné à la tâche Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	127	2024-01-31 08:49:53	2024-01-31 08:49:53	6
27360	Miandrisoa a été assigné à la tâche Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	132	2024-01-31 08:49:53	2024-01-31 08:49:53	6
27361	Miandrisoa a été assigné à la tâche Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	150	2024-01-31 08:49:53	2024-01-31 08:49:53	6
27372	Miandrisoa a été assigné à la tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	127	2024-01-31 08:51:05	2024-01-31 08:51:05	6
27373	Miandrisoa a été assigné à la tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	132	2024-01-31 08:51:05	2024-01-31 08:51:05	6
27865	Tâche a supprimé par Koloina.	f	147	131	2024-02-12 17:04:31	2024-02-12 17:04:31	3
27374	Miandrisoa a été assigné à la tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	150	2024-01-31 08:51:05	2024-01-31 08:51:05	6
27397	Maphie a été assigné à la tâche Front modifier email pnr, notification, fee dans le projet Gestion PNR Issoufali par Maphie	t	162	162	2024-01-31 07:18:30	2024-01-31 07:18:30	6
27424	Maphie a été assigné à la tâche Front Ajout et liste pour parsing emd dans le projet Gestion PNR Issoufali par Maphie	f	162	127	2024-01-31 10:22:54	2024-01-31 10:22:54	6
27425	Maphie a été assigné à la tâche Front Ajout et liste pour parsing emd dans le projet Gestion PNR Issoufali par Maphie	f	162	132	2024-01-31 10:22:54	2024-01-31 10:22:54	6
27426	Maphie a été assigné à la tâche Front Ajout et liste pour parsing emd dans le projet Gestion PNR Issoufali par Maphie	f	162	150	2024-01-31 10:22:54	2024-01-31 10:22:54	6
27427	Tâche nouvellement créee du nom de Front Ajout et liste zenith parsing par Maphie dans le projet Gestion PNR Issoufali.	f	162	127	2024-01-31 10:24:50	2024-01-31 10:24:50	5
27428	Tâche nouvellement créee du nom de Front Ajout et liste zenith parsing par Maphie dans le projet Gestion PNR Issoufali.	f	162	135	2024-01-31 10:24:50	2024-01-31 10:24:50	5
27429	Tâche nouvellement créee du nom de Front Ajout et liste zenith parsing par Maphie dans le projet Gestion PNR Issoufali.	f	162	138	2024-01-31 10:24:50	2024-01-31 10:24:50	5
27430	Tâche nouvellement créee du nom de Front Ajout et liste zenith parsing par Maphie dans le projet Gestion PNR Issoufali.	f	162	132	2024-01-31 10:24:50	2024-01-31 10:24:50	5
27431	Tâche nouvellement créee du nom de Front Ajout et liste zenith parsing par Maphie dans le projet Gestion PNR Issoufali.	f	162	131	2024-01-31 10:24:50	2024-01-31 10:24:50	5
27432	Tâche nouvellement créee du nom de Front Ajout et liste zenith parsing par Maphie dans le projet Gestion PNR Issoufali.	f	162	145	2024-01-31 10:24:50	2024-01-31 10:24:50	5
27433	Tâche nouvellement créee du nom de Front Ajout et liste zenith parsing par Maphie dans le projet Gestion PNR Issoufali.	f	162	129	2024-01-31 10:24:50	2024-01-31 10:24:50	5
27434	Tâche nouvellement créee du nom de Front Ajout et liste zenith parsing par Maphie dans le projet Gestion PNR Issoufali.	f	162	150	2024-01-31 10:24:50	2024-01-31 10:24:50	5
27435	Tâche nouvellement créee du nom de Front Ajout et liste zenith parsing par Maphie dans le projet Gestion PNR Issoufali.	f	162	167	2024-01-31 10:24:50	2024-01-31 10:24:50	5
27436	Maphie a été assigné à la tâche Front Ajout et liste zenith parsing dans le projet Gestion PNR Issoufali par Maphie	f	162	162	2024-01-31 07:24:50	2024-01-31 07:24:50	6
27437	Maphie a été assigné à la tâche Front Ajout et liste zenith parsing dans le projet Gestion PNR Issoufali par Maphie	f	162	127	2024-01-31 10:24:50	2024-01-31 10:24:50	6
27375	Tâche nouvellement créee du nom de Front modifier compagnie information (configurations) par Maphie dans le projet Gestion PNR Issoufali.	f	162	127	2024-01-31 10:17:54	2024-01-31 10:17:54	5
27376	Tâche nouvellement créee du nom de Front modifier compagnie information (configurations) par Maphie dans le projet Gestion PNR Issoufali.	f	162	135	2024-01-31 10:17:54	2024-01-31 10:17:54	5
27377	Tâche nouvellement créee du nom de Front modifier compagnie information (configurations) par Maphie dans le projet Gestion PNR Issoufali.	f	162	138	2024-01-31 10:17:54	2024-01-31 10:17:54	5
27378	Tâche nouvellement créee du nom de Front modifier compagnie information (configurations) par Maphie dans le projet Gestion PNR Issoufali.	f	162	132	2024-01-31 10:17:54	2024-01-31 10:17:54	5
27379	Tâche nouvellement créee du nom de Front modifier compagnie information (configurations) par Maphie dans le projet Gestion PNR Issoufali.	f	162	131	2024-01-31 10:17:54	2024-01-31 10:17:54	5
27380	Tâche nouvellement créee du nom de Front modifier compagnie information (configurations) par Maphie dans le projet Gestion PNR Issoufali.	f	162	145	2024-01-31 10:17:54	2024-01-31 10:17:54	5
27381	Tâche nouvellement créee du nom de Front modifier compagnie information (configurations) par Maphie dans le projet Gestion PNR Issoufali.	f	162	129	2024-01-31 10:17:54	2024-01-31 10:17:54	5
27382	Tâche nouvellement créee du nom de Front modifier compagnie information (configurations) par Maphie dans le projet Gestion PNR Issoufali.	f	162	150	2024-01-31 10:17:54	2024-01-31 10:17:54	5
27383	Tâche nouvellement créee du nom de Front modifier compagnie information (configurations) par Maphie dans le projet Gestion PNR Issoufali.	f	162	167	2024-01-31 10:17:54	2024-01-31 10:17:54	5
27385	Maphie a été assigné à la tâche Front modifier compagnie information (configurations) dans le projet Gestion PNR Issoufali par Maphie	f	162	127	2024-01-31 10:17:54	2024-01-31 10:17:54	6
27386	Maphie a été assigné à la tâche Front modifier compagnie information (configurations) dans le projet Gestion PNR Issoufali par Maphie	f	162	132	2024-01-31 10:17:54	2024-01-31 10:17:54	6
27387	Maphie a été assigné à la tâche Front modifier compagnie information (configurations) dans le projet Gestion PNR Issoufali par Maphie	f	162	150	2024-01-31 10:17:54	2024-01-31 10:17:54	6
27312	Maphie a été assigné à la tâche Etudier les cancelations (Demander à Mr. Tahine) une réunion est peut être requis dans le projet Gestion PNR Issoufali par Alain	t	129	162	2024-01-30 07:13:05	2024-01-30 07:13:05	6
27463	Maphie a été assigné à la tâche Front ajout et liste ticket et zenith receipt parsing dans le projet Gestion PNR Issoufali par Maphie	f	162	127	2024-01-31 10:28:04	2024-01-31 10:28:04	6
27464	Maphie a été assigné à la tâche Front ajout et liste ticket et zenith receipt parsing dans le projet Gestion PNR Issoufali par Maphie	f	162	132	2024-01-31 10:28:04	2024-01-31 10:28:04	6
27465	Maphie a été assigné à la tâche Front ajout et liste ticket et zenith receipt parsing dans le projet Gestion PNR Issoufali par Maphie	f	162	150	2024-01-31 10:28:04	2024-01-31 10:28:04	6
27401	Tâche nouvellement créee du nom de Front ajout pour  parsing pnr par Maphie dans le projet Gestion PNR Issoufali.	f	162	127	2024-01-31 10:20:56	2024-01-31 10:20:56	5
27402	Tâche nouvellement créee du nom de Front ajout pour  parsing pnr par Maphie dans le projet Gestion PNR Issoufali.	f	162	135	2024-01-31 10:20:56	2024-01-31 10:20:56	5
27403	Tâche nouvellement créee du nom de Front ajout pour  parsing pnr par Maphie dans le projet Gestion PNR Issoufali.	f	162	138	2024-01-31 10:20:56	2024-01-31 10:20:56	5
27404	Tâche nouvellement créee du nom de Front ajout pour  parsing pnr par Maphie dans le projet Gestion PNR Issoufali.	f	162	132	2024-01-31 10:20:56	2024-01-31 10:20:56	5
27405	Tâche nouvellement créee du nom de Front ajout pour  parsing pnr par Maphie dans le projet Gestion PNR Issoufali.	f	162	131	2024-01-31 10:20:56	2024-01-31 10:20:56	5
27406	Tâche nouvellement créee du nom de Front ajout pour  parsing pnr par Maphie dans le projet Gestion PNR Issoufali.	f	162	145	2024-01-31 10:20:56	2024-01-31 10:20:56	5
27408	Tâche nouvellement créee du nom de Front ajout pour  parsing pnr par Maphie dans le projet Gestion PNR Issoufali.	f	162	150	2024-01-31 10:20:56	2024-01-31 10:20:56	5
27409	Tâche nouvellement créee du nom de Front ajout pour  parsing pnr par Maphie dans le projet Gestion PNR Issoufali.	f	162	167	2024-01-31 10:20:56	2024-01-31 10:20:56	5
27418	Tâche nouvellement créee du nom de Front Ajout et liste pour parsing emd par Maphie dans le projet Gestion PNR Issoufali.	f	162	131	2024-01-31 10:22:54	2024-01-31 10:22:54	5
27419	Tâche nouvellement créee du nom de Front Ajout et liste pour parsing emd par Maphie dans le projet Gestion PNR Issoufali.	f	162	145	2024-01-31 10:22:54	2024-01-31 10:22:54	5
27420	Tâche nouvellement créee du nom de Front Ajout et liste pour parsing emd par Maphie dans le projet Gestion PNR Issoufali.	f	162	129	2024-01-31 10:22:54	2024-01-31 10:22:54	5
27421	Tâche nouvellement créee du nom de Front Ajout et liste pour parsing emd par Maphie dans le projet Gestion PNR Issoufali.	f	162	150	2024-01-31 10:22:54	2024-01-31 10:22:54	5
27422	Tâche nouvellement créee du nom de Front Ajout et liste pour parsing emd par Maphie dans le projet Gestion PNR Issoufali.	f	162	167	2024-01-31 10:22:54	2024-01-31 10:22:54	5
27450	Maphie a été assigné à la tâche Front ajout et liste TST parsing dans le projet Gestion PNR Issoufali par Maphie	f	162	127	2024-01-31 10:26:15	2024-01-31 10:26:15	6
27451	Maphie a été assigné à la tâche Front ajout et liste TST parsing dans le projet Gestion PNR Issoufali par Maphie	f	162	132	2024-01-31 10:26:15	2024-01-31 10:26:15	6
27452	Maphie a été assigné à la tâche Front ajout et liste TST parsing dans le projet Gestion PNR Issoufali par Maphie	f	162	150	2024-01-31 10:26:15	2024-01-31 10:26:15	6
27438	Maphie a été assigné à la tâche Front Ajout et liste zenith parsing dans le projet Gestion PNR Issoufali par Maphie	f	162	132	2024-01-31 10:24:50	2024-01-31 10:24:50	6
27439	Maphie a été assigné à la tâche Front Ajout et liste zenith parsing dans le projet Gestion PNR Issoufali par Maphie	f	162	150	2024-01-31 10:24:50	2024-01-31 10:24:50	6
27441	Tâche nouvellement créee du nom de Front ajout et liste TST parsing par Maphie dans le projet Gestion PNR Issoufali.	f	162	135	2024-01-31 10:26:15	2024-01-31 10:26:15	5
27442	Tâche nouvellement créee du nom de Front ajout et liste TST parsing par Maphie dans le projet Gestion PNR Issoufali.	f	162	138	2024-01-31 10:26:15	2024-01-31 10:26:15	5
27443	Tâche nouvellement créee du nom de Front ajout et liste TST parsing par Maphie dans le projet Gestion PNR Issoufali.	f	162	132	2024-01-31 10:26:15	2024-01-31 10:26:15	5
27444	Tâche nouvellement créee du nom de Front ajout et liste TST parsing par Maphie dans le projet Gestion PNR Issoufali.	f	162	131	2024-01-31 10:26:15	2024-01-31 10:26:15	5
27445	Tâche nouvellement créee du nom de Front ajout et liste TST parsing par Maphie dans le projet Gestion PNR Issoufali.	f	162	145	2024-01-31 10:26:15	2024-01-31 10:26:15	5
27446	Tâche nouvellement créee du nom de Front ajout et liste TST parsing par Maphie dans le projet Gestion PNR Issoufali.	f	162	129	2024-01-31 10:26:15	2024-01-31 10:26:15	5
27447	Tâche nouvellement créee du nom de Front ajout et liste TST parsing par Maphie dans le projet Gestion PNR Issoufali.	f	162	150	2024-01-31 10:26:15	2024-01-31 10:26:15	5
27448	Tâche nouvellement créee du nom de Front ajout et liste TST parsing par Maphie dans le projet Gestion PNR Issoufali.	f	162	167	2024-01-31 10:26:15	2024-01-31 10:26:15	5
27449	Maphie a été assigné à la tâche Front ajout et liste TST parsing dans le projet Gestion PNR Issoufali par Maphie	f	162	162	2024-01-31 07:26:15	2024-01-31 07:26:15	6
27462	Maphie a été assigné à la tâche Front ajout et liste ticket et zenith receipt parsing dans le projet Gestion PNR Issoufali par Maphie	f	162	162	2024-01-31 07:28:04	2024-01-31 07:28:04	6
27466	Tâche nouvellement créee du nom de Attribuer Accès Utilisateur qlm par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	127	2024-02-02 08:32:03	2024-02-02 08:32:03	5
27467	Tâche nouvellement créee du nom de Attribuer Accès Utilisateur qlm par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	135	2024-02-02 08:32:03	2024-02-02 08:32:03	5
27468	Tâche nouvellement créee du nom de Attribuer Accès Utilisateur qlm par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	138	2024-02-02 08:32:03	2024-02-02 08:32:03	5
27469	Tâche nouvellement créee du nom de Attribuer Accès Utilisateur qlm par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	132	2024-02-02 08:32:03	2024-02-02 08:32:03	5
27470	Tâche nouvellement créee du nom de Attribuer Accès Utilisateur qlm par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	131	2024-02-02 08:32:03	2024-02-02 08:32:03	5
27471	Tâche nouvellement créee du nom de Attribuer Accès Utilisateur qlm par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	145	2024-02-02 08:32:03	2024-02-02 08:32:03	5
27472	Tâche nouvellement créee du nom de Attribuer Accès Utilisateur qlm par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	129	2024-02-02 08:32:03	2024-02-02 08:32:03	5
27473	Tâche nouvellement créee du nom de Attribuer Accès Utilisateur qlm par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	150	2024-02-02 08:32:03	2024-02-02 08:32:03	5
27474	Tâche nouvellement créee du nom de Attribuer Accès Utilisateur qlm par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	167	2024-02-02 08:32:03	2024-02-02 08:32:03	5
27476	Fanilo a été assigné à la tâche Attribuer Accès Utilisateur qlm dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	127	2024-02-02 08:32:03	2024-02-02 08:32:03	6
27477	Fanilo a été assigné à la tâche Attribuer Accès Utilisateur qlm dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	132	2024-02-02 08:32:03	2024-02-02 08:32:03	6
27478	Fanilo a été assigné à la tâche Attribuer Accès Utilisateur qlm dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	150	2024-02-02 08:32:03	2024-02-02 08:32:03	6
27479	Tâche nouvellement créee du nom de Supprimer les avoirs  par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	127	2024-02-02 08:33:06	2024-02-02 08:33:06	5
27480	Tâche nouvellement créee du nom de Supprimer les avoirs  par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	135	2024-02-02 08:33:06	2024-02-02 08:33:06	5
27481	Tâche nouvellement créee du nom de Supprimer les avoirs  par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	138	2024-02-02 08:33:06	2024-02-02 08:33:06	5
27482	Tâche nouvellement créee du nom de Supprimer les avoirs  par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	132	2024-02-02 08:33:06	2024-02-02 08:33:06	5
27483	Tâche nouvellement créee du nom de Supprimer les avoirs  par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	131	2024-02-02 08:33:06	2024-02-02 08:33:06	5
27484	Tâche nouvellement créee du nom de Supprimer les avoirs  par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	145	2024-02-02 08:33:06	2024-02-02 08:33:06	5
27485	Tâche nouvellement créee du nom de Supprimer les avoirs  par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	129	2024-02-02 08:33:06	2024-02-02 08:33:06	5
27486	Tâche nouvellement créee du nom de Supprimer les avoirs  par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	150	2024-02-02 08:33:06	2024-02-02 08:33:06	5
27487	Tâche nouvellement créee du nom de Supprimer les avoirs  par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	167	2024-02-02 08:33:06	2024-02-02 08:33:06	5
27489	Fanilo a été assigné à la tâche Supprimer les avoirs  dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	127	2024-02-02 08:33:06	2024-02-02 08:33:06	6
27490	Fanilo a été assigné à la tâche Supprimer les avoirs  dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	132	2024-02-02 08:33:06	2024-02-02 08:33:06	6
27491	Fanilo a été assigné à la tâche Supprimer les avoirs  dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	150	2024-02-02 08:33:06	2024-02-02 08:33:06	6
27475	Fanilo a été assigné à la tâche Attribuer Accès Utilisateur qlm dans le projet QLM - Intervention et accompagnement par Fanilo	t	137	137	2024-02-02 05:32:03	2024-02-02 05:32:03	6
27488	Fanilo a été assigné à la tâche Supprimer les avoirs  dans le projet QLM - Intervention et accompagnement par Fanilo	t	137	137	2024-02-02 05:33:06	2024-02-02 05:33:06	6
27492	Tâche nouvellement créee du nom de Relance automatique à 2 niveau par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	127	2024-02-02 08:37:10	2024-02-02 08:37:10	5
27493	Tâche nouvellement créee du nom de Relance automatique à 2 niveau par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	135	2024-02-02 08:37:10	2024-02-02 08:37:10	5
27494	Tâche nouvellement créee du nom de Relance automatique à 2 niveau par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	138	2024-02-02 08:37:10	2024-02-02 08:37:10	5
27495	Tâche nouvellement créee du nom de Relance automatique à 2 niveau par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	132	2024-02-02 08:37:10	2024-02-02 08:37:10	5
27496	Tâche nouvellement créee du nom de Relance automatique à 2 niveau par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	131	2024-02-02 08:37:10	2024-02-02 08:37:10	5
27497	Tâche nouvellement créee du nom de Relance automatique à 2 niveau par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	145	2024-02-02 08:37:10	2024-02-02 08:37:10	5
27498	Tâche nouvellement créee du nom de Relance automatique à 2 niveau par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	129	2024-02-02 08:37:10	2024-02-02 08:37:10	5
27499	Tâche nouvellement créee du nom de Relance automatique à 2 niveau par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	150	2024-02-02 08:37:10	2024-02-02 08:37:10	5
27500	Tâche nouvellement créee du nom de Relance automatique à 2 niveau par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	167	2024-02-02 08:37:10	2024-02-02 08:37:10	5
27501	Fanilo a été assigné à la tâche Relance automatique à 2 niveau dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	137	2024-02-02 05:37:10	2024-02-02 05:37:10	6
27502	Fanilo a été assigné à la tâche Relance automatique à 2 niveau dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	127	2024-02-02 08:37:10	2024-02-02 08:37:10	6
27503	Fanilo a été assigné à la tâche Relance automatique à 2 niveau dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	132	2024-02-02 08:37:10	2024-02-02 08:37:10	6
27504	Fanilo a été assigné à la tâche Relance automatique à 2 niveau dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	150	2024-02-02 08:37:10	2024-02-02 08:37:10	6
27505	Tâche nouvellement créee du nom de PBDZDI : Le total ne correspond pas dans Odoo (à vérifier le TST) par Alain dans le projet Gestion PNR Issoufali.	f	129	127	2024-02-02 15:02:23	2024-02-02 15:02:23	5
27506	Tâche nouvellement créee du nom de PBDZDI : Le total ne correspond pas dans Odoo (à vérifier le TST) par Alain dans le projet Gestion PNR Issoufali.	f	129	135	2024-02-02 15:02:23	2024-02-02 15:02:23	5
27507	Tâche nouvellement créee du nom de PBDZDI : Le total ne correspond pas dans Odoo (à vérifier le TST) par Alain dans le projet Gestion PNR Issoufali.	f	129	138	2024-02-02 15:02:23	2024-02-02 15:02:23	5
27508	Tâche nouvellement créee du nom de PBDZDI : Le total ne correspond pas dans Odoo (à vérifier le TST) par Alain dans le projet Gestion PNR Issoufali.	f	129	132	2024-02-02 15:02:23	2024-02-02 15:02:23	5
27509	Tâche nouvellement créee du nom de PBDZDI : Le total ne correspond pas dans Odoo (à vérifier le TST) par Alain dans le projet Gestion PNR Issoufali.	f	129	131	2024-02-02 15:02:23	2024-02-02 15:02:23	5
27510	Tâche nouvellement créee du nom de PBDZDI : Le total ne correspond pas dans Odoo (à vérifier le TST) par Alain dans le projet Gestion PNR Issoufali.	f	129	145	2024-02-02 15:02:23	2024-02-02 15:02:23	5
27511	Tâche nouvellement créee du nom de PBDZDI : Le total ne correspond pas dans Odoo (à vérifier le TST) par Alain dans le projet Gestion PNR Issoufali.	f	129	150	2024-02-02 15:02:23	2024-02-02 15:02:23	5
27512	Tâche nouvellement créee du nom de PBDZDI : Le total ne correspond pas dans Odoo (à vérifier le TST) par Alain dans le projet Gestion PNR Issoufali.	f	129	167	2024-02-02 15:02:23	2024-02-02 15:02:23	5
27513	Maphie a été assigné à la tâche PBDZDI : Le total ne correspond pas dans Odoo (à vérifier le TST) dans le projet Gestion PNR Issoufali par Alain	f	129	162	2024-02-02 12:02:23	2024-02-02 12:02:23	6
27514	Maphie a été assigné à la tâche PBDZDI : Le total ne correspond pas dans Odoo (à vérifier le TST) dans le projet Gestion PNR Issoufali par Alain	f	129	127	2024-02-02 15:02:23	2024-02-02 15:02:23	6
27515	Maphie a été assigné à la tâche PBDZDI : Le total ne correspond pas dans Odoo (à vérifier le TST) dans le projet Gestion PNR Issoufali par Alain	f	129	132	2024-02-02 15:02:23	2024-02-02 15:02:23	6
27516	Maphie a été assigné à la tâche PBDZDI : Le total ne correspond pas dans Odoo (à vérifier le TST) dans le projet Gestion PNR Issoufali par Alain	f	129	150	2024-02-02 15:02:23	2024-02-02 15:02:23	6
27517	Tâche "Front modifier email pnr, notification, fee"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	127	2024-02-02 16:06:15	2024-02-02 16:06:15	1
27518	Tâche "Front modifier email pnr, notification, fee"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	135	2024-02-02 16:06:15	2024-02-02 16:06:15	1
27519	Tâche "Front modifier email pnr, notification, fee"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	138	2024-02-02 16:06:15	2024-02-02 16:06:15	1
27520	Tâche "Front modifier email pnr, notification, fee"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	132	2024-02-02 16:06:15	2024-02-02 16:06:15	1
27521	Tâche "Front modifier email pnr, notification, fee"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	131	2024-02-02 16:06:15	2024-02-02 16:06:15	1
27522	Tâche "Front modifier email pnr, notification, fee"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	145	2024-02-02 16:06:15	2024-02-02 16:06:15	1
27523	Tâche "Front modifier email pnr, notification, fee"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	150	2024-02-02 16:06:15	2024-02-02 16:06:15	1
27524	Tâche "Front modifier email pnr, notification, fee"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	167	2024-02-02 16:06:15	2024-02-02 16:06:15	1
27525	Tâche "Front Ajout et liste pour parsing emd"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	127	2024-02-02 16:06:27	2024-02-02 16:06:27	1
27526	Tâche "Front Ajout et liste pour parsing emd"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	135	2024-02-02 16:06:27	2024-02-02 16:06:27	1
27527	Tâche "Front Ajout et liste pour parsing emd"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	138	2024-02-02 16:06:27	2024-02-02 16:06:27	1
27528	Tâche "Front Ajout et liste pour parsing emd"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	132	2024-02-02 16:06:27	2024-02-02 16:06:27	1
27529	Tâche "Front Ajout et liste pour parsing emd"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	131	2024-02-02 16:06:27	2024-02-02 16:06:27	1
27530	Tâche "Front Ajout et liste pour parsing emd"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	145	2024-02-02 16:06:27	2024-02-02 16:06:27	1
27531	Tâche "Front Ajout et liste pour parsing emd"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	150	2024-02-02 16:06:27	2024-02-02 16:06:27	1
27532	Tâche "Front Ajout et liste pour parsing emd"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	167	2024-02-02 16:06:27	2024-02-02 16:06:27	1
27533	Tâche "Front Ajout compagnie information (configurations)"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	127	2024-02-02 16:06:34	2024-02-02 16:06:34	1
27534	Tâche "Front Ajout compagnie information (configurations)"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	135	2024-02-02 16:06:34	2024-02-02 16:06:34	1
27535	Tâche "Front Ajout compagnie information (configurations)"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	138	2024-02-02 16:06:34	2024-02-02 16:06:34	1
27536	Tâche "Front Ajout compagnie information (configurations)"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	132	2024-02-02 16:06:34	2024-02-02 16:06:34	1
27537	Tâche "Front Ajout compagnie information (configurations)"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	131	2024-02-02 16:06:34	2024-02-02 16:06:34	1
27538	Tâche "Front Ajout compagnie information (configurations)"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	145	2024-02-02 16:06:34	2024-02-02 16:06:34	1
27539	Tâche "Front Ajout compagnie information (configurations)"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	150	2024-02-02 16:06:34	2024-02-02 16:06:34	1
27540	Tâche "Front Ajout compagnie information (configurations)"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	167	2024-02-02 16:06:34	2024-02-02 16:06:34	1
27541	Tâche "Front Ajout Email PNR"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	127	2024-02-02 16:06:44	2024-02-02 16:06:44	1
27542	Tâche "Front Ajout Email PNR"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	135	2024-02-02 16:06:44	2024-02-02 16:06:44	1
27543	Tâche "Front Ajout Email PNR"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	138	2024-02-02 16:06:44	2024-02-02 16:06:44	1
27544	Tâche "Front Ajout Email PNR"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	132	2024-02-02 16:06:44	2024-02-02 16:06:44	1
27545	Tâche "Front Ajout Email PNR"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	131	2024-02-02 16:06:44	2024-02-02 16:06:44	1
27546	Tâche "Front Ajout Email PNR"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	145	2024-02-02 16:06:44	2024-02-02 16:06:44	1
27547	Tâche "Front Ajout Email PNR"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	150	2024-02-02 16:06:44	2024-02-02 16:06:44	1
27548	Tâche "Front Ajout Email PNR"\n          du projet Gestion PNR Issoufali mise dans " En contrôle " par Alain	f	129	167	2024-02-02 16:06:44	2024-02-02 16:06:44	1
27549	Tâche nouvellement créee du nom de Déplacement automaitique des anciens mails et CRON du redémarrage automatique du serveur Django par Alain dans le projet Gestion PNR Issoufali.	f	129	127	2024-02-02 16:10:37	2024-02-02 16:10:37	5
27550	Tâche nouvellement créee du nom de Déplacement automaitique des anciens mails et CRON du redémarrage automatique du serveur Django par Alain dans le projet Gestion PNR Issoufali.	f	129	135	2024-02-02 16:10:37	2024-02-02 16:10:37	5
27551	Tâche nouvellement créee du nom de Déplacement automaitique des anciens mails et CRON du redémarrage automatique du serveur Django par Alain dans le projet Gestion PNR Issoufali.	f	129	138	2024-02-02 16:10:37	2024-02-02 16:10:37	5
27552	Tâche nouvellement créee du nom de Déplacement automaitique des anciens mails et CRON du redémarrage automatique du serveur Django par Alain dans le projet Gestion PNR Issoufali.	f	129	132	2024-02-02 16:10:37	2024-02-02 16:10:37	5
27553	Tâche nouvellement créee du nom de Déplacement automaitique des anciens mails et CRON du redémarrage automatique du serveur Django par Alain dans le projet Gestion PNR Issoufali.	f	129	131	2024-02-02 16:10:37	2024-02-02 16:10:37	5
27554	Tâche nouvellement créee du nom de Déplacement automaitique des anciens mails et CRON du redémarrage automatique du serveur Django par Alain dans le projet Gestion PNR Issoufali.	f	129	145	2024-02-02 16:10:37	2024-02-02 16:10:37	5
27555	Tâche nouvellement créee du nom de Déplacement automaitique des anciens mails et CRON du redémarrage automatique du serveur Django par Alain dans le projet Gestion PNR Issoufali.	f	129	150	2024-02-02 16:10:37	2024-02-02 16:10:37	5
27556	Tâche nouvellement créee du nom de Déplacement automaitique des anciens mails et CRON du redémarrage automatique du serveur Django par Alain dans le projet Gestion PNR Issoufali.	f	129	167	2024-02-02 16:10:37	2024-02-02 16:10:37	5
27557	Maphie a été assigné à la tâche Déplacement automaitique des anciens mails et CRON du redémarrage automatique du serveur Django dans le projet Gestion PNR Issoufali par Alain	f	129	162	2024-02-02 13:10:37	2024-02-02 13:10:37	6
27558	Maphie a été assigné à la tâche Déplacement automaitique des anciens mails et CRON du redémarrage automatique du serveur Django dans le projet Gestion PNR Issoufali par Alain	f	129	127	2024-02-02 16:10:37	2024-02-02 16:10:37	6
27559	Maphie a été assigné à la tâche Déplacement automaitique des anciens mails et CRON du redémarrage automatique du serveur Django dans le projet Gestion PNR Issoufali par Alain	f	129	132	2024-02-02 16:10:37	2024-02-02 16:10:37	6
27560	Maphie a été assigné à la tâche Déplacement automaitique des anciens mails et CRON du redémarrage automatique du serveur Django dans le projet Gestion PNR Issoufali par Alain	f	129	150	2024-02-02 16:10:37	2024-02-02 16:10:37	6
27861	Tâche a supprimé par Koloina.	f	147	127	2024-02-12 17:04:31	2024-02-12 17:04:31	3
27862	Tâche a supprimé par Koloina.	f	147	135	2024-02-12 17:04:31	2024-02-12 17:04:31	3
27863	Tâche a supprimé par Koloina.	f	147	138	2024-02-12 17:04:31	2024-02-12 17:04:31	3
27730	Tâche nouvellement créee du nom de Test par Antonio dans le projet Modification du site web .	f	128	127	2024-02-08 11:00:47	2024-02-08 11:00:47	5
27731	Tâche nouvellement créee du nom de Test par Antonio dans le projet Modification du site web .	f	128	135	2024-02-08 11:00:47	2024-02-08 11:00:47	5
27732	Tâche nouvellement créee du nom de Test par Antonio dans le projet Modification du site web .	f	128	138	2024-02-08 11:00:47	2024-02-08 11:00:47	5
27733	Tâche nouvellement créee du nom de Test par Antonio dans le projet Modification du site web .	f	128	132	2024-02-08 11:00:47	2024-02-08 11:00:47	5
27734	Tâche nouvellement créee du nom de Test par Antonio dans le projet Modification du site web .	f	128	131	2024-02-08 11:00:47	2024-02-08 11:00:47	5
27735	Tâche nouvellement créee du nom de Test par Antonio dans le projet Modification du site web .	f	128	145	2024-02-08 11:00:47	2024-02-08 11:00:47	5
27736	Tâche nouvellement créee du nom de Test par Antonio dans le projet Modification du site web .	f	128	129	2024-02-08 11:00:47	2024-02-08 11:00:47	5
27737	Tâche nouvellement créee du nom de Test par Antonio dans le projet Modification du site web .	f	128	150	2024-02-08 11:00:47	2024-02-08 11:00:47	5
27738	Tâche nouvellement créee du nom de Test par Antonio dans le projet Modification du site web .	f	128	167	2024-02-08 11:00:47	2024-02-08 11:00:47	5
27739	Antonio a été assigné à la tâche Test dans le projet Modification du site web  par Antonio	f	128	128	2024-02-08 08:00:47	2024-02-08 08:00:47	6
27740	Antonio a été assigné à la tâche Test dans le projet Modification du site web  par Antonio	f	128	127	2024-02-08 11:00:47	2024-02-08 11:00:47	6
27741	Antonio a été assigné à la tâche Test dans le projet Modification du site web  par Antonio	f	128	132	2024-02-08 11:00:47	2024-02-08 11:00:47	6
27742	Antonio a été assigné à la tâche Test dans le projet Modification du site web  par Antonio	f	128	150	2024-02-08 11:00:47	2024-02-08 11:00:47	6
27743	Tâche "Annuler la modification dans gestion PNR le 22 janvier"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	127	2024-02-09 09:31:58	2024-02-09 09:31:58	1
27744	Tâche "Annuler la modification dans gestion PNR le 22 janvier"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	135	2024-02-09 09:31:58	2024-02-09 09:31:58	1
27745	Tâche "Annuler la modification dans gestion PNR le 22 janvier"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	138	2024-02-09 09:31:58	2024-02-09 09:31:58	1
27746	Tâche "Annuler la modification dans gestion PNR le 22 janvier"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	132	2024-02-09 09:31:58	2024-02-09 09:31:58	1
27747	Tâche "Annuler la modification dans gestion PNR le 22 janvier"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	131	2024-02-09 09:31:58	2024-02-09 09:31:58	1
27748	Tâche "Annuler la modification dans gestion PNR le 22 janvier"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	145	2024-02-09 09:31:58	2024-02-09 09:31:58	1
27749	Tâche "Annuler la modification dans gestion PNR le 22 janvier"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	150	2024-02-09 09:31:58	2024-02-09 09:31:58	1
27750	Tâche "Annuler la modification dans gestion PNR le 22 janvier"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	167	2024-02-09 09:31:58	2024-02-09 09:31:58	1
27751	Tâche nouvellement créee du nom de Gestion des utilisateur (archiver, supprimer, changer mot de passe) etc par Alain dans le projet Gestion PNR Issoufali.	f	129	127	2024-02-09 15:29:47	2024-02-09 15:29:47	5
27752	Tâche nouvellement créee du nom de Gestion des utilisateur (archiver, supprimer, changer mot de passe) etc par Alain dans le projet Gestion PNR Issoufali.	f	129	135	2024-02-09 15:29:47	2024-02-09 15:29:47	5
27753	Tâche nouvellement créee du nom de Gestion des utilisateur (archiver, supprimer, changer mot de passe) etc par Alain dans le projet Gestion PNR Issoufali.	f	129	138	2024-02-09 15:29:47	2024-02-09 15:29:47	5
27754	Tâche nouvellement créee du nom de Gestion des utilisateur (archiver, supprimer, changer mot de passe) etc par Alain dans le projet Gestion PNR Issoufali.	f	129	132	2024-02-09 15:29:47	2024-02-09 15:29:47	5
27755	Tâche nouvellement créee du nom de Gestion des utilisateur (archiver, supprimer, changer mot de passe) etc par Alain dans le projet Gestion PNR Issoufali.	f	129	131	2024-02-09 15:29:47	2024-02-09 15:29:47	5
27756	Tâche nouvellement créee du nom de Gestion des utilisateur (archiver, supprimer, changer mot de passe) etc par Alain dans le projet Gestion PNR Issoufali.	f	129	145	2024-02-09 15:29:47	2024-02-09 15:29:47	5
27864	Tâche a supprimé par Koloina.	f	147	132	2024-02-12 17:04:31	2024-02-12 17:04:31	3
27757	Tâche nouvellement créee du nom de Gestion des utilisateur (archiver, supprimer, changer mot de passe) etc par Alain dans le projet Gestion PNR Issoufali.	f	129	150	2024-02-09 15:29:47	2024-02-09 15:29:47	5
27758	Tâche nouvellement créee du nom de Gestion des utilisateur (archiver, supprimer, changer mot de passe) etc par Alain dans le projet Gestion PNR Issoufali.	f	129	167	2024-02-09 15:29:47	2024-02-09 15:29:47	5
27759	Maphie a été assigné à la tâche Gestion des utilisateur (archiver, supprimer, changer mot de passe) etc dans le projet Gestion PNR Issoufali par Alain	f	129	162	2024-02-09 12:29:47	2024-02-09 12:29:47	6
27760	Maphie a été assigné à la tâche Gestion des utilisateur (archiver, supprimer, changer mot de passe) etc dans le projet Gestion PNR Issoufali par Alain	f	129	127	2024-02-09 15:29:47	2024-02-09 15:29:47	6
27761	Maphie a été assigné à la tâche Gestion des utilisateur (archiver, supprimer, changer mot de passe) etc dans le projet Gestion PNR Issoufali par Alain	f	129	132	2024-02-09 15:29:47	2024-02-09 15:29:47	6
27762	Maphie a été assigné à la tâche Gestion des utilisateur (archiver, supprimer, changer mot de passe) etc dans le projet Gestion PNR Issoufali par Alain	f	129	150	2024-02-09 15:29:47	2024-02-09 15:29:47	6
27763	Tâche nouvellement créee du nom de Réponse automatique d'anomalie à étudier par Alain dans le projet Gestion PNR Issoufali.	f	129	127	2024-02-09 15:31:12	2024-02-09 15:31:12	5
27764	Tâche nouvellement créee du nom de Réponse automatique d'anomalie à étudier par Alain dans le projet Gestion PNR Issoufali.	f	129	135	2024-02-09 15:31:12	2024-02-09 15:31:12	5
27765	Tâche nouvellement créee du nom de Réponse automatique d'anomalie à étudier par Alain dans le projet Gestion PNR Issoufali.	f	129	138	2024-02-09 15:31:12	2024-02-09 15:31:12	5
27766	Tâche nouvellement créee du nom de Réponse automatique d'anomalie à étudier par Alain dans le projet Gestion PNR Issoufali.	f	129	132	2024-02-09 15:31:12	2024-02-09 15:31:12	5
27767	Tâche nouvellement créee du nom de Réponse automatique d'anomalie à étudier par Alain dans le projet Gestion PNR Issoufali.	f	129	131	2024-02-09 15:31:12	2024-02-09 15:31:12	5
27768	Tâche nouvellement créee du nom de Réponse automatique d'anomalie à étudier par Alain dans le projet Gestion PNR Issoufali.	f	129	145	2024-02-09 15:31:12	2024-02-09 15:31:12	5
27769	Tâche nouvellement créee du nom de Réponse automatique d'anomalie à étudier par Alain dans le projet Gestion PNR Issoufali.	f	129	150	2024-02-09 15:31:12	2024-02-09 15:31:12	5
27770	Tâche nouvellement créee du nom de Réponse automatique d'anomalie à étudier par Alain dans le projet Gestion PNR Issoufali.	f	129	167	2024-02-09 15:31:12	2024-02-09 15:31:12	5
27771	Maphie a été assigné à la tâche Réponse automatique d'anomalie à étudier dans le projet Gestion PNR Issoufali par Alain	f	129	162	2024-02-09 12:31:12	2024-02-09 12:31:12	6
27772	Maphie a été assigné à la tâche Réponse automatique d'anomalie à étudier dans le projet Gestion PNR Issoufali par Alain	f	129	127	2024-02-09 15:31:12	2024-02-09 15:31:12	6
27773	Maphie a été assigné à la tâche Réponse automatique d'anomalie à étudier dans le projet Gestion PNR Issoufali par Alain	f	129	132	2024-02-09 15:31:12	2024-02-09 15:31:12	6
27774	Maphie a été assigné à la tâche Réponse automatique d'anomalie à étudier dans le projet Gestion PNR Issoufali par Alain	f	129	150	2024-02-09 15:31:12	2024-02-09 15:31:12	6
27775	Tâche "Documentation sur gestion PNR"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	127	2024-02-12 09:50:09	2024-02-12 09:50:09	1
27776	Tâche "Documentation sur gestion PNR"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	135	2024-02-12 09:50:09	2024-02-12 09:50:09	1
27777	Tâche "Documentation sur gestion PNR"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	138	2024-02-12 09:50:09	2024-02-12 09:50:09	1
27778	Tâche "Documentation sur gestion PNR"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	132	2024-02-12 09:50:09	2024-02-12 09:50:09	1
27779	Tâche "Documentation sur gestion PNR"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	131	2024-02-12 09:50:09	2024-02-12 09:50:09	1
27780	Tâche "Documentation sur gestion PNR"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	145	2024-02-12 09:50:09	2024-02-12 09:50:09	1
27781	Tâche "Documentation sur gestion PNR"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	150	2024-02-12 09:50:09	2024-02-12 09:50:09	1
27782	Tâche "Documentation sur gestion PNR"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	167	2024-02-12 09:50:09	2024-02-12 09:50:09	1
27783	Tâche nouvellement créee du nom de Correction tableau "Analyses prix de vente" sur qlm par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	127	2024-02-12 15:38:51	2024-02-12 15:38:51	5
27784	Tâche nouvellement créee du nom de Correction tableau "Analyses prix de vente" sur qlm par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	135	2024-02-12 15:38:51	2024-02-12 15:38:51	5
27785	Tâche nouvellement créee du nom de Correction tableau "Analyses prix de vente" sur qlm par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	138	2024-02-12 15:38:51	2024-02-12 15:38:51	5
27786	Tâche nouvellement créee du nom de Correction tableau "Analyses prix de vente" sur qlm par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	132	2024-02-12 15:38:51	2024-02-12 15:38:51	5
27787	Tâche nouvellement créee du nom de Correction tableau "Analyses prix de vente" sur qlm par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	131	2024-02-12 15:38:51	2024-02-12 15:38:51	5
27788	Tâche nouvellement créee du nom de Correction tableau "Analyses prix de vente" sur qlm par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	145	2024-02-12 15:38:51	2024-02-12 15:38:51	5
27789	Tâche nouvellement créee du nom de Correction tableau "Analyses prix de vente" sur qlm par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	129	2024-02-12 15:38:51	2024-02-12 15:38:51	5
27790	Tâche nouvellement créee du nom de Correction tableau "Analyses prix de vente" sur qlm par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	150	2024-02-12 15:38:51	2024-02-12 15:38:51	5
27791	Tâche nouvellement créee du nom de Correction tableau "Analyses prix de vente" sur qlm par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	167	2024-02-12 15:38:51	2024-02-12 15:38:51	5
27792	Fanilo a été assigné à la tâche Correction tableau "Analyses prix de vente" sur qlm dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	137	2024-02-12 12:38:51	2024-02-12 12:38:51	6
27793	Fanilo a été assigné à la tâche Correction tableau "Analyses prix de vente" sur qlm dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	127	2024-02-12 15:38:51	2024-02-12 15:38:51	6
27794	Fanilo a été assigné à la tâche Correction tableau "Analyses prix de vente" sur qlm dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	132	2024-02-12 15:38:51	2024-02-12 15:38:51	6
27795	Fanilo a été assigné à la tâche Correction tableau "Analyses prix de vente" sur qlm dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	150	2024-02-12 15:38:51	2024-02-12 15:38:51	6
27805	Fanilo a été assigné à la tâche Analyse de la paramètrage des séquences au niveau du module fabrication sur odoo dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	137	2024-02-12 12:41:02	2024-02-12 12:41:02	6
27886	Tâche "Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	127	2024-02-13 09:21:36	2024-02-13 09:21:36	1
27887	Tâche "Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	135	2024-02-13 09:21:36	2024-02-13 09:21:36	1
27888	Tâche "Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	138	2024-02-13 09:21:36	2024-02-13 09:21:36	1
27889	Tâche "Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	132	2024-02-13 09:21:36	2024-02-13 09:21:36	1
27890	Tâche "Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	131	2024-02-13 09:21:36	2024-02-13 09:21:36	1
27891	Tâche "Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	145	2024-02-13 09:21:36	2024-02-13 09:21:36	1
27892	Tâche "Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	150	2024-02-13 09:21:36	2024-02-13 09:21:36	1
27893	Tâche "Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement"\n          du projet Gestion PNR Issoufali mise dans " En cours " par Alain	f	129	167	2024-02-13 09:21:36	2024-02-13 09:21:36	1
27938	Fanilo a été assigné à la tâche Import N° de lot fournisseur sur Odoo dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	137	2024-02-14 06:39:13	2024-02-14 06:39:13	6
27968	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	127	2024-02-14 09:41:50	2024-02-14 09:41:50	3
27969	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	135	2024-02-14 09:41:50	2024-02-14 09:41:50	3
27970	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	138	2024-02-14 09:41:50	2024-02-14 09:41:50	3
27971	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	132	2024-02-14 09:41:50	2024-02-14 09:41:50	3
27972	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	131	2024-02-14 09:41:50	2024-02-14 09:41:50	3
27973	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	145	2024-02-14 09:41:50	2024-02-14 09:41:50	3
27974	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	129	2024-02-14 09:41:50	2024-02-14 09:41:50	3
27975	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	150	2024-02-14 09:41:50	2024-02-14 09:41:50	3
27976	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	167	2024-02-14 09:41:50	2024-02-14 09:41:50	3
27986	Miandrisoa a été assigné à la tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	146	2024-02-14 06:44:54	2024-02-14 06:44:54	6
28062	Hassan a été assigné à la tâche Modification et  Ajout de fonctionnalité sur le tableau Surstockage dans le projet MOLLAN par Hassan	f	142	127	2024-02-14 09:57:20	2024-02-14 09:57:20	6
28063	Hassan a été assigné à la tâche Modification et  Ajout de fonctionnalité sur le tableau Surstockage dans le projet MOLLAN par Hassan	f	142	132	2024-02-14 09:57:20	2024-02-14 09:57:20	6
28064	Hassan a été assigné à la tâche Modification et  Ajout de fonctionnalité sur le tableau Surstockage dans le projet MOLLAN par Hassan	f	142	150	2024-02-14 09:57:20	2024-02-14 09:57:20	6
27796	Tâche nouvellement créee du nom de Analyse de la paramètrage des séquences au niveau du module fabrication sur odoo par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	127	2024-02-12 15:41:02	2024-02-12 15:41:02	5
27797	Tâche nouvellement créee du nom de Analyse de la paramètrage des séquences au niveau du module fabrication sur odoo par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	135	2024-02-12 15:41:02	2024-02-12 15:41:02	5
27798	Tâche nouvellement créee du nom de Analyse de la paramètrage des séquences au niveau du module fabrication sur odoo par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	138	2024-02-12 15:41:02	2024-02-12 15:41:02	5
27799	Tâche nouvellement créee du nom de Analyse de la paramètrage des séquences au niveau du module fabrication sur odoo par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	132	2024-02-12 15:41:02	2024-02-12 15:41:02	5
27800	Tâche nouvellement créee du nom de Analyse de la paramètrage des séquences au niveau du module fabrication sur odoo par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	131	2024-02-12 15:41:02	2024-02-12 15:41:02	5
27801	Tâche nouvellement créee du nom de Analyse de la paramètrage des séquences au niveau du module fabrication sur odoo par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	145	2024-02-12 15:41:02	2024-02-12 15:41:02	5
27802	Tâche nouvellement créee du nom de Analyse de la paramètrage des séquences au niveau du module fabrication sur odoo par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	129	2024-02-12 15:41:02	2024-02-12 15:41:02	5
27803	Tâche nouvellement créee du nom de Analyse de la paramètrage des séquences au niveau du module fabrication sur odoo par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	150	2024-02-12 15:41:02	2024-02-12 15:41:02	5
27804	Tâche nouvellement créee du nom de Analyse de la paramètrage des séquences au niveau du module fabrication sur odoo par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	167	2024-02-12 15:41:02	2024-02-12 15:41:02	5
27809	Tâche nouvellement créee du nom de Analyse Migration odoo v15-V16 par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	127	2024-02-12 16:15:03	2024-02-12 16:15:03	5
27810	Tâche nouvellement créee du nom de Analyse Migration odoo v15-V16 par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	135	2024-02-12 16:15:03	2024-02-12 16:15:03	5
27811	Tâche nouvellement créee du nom de Analyse Migration odoo v15-V16 par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	138	2024-02-12 16:15:03	2024-02-12 16:15:03	5
27812	Tâche nouvellement créee du nom de Analyse Migration odoo v15-V16 par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	132	2024-02-12 16:15:03	2024-02-12 16:15:03	5
27813	Tâche nouvellement créee du nom de Analyse Migration odoo v15-V16 par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	131	2024-02-12 16:15:03	2024-02-12 16:15:03	5
27814	Tâche nouvellement créee du nom de Analyse Migration odoo v15-V16 par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	145	2024-02-12 16:15:03	2024-02-12 16:15:03	5
27815	Tâche nouvellement créee du nom de Analyse Migration odoo v15-V16 par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	129	2024-02-12 16:15:03	2024-02-12 16:15:03	5
27816	Tâche nouvellement créee du nom de Analyse Migration odoo v15-V16 par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	150	2024-02-12 16:15:03	2024-02-12 16:15:03	5
27817	Tâche nouvellement créee du nom de Analyse Migration odoo v15-V16 par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	167	2024-02-12 16:15:03	2024-02-12 16:15:03	5
27870	Tâche Gestion des utilisateurs de gestion PNR supprimé par Alain.	f	129	127	2024-02-13 09:21:05	2024-02-13 09:21:05	3
27871	Tâche Gestion des utilisateurs de gestion PNR supprimé par Alain.	f	129	135	2024-02-13 09:21:05	2024-02-13 09:21:05	3
27872	Tâche Gestion des utilisateurs de gestion PNR supprimé par Alain.	f	129	138	2024-02-13 09:21:05	2024-02-13 09:21:05	3
27873	Tâche Gestion des utilisateurs de gestion PNR supprimé par Alain.	f	129	132	2024-02-13 09:21:05	2024-02-13 09:21:05	3
27874	Tâche Gestion des utilisateurs de gestion PNR supprimé par Alain.	f	129	131	2024-02-13 09:21:05	2024-02-13 09:21:05	3
27875	Tâche Gestion des utilisateurs de gestion PNR supprimé par Alain.	f	129	145	2024-02-13 09:21:05	2024-02-13 09:21:05	3
27876	Tâche Gestion des utilisateurs de gestion PNR supprimé par Alain.	f	129	150	2024-02-13 09:21:05	2024-02-13 09:21:05	3
27877	Tâche Gestion des utilisateurs de gestion PNR supprimé par Alain.	f	129	167	2024-02-13 09:21:05	2024-02-13 09:21:05	3
27907	Tâche nouvellement créee du nom de Rédaction procédure Gestion des emails sur Outlook. par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	127	2024-02-14 09:33:58	2024-02-14 09:33:58	5
27908	Tâche nouvellement créee du nom de Rédaction procédure Gestion des emails sur Outlook. par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	135	2024-02-14 09:33:58	2024-02-14 09:33:58	5
27909	Tâche nouvellement créee du nom de Rédaction procédure Gestion des emails sur Outlook. par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	138	2024-02-14 09:33:58	2024-02-14 09:33:58	5
27910	Tâche nouvellement créee du nom de Rédaction procédure Gestion des emails sur Outlook. par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	132	2024-02-14 09:33:58	2024-02-14 09:33:58	5
27911	Tâche nouvellement créee du nom de Rédaction procédure Gestion des emails sur Outlook. par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	131	2024-02-14 09:33:58	2024-02-14 09:33:58	5
27912	Tâche nouvellement créee du nom de Rédaction procédure Gestion des emails sur Outlook. par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	145	2024-02-14 09:33:58	2024-02-14 09:33:58	5
27913	Tâche nouvellement créee du nom de Rédaction procédure Gestion des emails sur Outlook. par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	129	2024-02-14 09:33:58	2024-02-14 09:33:58	5
27914	Tâche nouvellement créee du nom de Rédaction procédure Gestion des emails sur Outlook. par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	150	2024-02-14 09:33:58	2024-02-14 09:33:58	5
27915	Tâche nouvellement créee du nom de Rédaction procédure Gestion des emails sur Outlook. par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	167	2024-02-14 09:33:58	2024-02-14 09:33:58	5
27951	Fanilo a été assigné à la tâche Paramétrage des emails automatiques envoyés à la validation des Bon de livraisons dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	137	2024-02-14 06:40:34	2024-02-14 06:40:34	6
28030	Tâche nouvellement créee du nom de MOLLAN - Import Bon de commande par Koloina dans le projet MOLLAN.	f	147	127	2024-02-14 09:52:17	2024-02-14 09:52:17	5
27806	Fanilo a été assigné à la tâche Analyse de la paramètrage des séquences au niveau du module fabrication sur odoo dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	127	2024-02-12 15:41:02	2024-02-12 15:41:02	6
27807	Fanilo a été assigné à la tâche Analyse de la paramètrage des séquences au niveau du module fabrication sur odoo dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	132	2024-02-12 15:41:02	2024-02-12 15:41:02	6
27808	Fanilo a été assigné à la tâche Analyse de la paramètrage des séquences au niveau du module fabrication sur odoo dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	150	2024-02-12 15:41:02	2024-02-12 15:41:02	6
27844	Miandrisoa a été assigné à la tâche désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	146	2024-02-12 13:59:57	2024-02-12 13:59:57	6
27857	Miandrisoa a été assigné à la tâche Création des raccourcis et un nouveau utilisateur dans EPB Compta, Gestion Commerciale, Paie dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	146	2024-02-12 14:02:30	2024-02-12 14:02:30	6
27858	Miandrisoa a été assigné à la tâche Création des raccourcis et un nouveau utilisateur dans EPB Compta, Gestion Commerciale, Paie dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	127	2024-02-12 17:02:30	2024-02-12 17:02:30	6
27859	Miandrisoa a été assigné à la tâche Création des raccourcis et un nouveau utilisateur dans EPB Compta, Gestion Commerciale, Paie dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	132	2024-02-12 17:02:30	2024-02-12 17:02:30	6
27860	Miandrisoa a été assigné à la tâche Création des raccourcis et un nouveau utilisateur dans EPB Compta, Gestion Commerciale, Paie dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	150	2024-02-12 17:02:30	2024-02-12 17:02:30	6
27903	Miandrisoa a été assigné à la tâche Création un nouveau raccourci pour EBP Gescom, Compta, Immo, Paie pour un nouveau utilisateur dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	146	2024-02-14 06:13:28	2024-02-14 06:13:28	6
27904	Miandrisoa a été assigné à la tâche Création un nouveau raccourci pour EBP Gescom, Compta, Immo, Paie pour un nouveau utilisateur dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	127	2024-02-14 09:13:28	2024-02-14 09:13:28	6
27905	Miandrisoa a été assigné à la tâche Création un nouveau raccourci pour EBP Gescom, Compta, Immo, Paie pour un nouveau utilisateur dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	132	2024-02-14 09:13:28	2024-02-14 09:13:28	6
27906	Miandrisoa a été assigné à la tâche Création un nouveau raccourci pour EBP Gescom, Compta, Immo, Paie pour un nouveau utilisateur dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	150	2024-02-14 09:13:28	2024-02-14 09:13:28	6
27952	Fanilo a été assigné à la tâche Paramétrage des emails automatiques envoyés à la validation des Bon de livraisons dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	127	2024-02-14 09:40:34	2024-02-14 09:40:34	6
27953	Fanilo a été assigné à la tâche Paramétrage des emails automatiques envoyés à la validation des Bon de livraisons dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	132	2024-02-14 09:40:34	2024-02-14 09:40:34	6
27954	Fanilo a été assigné à la tâche Paramétrage des emails automatiques envoyés à la validation des Bon de livraisons dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	150	2024-02-14 09:40:34	2024-02-14 09:40:34	6
27818	Fanilo a été assigné à la tâche Analyse Migration odoo v15-V16 dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	137	2024-02-12 13:15:03	2024-02-12 13:15:03	6
27917	Fanilo a été assigné à la tâche Rédaction procédure Gestion des emails sur Outlook. dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	127	2024-02-14 09:33:58	2024-02-14 09:33:58	6
27918	Fanilo a été assigné à la tâche Rédaction procédure Gestion des emails sur Outlook. dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	132	2024-02-14 09:33:58	2024-02-14 09:33:58	6
27919	Fanilo a été assigné à la tâche Rédaction procédure Gestion des emails sur Outlook. dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	150	2024-02-14 09:33:58	2024-02-14 09:33:58	6
27819	Fanilo a été assigné à la tâche Analyse Migration odoo v15-V16 dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	127	2024-02-12 16:15:03	2024-02-12 16:15:03	6
27820	Fanilo a été assigné à la tâche Analyse Migration odoo v15-V16 dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	132	2024-02-12 16:15:03	2024-02-12 16:15:03	6
27821	Fanilo a été assigné à la tâche Analyse Migration odoo v15-V16 dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	150	2024-02-12 16:15:03	2024-02-12 16:15:03	6
27822	Tâche nouvellement créee du nom de désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	127	2024-02-12 16:59:20	2024-02-12 16:59:20	5
27823	Tâche nouvellement créee du nom de désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	135	2024-02-12 16:59:20	2024-02-12 16:59:20	5
27824	Tâche nouvellement créee du nom de désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	138	2024-02-12 16:59:20	2024-02-12 16:59:20	5
27825	Tâche nouvellement créee du nom de désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	132	2024-02-12 16:59:20	2024-02-12 16:59:20	5
27826	Tâche nouvellement créee du nom de désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	131	2024-02-12 16:59:20	2024-02-12 16:59:20	5
27827	Tâche nouvellement créee du nom de désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	145	2024-02-12 16:59:20	2024-02-12 16:59:20	5
27828	Tâche nouvellement créee du nom de désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	129	2024-02-12 16:59:20	2024-02-12 16:59:20	5
27829	Tâche nouvellement créee du nom de désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	150	2024-02-12 16:59:20	2024-02-12 16:59:20	5
27830	Tâche nouvellement créee du nom de désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	167	2024-02-12 16:59:20	2024-02-12 16:59:20	5
27831	Miandrisoa a été assigné à la tâche désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	146	2024-02-12 13:59:20	2024-02-12 13:59:20	6
27835	Tâche nouvellement créee du nom de désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	127	2024-02-12 16:59:57	2024-02-12 16:59:57	5
27836	Tâche nouvellement créee du nom de désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	135	2024-02-12 16:59:57	2024-02-12 16:59:57	5
27837	Tâche nouvellement créee du nom de désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	138	2024-02-12 16:59:57	2024-02-12 16:59:57	5
27838	Tâche nouvellement créee du nom de désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	132	2024-02-12 16:59:57	2024-02-12 16:59:57	5
27839	Tâche nouvellement créee du nom de désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	131	2024-02-12 16:59:57	2024-02-12 16:59:57	5
27840	Tâche nouvellement créee du nom de désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	145	2024-02-12 16:59:57	2024-02-12 16:59:57	5
27841	Tâche nouvellement créee du nom de désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	129	2024-02-12 16:59:57	2024-02-12 16:59:57	5
27842	Tâche nouvellement créee du nom de désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	150	2024-02-12 16:59:57	2024-02-12 16:59:57	5
27843	Tâche nouvellement créee du nom de désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	167	2024-02-12 16:59:57	2024-02-12 16:59:57	5
27878	Tâche "Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	127	2024-02-13 09:21:30	2024-02-13 09:21:30	1
27879	Tâche "Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	135	2024-02-13 09:21:30	2024-02-13 09:21:30	1
27880	Tâche "Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	138	2024-02-13 09:21:30	2024-02-13 09:21:30	1
27881	Tâche "Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	132	2024-02-13 09:21:30	2024-02-13 09:21:30	1
27832	Miandrisoa a été assigné à la tâche désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	127	2024-02-12 16:59:20	2024-02-12 16:59:20	6
27833	Miandrisoa a été assigné à la tâche désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	132	2024-02-12 16:59:20	2024-02-12 16:59:20	6
27834	Miandrisoa a été assigné à la tâche désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	150	2024-02-12 16:59:20	2024-02-12 16:59:20	6
27848	Tâche nouvellement créee du nom de Création des raccourcis et un nouveau utilisateur dans EPB Compta, Gestion Commerciale, Paie par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	127	2024-02-12 17:02:30	2024-02-12 17:02:30	5
27849	Tâche nouvellement créee du nom de Création des raccourcis et un nouveau utilisateur dans EPB Compta, Gestion Commerciale, Paie par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	135	2024-02-12 17:02:30	2024-02-12 17:02:30	5
27850	Tâche nouvellement créee du nom de Création des raccourcis et un nouveau utilisateur dans EPB Compta, Gestion Commerciale, Paie par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	138	2024-02-12 17:02:30	2024-02-12 17:02:30	5
27851	Tâche nouvellement créee du nom de Création des raccourcis et un nouveau utilisateur dans EPB Compta, Gestion Commerciale, Paie par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	132	2024-02-12 17:02:30	2024-02-12 17:02:30	5
27852	Tâche nouvellement créee du nom de Création des raccourcis et un nouveau utilisateur dans EPB Compta, Gestion Commerciale, Paie par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	131	2024-02-12 17:02:30	2024-02-12 17:02:30	5
27853	Tâche nouvellement créee du nom de Création des raccourcis et un nouveau utilisateur dans EPB Compta, Gestion Commerciale, Paie par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	145	2024-02-12 17:02:30	2024-02-12 17:02:30	5
27854	Tâche nouvellement créee du nom de Création des raccourcis et un nouveau utilisateur dans EPB Compta, Gestion Commerciale, Paie par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	129	2024-02-12 17:02:30	2024-02-12 17:02:30	5
27855	Tâche nouvellement créee du nom de Création des raccourcis et un nouveau utilisateur dans EPB Compta, Gestion Commerciale, Paie par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	150	2024-02-12 17:02:30	2024-02-12 17:02:30	5
27856	Tâche nouvellement créee du nom de Création des raccourcis et un nouveau utilisateur dans EPB Compta, Gestion Commerciale, Paie par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	167	2024-02-12 17:02:30	2024-02-12 17:02:30	5
27939	Fanilo a été assigné à la tâche Import N° de lot fournisseur sur Odoo dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	127	2024-02-14 09:39:13	2024-02-14 09:39:13	6
27940	Fanilo a été assigné à la tâche Import N° de lot fournisseur sur Odoo dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	132	2024-02-14 09:39:13	2024-02-14 09:39:13	6
27941	Fanilo a été assigné à la tâche Import N° de lot fournisseur sur Odoo dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	150	2024-02-14 09:39:13	2024-02-14 09:39:13	6
27942	Tâche nouvellement créee du nom de Paramétrage des emails automatiques envoyés à la validation des Bon de livraisons par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	127	2024-02-14 09:40:34	2024-02-14 09:40:34	5
27943	Tâche nouvellement créee du nom de Paramétrage des emails automatiques envoyés à la validation des Bon de livraisons par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	135	2024-02-14 09:40:34	2024-02-14 09:40:34	5
27944	Tâche nouvellement créee du nom de Paramétrage des emails automatiques envoyés à la validation des Bon de livraisons par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	138	2024-02-14 09:40:34	2024-02-14 09:40:34	5
27945	Tâche nouvellement créee du nom de Paramétrage des emails automatiques envoyés à la validation des Bon de livraisons par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	132	2024-02-14 09:40:34	2024-02-14 09:40:34	5
27946	Tâche nouvellement créee du nom de Paramétrage des emails automatiques envoyés à la validation des Bon de livraisons par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	131	2024-02-14 09:40:34	2024-02-14 09:40:34	5
27947	Tâche nouvellement créee du nom de Paramétrage des emails automatiques envoyés à la validation des Bon de livraisons par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	145	2024-02-14 09:40:34	2024-02-14 09:40:34	5
27948	Tâche nouvellement créee du nom de Paramétrage des emails automatiques envoyés à la validation des Bon de livraisons par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	129	2024-02-14 09:40:34	2024-02-14 09:40:34	5
27949	Tâche nouvellement créee du nom de Paramétrage des emails automatiques envoyés à la validation des Bon de livraisons par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	150	2024-02-14 09:40:34	2024-02-14 09:40:34	5
27950	Tâche nouvellement créee du nom de Paramétrage des emails automatiques envoyés à la validation des Bon de livraisons par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	167	2024-02-14 09:40:34	2024-02-14 09:40:34	5
27845	Miandrisoa a été assigné à la tâche désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	127	2024-02-12 16:59:57	2024-02-12 16:59:57	6
27846	Miandrisoa a été assigné à la tâche désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	132	2024-02-12 16:59:57	2024-02-12 16:59:57	6
27847	Miandrisoa a été assigné à la tâche désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	150	2024-02-12 16:59:57	2024-02-12 16:59:57	6
27929	Tâche nouvellement créee du nom de Import N° de lot fournisseur sur Odoo par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	127	2024-02-14 09:39:13	2024-02-14 09:39:13	5
27930	Tâche nouvellement créee du nom de Import N° de lot fournisseur sur Odoo par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	135	2024-02-14 09:39:13	2024-02-14 09:39:13	5
27931	Tâche nouvellement créee du nom de Import N° de lot fournisseur sur Odoo par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	138	2024-02-14 09:39:13	2024-02-14 09:39:13	5
27932	Tâche nouvellement créee du nom de Import N° de lot fournisseur sur Odoo par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	132	2024-02-14 09:39:13	2024-02-14 09:39:13	5
27933	Tâche nouvellement créee du nom de Import N° de lot fournisseur sur Odoo par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	131	2024-02-14 09:39:13	2024-02-14 09:39:13	5
27934	Tâche nouvellement créee du nom de Import N° de lot fournisseur sur Odoo par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	145	2024-02-14 09:39:13	2024-02-14 09:39:13	5
27935	Tâche nouvellement créee du nom de Import N° de lot fournisseur sur Odoo par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	129	2024-02-14 09:39:13	2024-02-14 09:39:13	5
27936	Tâche nouvellement créee du nom de Import N° de lot fournisseur sur Odoo par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	150	2024-02-14 09:39:13	2024-02-14 09:39:13	5
27937	Tâche nouvellement créee du nom de Import N° de lot fournisseur sur Odoo par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	167	2024-02-14 09:39:13	2024-02-14 09:39:13	5
27955	Tâche nouvellement créee du nom de Analayse des relance automatique des paiments en retard sur odoo par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	127	2024-02-14 09:41:21	2024-02-14 09:41:21	5
27956	Tâche nouvellement créee du nom de Analayse des relance automatique des paiments en retard sur odoo par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	135	2024-02-14 09:41:21	2024-02-14 09:41:21	5
27957	Tâche nouvellement créee du nom de Analayse des relance automatique des paiments en retard sur odoo par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	138	2024-02-14 09:41:21	2024-02-14 09:41:21	5
27958	Tâche nouvellement créee du nom de Analayse des relance automatique des paiments en retard sur odoo par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	132	2024-02-14 09:41:21	2024-02-14 09:41:21	5
27959	Tâche nouvellement créee du nom de Analayse des relance automatique des paiments en retard sur odoo par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	131	2024-02-14 09:41:21	2024-02-14 09:41:21	5
27960	Tâche nouvellement créee du nom de Analayse des relance automatique des paiments en retard sur odoo par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	145	2024-02-14 09:41:21	2024-02-14 09:41:21	5
27961	Tâche nouvellement créee du nom de Analayse des relance automatique des paiments en retard sur odoo par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	129	2024-02-14 09:41:21	2024-02-14 09:41:21	5
27962	Tâche nouvellement créee du nom de Analayse des relance automatique des paiments en retard sur odoo par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	150	2024-02-14 09:41:21	2024-02-14 09:41:21	5
27963	Tâche nouvellement créee du nom de Analayse des relance automatique des paiments en retard sur odoo par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	167	2024-02-14 09:41:21	2024-02-14 09:41:21	5
27965	Fanilo a été assigné à la tâche Analayse des relance automatique des paiments en retard sur odoo dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	127	2024-02-14 09:41:21	2024-02-14 09:41:21	6
27966	Fanilo a été assigné à la tâche Analayse des relance automatique des paiments en retard sur odoo dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	132	2024-02-14 09:41:21	2024-02-14 09:41:21	6
27967	Fanilo a été assigné à la tâche Analayse des relance automatique des paiments en retard sur odoo dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	150	2024-02-14 09:41:21	2024-02-14 09:41:21	6
28026	Kevin a été assigné à la tâche Réglages au niveau du tableau COA vs Budget dans le projet MADAPLAST - Intervention et accompagnement par Kevin	f	139	139	2024-02-14 06:51:52	2024-02-14 06:51:52	6
27964	Fanilo a été assigné à la tâche Analayse des relance automatique des paiments en retard sur odoo dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	t	137	137	2024-02-14 06:41:21	2024-02-14 06:41:21	6
27866	Tâche a supprimé par Koloina.	f	147	145	2024-02-12 17:04:31	2024-02-12 17:04:31	3
27867	Tâche a supprimé par Koloina.	f	147	129	2024-02-12 17:04:31	2024-02-12 17:04:31	3
27868	Tâche a supprimé par Koloina.	f	147	150	2024-02-12 17:04:31	2024-02-12 17:04:31	3
27869	Tâche a supprimé par Koloina.	f	147	167	2024-02-12 17:04:31	2024-02-12 17:04:31	3
27977	Tâche nouvellement créee du nom de Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	127	2024-02-14 09:44:54	2024-02-14 09:44:54	5
27978	Tâche nouvellement créee du nom de Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	135	2024-02-14 09:44:54	2024-02-14 09:44:54	5
27979	Tâche nouvellement créee du nom de Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	138	2024-02-14 09:44:54	2024-02-14 09:44:54	5
27980	Tâche nouvellement créee du nom de Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	132	2024-02-14 09:44:54	2024-02-14 09:44:54	5
27981	Tâche nouvellement créee du nom de Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	131	2024-02-14 09:44:54	2024-02-14 09:44:54	5
27982	Tâche nouvellement créee du nom de Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	145	2024-02-14 09:44:54	2024-02-14 09:44:54	5
27983	Tâche nouvellement créee du nom de Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	129	2024-02-14 09:44:54	2024-02-14 09:44:54	5
27984	Tâche nouvellement créee du nom de Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	150	2024-02-14 09:44:54	2024-02-14 09:44:54	5
27985	Tâche nouvellement créee du nom de Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	167	2024-02-14 09:44:54	2024-02-14 09:44:54	5
27990	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	127	2024-02-14 09:45:59	2024-02-14 09:45:59	3
27991	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	135	2024-02-14 09:45:59	2024-02-14 09:45:59	3
27992	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	138	2024-02-14 09:45:59	2024-02-14 09:45:59	3
27993	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	132	2024-02-14 09:45:59	2024-02-14 09:45:59	3
27994	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	131	2024-02-14 09:45:59	2024-02-14 09:45:59	3
27995	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	145	2024-02-14 09:45:59	2024-02-14 09:45:59	3
27996	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	129	2024-02-14 09:45:59	2024-02-14 09:45:59	3
27997	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	150	2024-02-14 09:45:59	2024-02-14 09:45:59	3
27998	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	167	2024-02-14 09:45:59	2024-02-14 09:45:59	3
27999	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	127	2024-02-14 09:46:19	2024-02-14 09:46:19	3
28000	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	135	2024-02-14 09:46:19	2024-02-14 09:46:19	3
28001	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	138	2024-02-14 09:46:19	2024-02-14 09:46:19	3
28002	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	132	2024-02-14 09:46:19	2024-02-14 09:46:19	3
28003	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	131	2024-02-14 09:46:19	2024-02-14 09:46:19	3
28004	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	145	2024-02-14 09:46:19	2024-02-14 09:46:19	3
28005	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	129	2024-02-14 09:46:19	2024-02-14 09:46:19	3
28006	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	150	2024-02-14 09:46:19	2024-02-14 09:46:19	3
28007	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	167	2024-02-14 09:46:19	2024-02-14 09:46:19	3
28008	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	127	2024-02-14 09:46:32	2024-02-14 09:46:32	3
28009	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	135	2024-02-14 09:46:32	2024-02-14 09:46:32	3
28010	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	138	2024-02-14 09:46:32	2024-02-14 09:46:32	3
28011	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	132	2024-02-14 09:46:32	2024-02-14 09:46:32	3
28012	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	131	2024-02-14 09:46:32	2024-02-14 09:46:32	3
28013	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	145	2024-02-14 09:46:32	2024-02-14 09:46:32	3
28014	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	129	2024-02-14 09:46:32	2024-02-14 09:46:32	3
27882	Tâche "Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	131	2024-02-13 09:21:30	2024-02-13 09:21:30	1
27883	Tâche "Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	145	2024-02-13 09:21:30	2024-02-13 09:21:30	1
27884	Tâche "Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	150	2024-02-13 09:21:30	2024-02-13 09:21:30	1
27885	Tâche "Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement"\n          du projet Gestion PNR Issoufali mise dans " En blocage " par Alain	f	129	167	2024-02-13 09:21:30	2024-02-13 09:21:30	1
27894	Tâche nouvellement créee du nom de Création un nouveau raccourci pour EBP Gescom, Compta, Immo, Paie pour un nouveau utilisateur par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	127	2024-02-14 09:13:28	2024-02-14 09:13:28	5
27895	Tâche nouvellement créee du nom de Création un nouveau raccourci pour EBP Gescom, Compta, Immo, Paie pour un nouveau utilisateur par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	135	2024-02-14 09:13:28	2024-02-14 09:13:28	5
27896	Tâche nouvellement créee du nom de Création un nouveau raccourci pour EBP Gescom, Compta, Immo, Paie pour un nouveau utilisateur par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	138	2024-02-14 09:13:28	2024-02-14 09:13:28	5
27897	Tâche nouvellement créee du nom de Création un nouveau raccourci pour EBP Gescom, Compta, Immo, Paie pour un nouveau utilisateur par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	132	2024-02-14 09:13:28	2024-02-14 09:13:28	5
27898	Tâche nouvellement créee du nom de Création un nouveau raccourci pour EBP Gescom, Compta, Immo, Paie pour un nouveau utilisateur par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	131	2024-02-14 09:13:28	2024-02-14 09:13:28	5
27899	Tâche nouvellement créee du nom de Création un nouveau raccourci pour EBP Gescom, Compta, Immo, Paie pour un nouveau utilisateur par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	145	2024-02-14 09:13:28	2024-02-14 09:13:28	5
27900	Tâche nouvellement créee du nom de Création un nouveau raccourci pour EBP Gescom, Compta, Immo, Paie pour un nouveau utilisateur par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	129	2024-02-14 09:13:28	2024-02-14 09:13:28	5
27901	Tâche nouvellement créee du nom de Création un nouveau raccourci pour EBP Gescom, Compta, Immo, Paie pour un nouveau utilisateur par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	150	2024-02-14 09:13:28	2024-02-14 09:13:28	5
27902	Tâche nouvellement créee du nom de Création un nouveau raccourci pour EBP Gescom, Compta, Immo, Paie pour un nouveau utilisateur par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	167	2024-02-14 09:13:28	2024-02-14 09:13:28	5
27916	Fanilo a été assigné à la tâche Rédaction procédure Gestion des emails sur Outlook. dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	137	2024-02-14 06:33:58	2024-02-14 06:33:58	6
27920	Tâche Création des raccourcis et un nouveau utilisateur dans EPB Compta, Gestion Commerciale, Paie supprimé par Miandrisoa.	f	146	127	2024-02-14 09:36:45	2024-02-14 09:36:45	3
27921	Tâche Création des raccourcis et un nouveau utilisateur dans EPB Compta, Gestion Commerciale, Paie supprimé par Miandrisoa.	f	146	135	2024-02-14 09:36:45	2024-02-14 09:36:45	3
27922	Tâche Création des raccourcis et un nouveau utilisateur dans EPB Compta, Gestion Commerciale, Paie supprimé par Miandrisoa.	f	146	138	2024-02-14 09:36:45	2024-02-14 09:36:45	3
27923	Tâche Création des raccourcis et un nouveau utilisateur dans EPB Compta, Gestion Commerciale, Paie supprimé par Miandrisoa.	f	146	132	2024-02-14 09:36:45	2024-02-14 09:36:45	3
27924	Tâche Création des raccourcis et un nouveau utilisateur dans EPB Compta, Gestion Commerciale, Paie supprimé par Miandrisoa.	f	146	131	2024-02-14 09:36:45	2024-02-14 09:36:45	3
27925	Tâche Création des raccourcis et un nouveau utilisateur dans EPB Compta, Gestion Commerciale, Paie supprimé par Miandrisoa.	f	146	145	2024-02-14 09:36:45	2024-02-14 09:36:45	3
27926	Tâche Création des raccourcis et un nouveau utilisateur dans EPB Compta, Gestion Commerciale, Paie supprimé par Miandrisoa.	f	146	129	2024-02-14 09:36:45	2024-02-14 09:36:45	3
27927	Tâche Création des raccourcis et un nouveau utilisateur dans EPB Compta, Gestion Commerciale, Paie supprimé par Miandrisoa.	f	146	150	2024-02-14 09:36:45	2024-02-14 09:36:45	3
27928	Tâche Création des raccourcis et un nouveau utilisateur dans EPB Compta, Gestion Commerciale, Paie supprimé par Miandrisoa.	f	146	167	2024-02-14 09:36:45	2024-02-14 09:36:45	3
27987	Miandrisoa a été assigné à la tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	127	2024-02-14 09:44:54	2024-02-14 09:44:54	6
27988	Miandrisoa a été assigné à la tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	132	2024-02-14 09:44:54	2024-02-14 09:44:54	6
27989	Miandrisoa a été assigné à la tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	150	2024-02-14 09:44:54	2024-02-14 09:44:54	6
28017	Tâche nouvellement créee du nom de Réglages au niveau du tableau COA vs Budget par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	127	2024-02-14 09:51:52	2024-02-14 09:51:52	5
28018	Tâche nouvellement créee du nom de Réglages au niveau du tableau COA vs Budget par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	135	2024-02-14 09:51:52	2024-02-14 09:51:52	5
28019	Tâche nouvellement créee du nom de Réglages au niveau du tableau COA vs Budget par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	138	2024-02-14 09:51:52	2024-02-14 09:51:52	5
28020	Tâche nouvellement créee du nom de Réglages au niveau du tableau COA vs Budget par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	132	2024-02-14 09:51:52	2024-02-14 09:51:52	5
28021	Tâche nouvellement créee du nom de Réglages au niveau du tableau COA vs Budget par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	131	2024-02-14 09:51:52	2024-02-14 09:51:52	5
28022	Tâche nouvellement créee du nom de Réglages au niveau du tableau COA vs Budget par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	145	2024-02-14 09:51:52	2024-02-14 09:51:52	5
28015	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	150	2024-02-14 09:46:32	2024-02-14 09:46:32	3
28016	Tâche Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST supprimé par Miandrisoa.	f	146	167	2024-02-14 09:46:32	2024-02-14 09:46:32	3
28039	Koloina a été assigné à la tâche MOLLAN - Import Bon de commande dans le projet MOLLAN par Koloina	f	147	147	2024-02-14 06:52:17	2024-02-14 06:52:17	6
28043	Tâche MOLLAN - Import Bon de commande  supprimé par Koloina.	f	147	127	2024-02-14 09:52:39	2024-02-14 09:52:39	3
28044	Tâche MOLLAN - Import Bon de commande  supprimé par Koloina.	f	147	135	2024-02-14 09:52:39	2024-02-14 09:52:39	3
28045	Tâche MOLLAN - Import Bon de commande  supprimé par Koloina.	f	147	138	2024-02-14 09:52:39	2024-02-14 09:52:39	3
28046	Tâche MOLLAN - Import Bon de commande  supprimé par Koloina.	f	147	132	2024-02-14 09:52:39	2024-02-14 09:52:39	3
28047	Tâche MOLLAN - Import Bon de commande  supprimé par Koloina.	f	147	131	2024-02-14 09:52:39	2024-02-14 09:52:39	3
28048	Tâche MOLLAN - Import Bon de commande  supprimé par Koloina.	f	147	145	2024-02-14 09:52:39	2024-02-14 09:52:39	3
28049	Tâche MOLLAN - Import Bon de commande  supprimé par Koloina.	f	147	129	2024-02-14 09:52:39	2024-02-14 09:52:39	3
28050	Tâche MOLLAN - Import Bon de commande  supprimé par Koloina.	f	147	150	2024-02-14 09:52:39	2024-02-14 09:52:39	3
28051	Tâche MOLLAN - Import Bon de commande  supprimé par Koloina.	f	147	167	2024-02-14 09:52:39	2024-02-14 09:52:39	3
28052	Tâche nouvellement créee du nom de Modification et  Ajout de fonctionnalité sur le tableau Surstockage par Hassan dans le projet MOLLAN.	f	142	127	2024-02-14 09:57:20	2024-02-14 09:57:20	5
28053	Tâche nouvellement créee du nom de Modification et  Ajout de fonctionnalité sur le tableau Surstockage par Hassan dans le projet MOLLAN.	f	142	135	2024-02-14 09:57:20	2024-02-14 09:57:20	5
28054	Tâche nouvellement créee du nom de Modification et  Ajout de fonctionnalité sur le tableau Surstockage par Hassan dans le projet MOLLAN.	f	142	138	2024-02-14 09:57:20	2024-02-14 09:57:20	5
28055	Tâche nouvellement créee du nom de Modification et  Ajout de fonctionnalité sur le tableau Surstockage par Hassan dans le projet MOLLAN.	f	142	132	2024-02-14 09:57:20	2024-02-14 09:57:20	5
28056	Tâche nouvellement créee du nom de Modification et  Ajout de fonctionnalité sur le tableau Surstockage par Hassan dans le projet MOLLAN.	f	142	131	2024-02-14 09:57:20	2024-02-14 09:57:20	5
28057	Tâche nouvellement créee du nom de Modification et  Ajout de fonctionnalité sur le tableau Surstockage par Hassan dans le projet MOLLAN.	f	142	145	2024-02-14 09:57:20	2024-02-14 09:57:20	5
28058	Tâche nouvellement créee du nom de Modification et  Ajout de fonctionnalité sur le tableau Surstockage par Hassan dans le projet MOLLAN.	f	142	129	2024-02-14 09:57:20	2024-02-14 09:57:20	5
28059	Tâche nouvellement créee du nom de Modification et  Ajout de fonctionnalité sur le tableau Surstockage par Hassan dans le projet MOLLAN.	f	142	150	2024-02-14 09:57:20	2024-02-14 09:57:20	5
28060	Tâche nouvellement créee du nom de Modification et  Ajout de fonctionnalité sur le tableau Surstockage par Hassan dans le projet MOLLAN.	f	142	167	2024-02-14 09:57:20	2024-02-14 09:57:20	5
28023	Tâche nouvellement créee du nom de Réglages au niveau du tableau COA vs Budget par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	129	2024-02-14 09:51:52	2024-02-14 09:51:52	5
28024	Tâche nouvellement créee du nom de Réglages au niveau du tableau COA vs Budget par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	150	2024-02-14 09:51:52	2024-02-14 09:51:52	5
28025	Tâche nouvellement créee du nom de Réglages au niveau du tableau COA vs Budget par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	167	2024-02-14 09:51:52	2024-02-14 09:51:52	5
28040	Koloina a été assigné à la tâche MOLLAN - Import Bon de commande dans le projet MOLLAN par Koloina	f	147	127	2024-02-14 09:52:17	2024-02-14 09:52:17	6
28041	Koloina a été assigné à la tâche MOLLAN - Import Bon de commande dans le projet MOLLAN par Koloina	f	147	132	2024-02-14 09:52:17	2024-02-14 09:52:17	6
28042	Koloina a été assigné à la tâche MOLLAN - Import Bon de commande dans le projet MOLLAN par Koloina	f	147	150	2024-02-14 09:52:17	2024-02-14 09:52:17	6
28027	Kevin a été assigné à la tâche Réglages au niveau du tableau COA vs Budget dans le projet MADAPLAST - Intervention et accompagnement par Kevin	f	139	127	2024-02-14 09:51:52	2024-02-14 09:51:52	6
28028	Kevin a été assigné à la tâche Réglages au niveau du tableau COA vs Budget dans le projet MADAPLAST - Intervention et accompagnement par Kevin	f	139	132	2024-02-14 09:51:52	2024-02-14 09:51:52	6
28029	Kevin a été assigné à la tâche Réglages au niveau du tableau COA vs Budget dans le projet MADAPLAST - Intervention et accompagnement par Kevin	f	139	150	2024-02-14 09:51:52	2024-02-14 09:51:52	6
28031	Tâche nouvellement créee du nom de MOLLAN - Import Bon de commande par Koloina dans le projet MOLLAN.	f	147	135	2024-02-14 09:52:17	2024-02-14 09:52:17	5
28032	Tâche nouvellement créee du nom de MOLLAN - Import Bon de commande par Koloina dans le projet MOLLAN.	f	147	138	2024-02-14 09:52:17	2024-02-14 09:52:17	5
28033	Tâche nouvellement créee du nom de MOLLAN - Import Bon de commande par Koloina dans le projet MOLLAN.	f	147	132	2024-02-14 09:52:17	2024-02-14 09:52:17	5
28034	Tâche nouvellement créee du nom de MOLLAN - Import Bon de commande par Koloina dans le projet MOLLAN.	f	147	131	2024-02-14 09:52:17	2024-02-14 09:52:17	5
28035	Tâche nouvellement créee du nom de MOLLAN - Import Bon de commande par Koloina dans le projet MOLLAN.	f	147	145	2024-02-14 09:52:17	2024-02-14 09:52:17	5
28036	Tâche nouvellement créee du nom de MOLLAN - Import Bon de commande par Koloina dans le projet MOLLAN.	f	147	129	2024-02-14 09:52:17	2024-02-14 09:52:17	5
28037	Tâche nouvellement créee du nom de MOLLAN - Import Bon de commande par Koloina dans le projet MOLLAN.	f	147	150	2024-02-14 09:52:17	2024-02-14 09:52:17	5
28038	Tâche nouvellement créee du nom de MOLLAN - Import Bon de commande par Koloina dans le projet MOLLAN.	f	147	167	2024-02-14 09:52:17	2024-02-14 09:52:17	5
28065	Tâche nouvellement créee du nom de Modifcation du tableau 2080 par Hassan dans le projet MOLLAN.	f	142	127	2024-02-14 10:02:27	2024-02-14 10:02:27	5
28066	Tâche nouvellement créee du nom de Modifcation du tableau 2080 par Hassan dans le projet MOLLAN.	f	142	135	2024-02-14 10:02:27	2024-02-14 10:02:27	5
28067	Tâche nouvellement créee du nom de Modifcation du tableau 2080 par Hassan dans le projet MOLLAN.	f	142	138	2024-02-14 10:02:27	2024-02-14 10:02:27	5
28068	Tâche nouvellement créee du nom de Modifcation du tableau 2080 par Hassan dans le projet MOLLAN.	f	142	132	2024-02-14 10:02:27	2024-02-14 10:02:27	5
28069	Tâche nouvellement créee du nom de Modifcation du tableau 2080 par Hassan dans le projet MOLLAN.	f	142	131	2024-02-14 10:02:27	2024-02-14 10:02:27	5
28070	Tâche nouvellement créee du nom de Modifcation du tableau 2080 par Hassan dans le projet MOLLAN.	f	142	145	2024-02-14 10:02:27	2024-02-14 10:02:27	5
28071	Tâche nouvellement créee du nom de Modifcation du tableau 2080 par Hassan dans le projet MOLLAN.	f	142	129	2024-02-14 10:02:27	2024-02-14 10:02:27	5
28072	Tâche nouvellement créee du nom de Modifcation du tableau 2080 par Hassan dans le projet MOLLAN.	f	142	150	2024-02-14 10:02:27	2024-02-14 10:02:27	5
28073	Tâche nouvellement créee du nom de Modifcation du tableau 2080 par Hassan dans le projet MOLLAN.	f	142	167	2024-02-14 10:02:27	2024-02-14 10:02:27	5
28075	Hassan a été assigné à la tâche Modifcation du tableau 2080 dans le projet MOLLAN par Hassan	f	142	127	2024-02-14 10:02:27	2024-02-14 10:02:27	6
28076	Hassan a été assigné à la tâche Modifcation du tableau 2080 dans le projet MOLLAN par Hassan	f	142	132	2024-02-14 10:02:27	2024-02-14 10:02:27	6
28077	Hassan a été assigné à la tâche Modifcation du tableau 2080 dans le projet MOLLAN par Hassan	f	142	150	2024-02-14 10:02:27	2024-02-14 10:02:27	6
28078	Tâche "Modifcation du tableau 2080"\n          du projet MOLLAN mise dans " En blocage " par Hassan	f	142	127	2024-02-14 10:02:29	2024-02-14 10:02:29	1
28079	Tâche "Modifcation du tableau 2080"\n          du projet MOLLAN mise dans " En blocage " par Hassan	f	142	135	2024-02-14 10:02:29	2024-02-14 10:02:29	1
28080	Tâche "Modifcation du tableau 2080"\n          du projet MOLLAN mise dans " En blocage " par Hassan	f	142	138	2024-02-14 10:02:29	2024-02-14 10:02:29	1
28081	Tâche "Modifcation du tableau 2080"\n          du projet MOLLAN mise dans " En blocage " par Hassan	f	142	132	2024-02-14 10:02:29	2024-02-14 10:02:29	1
28082	Tâche "Modifcation du tableau 2080"\n          du projet MOLLAN mise dans " En blocage " par Hassan	f	142	131	2024-02-14 10:02:29	2024-02-14 10:02:29	1
28083	Tâche "Modifcation du tableau 2080"\n          du projet MOLLAN mise dans " En blocage " par Hassan	f	142	145	2024-02-14 10:02:29	2024-02-14 10:02:29	1
28084	Tâche "Modifcation du tableau 2080"\n          du projet MOLLAN mise dans " En blocage " par Hassan	f	142	129	2024-02-14 10:02:29	2024-02-14 10:02:29	1
28085	Tâche "Modifcation du tableau 2080"\n          du projet MOLLAN mise dans " En blocage " par Hassan	f	142	150	2024-02-14 10:02:29	2024-02-14 10:02:29	1
28086	Tâche "Modifcation du tableau 2080"\n          du projet MOLLAN mise dans " En blocage " par Hassan	f	142	167	2024-02-14 10:02:29	2024-02-14 10:02:29	1
28087	Tâche "Modifcation du tableau 2080"\n          du projet MOLLAN mise dans " En cours " par Hassan	f	142	127	2024-02-14 10:02:37	2024-02-14 10:02:37	1
28088	Tâche "Modifcation du tableau 2080"\n          du projet MOLLAN mise dans " En cours " par Hassan	f	142	135	2024-02-14 10:02:37	2024-02-14 10:02:37	1
28089	Tâche "Modifcation du tableau 2080"\n          du projet MOLLAN mise dans " En cours " par Hassan	f	142	138	2024-02-14 10:02:37	2024-02-14 10:02:37	1
28090	Tâche "Modifcation du tableau 2080"\n          du projet MOLLAN mise dans " En cours " par Hassan	f	142	132	2024-02-14 10:02:37	2024-02-14 10:02:37	1
28091	Tâche "Modifcation du tableau 2080"\n          du projet MOLLAN mise dans " En cours " par Hassan	f	142	131	2024-02-14 10:02:37	2024-02-14 10:02:37	1
28092	Tâche "Modifcation du tableau 2080"\n          du projet MOLLAN mise dans " En cours " par Hassan	f	142	145	2024-02-14 10:02:37	2024-02-14 10:02:37	1
28093	Tâche "Modifcation du tableau 2080"\n          du projet MOLLAN mise dans " En cours " par Hassan	f	142	129	2024-02-14 10:02:37	2024-02-14 10:02:37	1
28094	Tâche "Modifcation du tableau 2080"\n          du projet MOLLAN mise dans " En cours " par Hassan	f	142	150	2024-02-14 10:02:37	2024-02-14 10:02:37	1
28095	Tâche "Modifcation du tableau 2080"\n          du projet MOLLAN mise dans " En cours " par Hassan	f	142	167	2024-02-14 10:02:37	2024-02-14 10:02:37	1
28061	Hassan a été assigné à la tâche Modification et  Ajout de fonctionnalité sur le tableau Surstockage dans le projet MOLLAN par Hassan	t	142	142	2024-02-14 06:57:20	2024-02-14 06:57:20	6
28074	Hassan a été assigné à la tâche Modifcation du tableau 2080 dans le projet MOLLAN par Hassan	t	142	142	2024-02-14 07:02:27	2024-02-14 07:02:27	6
28096	Tâche nouvellement créee du nom de Importation facture 2016 - 2017 par Mickaella dans le projet SMEF.	f	148	127	2024-02-14 10:10:20	2024-02-14 10:10:20	5
28097	Tâche nouvellement créee du nom de Importation facture 2016 - 2017 par Mickaella dans le projet SMEF.	f	148	135	2024-02-14 10:10:20	2024-02-14 10:10:20	5
28098	Tâche nouvellement créee du nom de Importation facture 2016 - 2017 par Mickaella dans le projet SMEF.	f	148	138	2024-02-14 10:10:20	2024-02-14 10:10:20	5
28099	Tâche nouvellement créee du nom de Importation facture 2016 - 2017 par Mickaella dans le projet SMEF.	f	148	132	2024-02-14 10:10:20	2024-02-14 10:10:20	5
28100	Tâche nouvellement créee du nom de Importation facture 2016 - 2017 par Mickaella dans le projet SMEF.	f	148	131	2024-02-14 10:10:20	2024-02-14 10:10:20	5
28101	Tâche nouvellement créee du nom de Importation facture 2016 - 2017 par Mickaella dans le projet SMEF.	f	148	145	2024-02-14 10:10:20	2024-02-14 10:10:20	5
28102	Tâche nouvellement créee du nom de Importation facture 2016 - 2017 par Mickaella dans le projet SMEF.	f	148	129	2024-02-14 10:10:20	2024-02-14 10:10:20	5
28103	Tâche nouvellement créee du nom de Importation facture 2016 - 2017 par Mickaella dans le projet SMEF.	f	148	150	2024-02-14 10:10:20	2024-02-14 10:10:20	5
28104	Tâche nouvellement créee du nom de Importation facture 2016 - 2017 par Mickaella dans le projet SMEF.	f	148	167	2024-02-14 10:10:20	2024-02-14 10:10:20	5
28145	Hassan a été assigné à la tâche Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo dans le projet ISSOUFALI - Intervention et accompagnement par Hassan	f	142	127	2024-02-14 10:14:29	2024-02-14 10:14:29	6
28146	Hassan a été assigné à la tâche Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo dans le projet ISSOUFALI - Intervention et accompagnement par Hassan	f	142	132	2024-02-14 10:14:29	2024-02-14 10:14:29	6
28147	Hassan a été assigné à la tâche Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo dans le projet ISSOUFALI - Intervention et accompagnement par Hassan	f	142	150	2024-02-14 10:14:29	2024-02-14 10:14:29	6
28157	Tâche "Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En cours " par Hassan	f	142	127	2024-02-14 10:14:35	2024-02-14 10:14:35	1
28158	Tâche "Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En cours " par Hassan	f	142	135	2024-02-14 10:14:35	2024-02-14 10:14:35	1
28159	Tâche "Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En cours " par Hassan	f	142	138	2024-02-14 10:14:35	2024-02-14 10:14:35	1
28160	Tâche "Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En cours " par Hassan	f	142	132	2024-02-14 10:14:35	2024-02-14 10:14:35	1
28161	Tâche "Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En cours " par Hassan	f	142	131	2024-02-14 10:14:35	2024-02-14 10:14:35	1
28162	Tâche "Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En cours " par Hassan	f	142	145	2024-02-14 10:14:35	2024-02-14 10:14:35	1
28163	Tâche "Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En cours " par Hassan	f	142	129	2024-02-14 10:14:35	2024-02-14 10:14:35	1
28164	Tâche "Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En cours " par Hassan	f	142	150	2024-02-14 10:14:35	2024-02-14 10:14:35	1
28165	Tâche "Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En cours " par Hassan	f	142	167	2024-02-14 10:14:35	2024-02-14 10:14:35	1
28105	Mickaella a été assigné à la tâche Importation facture 2016 - 2017 dans le projet SMEF par Mickaella	t	148	148	2024-02-14 07:10:20	2024-02-14 07:10:20	6
28201	Tâche nouvellement créee du nom de Automatisation d'envoi de mail d'un fichier contenant les erreurs durant l'import par Hassan dans le projet ZEOP - Mise en place d'une solution.	f	142	127	2024-02-14 10:19:58	2024-02-14 10:19:58	5
28202	Tâche nouvellement créee du nom de Automatisation d'envoi de mail d'un fichier contenant les erreurs durant l'import par Hassan dans le projet ZEOP - Mise en place d'une solution.	f	142	135	2024-02-14 10:19:58	2024-02-14 10:19:58	5
28203	Tâche nouvellement créee du nom de Automatisation d'envoi de mail d'un fichier contenant les erreurs durant l'import par Hassan dans le projet ZEOP - Mise en place d'une solution.	f	142	138	2024-02-14 10:19:58	2024-02-14 10:19:58	5
28204	Tâche nouvellement créee du nom de Automatisation d'envoi de mail d'un fichier contenant les erreurs durant l'import par Hassan dans le projet ZEOP - Mise en place d'une solution.	f	142	132	2024-02-14 10:19:58	2024-02-14 10:19:58	5
28205	Tâche nouvellement créee du nom de Automatisation d'envoi de mail d'un fichier contenant les erreurs durant l'import par Hassan dans le projet ZEOP - Mise en place d'une solution.	f	142	131	2024-02-14 10:19:58	2024-02-14 10:19:58	5
28206	Tâche nouvellement créee du nom de Automatisation d'envoi de mail d'un fichier contenant les erreurs durant l'import par Hassan dans le projet ZEOP - Mise en place d'une solution.	f	142	145	2024-02-14 10:19:58	2024-02-14 10:19:58	5
28207	Tâche nouvellement créee du nom de Automatisation d'envoi de mail d'un fichier contenant les erreurs durant l'import par Hassan dans le projet ZEOP - Mise en place d'une solution.	f	142	129	2024-02-14 10:19:58	2024-02-14 10:19:58	5
28208	Tâche nouvellement créee du nom de Automatisation d'envoi de mail d'un fichier contenant les erreurs durant l'import par Hassan dans le projet ZEOP - Mise en place d'une solution.	f	142	150	2024-02-14 10:19:58	2024-02-14 10:19:58	5
28209	Tâche nouvellement créee du nom de Automatisation d'envoi de mail d'un fichier contenant les erreurs durant l'import par Hassan dans le projet ZEOP - Mise en place d'une solution.	f	142	167	2024-02-14 10:19:58	2024-02-14 10:19:58	5
26979	Mickaella a été assigné à la tâche Ajout moyen de paiement dans le projet FOCICOM par Mickaella	t	148	148	2024-01-24 13:26:36	2024-01-24 13:26:36	6
26992	Mickaella a été assigné à la tâche Création d'un modèle d'impression dans le projet FOCICOM par Mickaella	t	148	148	2024-01-24 13:27:24	2024-01-24 13:27:24	6
27018	Mickaella a été assigné à la tâche Simulation paramétrages Utilisateur 'Caissier' dans le projet FOCICOM par Mickaella	t	148	148	2024-01-24 13:29:50	2024-01-24 13:29:50	6
27031	Mickaella a été assigné à la tâche Préparation import Facture dans le projet SMEF par Mickaella	t	148	148	2024-01-24 13:32:47	2024-01-24 13:32:47	6
28106	Mickaella a été assigné à la tâche Importation facture 2016 - 2017 dans le projet SMEF par Mickaella	f	148	127	2024-02-14 10:10:20	2024-02-14 10:10:20	6
28107	Mickaella a été assigné à la tâche Importation facture 2016 - 2017 dans le projet SMEF par Mickaella	f	148	132	2024-02-14 10:10:20	2024-02-14 10:10:20	6
28108	Mickaella a été assigné à la tâche Importation facture 2016 - 2017 dans le projet SMEF par Mickaella	f	148	150	2024-02-14 10:10:20	2024-02-14 10:10:20	6
28109	Tâche nouvellement créee du nom de Automatisation récupération, traitement et envoi dans la base de données par Hassan dans le projet ISSOUFALI - Intervention et accompagnement.	f	142	127	2024-02-14 10:12:24	2024-02-14 10:12:24	5
28110	Tâche nouvellement créee du nom de Automatisation récupération, traitement et envoi dans la base de données par Hassan dans le projet ISSOUFALI - Intervention et accompagnement.	f	142	135	2024-02-14 10:12:24	2024-02-14 10:12:24	5
28111	Tâche nouvellement créee du nom de Automatisation récupération, traitement et envoi dans la base de données par Hassan dans le projet ISSOUFALI - Intervention et accompagnement.	f	142	138	2024-02-14 10:12:24	2024-02-14 10:12:24	5
28112	Tâche nouvellement créee du nom de Automatisation récupération, traitement et envoi dans la base de données par Hassan dans le projet ISSOUFALI - Intervention et accompagnement.	f	142	132	2024-02-14 10:12:24	2024-02-14 10:12:24	5
28113	Tâche nouvellement créee du nom de Automatisation récupération, traitement et envoi dans la base de données par Hassan dans le projet ISSOUFALI - Intervention et accompagnement.	f	142	131	2024-02-14 10:12:24	2024-02-14 10:12:24	5
28114	Tâche nouvellement créee du nom de Automatisation récupération, traitement et envoi dans la base de données par Hassan dans le projet ISSOUFALI - Intervention et accompagnement.	f	142	145	2024-02-14 10:12:24	2024-02-14 10:12:24	5
28115	Tâche nouvellement créee du nom de Automatisation récupération, traitement et envoi dans la base de données par Hassan dans le projet ISSOUFALI - Intervention et accompagnement.	f	142	129	2024-02-14 10:12:24	2024-02-14 10:12:24	5
28116	Tâche nouvellement créee du nom de Automatisation récupération, traitement et envoi dans la base de données par Hassan dans le projet ISSOUFALI - Intervention et accompagnement.	f	142	150	2024-02-14 10:12:24	2024-02-14 10:12:24	5
28117	Tâche nouvellement créee du nom de Automatisation récupération, traitement et envoi dans la base de données par Hassan dans le projet ISSOUFALI - Intervention et accompagnement.	f	142	167	2024-02-14 10:12:24	2024-02-14 10:12:24	5
28119	Hassan a été assigné à la tâche Automatisation récupération, traitement et envoi dans la base de données dans le projet ISSOUFALI - Intervention et accompagnement par Hassan	f	142	127	2024-02-14 10:12:24	2024-02-14 10:12:24	6
28120	Hassan a été assigné à la tâche Automatisation récupération, traitement et envoi dans la base de données dans le projet ISSOUFALI - Intervention et accompagnement par Hassan	f	142	132	2024-02-14 10:12:24	2024-02-14 10:12:24	6
28121	Hassan a été assigné à la tâche Automatisation récupération, traitement et envoi dans la base de données dans le projet ISSOUFALI - Intervention et accompagnement par Hassan	f	142	150	2024-02-14 10:12:24	2024-02-14 10:12:24	6
28122	Tâche nouvellement créee du nom de Avoir par Mickaella dans le projet SMEF.	f	148	127	2024-02-14 10:13:35	2024-02-14 10:13:35	5
28123	Tâche nouvellement créee du nom de Avoir par Mickaella dans le projet SMEF.	f	148	135	2024-02-14 10:13:35	2024-02-14 10:13:35	5
28124	Tâche nouvellement créee du nom de Avoir par Mickaella dans le projet SMEF.	f	148	138	2024-02-14 10:13:35	2024-02-14 10:13:35	5
28125	Tâche nouvellement créee du nom de Avoir par Mickaella dans le projet SMEF.	f	148	132	2024-02-14 10:13:35	2024-02-14 10:13:35	5
28126	Tâche nouvellement créee du nom de Avoir par Mickaella dans le projet SMEF.	f	148	131	2024-02-14 10:13:35	2024-02-14 10:13:35	5
28127	Tâche nouvellement créee du nom de Avoir par Mickaella dans le projet SMEF.	f	148	145	2024-02-14 10:13:35	2024-02-14 10:13:35	5
28128	Tâche nouvellement créee du nom de Avoir par Mickaella dans le projet SMEF.	f	148	129	2024-02-14 10:13:35	2024-02-14 10:13:35	5
28129	Tâche nouvellement créee du nom de Avoir par Mickaella dans le projet SMEF.	f	148	150	2024-02-14 10:13:35	2024-02-14 10:13:35	5
28130	Tâche nouvellement créee du nom de Avoir par Mickaella dans le projet SMEF.	f	148	167	2024-02-14 10:13:35	2024-02-14 10:13:35	5
28132	Mickaella a été assigné à la tâche Avoir dans le projet SMEF par Mickaella	f	148	127	2024-02-14 10:13:35	2024-02-14 10:13:35	6
28133	Mickaella a été assigné à la tâche Avoir dans le projet SMEF par Mickaella	f	148	132	2024-02-14 10:13:35	2024-02-14 10:13:35	6
28134	Mickaella a été assigné à la tâche Avoir dans le projet SMEF par Mickaella	f	148	150	2024-02-14 10:13:35	2024-02-14 10:13:35	6
28135	Tâche nouvellement créee du nom de Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo par Hassan dans le projet ISSOUFALI - Intervention et accompagnement.	f	142	127	2024-02-14 10:14:29	2024-02-14 10:14:29	5
28136	Tâche nouvellement créee du nom de Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo par Hassan dans le projet ISSOUFALI - Intervention et accompagnement.	f	142	135	2024-02-14 10:14:29	2024-02-14 10:14:29	5
28137	Tâche nouvellement créee du nom de Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo par Hassan dans le projet ISSOUFALI - Intervention et accompagnement.	f	142	138	2024-02-14 10:14:29	2024-02-14 10:14:29	5
28138	Tâche nouvellement créee du nom de Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo par Hassan dans le projet ISSOUFALI - Intervention et accompagnement.	f	142	132	2024-02-14 10:14:29	2024-02-14 10:14:29	5
28139	Tâche nouvellement créee du nom de Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo par Hassan dans le projet ISSOUFALI - Intervention et accompagnement.	f	142	131	2024-02-14 10:14:29	2024-02-14 10:14:29	5
28140	Tâche nouvellement créee du nom de Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo par Hassan dans le projet ISSOUFALI - Intervention et accompagnement.	f	142	145	2024-02-14 10:14:29	2024-02-14 10:14:29	5
28141	Tâche nouvellement créee du nom de Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo par Hassan dans le projet ISSOUFALI - Intervention et accompagnement.	f	142	129	2024-02-14 10:14:29	2024-02-14 10:14:29	5
28118	Hassan a été assigné à la tâche Automatisation récupération, traitement et envoi dans la base de données dans le projet ISSOUFALI - Intervention et accompagnement par Hassan	t	142	142	2024-02-14 07:12:24	2024-02-14 07:12:24	6
28142	Tâche nouvellement créee du nom de Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo par Hassan dans le projet ISSOUFALI - Intervention et accompagnement.	f	142	150	2024-02-14 10:14:29	2024-02-14 10:14:29	5
28143	Tâche nouvellement créee du nom de Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo par Hassan dans le projet ISSOUFALI - Intervention et accompagnement.	f	142	167	2024-02-14 10:14:29	2024-02-14 10:14:29	5
28214	Tâche Taches supprimé par Hassan.	f	142	127	2024-02-14 10:20:12	2024-02-14 10:20:12	3
28215	Tâche Taches supprimé par Hassan.	f	142	135	2024-02-14 10:20:12	2024-02-14 10:20:12	3
28216	Tâche Taches supprimé par Hassan.	f	142	138	2024-02-14 10:20:12	2024-02-14 10:20:12	3
28217	Tâche Taches supprimé par Hassan.	f	142	132	2024-02-14 10:20:12	2024-02-14 10:20:12	3
28218	Tâche Taches supprimé par Hassan.	f	142	131	2024-02-14 10:20:12	2024-02-14 10:20:12	3
28219	Tâche Taches supprimé par Hassan.	f	142	145	2024-02-14 10:20:12	2024-02-14 10:20:12	3
28220	Tâche Taches supprimé par Hassan.	f	142	129	2024-02-14 10:20:12	2024-02-14 10:20:12	3
28221	Tâche Taches supprimé par Hassan.	f	142	150	2024-02-14 10:20:12	2024-02-14 10:20:12	3
28222	Tâche Taches supprimé par Hassan.	f	142	167	2024-02-14 10:20:12	2024-02-14 10:20:12	3
28166	Tâche Taches supprimé par Hassan.	f	142	127	2024-02-14 10:14:40	2024-02-14 10:14:40	3
28167	Tâche Taches supprimé par Hassan.	f	142	135	2024-02-14 10:14:40	2024-02-14 10:14:40	3
28168	Tâche Taches supprimé par Hassan.	f	142	138	2024-02-14 10:14:40	2024-02-14 10:14:40	3
28169	Tâche Taches supprimé par Hassan.	f	142	132	2024-02-14 10:14:40	2024-02-14 10:14:40	3
28170	Tâche Taches supprimé par Hassan.	f	142	131	2024-02-14 10:14:40	2024-02-14 10:14:40	3
28171	Tâche Taches supprimé par Hassan.	f	142	145	2024-02-14 10:14:40	2024-02-14 10:14:40	3
28172	Tâche Taches supprimé par Hassan.	f	142	129	2024-02-14 10:14:40	2024-02-14 10:14:40	3
28173	Tâche Taches supprimé par Hassan.	f	142	150	2024-02-14 10:14:40	2024-02-14 10:14:40	3
28174	Tâche Taches supprimé par Hassan.	f	142	167	2024-02-14 10:14:40	2024-02-14 10:14:40	3
28188	Tâche nouvellement créee du nom de Importation facture 2018 - 2019 par Mickaella dans le projet SMEF.	f	148	127	2024-02-14 10:15:35	2024-02-14 10:15:35	5
28189	Tâche nouvellement créee du nom de Importation facture 2018 - 2019 par Mickaella dans le projet SMEF.	f	148	135	2024-02-14 10:15:35	2024-02-14 10:15:35	5
28190	Tâche nouvellement créee du nom de Importation facture 2018 - 2019 par Mickaella dans le projet SMEF.	f	148	138	2024-02-14 10:15:35	2024-02-14 10:15:35	5
28191	Tâche nouvellement créee du nom de Importation facture 2018 - 2019 par Mickaella dans le projet SMEF.	f	148	132	2024-02-14 10:15:35	2024-02-14 10:15:35	5
28192	Tâche nouvellement créee du nom de Importation facture 2018 - 2019 par Mickaella dans le projet SMEF.	f	148	131	2024-02-14 10:15:35	2024-02-14 10:15:35	5
28193	Tâche nouvellement créee du nom de Importation facture 2018 - 2019 par Mickaella dans le projet SMEF.	f	148	145	2024-02-14 10:15:35	2024-02-14 10:15:35	5
28194	Tâche nouvellement créee du nom de Importation facture 2018 - 2019 par Mickaella dans le projet SMEF.	f	148	129	2024-02-14 10:15:35	2024-02-14 10:15:35	5
28195	Tâche nouvellement créee du nom de Importation facture 2018 - 2019 par Mickaella dans le projet SMEF.	f	148	150	2024-02-14 10:15:35	2024-02-14 10:15:35	5
28196	Tâche nouvellement créee du nom de Importation facture 2018 - 2019 par Mickaella dans le projet SMEF.	f	148	167	2024-02-14 10:15:35	2024-02-14 10:15:35	5
28198	Mickaella a été assigné à la tâche Importation facture 2018 - 2019 dans le projet SMEF par Mickaella	f	148	127	2024-02-14 10:15:35	2024-02-14 10:15:35	6
28199	Mickaella a été assigné à la tâche Importation facture 2018 - 2019 dans le projet SMEF par Mickaella	f	148	132	2024-02-14 10:15:35	2024-02-14 10:15:35	6
28200	Mickaella a été assigné à la tâche Importation facture 2018 - 2019 dans le projet SMEF par Mickaella	f	148	150	2024-02-14 10:15:35	2024-02-14 10:15:35	6
28144	Hassan a été assigné à la tâche Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo dans le projet ISSOUFALI - Intervention et accompagnement par Hassan	t	142	142	2024-02-14 07:14:29	2024-02-14 07:14:29	6
28148	Tâche "Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Hassan	f	142	127	2024-02-14 10:14:31	2024-02-14 10:14:31	1
28149	Tâche "Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Hassan	f	142	135	2024-02-14 10:14:31	2024-02-14 10:14:31	1
28150	Tâche "Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Hassan	f	142	138	2024-02-14 10:14:31	2024-02-14 10:14:31	1
28151	Tâche "Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Hassan	f	142	132	2024-02-14 10:14:31	2024-02-14 10:14:31	1
28152	Tâche "Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Hassan	f	142	131	2024-02-14 10:14:31	2024-02-14 10:14:31	1
28153	Tâche "Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Hassan	f	142	145	2024-02-14 10:14:31	2024-02-14 10:14:31	1
28154	Tâche "Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Hassan	f	142	129	2024-02-14 10:14:31	2024-02-14 10:14:31	1
28155	Tâche "Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Hassan	f	142	150	2024-02-14 10:14:31	2024-02-14 10:14:31	1
28156	Tâche "Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Odoo"\n          du projet ISSOUFALI - Intervention et accompagnement mise dans " En blocage " par Hassan	f	142	167	2024-02-14 10:14:31	2024-02-14 10:14:31	1
28175	Tâche nouvellement créee du nom de Importation Facture 2017 - 2018 par Mickaella dans le projet SMEF.	f	148	127	2024-02-14 10:14:46	2024-02-14 10:14:46	5
28176	Tâche nouvellement créee du nom de Importation Facture 2017 - 2018 par Mickaella dans le projet SMEF.	f	148	135	2024-02-14 10:14:46	2024-02-14 10:14:46	5
28177	Tâche nouvellement créee du nom de Importation Facture 2017 - 2018 par Mickaella dans le projet SMEF.	f	148	138	2024-02-14 10:14:46	2024-02-14 10:14:46	5
28178	Tâche nouvellement créee du nom de Importation Facture 2017 - 2018 par Mickaella dans le projet SMEF.	f	148	132	2024-02-14 10:14:46	2024-02-14 10:14:46	5
28179	Tâche nouvellement créee du nom de Importation Facture 2017 - 2018 par Mickaella dans le projet SMEF.	f	148	131	2024-02-14 10:14:46	2024-02-14 10:14:46	5
28180	Tâche nouvellement créee du nom de Importation Facture 2017 - 2018 par Mickaella dans le projet SMEF.	f	148	145	2024-02-14 10:14:46	2024-02-14 10:14:46	5
28181	Tâche nouvellement créee du nom de Importation Facture 2017 - 2018 par Mickaella dans le projet SMEF.	f	148	129	2024-02-14 10:14:46	2024-02-14 10:14:46	5
28182	Tâche nouvellement créee du nom de Importation Facture 2017 - 2018 par Mickaella dans le projet SMEF.	f	148	150	2024-02-14 10:14:46	2024-02-14 10:14:46	5
28183	Tâche nouvellement créee du nom de Importation Facture 2017 - 2018 par Mickaella dans le projet SMEF.	f	148	167	2024-02-14 10:14:46	2024-02-14 10:14:46	5
28185	Mickaella a été assigné à la tâche Importation Facture 2017 - 2018 dans le projet SMEF par Mickaella	f	148	127	2024-02-14 10:14:46	2024-02-14 10:14:46	6
28186	Mickaella a été assigné à la tâche Importation Facture 2017 - 2018 dans le projet SMEF par Mickaella	f	148	132	2024-02-14 10:14:46	2024-02-14 10:14:46	6
28187	Mickaella a été assigné à la tâche Importation Facture 2017 - 2018 dans le projet SMEF par Mickaella	f	148	150	2024-02-14 10:14:46	2024-02-14 10:14:46	6
28184	Mickaella a été assigné à la tâche Importation Facture 2017 - 2018 dans le projet SMEF par Mickaella	t	148	148	2024-02-14 07:14:46	2024-02-14 07:14:46	6
28197	Mickaella a été assigné à la tâche Importation facture 2018 - 2019 dans le projet SMEF par Mickaella	t	148	148	2024-02-14 07:15:35	2024-02-14 07:15:35	6
28131	Mickaella a été assigné à la tâche Avoir dans le projet SMEF par Mickaella	t	148	148	2024-02-14 07:13:35	2024-02-14 07:13:35	6
28211	Hassan a été assigné à la tâche Automatisation d'envoi de mail d'un fichier contenant les erreurs durant l'import dans le projet ZEOP - Mise en place d'une solution par Hassan	f	142	127	2024-02-14 10:19:58	2024-02-14 10:19:58	6
28212	Hassan a été assigné à la tâche Automatisation d'envoi de mail d'un fichier contenant les erreurs durant l'import dans le projet ZEOP - Mise en place d'une solution par Hassan	f	142	132	2024-02-14 10:19:58	2024-02-14 10:19:58	6
28213	Hassan a été assigné à la tâche Automatisation d'envoi de mail d'un fichier contenant les erreurs durant l'import dans le projet ZEOP - Mise en place d'une solution par Hassan	f	142	150	2024-02-14 10:19:58	2024-02-14 10:19:58	6
28223	Tâche nouvellement créee du nom de Préparation import Devis par Adrien dans le projet SMEF.	f	141	127	2024-02-14 10:31:13	2024-02-14 10:31:13	5
28224	Tâche nouvellement créee du nom de Préparation import Devis par Adrien dans le projet SMEF.	f	141	135	2024-02-14 10:31:13	2024-02-14 10:31:13	5
28225	Tâche nouvellement créee du nom de Préparation import Devis par Adrien dans le projet SMEF.	f	141	138	2024-02-14 10:31:13	2024-02-14 10:31:13	5
28226	Tâche nouvellement créee du nom de Préparation import Devis par Adrien dans le projet SMEF.	f	141	132	2024-02-14 10:31:13	2024-02-14 10:31:13	5
28227	Tâche nouvellement créee du nom de Préparation import Devis par Adrien dans le projet SMEF.	f	141	131	2024-02-14 10:31:13	2024-02-14 10:31:13	5
28228	Tâche nouvellement créee du nom de Préparation import Devis par Adrien dans le projet SMEF.	f	141	145	2024-02-14 10:31:13	2024-02-14 10:31:13	5
28229	Tâche nouvellement créee du nom de Préparation import Devis par Adrien dans le projet SMEF.	f	141	129	2024-02-14 10:31:13	2024-02-14 10:31:13	5
28230	Tâche nouvellement créee du nom de Préparation import Devis par Adrien dans le projet SMEF.	f	141	150	2024-02-14 10:31:13	2024-02-14 10:31:13	5
28231	Tâche nouvellement créee du nom de Préparation import Devis par Adrien dans le projet SMEF.	f	141	167	2024-02-14 10:31:13	2024-02-14 10:31:13	5
28233	Adrien a été assigné à la tâche Préparation import Devis dans le projet SMEF par Adrien	f	141	127	2024-02-14 10:31:13	2024-02-14 10:31:13	6
28234	Adrien a été assigné à la tâche Préparation import Devis dans le projet SMEF par Adrien	f	141	132	2024-02-14 10:31:13	2024-02-14 10:31:13	6
28235	Adrien a été assigné à la tâche Préparation import Devis dans le projet SMEF par Adrien	f	141	150	2024-02-14 10:31:13	2024-02-14 10:31:13	6
28236	Tâche nouvellement créee du nom de Analyse erreur lors de la création d'un avoir sur une facture par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	127	2024-02-14 11:24:26	2024-02-14 11:24:26	5
28237	Tâche nouvellement créee du nom de Analyse erreur lors de la création d'un avoir sur une facture par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	135	2024-02-14 11:24:26	2024-02-14 11:24:26	5
28238	Tâche nouvellement créee du nom de Analyse erreur lors de la création d'un avoir sur une facture par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	138	2024-02-14 11:24:26	2024-02-14 11:24:26	5
28239	Tâche nouvellement créee du nom de Analyse erreur lors de la création d'un avoir sur une facture par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	132	2024-02-14 11:24:26	2024-02-14 11:24:26	5
28240	Tâche nouvellement créee du nom de Analyse erreur lors de la création d'un avoir sur une facture par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	131	2024-02-14 11:24:26	2024-02-14 11:24:26	5
28241	Tâche nouvellement créee du nom de Analyse erreur lors de la création d'un avoir sur une facture par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	145	2024-02-14 11:24:26	2024-02-14 11:24:26	5
28242	Tâche nouvellement créee du nom de Analyse erreur lors de la création d'un avoir sur une facture par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	129	2024-02-14 11:24:26	2024-02-14 11:24:26	5
28243	Tâche nouvellement créee du nom de Analyse erreur lors de la création d'un avoir sur une facture par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	150	2024-02-14 11:24:26	2024-02-14 11:24:26	5
28244	Tâche nouvellement créee du nom de Analyse erreur lors de la création d'un avoir sur une facture par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	167	2024-02-14 11:24:26	2024-02-14 11:24:26	5
28246	Fanilo a été assigné à la tâche Analyse erreur lors de la création d'un avoir sur une facture dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	127	2024-02-14 11:24:26	2024-02-14 11:24:26	6
28247	Fanilo a été assigné à la tâche Analyse erreur lors de la création d'un avoir sur une facture dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	132	2024-02-14 11:24:26	2024-02-14 11:24:26	6
28248	Fanilo a été assigné à la tâche Analyse erreur lors de la création d'un avoir sur une facture dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	150	2024-02-14 11:24:26	2024-02-14 11:24:26	6
28249	Tâche nouvellement créee du nom de Création devis pour qlm  par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	127	2024-02-14 11:28:59	2024-02-14 11:28:59	5
28250	Tâche nouvellement créee du nom de Création devis pour qlm  par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	135	2024-02-14 11:28:59	2024-02-14 11:28:59	5
28251	Tâche nouvellement créee du nom de Création devis pour qlm  par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	138	2024-02-14 11:28:59	2024-02-14 11:28:59	5
28252	Tâche nouvellement créee du nom de Création devis pour qlm  par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	132	2024-02-14 11:28:59	2024-02-14 11:28:59	5
28253	Tâche nouvellement créee du nom de Création devis pour qlm  par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	131	2024-02-14 11:28:59	2024-02-14 11:28:59	5
28254	Tâche nouvellement créee du nom de Création devis pour qlm  par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	145	2024-02-14 11:28:59	2024-02-14 11:28:59	5
28255	Tâche nouvellement créee du nom de Création devis pour qlm  par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	129	2024-02-14 11:28:59	2024-02-14 11:28:59	5
28256	Tâche nouvellement créee du nom de Création devis pour qlm  par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	150	2024-02-14 11:28:59	2024-02-14 11:28:59	5
28257	Tâche nouvellement créee du nom de Création devis pour qlm  par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	167	2024-02-14 11:28:59	2024-02-14 11:28:59	5
28259	Fanilo a été assigné à la tâche Création devis pour qlm  dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	127	2024-02-14 11:28:59	2024-02-14 11:28:59	6
28260	Fanilo a été assigné à la tâche Création devis pour qlm  dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	132	2024-02-14 11:28:59	2024-02-14 11:28:59	6
28258	Fanilo a été assigné à la tâche Création devis pour qlm  dans le projet QLM - Intervention et accompagnement par Fanilo	t	137	137	2024-02-14 08:28:59	2024-02-14 08:28:59	6
28297	Fanilo a été assigné à la tâche Analyse d'un erreur lors d'annulation d'un reliquat de BR dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	137	2024-02-15 07:36:16	2024-02-15 07:36:16	6
28298	Fanilo a été assigné à la tâche Analyse d'un erreur lors d'annulation d'un reliquat de BR dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	127	2024-02-15 10:36:16	2024-02-15 10:36:16	6
28299	Fanilo a été assigné à la tâche Analyse d'un erreur lors d'annulation d'un reliquat de BR dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	132	2024-02-15 10:36:16	2024-02-15 10:36:16	6
28261	Fanilo a été assigné à la tâche Création devis pour qlm  dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	150	2024-02-14 11:28:59	2024-02-14 11:28:59	6
28210	Hassan a été assigné à la tâche Automatisation d'envoi de mail d'un fichier contenant les erreurs durant l'import dans le projet ZEOP - Mise en place d'une solution par Hassan	t	142	142	2024-02-14 07:19:58	2024-02-14 07:19:58	6
28262	Tâche nouvellement créee du nom de Analyse facture imprimée avec plusieurs BL rattachée par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	127	2024-02-14 14:39:00	2024-02-14 14:39:00	5
28263	Tâche nouvellement créee du nom de Analyse facture imprimée avec plusieurs BL rattachée par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	135	2024-02-14 14:39:00	2024-02-14 14:39:00	5
28264	Tâche nouvellement créee du nom de Analyse facture imprimée avec plusieurs BL rattachée par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	138	2024-02-14 14:39:00	2024-02-14 14:39:00	5
28265	Tâche nouvellement créee du nom de Analyse facture imprimée avec plusieurs BL rattachée par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	132	2024-02-14 14:39:00	2024-02-14 14:39:00	5
28266	Tâche nouvellement créee du nom de Analyse facture imprimée avec plusieurs BL rattachée par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	131	2024-02-14 14:39:00	2024-02-14 14:39:00	5
28267	Tâche nouvellement créee du nom de Analyse facture imprimée avec plusieurs BL rattachée par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	145	2024-02-14 14:39:00	2024-02-14 14:39:00	5
28268	Tâche nouvellement créee du nom de Analyse facture imprimée avec plusieurs BL rattachée par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	129	2024-02-14 14:39:00	2024-02-14 14:39:00	5
28269	Tâche nouvellement créee du nom de Analyse facture imprimée avec plusieurs BL rattachée par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	150	2024-02-14 14:39:00	2024-02-14 14:39:00	5
28270	Tâche nouvellement créee du nom de Analyse facture imprimée avec plusieurs BL rattachée par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	167	2024-02-14 14:39:00	2024-02-14 14:39:00	5
28272	Fanilo a été assigné à la tâche Analyse facture imprimée avec plusieurs BL rattachée dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	127	2024-02-14 14:39:00	2024-02-14 14:39:00	6
28273	Fanilo a été assigné à la tâche Analyse facture imprimée avec plusieurs BL rattachée dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	132	2024-02-14 14:39:00	2024-02-14 14:39:00	6
28274	Fanilo a été assigné à la tâche Analyse facture imprimée avec plusieurs BL rattachée dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	150	2024-02-14 14:39:00	2024-02-14 14:39:00	6
28232	Adrien a été assigné à la tâche Préparation import Devis dans le projet SMEF par Adrien	t	141	141	2024-02-14 07:31:13	2024-02-14 07:31:13	6
28245	Fanilo a été assigné à la tâche Analyse erreur lors de la création d'un avoir sur une facture dans le projet QLM - Intervention et accompagnement par Fanilo	t	137	137	2024-02-14 08:24:26	2024-02-14 08:24:26	6
28271	Fanilo a été assigné à la tâche Analyse facture imprimée avec plusieurs BL rattachée dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	t	137	137	2024-02-14 11:39:00	2024-02-14 11:39:00	6
28301	Tâche nouvellement créee du nom de Réctification de l'import devis et article par Koloina dans le projet MOLLAN.	f	147	127	2024-02-15 13:46:13	2024-02-15 13:46:13	5
28302	Tâche nouvellement créee du nom de Réctification de l'import devis et article par Koloina dans le projet MOLLAN.	f	147	135	2024-02-15 13:46:13	2024-02-15 13:46:13	5
28303	Tâche nouvellement créee du nom de Réctification de l'import devis et article par Koloina dans le projet MOLLAN.	f	147	138	2024-02-15 13:46:13	2024-02-15 13:46:13	5
28304	Tâche nouvellement créee du nom de Réctification de l'import devis et article par Koloina dans le projet MOLLAN.	f	147	132	2024-02-15 13:46:13	2024-02-15 13:46:13	5
28305	Tâche nouvellement créee du nom de Réctification de l'import devis et article par Koloina dans le projet MOLLAN.	f	147	131	2024-02-15 13:46:13	2024-02-15 13:46:13	5
28306	Tâche nouvellement créee du nom de Réctification de l'import devis et article par Koloina dans le projet MOLLAN.	f	147	145	2024-02-15 13:46:13	2024-02-15 13:46:13	5
28307	Tâche nouvellement créee du nom de Réctification de l'import devis et article par Koloina dans le projet MOLLAN.	f	147	129	2024-02-15 13:46:13	2024-02-15 13:46:13	5
28308	Tâche nouvellement créee du nom de Réctification de l'import devis et article par Koloina dans le projet MOLLAN.	f	147	150	2024-02-15 13:46:13	2024-02-15 13:46:13	5
28309	Tâche nouvellement créee du nom de Réctification de l'import devis et article par Koloina dans le projet MOLLAN.	f	147	167	2024-02-15 13:46:13	2024-02-15 13:46:13	5
28323	Hassan a été assigné à la tâche tashe tache dans le projet MADAPLAST - Intervention et accompagnement par PhidiaAdmin	f	127	132	2024-02-15 14:33:21	2024-02-15 14:33:21	6
28324	Hassan a été assigné à la tâche tashe tache dans le projet MADAPLAST - Intervention et accompagnement par PhidiaAdmin	f	127	150	2024-02-15 14:33:21	2024-02-15 14:33:21	6
28338	Tâche tashe tache supprimé par Hassan.	f	142	127	2024-02-15 14:36:48	2024-02-15 14:36:48	3
28339	Tâche tashe tache supprimé par Hassan.	f	142	135	2024-02-15 14:36:48	2024-02-15 14:36:48	3
28340	Tâche tashe tache supprimé par Hassan.	f	142	138	2024-02-15 14:36:48	2024-02-15 14:36:48	3
28341	Tâche tashe tache supprimé par Hassan.	f	142	132	2024-02-15 14:36:48	2024-02-15 14:36:48	3
28342	Tâche tashe tache supprimé par Hassan.	f	142	131	2024-02-15 14:36:48	2024-02-15 14:36:48	3
28343	Tâche tashe tache supprimé par Hassan.	f	142	145	2024-02-15 14:36:48	2024-02-15 14:36:48	3
28344	Tâche tashe tache supprimé par Hassan.	f	142	129	2024-02-15 14:36:48	2024-02-15 14:36:48	3
28345	Tâche tashe tache supprimé par Hassan.	f	142	150	2024-02-15 14:36:48	2024-02-15 14:36:48	3
28346	Tâche tashe tache supprimé par Hassan.	f	142	167	2024-02-15 14:36:48	2024-02-15 14:36:48	3
28358	Tâche désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  supprimé par Miandrisoa.	f	146	127	2024-02-15 16:35:14	2024-02-15 16:35:14	3
28359	Tâche désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  supprimé par Miandrisoa.	f	146	135	2024-02-15 16:35:14	2024-02-15 16:35:14	3
28360	Tâche désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  supprimé par Miandrisoa.	f	146	138	2024-02-15 16:35:14	2024-02-15 16:35:14	3
28275	Tâche nouvellement créee du nom de Transfert compta via le transfert xml dans un répertoire compta par Miandrisoa dans le projet ACTIVE NEGOCE - Transfert Compta.	f	146	127	2024-02-14 16:20:14	2024-02-14 16:20:14	5
28276	Tâche nouvellement créee du nom de Transfert compta via le transfert xml dans un répertoire compta par Miandrisoa dans le projet ACTIVE NEGOCE - Transfert Compta.	f	146	135	2024-02-14 16:20:14	2024-02-14 16:20:14	5
28277	Tâche nouvellement créee du nom de Transfert compta via le transfert xml dans un répertoire compta par Miandrisoa dans le projet ACTIVE NEGOCE - Transfert Compta.	f	146	138	2024-02-14 16:20:14	2024-02-14 16:20:14	5
28278	Tâche nouvellement créee du nom de Transfert compta via le transfert xml dans un répertoire compta par Miandrisoa dans le projet ACTIVE NEGOCE - Transfert Compta.	f	146	132	2024-02-14 16:20:14	2024-02-14 16:20:14	5
28279	Tâche nouvellement créee du nom de Transfert compta via le transfert xml dans un répertoire compta par Miandrisoa dans le projet ACTIVE NEGOCE - Transfert Compta.	f	146	131	2024-02-14 16:20:14	2024-02-14 16:20:14	5
28280	Tâche nouvellement créee du nom de Transfert compta via le transfert xml dans un répertoire compta par Miandrisoa dans le projet ACTIVE NEGOCE - Transfert Compta.	f	146	145	2024-02-14 16:20:14	2024-02-14 16:20:14	5
28281	Tâche nouvellement créee du nom de Transfert compta via le transfert xml dans un répertoire compta par Miandrisoa dans le projet ACTIVE NEGOCE - Transfert Compta.	f	146	129	2024-02-14 16:20:14	2024-02-14 16:20:14	5
28282	Tâche nouvellement créee du nom de Transfert compta via le transfert xml dans un répertoire compta par Miandrisoa dans le projet ACTIVE NEGOCE - Transfert Compta.	f	146	150	2024-02-14 16:20:14	2024-02-14 16:20:14	5
28283	Tâche nouvellement créee du nom de Transfert compta via le transfert xml dans un répertoire compta par Miandrisoa dans le projet ACTIVE NEGOCE - Transfert Compta.	f	146	167	2024-02-14 16:20:14	2024-02-14 16:20:14	5
28284	Miandrisoa a été assigné à la tâche Transfert compta via le transfert xml dans un répertoire compta dans le projet ACTIVE NEGOCE - Transfert Compta par Miandrisoa	f	146	146	2024-02-14 13:20:14	2024-02-14 13:20:14	6
28285	Miandrisoa a été assigné à la tâche Transfert compta via le transfert xml dans un répertoire compta dans le projet ACTIVE NEGOCE - Transfert Compta par Miandrisoa	f	146	127	2024-02-14 16:20:14	2024-02-14 16:20:14	6
28286	Miandrisoa a été assigné à la tâche Transfert compta via le transfert xml dans un répertoire compta dans le projet ACTIVE NEGOCE - Transfert Compta par Miandrisoa	f	146	132	2024-02-14 16:20:14	2024-02-14 16:20:14	6
28287	Miandrisoa a été assigné à la tâche Transfert compta via le transfert xml dans un répertoire compta dans le projet ACTIVE NEGOCE - Transfert Compta par Miandrisoa	f	146	150	2024-02-14 16:20:14	2024-02-14 16:20:14	6
28288	Tâche nouvellement créee du nom de Analyse d'un erreur lors d'annulation d'un reliquat de BR par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	127	2024-02-15 10:36:16	2024-02-15 10:36:16	5
28289	Tâche nouvellement créee du nom de Analyse d'un erreur lors d'annulation d'un reliquat de BR par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	135	2024-02-15 10:36:16	2024-02-15 10:36:16	5
28290	Tâche nouvellement créee du nom de Analyse d'un erreur lors d'annulation d'un reliquat de BR par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	138	2024-02-15 10:36:16	2024-02-15 10:36:16	5
28291	Tâche nouvellement créee du nom de Analyse d'un erreur lors d'annulation d'un reliquat de BR par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	132	2024-02-15 10:36:16	2024-02-15 10:36:16	5
28292	Tâche nouvellement créee du nom de Analyse d'un erreur lors d'annulation d'un reliquat de BR par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	131	2024-02-15 10:36:16	2024-02-15 10:36:16	5
28293	Tâche nouvellement créee du nom de Analyse d'un erreur lors d'annulation d'un reliquat de BR par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	145	2024-02-15 10:36:16	2024-02-15 10:36:16	5
28294	Tâche nouvellement créee du nom de Analyse d'un erreur lors d'annulation d'un reliquat de BR par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	129	2024-02-15 10:36:16	2024-02-15 10:36:16	5
28295	Tâche nouvellement créee du nom de Analyse d'un erreur lors d'annulation d'un reliquat de BR par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	150	2024-02-15 10:36:16	2024-02-15 10:36:16	5
28296	Tâche nouvellement créee du nom de Analyse d'un erreur lors d'annulation d'un reliquat de BR par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	167	2024-02-15 10:36:16	2024-02-15 10:36:16	5
28335	Hassan a été assigné à la tâche Ajustement fichier IRSA  dans le projet MADAPLAST - Intervention et accompagnement par Hassan	f	142	127	2024-02-15 14:36:25	2024-02-15 14:36:25	6
28336	Hassan a été assigné à la tâche Ajustement fichier IRSA  dans le projet MADAPLAST - Intervention et accompagnement par Hassan	f	142	132	2024-02-15 14:36:25	2024-02-15 14:36:25	6
28337	Hassan a été assigné à la tâche Ajustement fichier IRSA  dans le projet MADAPLAST - Intervention et accompagnement par Hassan	f	142	150	2024-02-15 14:36:25	2024-02-15 14:36:25	6
28322	Hassan a été assigné à la tâche tashe tache dans le projet MADAPLAST - Intervention et accompagnement par PhidiaAdmin	t	127	142	2024-02-15 11:33:21	2024-02-15 11:33:21	6
28407	Tâche Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 supprimé par Miandrisoa.	f	146	127	2024-02-15 16:39:09	2024-02-15 16:39:09	3
28408	Tâche Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 supprimé par Miandrisoa.	f	146	135	2024-02-15 16:39:09	2024-02-15 16:39:09	3
28409	Tâche Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 supprimé par Miandrisoa.	f	146	138	2024-02-15 16:39:09	2024-02-15 16:39:09	3
28410	Tâche Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 supprimé par Miandrisoa.	f	146	132	2024-02-15 16:39:09	2024-02-15 16:39:09	3
28411	Tâche Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 supprimé par Miandrisoa.	f	146	131	2024-02-15 16:39:09	2024-02-15 16:39:09	3
28355	Hassan a été assigné à la tâche tache dans le projet QLM - Intervention et accompagnement par PhidiaAdmin	t	127	142	2024-02-15 11:40:45	2024-02-15 11:40:45	6
28300	Fanilo a été assigné à la tâche Analyse d'un erreur lors d'annulation d'un reliquat de BR dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	150	2024-02-15 10:36:16	2024-02-15 10:36:16	6
28310	Koloina a été assigné à la tâche Réctification de l'import devis et article dans le projet MOLLAN par Koloina	f	147	147	2024-02-15 10:46:13	2024-02-15 10:46:13	6
28377	Miandrisoa a été assigné à la tâche Compte rendu de la réunion avec Coralie dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	127	2024-02-15 16:37:23	2024-02-15 16:37:23	6
28378	Miandrisoa a été assigné à la tâche Compte rendu de la réunion avec Coralie dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	132	2024-02-15 16:37:23	2024-02-15 16:37:23	6
28379	Miandrisoa a été assigné à la tâche Compte rendu de la réunion avec Coralie dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	150	2024-02-15 16:37:23	2024-02-15 16:37:23	6
28380	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	127	2024-02-15 16:37:31	2024-02-15 16:37:31	3
28381	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	135	2024-02-15 16:37:31	2024-02-15 16:37:31	3
28382	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	138	2024-02-15 16:37:31	2024-02-15 16:37:31	3
28383	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	132	2024-02-15 16:37:31	2024-02-15 16:37:31	3
28384	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	131	2024-02-15 16:37:31	2024-02-15 16:37:31	3
28385	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	145	2024-02-15 16:37:31	2024-02-15 16:37:31	3
28386	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	129	2024-02-15 16:37:31	2024-02-15 16:37:31	3
28387	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	150	2024-02-15 16:37:31	2024-02-15 16:37:31	3
28388	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	167	2024-02-15 16:37:31	2024-02-15 16:37:31	3
28389	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	127	2024-02-15 16:38:10	2024-02-15 16:38:10	3
28390	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	135	2024-02-15 16:38:10	2024-02-15 16:38:10	3
28391	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	138	2024-02-15 16:38:10	2024-02-15 16:38:10	3
28392	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	132	2024-02-15 16:38:10	2024-02-15 16:38:10	3
28393	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	131	2024-02-15 16:38:10	2024-02-15 16:38:10	3
28394	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	145	2024-02-15 16:38:10	2024-02-15 16:38:10	3
28395	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	129	2024-02-15 16:38:10	2024-02-15 16:38:10	3
28396	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	150	2024-02-15 16:38:10	2024-02-15 16:38:10	3
28397	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	167	2024-02-15 16:38:10	2024-02-15 16:38:10	3
28311	Koloina a été assigné à la tâche Réctification de l'import devis et article dans le projet MOLLAN par Koloina	f	147	127	2024-02-15 13:46:13	2024-02-15 13:46:13	6
28312	Koloina a été assigné à la tâche Réctification de l'import devis et article dans le projet MOLLAN par Koloina	f	147	132	2024-02-15 13:46:13	2024-02-15 13:46:13	6
28313	Koloina a été assigné à la tâche Réctification de l'import devis et article dans le projet MOLLAN par Koloina	f	147	150	2024-02-15 13:46:13	2024-02-15 13:46:13	6
28325	Tâche nouvellement créee du nom de Ajustement fichier IRSA  par Hassan dans le projet MADAPLAST - Intervention et accompagnement.	f	142	127	2024-02-15 14:36:25	2024-02-15 14:36:25	5
28326	Tâche nouvellement créee du nom de Ajustement fichier IRSA  par Hassan dans le projet MADAPLAST - Intervention et accompagnement.	f	142	135	2024-02-15 14:36:25	2024-02-15 14:36:25	5
28327	Tâche nouvellement créee du nom de Ajustement fichier IRSA  par Hassan dans le projet MADAPLAST - Intervention et accompagnement.	f	142	138	2024-02-15 14:36:25	2024-02-15 14:36:25	5
28328	Tâche nouvellement créee du nom de Ajustement fichier IRSA  par Hassan dans le projet MADAPLAST - Intervention et accompagnement.	f	142	132	2024-02-15 14:36:25	2024-02-15 14:36:25	5
28329	Tâche nouvellement créee du nom de Ajustement fichier IRSA  par Hassan dans le projet MADAPLAST - Intervention et accompagnement.	f	142	131	2024-02-15 14:36:25	2024-02-15 14:36:25	5
28330	Tâche nouvellement créee du nom de Ajustement fichier IRSA  par Hassan dans le projet MADAPLAST - Intervention et accompagnement.	f	142	145	2024-02-15 14:36:25	2024-02-15 14:36:25	5
28331	Tâche nouvellement créee du nom de Ajustement fichier IRSA  par Hassan dans le projet MADAPLAST - Intervention et accompagnement.	f	142	129	2024-02-15 14:36:25	2024-02-15 14:36:25	5
28332	Tâche nouvellement créee du nom de Ajustement fichier IRSA  par Hassan dans le projet MADAPLAST - Intervention et accompagnement.	f	142	150	2024-02-15 14:36:25	2024-02-15 14:36:25	5
28333	Tâche nouvellement créee du nom de Ajustement fichier IRSA  par Hassan dans le projet MADAPLAST - Intervention et accompagnement.	f	142	167	2024-02-15 14:36:25	2024-02-15 14:36:25	5
28356	Hassan a été assigné à la tâche tache dans le projet QLM - Intervention et accompagnement par PhidiaAdmin	f	127	132	2024-02-15 14:40:45	2024-02-15 14:40:45	6
28357	Hassan a été assigné à la tâche tache dans le projet QLM - Intervention et accompagnement par PhidiaAdmin	f	127	150	2024-02-15 14:40:45	2024-02-15 14:40:45	6
28376	Miandrisoa a été assigné à la tâche Compte rendu de la réunion avec Coralie dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	146	2024-02-15 13:37:23	2024-02-15 13:37:23	6
28398	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	127	2024-02-15 16:38:28	2024-02-15 16:38:28	3
28399	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	135	2024-02-15 16:38:28	2024-02-15 16:38:28	3
28400	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	138	2024-02-15 16:38:28	2024-02-15 16:38:28	3
28401	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	132	2024-02-15 16:38:28	2024-02-15 16:38:28	3
28402	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	131	2024-02-15 16:38:28	2024-02-15 16:38:28	3
28403	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	145	2024-02-15 16:38:28	2024-02-15 16:38:28	3
28404	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	129	2024-02-15 16:38:28	2024-02-15 16:38:28	3
28405	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	150	2024-02-15 16:38:28	2024-02-15 16:38:28	3
28406	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	167	2024-02-15 16:38:28	2024-02-15 16:38:28	3
28314	Tâche nouvellement créee du nom de tashe tache par PhidiaAdmin dans le projet MADAPLAST - Intervention et accompagnement.	f	127	135	2024-02-15 14:33:21	2024-02-15 14:33:21	5
28315	Tâche nouvellement créee du nom de tashe tache par PhidiaAdmin dans le projet MADAPLAST - Intervention et accompagnement.	f	127	138	2024-02-15 14:33:21	2024-02-15 14:33:21	5
28316	Tâche nouvellement créee du nom de tashe tache par PhidiaAdmin dans le projet MADAPLAST - Intervention et accompagnement.	f	127	132	2024-02-15 14:33:21	2024-02-15 14:33:21	5
28317	Tâche nouvellement créee du nom de tashe tache par PhidiaAdmin dans le projet MADAPLAST - Intervention et accompagnement.	f	127	131	2024-02-15 14:33:21	2024-02-15 14:33:21	5
28318	Tâche nouvellement créee du nom de tashe tache par PhidiaAdmin dans le projet MADAPLAST - Intervention et accompagnement.	f	127	145	2024-02-15 14:33:21	2024-02-15 14:33:21	5
28319	Tâche nouvellement créee du nom de tashe tache par PhidiaAdmin dans le projet MADAPLAST - Intervention et accompagnement.	f	127	129	2024-02-15 14:33:21	2024-02-15 14:33:21	5
28320	Tâche nouvellement créee du nom de tashe tache par PhidiaAdmin dans le projet MADAPLAST - Intervention et accompagnement.	f	127	150	2024-02-15 14:33:21	2024-02-15 14:33:21	5
28321	Tâche nouvellement créee du nom de tashe tache par PhidiaAdmin dans le projet MADAPLAST - Intervention et accompagnement.	f	127	167	2024-02-15 14:33:21	2024-02-15 14:33:21	5
28334	Hassan a été assigné à la tâche Ajustement fichier IRSA  dans le projet MADAPLAST - Intervention et accompagnement par Hassan	t	142	142	2024-02-15 11:36:25	2024-02-15 11:36:25	6
28347	Tâche nouvellement créee du nom de tache par PhidiaAdmin dans le projet QLM - Intervention et accompagnement.	f	127	135	2024-02-15 14:40:45	2024-02-15 14:40:45	5
28348	Tâche nouvellement créee du nom de tache par PhidiaAdmin dans le projet QLM - Intervention et accompagnement.	f	127	138	2024-02-15 14:40:45	2024-02-15 14:40:45	5
28349	Tâche nouvellement créee du nom de tache par PhidiaAdmin dans le projet QLM - Intervention et accompagnement.	f	127	132	2024-02-15 14:40:45	2024-02-15 14:40:45	5
28350	Tâche nouvellement créee du nom de tache par PhidiaAdmin dans le projet QLM - Intervention et accompagnement.	f	127	131	2024-02-15 14:40:45	2024-02-15 14:40:45	5
28351	Tâche nouvellement créee du nom de tache par PhidiaAdmin dans le projet QLM - Intervention et accompagnement.	f	127	145	2024-02-15 14:40:45	2024-02-15 14:40:45	5
28352	Tâche nouvellement créee du nom de tache par PhidiaAdmin dans le projet QLM - Intervention et accompagnement.	f	127	129	2024-02-15 14:40:45	2024-02-15 14:40:45	5
28353	Tâche nouvellement créee du nom de tache par PhidiaAdmin dans le projet QLM - Intervention et accompagnement.	f	127	150	2024-02-15 14:40:45	2024-02-15 14:40:45	5
28354	Tâche nouvellement créee du nom de tache par PhidiaAdmin dans le projet QLM - Intervention et accompagnement.	f	127	167	2024-02-15 14:40:45	2024-02-15 14:40:45	5
28361	Tâche désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  supprimé par Miandrisoa.	f	146	132	2024-02-15 16:35:14	2024-02-15 16:35:14	3
28362	Tâche désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  supprimé par Miandrisoa.	f	146	131	2024-02-15 16:35:14	2024-02-15 16:35:14	3
28363	Tâche désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  supprimé par Miandrisoa.	f	146	145	2024-02-15 16:35:14	2024-02-15 16:35:14	3
28364	Tâche désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  supprimé par Miandrisoa.	f	146	129	2024-02-15 16:35:14	2024-02-15 16:35:14	3
28365	Tâche désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  supprimé par Miandrisoa.	f	146	150	2024-02-15 16:35:14	2024-02-15 16:35:14	3
28366	Tâche désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements »  supprimé par Miandrisoa.	f	146	167	2024-02-15 16:35:14	2024-02-15 16:35:14	3
28367	Tâche nouvellement créee du nom de Compte rendu de la réunion avec Coralie par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	127	2024-02-15 16:37:23	2024-02-15 16:37:23	5
28368	Tâche nouvellement créee du nom de Compte rendu de la réunion avec Coralie par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	135	2024-02-15 16:37:23	2024-02-15 16:37:23	5
28369	Tâche nouvellement créee du nom de Compte rendu de la réunion avec Coralie par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	138	2024-02-15 16:37:23	2024-02-15 16:37:23	5
28370	Tâche nouvellement créee du nom de Compte rendu de la réunion avec Coralie par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	132	2024-02-15 16:37:23	2024-02-15 16:37:23	5
28371	Tâche nouvellement créee du nom de Compte rendu de la réunion avec Coralie par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	131	2024-02-15 16:37:23	2024-02-15 16:37:23	5
28372	Tâche nouvellement créee du nom de Compte rendu de la réunion avec Coralie par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	145	2024-02-15 16:37:23	2024-02-15 16:37:23	5
28373	Tâche nouvellement créee du nom de Compte rendu de la réunion avec Coralie par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	129	2024-02-15 16:37:23	2024-02-15 16:37:23	5
28374	Tâche nouvellement créee du nom de Compte rendu de la réunion avec Coralie par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	150	2024-02-15 16:37:23	2024-02-15 16:37:23	5
28375	Tâche nouvellement créee du nom de Compte rendu de la réunion avec Coralie par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	167	2024-02-15 16:37:23	2024-02-15 16:37:23	5
28412	Tâche Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 supprimé par Miandrisoa.	f	146	145	2024-02-15 16:39:09	2024-02-15 16:39:09	3
28413	Tâche Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 supprimé par Miandrisoa.	f	146	129	2024-02-15 16:39:09	2024-02-15 16:39:09	3
28414	Tâche Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 supprimé par Miandrisoa.	f	146	150	2024-02-15 16:39:09	2024-02-15 16:39:09	3
28415	Tâche Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 supprimé par Miandrisoa.	f	146	167	2024-02-15 16:39:09	2024-02-15 16:39:09	3
28416	Tâche nouvellement créee du nom de Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	127	2024-02-15 16:39:43	2024-02-15 16:39:43	5
28417	Tâche nouvellement créee du nom de Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	135	2024-02-15 16:39:43	2024-02-15 16:39:43	5
28418	Tâche nouvellement créee du nom de Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	138	2024-02-15 16:39:43	2024-02-15 16:39:43	5
28419	Tâche nouvellement créee du nom de Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	132	2024-02-15 16:39:43	2024-02-15 16:39:43	5
28420	Tâche nouvellement créee du nom de Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	131	2024-02-15 16:39:43	2024-02-15 16:39:43	5
28421	Tâche nouvellement créee du nom de Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	145	2024-02-15 16:39:43	2024-02-15 16:39:43	5
28422	Tâche nouvellement créee du nom de Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	129	2024-02-15 16:39:43	2024-02-15 16:39:43	5
28423	Tâche nouvellement créee du nom de Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	150	2024-02-15 16:39:43	2024-02-15 16:39:43	5
28424	Tâche nouvellement créee du nom de Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	167	2024-02-15 16:39:43	2024-02-15 16:39:43	5
28425	Miandrisoa a été assigné à la tâche Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	146	2024-02-15 13:39:43	2024-02-15 13:39:43	6
28426	Miandrisoa a été assigné à la tâche Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	127	2024-02-15 16:39:43	2024-02-15 16:39:43	6
28427	Miandrisoa a été assigné à la tâche Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	132	2024-02-15 16:39:43	2024-02-15 16:39:43	6
28428	Miandrisoa a été assigné à la tâche Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	150	2024-02-15 16:39:43	2024-02-15 16:39:43	6
28429	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	127	2024-02-15 16:40:30	2024-02-15 16:40:30	3
28430	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	135	2024-02-15 16:40:30	2024-02-15 16:40:30	3
28431	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	138	2024-02-15 16:40:30	2024-02-15 16:40:30	3
28432	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	132	2024-02-15 16:40:30	2024-02-15 16:40:30	3
28433	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	131	2024-02-15 16:40:30	2024-02-15 16:40:30	3
28434	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	145	2024-02-15 16:40:30	2024-02-15 16:40:30	3
28435	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	129	2024-02-15 16:40:30	2024-02-15 16:40:30	3
28436	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	150	2024-02-15 16:40:30	2024-02-15 16:40:30	3
28437	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	167	2024-02-15 16:40:30	2024-02-15 16:40:30	3
28438	Tâche "Compte rendu de la réunion avec Coralie"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " En blocage " par Miandrisoa	f	146	127	2024-02-15 16:40:36	2024-02-15 16:40:36	1
28439	Tâche "Compte rendu de la réunion avec Coralie"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " En blocage " par Miandrisoa	f	146	135	2024-02-15 16:40:36	2024-02-15 16:40:36	1
28440	Tâche "Compte rendu de la réunion avec Coralie"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " En blocage " par Miandrisoa	f	146	138	2024-02-15 16:40:36	2024-02-15 16:40:36	1
28441	Tâche "Compte rendu de la réunion avec Coralie"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " En blocage " par Miandrisoa	f	146	132	2024-02-15 16:40:36	2024-02-15 16:40:36	1
28442	Tâche "Compte rendu de la réunion avec Coralie"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " En blocage " par Miandrisoa	f	146	131	2024-02-15 16:40:36	2024-02-15 16:40:36	1
28443	Tâche "Compte rendu de la réunion avec Coralie"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " En blocage " par Miandrisoa	f	146	145	2024-02-15 16:40:36	2024-02-15 16:40:36	1
28444	Tâche "Compte rendu de la réunion avec Coralie"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " En blocage " par Miandrisoa	f	146	129	2024-02-15 16:40:36	2024-02-15 16:40:36	1
28445	Tâche "Compte rendu de la réunion avec Coralie"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " En blocage " par Miandrisoa	f	146	150	2024-02-15 16:40:36	2024-02-15 16:40:36	1
28446	Tâche "Compte rendu de la réunion avec Coralie"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " En blocage " par Miandrisoa	f	146	167	2024-02-15 16:40:36	2024-02-15 16:40:36	1
28447	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	127	2024-02-15 16:40:55	2024-02-15 16:40:55	3
28448	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	135	2024-02-15 16:40:55	2024-02-15 16:40:55	3
28449	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	138	2024-02-15 16:40:55	2024-02-15 16:40:55	3
28450	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	132	2024-02-15 16:40:55	2024-02-15 16:40:55	3
28451	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	131	2024-02-15 16:40:55	2024-02-15 16:40:55	3
28452	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	145	2024-02-15 16:40:55	2024-02-15 16:40:55	3
28453	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	129	2024-02-15 16:40:55	2024-02-15 16:40:55	3
28454	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	150	2024-02-15 16:40:55	2024-02-15 16:40:55	3
28455	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	167	2024-02-15 16:40:55	2024-02-15 16:40:55	3
28456	Tâche "Compte rendu de la réunion avec Coralie"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " A faire " par Miandrisoa	f	146	127	2024-02-15 16:41:02	2024-02-15 16:41:02	1
28457	Tâche "Compte rendu de la réunion avec Coralie"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " A faire " par Miandrisoa	f	146	135	2024-02-15 16:41:02	2024-02-15 16:41:02	1
28458	Tâche "Compte rendu de la réunion avec Coralie"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " A faire " par Miandrisoa	f	146	138	2024-02-15 16:41:02	2024-02-15 16:41:02	1
28459	Tâche "Compte rendu de la réunion avec Coralie"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " A faire " par Miandrisoa	f	146	132	2024-02-15 16:41:02	2024-02-15 16:41:02	1
28460	Tâche "Compte rendu de la réunion avec Coralie"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " A faire " par Miandrisoa	f	146	131	2024-02-15 16:41:02	2024-02-15 16:41:02	1
28461	Tâche "Compte rendu de la réunion avec Coralie"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " A faire " par Miandrisoa	f	146	145	2024-02-15 16:41:02	2024-02-15 16:41:02	1
28462	Tâche "Compte rendu de la réunion avec Coralie"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " A faire " par Miandrisoa	f	146	129	2024-02-15 16:41:02	2024-02-15 16:41:02	1
28463	Tâche "Compte rendu de la réunion avec Coralie"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " A faire " par Miandrisoa	f	146	150	2024-02-15 16:41:02	2024-02-15 16:41:02	1
28464	Tâche "Compte rendu de la réunion avec Coralie"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " A faire " par Miandrisoa	f	146	167	2024-02-15 16:41:02	2024-02-15 16:41:02	1
28465	Tâche PRESTIGE: ajout d'un bouton de rappel de BL et création d'un moyen de paiement "Virement" sur le point de vente de la caisse. supprimé par Miandrisoa.	f	146	127	2024-02-15 16:43:51	2024-02-15 16:43:51	3
28466	Tâche PRESTIGE: ajout d'un bouton de rappel de BL et création d'un moyen de paiement "Virement" sur le point de vente de la caisse. supprimé par Miandrisoa.	f	146	135	2024-02-15 16:43:51	2024-02-15 16:43:51	3
28467	Tâche PRESTIGE: ajout d'un bouton de rappel de BL et création d'un moyen de paiement "Virement" sur le point de vente de la caisse. supprimé par Miandrisoa.	f	146	138	2024-02-15 16:43:51	2024-02-15 16:43:51	3
28468	Tâche PRESTIGE: ajout d'un bouton de rappel de BL et création d'un moyen de paiement "Virement" sur le point de vente de la caisse. supprimé par Miandrisoa.	f	146	132	2024-02-15 16:43:51	2024-02-15 16:43:51	3
28469	Tâche PRESTIGE: ajout d'un bouton de rappel de BL et création d'un moyen de paiement "Virement" sur le point de vente de la caisse. supprimé par Miandrisoa.	f	146	131	2024-02-15 16:43:51	2024-02-15 16:43:51	3
28470	Tâche PRESTIGE: ajout d'un bouton de rappel de BL et création d'un moyen de paiement "Virement" sur le point de vente de la caisse. supprimé par Miandrisoa.	f	146	145	2024-02-15 16:43:51	2024-02-15 16:43:51	3
28471	Tâche PRESTIGE: ajout d'un bouton de rappel de BL et création d'un moyen de paiement "Virement" sur le point de vente de la caisse. supprimé par Miandrisoa.	f	146	129	2024-02-15 16:43:51	2024-02-15 16:43:51	3
28472	Tâche PRESTIGE: ajout d'un bouton de rappel de BL et création d'un moyen de paiement "Virement" sur le point de vente de la caisse. supprimé par Miandrisoa.	f	146	150	2024-02-15 16:43:51	2024-02-15 16:43:51	3
28473	Tâche PRESTIGE: ajout d'un bouton de rappel de BL et création d'un moyen de paiement "Virement" sur le point de vente de la caisse. supprimé par Miandrisoa.	f	146	167	2024-02-15 16:43:51	2024-02-15 16:43:51	3
28474	Tâche nouvellement créee du nom de Etat comparatif des ventes mensuel Année N et Année N-1. par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	127	2024-02-15 16:46:31	2024-02-15 16:46:31	5
28475	Tâche nouvellement créee du nom de Etat comparatif des ventes mensuel Année N et Année N-1. par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	135	2024-02-15 16:46:31	2024-02-15 16:46:31	5
28476	Tâche nouvellement créee du nom de Etat comparatif des ventes mensuel Année N et Année N-1. par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	138	2024-02-15 16:46:31	2024-02-15 16:46:31	5
28477	Tâche nouvellement créee du nom de Etat comparatif des ventes mensuel Année N et Année N-1. par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	132	2024-02-15 16:46:31	2024-02-15 16:46:31	5
28478	Tâche nouvellement créee du nom de Etat comparatif des ventes mensuel Année N et Année N-1. par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	131	2024-02-15 16:46:31	2024-02-15 16:46:31	5
28479	Tâche nouvellement créee du nom de Etat comparatif des ventes mensuel Année N et Année N-1. par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	145	2024-02-15 16:46:31	2024-02-15 16:46:31	5
28803	Tâche Importation facture 2018 - 2019 supprimé par Mickaella.	f	148	150	2024-02-23 13:31:09	2024-02-23 13:31:09	3
28480	Tâche nouvellement créee du nom de Etat comparatif des ventes mensuel Année N et Année N-1. par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	129	2024-02-15 16:46:31	2024-02-15 16:46:31	5
28481	Tâche nouvellement créee du nom de Etat comparatif des ventes mensuel Année N et Année N-1. par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	150	2024-02-15 16:46:31	2024-02-15 16:46:31	5
28482	Tâche nouvellement créee du nom de Etat comparatif des ventes mensuel Année N et Année N-1. par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	167	2024-02-15 16:46:31	2024-02-15 16:46:31	5
28535	Tâche nouvellement créee du nom de ISSOUFALI - Etat de caisse UU 010123-311223 par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	127	2024-02-16 13:30:01	2024-02-16 13:30:01	5
28536	Tâche nouvellement créee du nom de ISSOUFALI - Etat de caisse UU 010123-311223 par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	135	2024-02-16 13:30:01	2024-02-16 13:30:01	5
28537	Tâche nouvellement créee du nom de ISSOUFALI - Etat de caisse UU 010123-311223 par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	138	2024-02-16 13:30:01	2024-02-16 13:30:01	5
28538	Tâche nouvellement créee du nom de ISSOUFALI - Etat de caisse UU 010123-311223 par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	132	2024-02-16 13:30:01	2024-02-16 13:30:01	5
28539	Tâche nouvellement créee du nom de ISSOUFALI - Etat de caisse UU 010123-311223 par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	131	2024-02-16 13:30:01	2024-02-16 13:30:01	5
28540	Tâche nouvellement créee du nom de ISSOUFALI - Etat de caisse UU 010123-311223 par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	145	2024-02-16 13:30:01	2024-02-16 13:30:01	5
28541	Tâche nouvellement créee du nom de ISSOUFALI - Etat de caisse UU 010123-311223 par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	129	2024-02-16 13:30:01	2024-02-16 13:30:01	5
28542	Tâche nouvellement créee du nom de ISSOUFALI - Etat de caisse UU 010123-311223 par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	150	2024-02-16 13:30:01	2024-02-16 13:30:01	5
28543	Tâche nouvellement créee du nom de ISSOUFALI - Etat de caisse UU 010123-311223 par Koloina dans le projet ISSOUFALI - Intervention et accompagnement.	f	147	167	2024-02-16 13:30:01	2024-02-16 13:30:01	5
28548	Tâche nouvellement créee du nom de Mise en place d'une selection de lot dans PICK avec Studio par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	127	2024-02-16 13:30:05	2024-02-16 13:30:05	5
28549	Tâche nouvellement créee du nom de Mise en place d'une selection de lot dans PICK avec Studio par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	135	2024-02-16 13:30:05	2024-02-16 13:30:05	5
28550	Tâche nouvellement créee du nom de Mise en place d'une selection de lot dans PICK avec Studio par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	138	2024-02-16 13:30:05	2024-02-16 13:30:05	5
28551	Tâche nouvellement créee du nom de Mise en place d'une selection de lot dans PICK avec Studio par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	132	2024-02-16 13:30:05	2024-02-16 13:30:05	5
28552	Tâche nouvellement créee du nom de Mise en place d'une selection de lot dans PICK avec Studio par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	131	2024-02-16 13:30:05	2024-02-16 13:30:05	5
28553	Tâche nouvellement créee du nom de Mise en place d'une selection de lot dans PICK avec Studio par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	145	2024-02-16 13:30:05	2024-02-16 13:30:05	5
28554	Tâche nouvellement créee du nom de Mise en place d'une selection de lot dans PICK avec Studio par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	129	2024-02-16 13:30:05	2024-02-16 13:30:05	5
28555	Tâche nouvellement créee du nom de Mise en place d'une selection de lot dans PICK avec Studio par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	150	2024-02-16 13:30:05	2024-02-16 13:30:05	5
28556	Tâche nouvellement créee du nom de Mise en place d'une selection de lot dans PICK avec Studio par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	167	2024-02-16 13:30:05	2024-02-16 13:30:05	5
28557	Fanilo a été assigné à la tâche Mise en place d'une selection de lot dans PICK avec Studio dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	137	2024-02-16 10:30:05	2024-02-16 10:30:05	6
28483	Miandrisoa a été assigné à la tâche Etat comparatif des ventes mensuel Année N et Année N-1. dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	146	2024-02-15 13:46:31	2024-02-15 13:46:31	6
28545	Koloina a été assigné à la tâche ISSOUFALI - Etat de caisse UU 010123-311223 dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	127	2024-02-16 13:30:01	2024-02-16 13:30:01	6
28546	Koloina a été assigné à la tâche ISSOUFALI - Etat de caisse UU 010123-311223 dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	132	2024-02-16 13:30:01	2024-02-16 13:30:01	6
28547	Koloina a été assigné à la tâche ISSOUFALI - Etat de caisse UU 010123-311223 dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	150	2024-02-16 13:30:01	2024-02-16 13:30:01	6
28571	Fanilo a été assigné à la tâche Mise en place d'un module permettant l'interdiction des stocks négatifs dans odoo dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	127	2024-02-16 13:30:50	2024-02-16 13:30:50	6
28572	Fanilo a été assigné à la tâche Mise en place d'un module permettant l'interdiction des stocks négatifs dans odoo dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	132	2024-02-16 13:30:50	2024-02-16 13:30:50	6
28573	Fanilo a été assigné à la tâche Mise en place d'un module permettant l'interdiction des stocks négatifs dans odoo dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	150	2024-02-16 13:30:50	2024-02-16 13:30:50	6
28596	Kevin a été assigné à la tâche Ajustement tableau IRSA HC et IRSA EMP dans le projet MADAPLAST - Intervention et accompagnement par Kevin	f	139	139	2024-02-19 06:21:27	2024-02-19 06:21:27	6
28484	Miandrisoa a été assigné à la tâche Etat comparatif des ventes mensuel Année N et Année N-1. dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	127	2024-02-15 16:46:31	2024-02-15 16:46:31	6
28485	Miandrisoa a été assigné à la tâche Etat comparatif des ventes mensuel Année N et Année N-1. dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	132	2024-02-15 16:46:31	2024-02-15 16:46:31	6
28486	Miandrisoa a été assigné à la tâche Etat comparatif des ventes mensuel Année N et Année N-1. dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	150	2024-02-15 16:46:31	2024-02-15 16:46:31	6
28487	Tâche nouvellement créee du nom de QLM - FINALISATION TABLEAU IMPACT DE L' INCIDENT SUR LES LISTES DE PRIX par Hassan dans le projet QLM - Intervention et accompagnement.	f	142	127	2024-02-15 17:00:48	2024-02-15 17:00:48	5
28488	Tâche nouvellement créee du nom de QLM - FINALISATION TABLEAU IMPACT DE L' INCIDENT SUR LES LISTES DE PRIX par Hassan dans le projet QLM - Intervention et accompagnement.	f	142	135	2024-02-15 17:00:48	2024-02-15 17:00:48	5
28489	Tâche nouvellement créee du nom de QLM - FINALISATION TABLEAU IMPACT DE L' INCIDENT SUR LES LISTES DE PRIX par Hassan dans le projet QLM - Intervention et accompagnement.	f	142	138	2024-02-15 17:00:48	2024-02-15 17:00:48	5
28490	Tâche nouvellement créee du nom de QLM - FINALISATION TABLEAU IMPACT DE L' INCIDENT SUR LES LISTES DE PRIX par Hassan dans le projet QLM - Intervention et accompagnement.	f	142	132	2024-02-15 17:00:48	2024-02-15 17:00:48	5
28491	Tâche nouvellement créee du nom de QLM - FINALISATION TABLEAU IMPACT DE L' INCIDENT SUR LES LISTES DE PRIX par Hassan dans le projet QLM - Intervention et accompagnement.	f	142	131	2024-02-15 17:00:48	2024-02-15 17:00:48	5
28492	Tâche nouvellement créee du nom de QLM - FINALISATION TABLEAU IMPACT DE L' INCIDENT SUR LES LISTES DE PRIX par Hassan dans le projet QLM - Intervention et accompagnement.	f	142	145	2024-02-15 17:00:48	2024-02-15 17:00:48	5
28493	Tâche nouvellement créee du nom de QLM - FINALISATION TABLEAU IMPACT DE L' INCIDENT SUR LES LISTES DE PRIX par Hassan dans le projet QLM - Intervention et accompagnement.	f	142	129	2024-02-15 17:00:48	2024-02-15 17:00:48	5
28494	Tâche nouvellement créee du nom de QLM - FINALISATION TABLEAU IMPACT DE L' INCIDENT SUR LES LISTES DE PRIX par Hassan dans le projet QLM - Intervention et accompagnement.	f	142	150	2024-02-15 17:00:48	2024-02-15 17:00:48	5
28495	Tâche nouvellement créee du nom de QLM - FINALISATION TABLEAU IMPACT DE L' INCIDENT SUR LES LISTES DE PRIX par Hassan dans le projet QLM - Intervention et accompagnement.	f	142	167	2024-02-15 17:00:48	2024-02-15 17:00:48	5
28497	Hassan a été assigné à la tâche QLM - FINALISATION TABLEAU IMPACT DE L' INCIDENT SUR LES LISTES DE PRIX dans le projet QLM - Intervention et accompagnement par Hassan	f	142	127	2024-02-15 17:00:48	2024-02-15 17:00:48	6
28498	Hassan a été assigné à la tâche QLM - FINALISATION TABLEAU IMPACT DE L' INCIDENT SUR LES LISTES DE PRIX dans le projet QLM - Intervention et accompagnement par Hassan	f	142	132	2024-02-15 17:00:48	2024-02-15 17:00:48	6
28499	Hassan a été assigné à la tâche QLM - FINALISATION TABLEAU IMPACT DE L' INCIDENT SUR LES LISTES DE PRIX dans le projet QLM - Intervention et accompagnement par Hassan	f	142	150	2024-02-15 17:00:48	2024-02-15 17:00:48	6
28500	Tâche tache supprimé par Hassan.	f	142	127	2024-02-15 17:01:02	2024-02-15 17:01:02	3
28501	Tâche tache supprimé par Hassan.	f	142	135	2024-02-15 17:01:02	2024-02-15 17:01:02	3
28502	Tâche tache supprimé par Hassan.	f	142	138	2024-02-15 17:01:02	2024-02-15 17:01:02	3
28503	Tâche tache supprimé par Hassan.	f	142	132	2024-02-15 17:01:02	2024-02-15 17:01:02	3
28504	Tâche tache supprimé par Hassan.	f	142	131	2024-02-15 17:01:02	2024-02-15 17:01:02	3
28505	Tâche tache supprimé par Hassan.	f	142	145	2024-02-15 17:01:02	2024-02-15 17:01:02	3
28506	Tâche tache supprimé par Hassan.	f	142	129	2024-02-15 17:01:02	2024-02-15 17:01:02	3
28507	Tâche tache supprimé par Hassan.	f	142	150	2024-02-15 17:01:02	2024-02-15 17:01:02	3
28508	Tâche tache supprimé par Hassan.	f	142	167	2024-02-15 17:01:02	2024-02-15 17:01:02	3
28496	Hassan a été assigné à la tâche QLM - FINALISATION TABLEAU IMPACT DE L' INCIDENT SUR LES LISTES DE PRIX dans le projet QLM - Intervention et accompagnement par Hassan	t	142	142	2024-02-15 14:00:48	2024-02-15 14:00:48	6
28509	Tâche nouvellement créee du nom de Faire un point sur teams avec l'équipe de QWEHLI par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	127	2024-02-16 10:09:34	2024-02-16 10:09:34	5
28510	Tâche nouvellement créee du nom de Faire un point sur teams avec l'équipe de QWEHLI par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	135	2024-02-16 10:09:34	2024-02-16 10:09:34	5
28511	Tâche nouvellement créee du nom de Faire un point sur teams avec l'équipe de QWEHLI par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	138	2024-02-16 10:09:34	2024-02-16 10:09:34	5
28512	Tâche nouvellement créee du nom de Faire un point sur teams avec l'équipe de QWEHLI par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	132	2024-02-16 10:09:34	2024-02-16 10:09:34	5
28513	Tâche nouvellement créee du nom de Faire un point sur teams avec l'équipe de QWEHLI par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	131	2024-02-16 10:09:34	2024-02-16 10:09:34	5
28514	Tâche nouvellement créee du nom de Faire un point sur teams avec l'équipe de QWEHLI par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	145	2024-02-16 10:09:34	2024-02-16 10:09:34	5
28515	Tâche nouvellement créee du nom de Faire un point sur teams avec l'équipe de QWEHLI par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	129	2024-02-16 10:09:34	2024-02-16 10:09:34	5
28516	Tâche nouvellement créee du nom de Faire un point sur teams avec l'équipe de QWEHLI par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	150	2024-02-16 10:09:34	2024-02-16 10:09:34	5
28517	Tâche nouvellement créee du nom de Faire un point sur teams avec l'équipe de QWEHLI par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	167	2024-02-16 10:09:34	2024-02-16 10:09:34	5
28518	Miandrisoa a été assigné à la tâche Faire un point sur teams avec l'équipe de QWEHLI dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	146	2024-02-16 07:09:34	2024-02-16 07:09:34	6
28522	Tâche nouvellement créee du nom de Remise à zéro quantité réservé d'un article par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	127	2024-02-16 13:29:04	2024-02-16 13:29:04	5
28523	Tâche nouvellement créee du nom de Remise à zéro quantité réservé d'un article par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	135	2024-02-16 13:29:04	2024-02-16 13:29:04	5
28804	Tâche Importation facture 2018 - 2019 supprimé par Mickaella.	f	148	167	2024-02-23 13:31:09	2024-02-23 13:31:09	3
28519	Miandrisoa a été assigné à la tâche Faire un point sur teams avec l'équipe de QWEHLI dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	127	2024-02-16 10:09:34	2024-02-16 10:09:34	6
28520	Miandrisoa a été assigné à la tâche Faire un point sur teams avec l'équipe de QWEHLI dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	132	2024-02-16 10:09:34	2024-02-16 10:09:34	6
28521	Miandrisoa a été assigné à la tâche Faire un point sur teams avec l'équipe de QWEHLI dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	150	2024-02-16 10:09:34	2024-02-16 10:09:34	6
28558	Fanilo a été assigné à la tâche Mise en place d'une selection de lot dans PICK avec Studio dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	127	2024-02-16 13:30:05	2024-02-16 13:30:05	6
28559	Fanilo a été assigné à la tâche Mise en place d'une selection de lot dans PICK avec Studio dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	132	2024-02-16 13:30:05	2024-02-16 13:30:05	6
28560	Fanilo a été assigné à la tâche Mise en place d'une selection de lot dans PICK avec Studio dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	150	2024-02-16 13:30:05	2024-02-16 13:30:05	6
28524	Tâche nouvellement créee du nom de Remise à zéro quantité réservé d'un article par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	138	2024-02-16 13:29:04	2024-02-16 13:29:04	5
28525	Tâche nouvellement créee du nom de Remise à zéro quantité réservé d'un article par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	132	2024-02-16 13:29:04	2024-02-16 13:29:04	5
28526	Tâche nouvellement créee du nom de Remise à zéro quantité réservé d'un article par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	131	2024-02-16 13:29:04	2024-02-16 13:29:04	5
28527	Tâche nouvellement créee du nom de Remise à zéro quantité réservé d'un article par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	145	2024-02-16 13:29:04	2024-02-16 13:29:04	5
28528	Tâche nouvellement créee du nom de Remise à zéro quantité réservé d'un article par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	129	2024-02-16 13:29:04	2024-02-16 13:29:04	5
28529	Tâche nouvellement créee du nom de Remise à zéro quantité réservé d'un article par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	150	2024-02-16 13:29:04	2024-02-16 13:29:04	5
28530	Tâche nouvellement créee du nom de Remise à zéro quantité réservé d'un article par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	167	2024-02-16 13:29:04	2024-02-16 13:29:04	5
28531	Fanilo a été assigné à la tâche Remise à zéro quantité réservé d'un article dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	137	2024-02-16 10:29:04	2024-02-16 10:29:04	6
28532	Fanilo a été assigné à la tâche Remise à zéro quantité réservé d'un article dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	127	2024-02-16 13:29:04	2024-02-16 13:29:04	6
28533	Fanilo a été assigné à la tâche Remise à zéro quantité réservé d'un article dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	132	2024-02-16 13:29:04	2024-02-16 13:29:04	6
28534	Fanilo a été assigné à la tâche Remise à zéro quantité réservé d'un article dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	150	2024-02-16 13:29:04	2024-02-16 13:29:04	6
28544	Koloina a été assigné à la tâche ISSOUFALI - Etat de caisse UU 010123-311223 dans le projet ISSOUFALI - Intervention et accompagnement par Koloina	f	147	147	2024-02-16 10:30:01	2024-02-16 10:30:01	6
25872	Loïc a été assigné à la tâche Formation utilisateur dans le projet Modification du site web  par Loïc	t	134	134	2024-01-10 06:06:50	2024-01-10 06:06:50	6
28613	Tâche "Documentation sur gestion PNR"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	127	2024-02-19 10:48:00	2024-02-19 10:48:00	1
28614	Tâche "Documentation sur gestion PNR"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	135	2024-02-19 10:48:00	2024-02-19 10:48:00	1
28615	Tâche "Documentation sur gestion PNR"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	138	2024-02-19 10:48:00	2024-02-19 10:48:00	1
28616	Tâche "Documentation sur gestion PNR"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	132	2024-02-19 10:48:00	2024-02-19 10:48:00	1
28617	Tâche "Documentation sur gestion PNR"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	131	2024-02-19 10:48:00	2024-02-19 10:48:00	1
28618	Tâche "Documentation sur gestion PNR"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	145	2024-02-19 10:48:00	2024-02-19 10:48:00	1
28619	Tâche "Documentation sur gestion PNR"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	150	2024-02-19 10:48:00	2024-02-19 10:48:00	1
28620	Tâche "Documentation sur gestion PNR"\n          du projet Gestion PNR Issoufali mise dans " A faire " par Alain	f	129	167	2024-02-19 10:48:00	2024-02-19 10:48:00	1
28629	Alain a été assigné à la tâche 00E2W9 : Le montant de l'EMD ne correspond pas (voir reçu dossier) - REMB dans le projet Gestion PNR Issoufali par Alain	f	129	129	2024-02-19 07:49:24	2024-02-19 07:49:24	6
28561	Tâche nouvellement créee du nom de Mise en place d'un module permettant l'interdiction des stocks négatifs dans odoo par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	127	2024-02-16 13:30:50	2024-02-16 13:30:50	5
28562	Tâche nouvellement créee du nom de Mise en place d'un module permettant l'interdiction des stocks négatifs dans odoo par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	135	2024-02-16 13:30:50	2024-02-16 13:30:50	5
28563	Tâche nouvellement créee du nom de Mise en place d'un module permettant l'interdiction des stocks négatifs dans odoo par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	138	2024-02-16 13:30:50	2024-02-16 13:30:50	5
28564	Tâche nouvellement créee du nom de Mise en place d'un module permettant l'interdiction des stocks négatifs dans odoo par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	132	2024-02-16 13:30:50	2024-02-16 13:30:50	5
28565	Tâche nouvellement créee du nom de Mise en place d'un module permettant l'interdiction des stocks négatifs dans odoo par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	131	2024-02-16 13:30:50	2024-02-16 13:30:50	5
28566	Tâche nouvellement créee du nom de Mise en place d'un module permettant l'interdiction des stocks négatifs dans odoo par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	145	2024-02-16 13:30:50	2024-02-16 13:30:50	5
28567	Tâche nouvellement créee du nom de Mise en place d'un module permettant l'interdiction des stocks négatifs dans odoo par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	129	2024-02-16 13:30:50	2024-02-16 13:30:50	5
28568	Tâche nouvellement créee du nom de Mise en place d'un module permettant l'interdiction des stocks négatifs dans odoo par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	150	2024-02-16 13:30:50	2024-02-16 13:30:50	5
28569	Tâche nouvellement créee du nom de Mise en place d'un module permettant l'interdiction des stocks négatifs dans odoo par Fanilo dans le projet QWEHLI v1 - Integration Odoo 16.	f	137	167	2024-02-16 13:30:50	2024-02-16 13:30:50	5
28609	Kevin a été assigné à la tâche Création modèles d'impression SALES REPORT dans le projet MADAPLAST - Intervention et accompagnement par Kevin	f	139	139	2024-02-19 06:38:38	2024-02-19 06:38:38	6
28570	Fanilo a été assigné à la tâche Mise en place d'un module permettant l'interdiction des stocks négatifs dans odoo dans le projet QWEHLI v1 - Integration Odoo 16 par Fanilo	f	137	137	2024-02-16 10:30:50	2024-02-16 10:30:50	6
28574	Tâche nouvellement créee du nom de Analyse de devis bloqué sur Reflet de l'ile par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	127	2024-02-16 13:33:17	2024-02-16 13:33:17	5
28575	Tâche nouvellement créee du nom de Analyse de devis bloqué sur Reflet de l'ile par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	135	2024-02-16 13:33:17	2024-02-16 13:33:17	5
28576	Tâche nouvellement créee du nom de Analyse de devis bloqué sur Reflet de l'ile par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	138	2024-02-16 13:33:17	2024-02-16 13:33:17	5
28577	Tâche nouvellement créee du nom de Analyse de devis bloqué sur Reflet de l'ile par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	132	2024-02-16 13:33:17	2024-02-16 13:33:17	5
28578	Tâche nouvellement créee du nom de Analyse de devis bloqué sur Reflet de l'ile par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	131	2024-02-16 13:33:17	2024-02-16 13:33:17	5
28579	Tâche nouvellement créee du nom de Analyse de devis bloqué sur Reflet de l'ile par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	145	2024-02-16 13:33:17	2024-02-16 13:33:17	5
28580	Tâche nouvellement créee du nom de Analyse de devis bloqué sur Reflet de l'ile par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	129	2024-02-16 13:33:17	2024-02-16 13:33:17	5
28581	Tâche nouvellement créee du nom de Analyse de devis bloqué sur Reflet de l'ile par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	150	2024-02-16 13:33:17	2024-02-16 13:33:17	5
28582	Tâche nouvellement créee du nom de Analyse de devis bloqué sur Reflet de l'ile par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	167	2024-02-16 13:33:17	2024-02-16 13:33:17	5
28630	Alain a été assigné à la tâche 00E2W9 : Le montant de l'EMD ne correspond pas (voir reçu dossier) - REMB dans le projet Gestion PNR Issoufali par Alain	f	129	127	2024-02-19 10:49:24	2024-02-19 10:49:24	6
28631	Alain a été assigné à la tâche 00E2W9 : Le montant de l'EMD ne correspond pas (voir reçu dossier) - REMB dans le projet Gestion PNR Issoufali par Alain	f	129	132	2024-02-19 10:49:24	2024-02-19 10:49:24	6
28632	Alain a été assigné à la tâche 00E2W9 : Le montant de l'EMD ne correspond pas (voir reçu dossier) - REMB dans le projet Gestion PNR Issoufali par Alain	f	129	150	2024-02-19 10:49:24	2024-02-19 10:49:24	6
28583	Fanilo a été assigné à la tâche Analyse de devis bloqué sur Reflet de l'ile dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	137	2024-02-16 10:33:17	2024-02-16 10:33:17	6
28584	Fanilo a été assigné à la tâche Analyse de devis bloqué sur Reflet de l'ile dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	127	2024-02-16 13:33:17	2024-02-16 13:33:17	6
28585	Fanilo a été assigné à la tâche Analyse de devis bloqué sur Reflet de l'ile dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	132	2024-02-16 13:33:17	2024-02-16 13:33:17	6
28586	Fanilo a été assigné à la tâche Analyse de devis bloqué sur Reflet de l'ile dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	150	2024-02-16 13:33:17	2024-02-16 13:33:17	6
28587	Tâche nouvellement créee du nom de Ajustement tableau IRSA HC et IRSA EMP par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	127	2024-02-19 09:21:27	2024-02-19 09:21:27	5
28588	Tâche nouvellement créee du nom de Ajustement tableau IRSA HC et IRSA EMP par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	135	2024-02-19 09:21:27	2024-02-19 09:21:27	5
28589	Tâche nouvellement créee du nom de Ajustement tableau IRSA HC et IRSA EMP par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	138	2024-02-19 09:21:27	2024-02-19 09:21:27	5
28590	Tâche nouvellement créee du nom de Ajustement tableau IRSA HC et IRSA EMP par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	132	2024-02-19 09:21:27	2024-02-19 09:21:27	5
28591	Tâche nouvellement créee du nom de Ajustement tableau IRSA HC et IRSA EMP par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	131	2024-02-19 09:21:27	2024-02-19 09:21:27	5
28592	Tâche nouvellement créee du nom de Ajustement tableau IRSA HC et IRSA EMP par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	145	2024-02-19 09:21:27	2024-02-19 09:21:27	5
28593	Tâche nouvellement créee du nom de Ajustement tableau IRSA HC et IRSA EMP par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	129	2024-02-19 09:21:27	2024-02-19 09:21:27	5
28594	Tâche nouvellement créee du nom de Ajustement tableau IRSA HC et IRSA EMP par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	150	2024-02-19 09:21:27	2024-02-19 09:21:27	5
28595	Tâche nouvellement créee du nom de Ajustement tableau IRSA HC et IRSA EMP par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	167	2024-02-19 09:21:27	2024-02-19 09:21:27	5
28600	Tâche nouvellement créee du nom de Création modèles d'impression SALES REPORT par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	127	2024-02-19 09:38:38	2024-02-19 09:38:38	5
28601	Tâche nouvellement créee du nom de Création modèles d'impression SALES REPORT par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	135	2024-02-19 09:38:38	2024-02-19 09:38:38	5
28602	Tâche nouvellement créee du nom de Création modèles d'impression SALES REPORT par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	138	2024-02-19 09:38:38	2024-02-19 09:38:38	5
28603	Tâche nouvellement créee du nom de Création modèles d'impression SALES REPORT par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	132	2024-02-19 09:38:38	2024-02-19 09:38:38	5
28604	Tâche nouvellement créee du nom de Création modèles d'impression SALES REPORT par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	131	2024-02-19 09:38:38	2024-02-19 09:38:38	5
28605	Tâche nouvellement créee du nom de Création modèles d'impression SALES REPORT par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	145	2024-02-19 09:38:38	2024-02-19 09:38:38	5
28606	Tâche nouvellement créee du nom de Création modèles d'impression SALES REPORT par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	129	2024-02-19 09:38:38	2024-02-19 09:38:38	5
28607	Tâche nouvellement créee du nom de Création modèles d'impression SALES REPORT par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	150	2024-02-19 09:38:38	2024-02-19 09:38:38	5
28608	Tâche nouvellement créee du nom de Création modèles d'impression SALES REPORT par Kevin dans le projet MADAPLAST - Intervention et accompagnement.	f	139	167	2024-02-19 09:38:38	2024-02-19 09:38:38	5
28621	Tâche nouvellement créee du nom de 00E2W9 : Le montant de l'EMD ne correspond pas (voir reçu dossier) - REMB par Alain dans le projet Gestion PNR Issoufali.	f	129	127	2024-02-19 10:49:24	2024-02-19 10:49:24	5
28622	Tâche nouvellement créee du nom de 00E2W9 : Le montant de l'EMD ne correspond pas (voir reçu dossier) - REMB par Alain dans le projet Gestion PNR Issoufali.	f	129	135	2024-02-19 10:49:24	2024-02-19 10:49:24	5
28623	Tâche nouvellement créee du nom de 00E2W9 : Le montant de l'EMD ne correspond pas (voir reçu dossier) - REMB par Alain dans le projet Gestion PNR Issoufali.	f	129	138	2024-02-19 10:49:24	2024-02-19 10:49:24	5
28624	Tâche nouvellement créee du nom de 00E2W9 : Le montant de l'EMD ne correspond pas (voir reçu dossier) - REMB par Alain dans le projet Gestion PNR Issoufali.	f	129	132	2024-02-19 10:49:24	2024-02-19 10:49:24	5
28625	Tâche nouvellement créee du nom de 00E2W9 : Le montant de l'EMD ne correspond pas (voir reçu dossier) - REMB par Alain dans le projet Gestion PNR Issoufali.	f	129	131	2024-02-19 10:49:24	2024-02-19 10:49:24	5
28626	Tâche nouvellement créee du nom de 00E2W9 : Le montant de l'EMD ne correspond pas (voir reçu dossier) - REMB par Alain dans le projet Gestion PNR Issoufali.	f	129	145	2024-02-19 10:49:24	2024-02-19 10:49:24	5
28627	Tâche nouvellement créee du nom de 00E2W9 : Le montant de l'EMD ne correspond pas (voir reçu dossier) - REMB par Alain dans le projet Gestion PNR Issoufali.	f	129	150	2024-02-19 10:49:24	2024-02-19 10:49:24	5
28628	Tâche nouvellement créee du nom de 00E2W9 : Le montant de l'EMD ne correspond pas (voir reçu dossier) - REMB par Alain dans le projet Gestion PNR Issoufali.	f	129	167	2024-02-19 10:49:24	2024-02-19 10:49:24	5
28597	Kevin a été assigné à la tâche Ajustement tableau IRSA HC et IRSA EMP dans le projet MADAPLAST - Intervention et accompagnement par Kevin	f	139	127	2024-02-19 09:21:27	2024-02-19 09:21:27	6
28598	Kevin a été assigné à la tâche Ajustement tableau IRSA HC et IRSA EMP dans le projet MADAPLAST - Intervention et accompagnement par Kevin	f	139	132	2024-02-19 09:21:27	2024-02-19 09:21:27	6
28599	Kevin a été assigné à la tâche Ajustement tableau IRSA HC et IRSA EMP dans le projet MADAPLAST - Intervention et accompagnement par Kevin	f	139	150	2024-02-19 09:21:27	2024-02-19 09:21:27	6
28610	Kevin a été assigné à la tâche Création modèles d'impression SALES REPORT dans le projet MADAPLAST - Intervention et accompagnement par Kevin	f	139	127	2024-02-19 09:38:38	2024-02-19 09:38:38	6
28611	Kevin a été assigné à la tâche Création modèles d'impression SALES REPORT dans le projet MADAPLAST - Intervention et accompagnement par Kevin	f	139	132	2024-02-19 09:38:38	2024-02-19 09:38:38	6
28612	Kevin a été assigné à la tâche Création modèles d'impression SALES REPORT dans le projet MADAPLAST - Intervention et accompagnement par Kevin	f	139	150	2024-02-19 09:38:38	2024-02-19 09:38:38	6
28633	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	127	2024-02-20 09:51:53	2024-02-20 09:51:53	3
28634	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	135	2024-02-20 09:51:53	2024-02-20 09:51:53	3
28635	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	138	2024-02-20 09:51:53	2024-02-20 09:51:53	3
28636	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	132	2024-02-20 09:51:53	2024-02-20 09:51:53	3
28637	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	131	2024-02-20 09:51:53	2024-02-20 09:51:53	3
28638	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	145	2024-02-20 09:51:53	2024-02-20 09:51:53	3
28639	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	129	2024-02-20 09:51:53	2024-02-20 09:51:53	3
28640	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	150	2024-02-20 09:51:53	2024-02-20 09:51:53	3
28641	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	167	2024-02-20 09:51:53	2024-02-20 09:51:53	3
28642	Tâche "Compte rendu de la réunion avec Coralie"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " A faire " par Miandrisoa	f	146	127	2024-02-20 09:52:01	2024-02-20 09:52:01	1
28643	Tâche "Compte rendu de la réunion avec Coralie"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " A faire " par Miandrisoa	f	146	135	2024-02-20 09:52:01	2024-02-20 09:52:01	1
28644	Tâche "Compte rendu de la réunion avec Coralie"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " A faire " par Miandrisoa	f	146	138	2024-02-20 09:52:01	2024-02-20 09:52:01	1
28645	Tâche "Compte rendu de la réunion avec Coralie"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " A faire " par Miandrisoa	f	146	132	2024-02-20 09:52:01	2024-02-20 09:52:01	1
28646	Tâche "Compte rendu de la réunion avec Coralie"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " A faire " par Miandrisoa	f	146	131	2024-02-20 09:52:01	2024-02-20 09:52:01	1
28647	Tâche "Compte rendu de la réunion avec Coralie"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " A faire " par Miandrisoa	f	146	145	2024-02-20 09:52:01	2024-02-20 09:52:01	1
28648	Tâche "Compte rendu de la réunion avec Coralie"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " A faire " par Miandrisoa	f	146	129	2024-02-20 09:52:01	2024-02-20 09:52:01	1
28649	Tâche "Compte rendu de la réunion avec Coralie"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " A faire " par Miandrisoa	f	146	150	2024-02-20 09:52:01	2024-02-20 09:52:01	1
28650	Tâche "Compte rendu de la réunion avec Coralie"\n          du projet QWEHLI v1 - Integration Odoo 16 mise dans " A faire " par Miandrisoa	f	146	167	2024-02-20 09:52:01	2024-02-20 09:52:01	1
28651	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	127	2024-02-20 09:52:11	2024-02-20 09:52:11	3
28652	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	135	2024-02-20 09:52:11	2024-02-20 09:52:11	3
28653	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	138	2024-02-20 09:52:11	2024-02-20 09:52:11	3
28654	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	132	2024-02-20 09:52:11	2024-02-20 09:52:11	3
28655	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	131	2024-02-20 09:52:11	2024-02-20 09:52:11	3
28656	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	145	2024-02-20 09:52:11	2024-02-20 09:52:11	3
28657	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	129	2024-02-20 09:52:11	2024-02-20 09:52:11	3
28658	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	150	2024-02-20 09:52:11	2024-02-20 09:52:11	3
28659	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	167	2024-02-20 09:52:11	2024-02-20 09:52:11	3
28660	Tâche nouvellement créee du nom de N'est générer automatiquement les écritures sur le TVA sur encaissement  par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	127	2024-02-20 09:54:02	2024-02-20 09:54:02	5
28661	Tâche nouvellement créee du nom de N'est générer automatiquement les écritures sur le TVA sur encaissement  par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	135	2024-02-20 09:54:02	2024-02-20 09:54:02	5
28662	Tâche nouvellement créee du nom de N'est générer automatiquement les écritures sur le TVA sur encaissement  par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	138	2024-02-20 09:54:02	2024-02-20 09:54:02	5
28663	Tâche nouvellement créee du nom de N'est générer automatiquement les écritures sur le TVA sur encaissement  par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	132	2024-02-20 09:54:02	2024-02-20 09:54:02	5
28664	Tâche nouvellement créee du nom de N'est générer automatiquement les écritures sur le TVA sur encaissement  par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	131	2024-02-20 09:54:02	2024-02-20 09:54:02	5
28665	Tâche nouvellement créee du nom de N'est générer automatiquement les écritures sur le TVA sur encaissement  par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	145	2024-02-20 09:54:02	2024-02-20 09:54:02	5
28666	Tâche nouvellement créee du nom de N'est générer automatiquement les écritures sur le TVA sur encaissement  par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	129	2024-02-20 09:54:02	2024-02-20 09:54:02	5
28667	Tâche nouvellement créee du nom de N'est générer automatiquement les écritures sur le TVA sur encaissement  par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	150	2024-02-20 09:54:02	2024-02-20 09:54:02	5
28668	Tâche nouvellement créee du nom de N'est générer automatiquement les écritures sur le TVA sur encaissement  par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	167	2024-02-20 09:54:02	2024-02-20 09:54:02	5
28669	Miandrisoa a été assigné à la tâche N'est générer automatiquement les écritures sur le TVA sur encaissement  dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	146	2024-02-20 06:54:02	2024-02-20 06:54:02	6
28673	Tâche nouvellement créee du nom de Analyse d'une facture ayant 5 paiements par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	127	2024-02-20 14:22:47	2024-02-20 14:22:47	5
28674	Tâche nouvellement créee du nom de Analyse d'une facture ayant 5 paiements par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	135	2024-02-20 14:22:47	2024-02-20 14:22:47	5
28675	Tâche nouvellement créee du nom de Analyse d'une facture ayant 5 paiements par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	138	2024-02-20 14:22:47	2024-02-20 14:22:47	5
28676	Tâche nouvellement créee du nom de Analyse d'une facture ayant 5 paiements par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	132	2024-02-20 14:22:47	2024-02-20 14:22:47	5
28677	Tâche nouvellement créee du nom de Analyse d'une facture ayant 5 paiements par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	131	2024-02-20 14:22:47	2024-02-20 14:22:47	5
28678	Tâche nouvellement créee du nom de Analyse d'une facture ayant 5 paiements par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	145	2024-02-20 14:22:47	2024-02-20 14:22:47	5
28679	Tâche nouvellement créee du nom de Analyse d'une facture ayant 5 paiements par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	129	2024-02-20 14:22:47	2024-02-20 14:22:47	5
28680	Tâche nouvellement créee du nom de Analyse d'une facture ayant 5 paiements par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	150	2024-02-20 14:22:47	2024-02-20 14:22:47	5
28681	Tâche nouvellement créee du nom de Analyse d'une facture ayant 5 paiements par Fanilo dans le projet QLM - Intervention et accompagnement.	f	137	167	2024-02-20 14:22:47	2024-02-20 14:22:47	5
28670	Miandrisoa a été assigné à la tâche N'est générer automatiquement les écritures sur le TVA sur encaissement  dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	127	2024-02-20 09:54:02	2024-02-20 09:54:02	6
28671	Miandrisoa a été assigné à la tâche N'est générer automatiquement les écritures sur le TVA sur encaissement  dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	132	2024-02-20 09:54:02	2024-02-20 09:54:02	6
28672	Miandrisoa a été assigné à la tâche N'est générer automatiquement les écritures sur le TVA sur encaissement  dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	150	2024-02-20 09:54:02	2024-02-20 09:54:02	6
28682	Fanilo a été assigné à la tâche Analyse d'une facture ayant 5 paiements dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	137	2024-02-20 11:22:47	2024-02-20 11:22:47	6
28683	Fanilo a été assigné à la tâche Analyse d'une facture ayant 5 paiements dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	127	2024-02-20 14:22:47	2024-02-20 14:22:47	6
28684	Fanilo a été assigné à la tâche Analyse d'une facture ayant 5 paiements dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	132	2024-02-20 14:22:47	2024-02-20 14:22:47	6
28685	Fanilo a été assigné à la tâche Analyse d'une facture ayant 5 paiements dans le projet QLM - Intervention et accompagnement par Fanilo	f	137	150	2024-02-20 14:22:47	2024-02-20 14:22:47	6
28686	Tâche Taches supprimé par Miandrisoa.	f	146	127	2024-02-21 08:52:29	2024-02-21 08:52:29	3
28687	Tâche Taches supprimé par Miandrisoa.	f	146	135	2024-02-21 08:52:29	2024-02-21 08:52:29	3
28688	Tâche Taches supprimé par Miandrisoa.	f	146	138	2024-02-21 08:52:29	2024-02-21 08:52:29	3
28689	Tâche Taches supprimé par Miandrisoa.	f	146	132	2024-02-21 08:52:29	2024-02-21 08:52:29	3
28690	Tâche Taches supprimé par Miandrisoa.	f	146	131	2024-02-21 08:52:29	2024-02-21 08:52:29	3
28691	Tâche Taches supprimé par Miandrisoa.	f	146	145	2024-02-21 08:52:29	2024-02-21 08:52:29	3
28692	Tâche Taches supprimé par Miandrisoa.	f	146	129	2024-02-21 08:52:29	2024-02-21 08:52:29	3
28693	Tâche Taches supprimé par Miandrisoa.	f	146	150	2024-02-21 08:52:29	2024-02-21 08:52:29	3
28694	Tâche Taches supprimé par Miandrisoa.	f	146	167	2024-02-21 08:52:29	2024-02-21 08:52:29	3
28695	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	127	2024-02-21 08:52:39	2024-02-21 08:52:39	3
28696	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	135	2024-02-21 08:52:39	2024-02-21 08:52:39	3
28697	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	138	2024-02-21 08:52:39	2024-02-21 08:52:39	3
28698	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	132	2024-02-21 08:52:39	2024-02-21 08:52:39	3
28699	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	131	2024-02-21 08:52:39	2024-02-21 08:52:39	3
28700	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	145	2024-02-21 08:52:39	2024-02-21 08:52:39	3
28701	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	129	2024-02-21 08:52:39	2024-02-21 08:52:39	3
28702	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	150	2024-02-21 08:52:39	2024-02-21 08:52:39	3
28703	Tâche Compte rendu de la réunion avec Coralie supprimé par Miandrisoa.	f	146	167	2024-02-21 08:52:39	2024-02-21 08:52:39	3
28704	Tâche Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 supprimé par Miandrisoa.	f	146	127	2024-02-21 08:52:46	2024-02-21 08:52:46	3
28705	Tâche Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 supprimé par Miandrisoa.	f	146	135	2024-02-21 08:52:46	2024-02-21 08:52:46	3
28706	Tâche Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 supprimé par Miandrisoa.	f	146	138	2024-02-21 08:52:46	2024-02-21 08:52:46	3
28707	Tâche Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 supprimé par Miandrisoa.	f	146	132	2024-02-21 08:52:46	2024-02-21 08:52:46	3
28708	Tâche Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 supprimé par Miandrisoa.	f	146	131	2024-02-21 08:52:46	2024-02-21 08:52:46	3
28709	Tâche Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 supprimé par Miandrisoa.	f	146	145	2024-02-21 08:52:46	2024-02-21 08:52:46	3
28710	Tâche Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 supprimé par Miandrisoa.	f	146	129	2024-02-21 08:52:46	2024-02-21 08:52:46	3
28711	Tâche Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 supprimé par Miandrisoa.	f	146	150	2024-02-21 08:52:46	2024-02-21 08:52:46	3
28712	Tâche Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024 supprimé par Miandrisoa.	f	146	167	2024-02-21 08:52:46	2024-02-21 08:52:46	3
28713	Tâche nouvellement créee du nom de Désactiver la génération automatique des écritures dans le journal "Différence de change" par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	127	2024-02-21 08:57:05	2024-02-21 08:57:05	5
28714	Tâche nouvellement créee du nom de Désactiver la génération automatique des écritures dans le journal "Différence de change" par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	135	2024-02-21 08:57:05	2024-02-21 08:57:05	5
28715	Tâche nouvellement créee du nom de Désactiver la génération automatique des écritures dans le journal "Différence de change" par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	138	2024-02-21 08:57:05	2024-02-21 08:57:05	5
28716	Tâche nouvellement créee du nom de Désactiver la génération automatique des écritures dans le journal "Différence de change" par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	132	2024-02-21 08:57:05	2024-02-21 08:57:05	5
28717	Tâche nouvellement créee du nom de Désactiver la génération automatique des écritures dans le journal "Différence de change" par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	131	2024-02-21 08:57:05	2024-02-21 08:57:05	5
28718	Tâche nouvellement créee du nom de Désactiver la génération automatique des écritures dans le journal "Différence de change" par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	145	2024-02-21 08:57:05	2024-02-21 08:57:05	5
28719	Tâche nouvellement créee du nom de Désactiver la génération automatique des écritures dans le journal "Différence de change" par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	129	2024-02-21 08:57:05	2024-02-21 08:57:05	5
28720	Tâche nouvellement créee du nom de Désactiver la génération automatique des écritures dans le journal "Différence de change" par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	150	2024-02-21 08:57:05	2024-02-21 08:57:05	5
28721	Tâche nouvellement créee du nom de Désactiver la génération automatique des écritures dans le journal "Différence de change" par Miandrisoa dans le projet QWEHLI v1 - Integration Odoo 16.	f	146	167	2024-02-21 08:57:05	2024-02-21 08:57:05	5
28722	Miandrisoa a été assigné à la tâche Désactiver la génération automatique des écritures dans le journal "Différence de change" dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	146	2024-02-21 05:57:05	2024-02-21 05:57:05	6
28723	Miandrisoa a été assigné à la tâche Désactiver la génération automatique des écritures dans le journal "Différence de change" dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	127	2024-02-21 08:57:05	2024-02-21 08:57:05	6
28724	Miandrisoa a été assigné à la tâche Désactiver la génération automatique des écritures dans le journal "Différence de change" dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	132	2024-02-21 08:57:05	2024-02-21 08:57:05	6
28725	Miandrisoa a été assigné à la tâche Désactiver la génération automatique des écritures dans le journal "Différence de change" dans le projet QWEHLI v1 - Integration Odoo 16 par Miandrisoa	f	146	150	2024-02-21 08:57:05	2024-02-21 08:57:05	6
28726	Tâche nouvellement créee du nom de Ajouter la colonne Grade dans le tableau Valeur Rubrique sur une période par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	127	2024-02-21 11:43:08	2024-02-21 11:43:08	5
28727	Tâche nouvellement créee du nom de Ajouter la colonne Grade dans le tableau Valeur Rubrique sur une période par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	135	2024-02-21 11:43:08	2024-02-21 11:43:08	5
28728	Tâche nouvellement créee du nom de Ajouter la colonne Grade dans le tableau Valeur Rubrique sur une période par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	138	2024-02-21 11:43:08	2024-02-21 11:43:08	5
28729	Tâche nouvellement créee du nom de Ajouter la colonne Grade dans le tableau Valeur Rubrique sur une période par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	132	2024-02-21 11:43:08	2024-02-21 11:43:08	5
28730	Tâche nouvellement créee du nom de Ajouter la colonne Grade dans le tableau Valeur Rubrique sur une période par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	131	2024-02-21 11:43:08	2024-02-21 11:43:08	5
28731	Tâche nouvellement créee du nom de Ajouter la colonne Grade dans le tableau Valeur Rubrique sur une période par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	145	2024-02-21 11:43:08	2024-02-21 11:43:08	5
28732	Tâche nouvellement créee du nom de Ajouter la colonne Grade dans le tableau Valeur Rubrique sur une période par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	129	2024-02-21 11:43:08	2024-02-21 11:43:08	5
28733	Tâche nouvellement créee du nom de Ajouter la colonne Grade dans le tableau Valeur Rubrique sur une période par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	150	2024-02-21 11:43:08	2024-02-21 11:43:08	5
28734	Tâche nouvellement créee du nom de Ajouter la colonne Grade dans le tableau Valeur Rubrique sur une période par Miandrisoa dans le projet MADAPLAST - Intervention et accompagnement.	f	146	167	2024-02-21 11:43:08	2024-02-21 11:43:08	5
28735	Miandrisoa a été assigné à la tâche Ajouter la colonne Grade dans le tableau Valeur Rubrique sur une période dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	146	2024-02-21 08:43:08	2024-02-21 08:43:08	6
28736	Miandrisoa a été assigné à la tâche Ajouter la colonne Grade dans le tableau Valeur Rubrique sur une période dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	127	2024-02-21 11:43:08	2024-02-21 11:43:08	6
28737	Miandrisoa a été assigné à la tâche Ajouter la colonne Grade dans le tableau Valeur Rubrique sur une période dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	132	2024-02-21 11:43:08	2024-02-21 11:43:08	6
28738	Miandrisoa a été assigné à la tâche Ajouter la colonne Grade dans le tableau Valeur Rubrique sur une période dans le projet MADAPLAST - Intervention et accompagnement par Miandrisoa	f	146	150	2024-02-21 11:43:08	2024-02-21 11:43:08	6
28739	Tâche nouvellement créee du nom de Elaboration du tableau vente annuel par Hassan dans le projet MADAPLAST - Intervention et accompagnement.	f	142	127	2024-02-22 09:31:53	2024-02-22 09:31:53	5
28740	Tâche nouvellement créee du nom de Elaboration du tableau vente annuel par Hassan dans le projet MADAPLAST - Intervention et accompagnement.	f	142	135	2024-02-22 09:31:53	2024-02-22 09:31:53	5
28741	Tâche nouvellement créee du nom de Elaboration du tableau vente annuel par Hassan dans le projet MADAPLAST - Intervention et accompagnement.	f	142	138	2024-02-22 09:31:53	2024-02-22 09:31:53	5
28742	Tâche nouvellement créee du nom de Elaboration du tableau vente annuel par Hassan dans le projet MADAPLAST - Intervention et accompagnement.	f	142	132	2024-02-22 09:31:53	2024-02-22 09:31:53	5
28743	Tâche nouvellement créee du nom de Elaboration du tableau vente annuel par Hassan dans le projet MADAPLAST - Intervention et accompagnement.	f	142	131	2024-02-22 09:31:53	2024-02-22 09:31:53	5
28744	Tâche nouvellement créee du nom de Elaboration du tableau vente annuel par Hassan dans le projet MADAPLAST - Intervention et accompagnement.	f	142	145	2024-02-22 09:31:53	2024-02-22 09:31:53	5
28745	Tâche nouvellement créee du nom de Elaboration du tableau vente annuel par Hassan dans le projet MADAPLAST - Intervention et accompagnement.	f	142	129	2024-02-22 09:31:53	2024-02-22 09:31:53	5
28746	Tâche nouvellement créee du nom de Elaboration du tableau vente annuel par Hassan dans le projet MADAPLAST - Intervention et accompagnement.	f	142	150	2024-02-22 09:31:53	2024-02-22 09:31:53	5
28747	Tâche nouvellement créee du nom de Elaboration du tableau vente annuel par Hassan dans le projet MADAPLAST - Intervention et accompagnement.	f	142	167	2024-02-22 09:31:53	2024-02-22 09:31:53	5
28749	Hassan a été assigné à la tâche Elaboration du tableau vente annuel dans le projet MADAPLAST - Intervention et accompagnement par Hassan	f	142	127	2024-02-22 09:31:53	2024-02-22 09:31:53	6
28750	Hassan a été assigné à la tâche Elaboration du tableau vente annuel dans le projet MADAPLAST - Intervention et accompagnement par Hassan	f	142	132	2024-02-22 09:31:53	2024-02-22 09:31:53	6
28751	Hassan a été assigné à la tâche Elaboration du tableau vente annuel dans le projet MADAPLAST - Intervention et accompagnement par Hassan	f	142	150	2024-02-22 09:31:53	2024-02-22 09:31:53	6
28752	Tâche nouvellement créee du nom de Mise à jour du taux de la rubrique Médecine du travail à 6% et supprimer la rubrique Médecine du travail non déductible 1% par Miandrisoa dans le projet MILLOT.	f	146	127	2024-02-22 09:39:33	2024-02-22 09:39:33	5
28753	Tâche nouvellement créee du nom de Mise à jour du taux de la rubrique Médecine du travail à 6% et supprimer la rubrique Médecine du travail non déductible 1% par Miandrisoa dans le projet MILLOT.	f	146	135	2024-02-22 09:39:33	2024-02-22 09:39:33	5
28754	Tâche nouvellement créee du nom de Mise à jour du taux de la rubrique Médecine du travail à 6% et supprimer la rubrique Médecine du travail non déductible 1% par Miandrisoa dans le projet MILLOT.	f	146	138	2024-02-22 09:39:33	2024-02-22 09:39:33	5
28755	Tâche nouvellement créee du nom de Mise à jour du taux de la rubrique Médecine du travail à 6% et supprimer la rubrique Médecine du travail non déductible 1% par Miandrisoa dans le projet MILLOT.	f	146	132	2024-02-22 09:39:33	2024-02-22 09:39:33	5
28756	Tâche nouvellement créee du nom de Mise à jour du taux de la rubrique Médecine du travail à 6% et supprimer la rubrique Médecine du travail non déductible 1% par Miandrisoa dans le projet MILLOT.	f	146	131	2024-02-22 09:39:33	2024-02-22 09:39:33	5
28757	Tâche nouvellement créee du nom de Mise à jour du taux de la rubrique Médecine du travail à 6% et supprimer la rubrique Médecine du travail non déductible 1% par Miandrisoa dans le projet MILLOT.	f	146	145	2024-02-22 09:39:33	2024-02-22 09:39:33	5
28758	Tâche nouvellement créee du nom de Mise à jour du taux de la rubrique Médecine du travail à 6% et supprimer la rubrique Médecine du travail non déductible 1% par Miandrisoa dans le projet MILLOT.	f	146	129	2024-02-22 09:39:33	2024-02-22 09:39:33	5
28759	Tâche nouvellement créee du nom de Mise à jour du taux de la rubrique Médecine du travail à 6% et supprimer la rubrique Médecine du travail non déductible 1% par Miandrisoa dans le projet MILLOT.	f	146	150	2024-02-22 09:39:33	2024-02-22 09:39:33	5
28760	Tâche nouvellement créee du nom de Mise à jour du taux de la rubrique Médecine du travail à 6% et supprimer la rubrique Médecine du travail non déductible 1% par Miandrisoa dans le projet MILLOT.	f	146	167	2024-02-22 09:39:33	2024-02-22 09:39:33	5
28748	Hassan a été assigné à la tâche Elaboration du tableau vente annuel dans le projet MADAPLAST - Intervention et accompagnement par Hassan	t	142	142	2024-02-22 06:31:53	2024-02-22 06:31:53	6
28761	Miandrisoa a été assigné à la tâche Mise à jour du taux de la rubrique Médecine du travail à 6% et supprimer la rubrique Médecine du travail non déductible 1% dans le projet MILLOT par Miandrisoa	f	146	146	2024-02-22 06:39:33	2024-02-22 06:39:33	6
28762	Miandrisoa a été assigné à la tâche Mise à jour du taux de la rubrique Médecine du travail à 6% et supprimer la rubrique Médecine du travail non déductible 1% dans le projet MILLOT par Miandrisoa	f	146	127	2024-02-22 09:39:33	2024-02-22 09:39:33	6
28763	Miandrisoa a été assigné à la tâche Mise à jour du taux de la rubrique Médecine du travail à 6% et supprimer la rubrique Médecine du travail non déductible 1% dans le projet MILLOT par Miandrisoa	f	146	132	2024-02-22 09:39:33	2024-02-22 09:39:33	6
28764	Miandrisoa a été assigné à la tâche Mise à jour du taux de la rubrique Médecine du travail à 6% et supprimer la rubrique Médecine du travail non déductible 1% dans le projet MILLOT par Miandrisoa	f	146	150	2024-02-22 09:39:33	2024-02-22 09:39:33	6
28765	Tâche nouvellement créee du nom de Mise à jour du tableau contrôle paie, supprimer l'information de la rubrique Médecine du travail par Miandrisoa dans le projet MILLOT.	f	146	127	2024-02-22 16:22:31	2024-02-22 16:22:31	5
28766	Tâche nouvellement créee du nom de Mise à jour du tableau contrôle paie, supprimer l'information de la rubrique Médecine du travail par Miandrisoa dans le projet MILLOT.	f	146	135	2024-02-22 16:22:31	2024-02-22 16:22:31	5
28767	Tâche nouvellement créee du nom de Mise à jour du tableau contrôle paie, supprimer l'information de la rubrique Médecine du travail par Miandrisoa dans le projet MILLOT.	f	146	138	2024-02-22 16:22:31	2024-02-22 16:22:31	5
28768	Tâche nouvellement créee du nom de Mise à jour du tableau contrôle paie, supprimer l'information de la rubrique Médecine du travail par Miandrisoa dans le projet MILLOT.	f	146	132	2024-02-22 16:22:31	2024-02-22 16:22:31	5
28769	Tâche nouvellement créee du nom de Mise à jour du tableau contrôle paie, supprimer l'information de la rubrique Médecine du travail par Miandrisoa dans le projet MILLOT.	f	146	131	2024-02-22 16:22:31	2024-02-22 16:22:31	5
28770	Tâche nouvellement créee du nom de Mise à jour du tableau contrôle paie, supprimer l'information de la rubrique Médecine du travail par Miandrisoa dans le projet MILLOT.	f	146	145	2024-02-22 16:22:31	2024-02-22 16:22:31	5
28771	Tâche nouvellement créee du nom de Mise à jour du tableau contrôle paie, supprimer l'information de la rubrique Médecine du travail par Miandrisoa dans le projet MILLOT.	f	146	129	2024-02-22 16:22:31	2024-02-22 16:22:31	5
28772	Tâche nouvellement créee du nom de Mise à jour du tableau contrôle paie, supprimer l'information de la rubrique Médecine du travail par Miandrisoa dans le projet MILLOT.	f	146	150	2024-02-22 16:22:31	2024-02-22 16:22:31	5
28773	Tâche nouvellement créee du nom de Mise à jour du tableau contrôle paie, supprimer l'information de la rubrique Médecine du travail par Miandrisoa dans le projet MILLOT.	f	146	167	2024-02-22 16:22:31	2024-02-22 16:22:31	5
28774	Miandrisoa a été assigné à la tâche Mise à jour du tableau contrôle paie, supprimer l'information de la rubrique Médecine du travail dans le projet MILLOT par Miandrisoa	f	146	146	2024-02-22 13:22:31	2024-02-22 13:22:31	6
28775	Miandrisoa a été assigné à la tâche Mise à jour du tableau contrôle paie, supprimer l'information de la rubrique Médecine du travail dans le projet MILLOT par Miandrisoa	f	146	127	2024-02-22 16:22:31	2024-02-22 16:22:31	6
28776	Miandrisoa a été assigné à la tâche Mise à jour du tableau contrôle paie, supprimer l'information de la rubrique Médecine du travail dans le projet MILLOT par Miandrisoa	f	146	132	2024-02-22 16:22:31	2024-02-22 16:22:31	6
28777	Miandrisoa a été assigné à la tâche Mise à jour du tableau contrôle paie, supprimer l'information de la rubrique Médecine du travail dans le projet MILLOT par Miandrisoa	f	146	150	2024-02-22 16:22:31	2024-02-22 16:22:31	6
28778	Tâche Taches supprimé par Miandrisoa.	f	146	127	2024-02-22 16:22:43	2024-02-22 16:22:43	3
28779	Tâche Taches supprimé par Miandrisoa.	f	146	135	2024-02-22 16:22:43	2024-02-22 16:22:43	3
28780	Tâche Taches supprimé par Miandrisoa.	f	146	138	2024-02-22 16:22:43	2024-02-22 16:22:43	3
28781	Tâche Taches supprimé par Miandrisoa.	f	146	132	2024-02-22 16:22:43	2024-02-22 16:22:43	3
28782	Tâche Taches supprimé par Miandrisoa.	f	146	131	2024-02-22 16:22:43	2024-02-22 16:22:43	3
28783	Tâche Taches supprimé par Miandrisoa.	f	146	145	2024-02-22 16:22:43	2024-02-22 16:22:43	3
28784	Tâche Taches supprimé par Miandrisoa.	f	146	129	2024-02-22 16:22:43	2024-02-22 16:22:43	3
28785	Tâche Taches supprimé par Miandrisoa.	f	146	150	2024-02-22 16:22:43	2024-02-22 16:22:43	3
28786	Tâche Taches supprimé par Miandrisoa.	f	146	167	2024-02-22 16:22:43	2024-02-22 16:22:43	3
28787	Tâche Importation Facture 2017 - 2018 supprimé par Mickaella.	f	148	127	2024-02-23 13:31:01	2024-02-23 13:31:01	3
28788	Tâche Importation Facture 2017 - 2018 supprimé par Mickaella.	f	148	135	2024-02-23 13:31:01	2024-02-23 13:31:01	3
28789	Tâche Importation Facture 2017 - 2018 supprimé par Mickaella.	f	148	138	2024-02-23 13:31:01	2024-02-23 13:31:01	3
28790	Tâche Importation Facture 2017 - 2018 supprimé par Mickaella.	f	148	132	2024-02-23 13:31:01	2024-02-23 13:31:01	3
28791	Tâche Importation Facture 2017 - 2018 supprimé par Mickaella.	f	148	131	2024-02-23 13:31:01	2024-02-23 13:31:01	3
28792	Tâche Importation Facture 2017 - 2018 supprimé par Mickaella.	f	148	145	2024-02-23 13:31:01	2024-02-23 13:31:01	3
28793	Tâche Importation Facture 2017 - 2018 supprimé par Mickaella.	f	148	129	2024-02-23 13:31:01	2024-02-23 13:31:01	3
28794	Tâche Importation Facture 2017 - 2018 supprimé par Mickaella.	f	148	150	2024-02-23 13:31:01	2024-02-23 13:31:01	3
28795	Tâche Importation Facture 2017 - 2018 supprimé par Mickaella.	f	148	167	2024-02-23 13:31:01	2024-02-23 13:31:01	3
28796	Tâche Importation facture 2018 - 2019 supprimé par Mickaella.	f	148	127	2024-02-23 13:31:09	2024-02-23 13:31:09	3
28797	Tâche Importation facture 2018 - 2019 supprimé par Mickaella.	f	148	135	2024-02-23 13:31:09	2024-02-23 13:31:09	3
28798	Tâche Importation facture 2018 - 2019 supprimé par Mickaella.	f	148	138	2024-02-23 13:31:09	2024-02-23 13:31:09	3
28799	Tâche Importation facture 2018 - 2019 supprimé par Mickaella.	f	148	132	2024-02-23 13:31:09	2024-02-23 13:31:09	3
28800	Tâche Importation facture 2018 - 2019 supprimé par Mickaella.	f	148	131	2024-02-23 13:31:09	2024-02-23 13:31:09	3
28801	Tâche Importation facture 2018 - 2019 supprimé par Mickaella.	f	148	145	2024-02-23 13:31:09	2024-02-23 13:31:09	3
28802	Tâche Importation facture 2018 - 2019 supprimé par Mickaella.	f	148	129	2024-02-23 13:31:09	2024-02-23 13:31:09	3
28805	Tâche nouvellement créee du nom de Préparation de fichier de contrôle par Mickaella dans le projet SMEF.	f	148	127	2024-02-23 16:19:54	2024-02-23 16:19:54	5
28806	Tâche nouvellement créee du nom de Préparation de fichier de contrôle par Mickaella dans le projet SMEF.	f	148	135	2024-02-23 16:19:54	2024-02-23 16:19:54	5
28807	Tâche nouvellement créee du nom de Préparation de fichier de contrôle par Mickaella dans le projet SMEF.	f	148	138	2024-02-23 16:19:54	2024-02-23 16:19:54	5
28808	Tâche nouvellement créee du nom de Préparation de fichier de contrôle par Mickaella dans le projet SMEF.	f	148	132	2024-02-23 16:19:54	2024-02-23 16:19:54	5
28809	Tâche nouvellement créee du nom de Préparation de fichier de contrôle par Mickaella dans le projet SMEF.	f	148	131	2024-02-23 16:19:54	2024-02-23 16:19:54	5
28810	Tâche nouvellement créee du nom de Préparation de fichier de contrôle par Mickaella dans le projet SMEF.	f	148	145	2024-02-23 16:19:54	2024-02-23 16:19:54	5
28811	Tâche nouvellement créee du nom de Préparation de fichier de contrôle par Mickaella dans le projet SMEF.	f	148	129	2024-02-23 16:19:54	2024-02-23 16:19:54	5
28812	Tâche nouvellement créee du nom de Préparation de fichier de contrôle par Mickaella dans le projet SMEF.	f	148	150	2024-02-23 16:19:54	2024-02-23 16:19:54	5
28813	Tâche nouvellement créee du nom de Préparation de fichier de contrôle par Mickaella dans le projet SMEF.	f	148	167	2024-02-23 16:19:54	2024-02-23 16:19:54	5
28836	Tâche nouvellement créee du nom de Préparation fichier de contrôle par Adrien dans le projet SMEF.	f	141	127	2024-02-23 17:06:26	2024-02-23 17:06:26	5
28837	Tâche nouvellement créee du nom de Préparation fichier de contrôle par Adrien dans le projet SMEF.	f	141	135	2024-02-23 17:06:26	2024-02-23 17:06:26	5
28838	Tâche nouvellement créee du nom de Préparation fichier de contrôle par Adrien dans le projet SMEF.	f	141	138	2024-02-23 17:06:26	2024-02-23 17:06:26	5
28839	Tâche nouvellement créee du nom de Préparation fichier de contrôle par Adrien dans le projet SMEF.	f	141	132	2024-02-23 17:06:26	2024-02-23 17:06:26	5
28840	Tâche nouvellement créee du nom de Préparation fichier de contrôle par Adrien dans le projet SMEF.	f	141	131	2024-02-23 17:06:26	2024-02-23 17:06:26	5
28841	Tâche nouvellement créee du nom de Préparation fichier de contrôle par Adrien dans le projet SMEF.	f	141	145	2024-02-23 17:06:26	2024-02-23 17:06:26	5
28842	Tâche nouvellement créee du nom de Préparation fichier de contrôle par Adrien dans le projet SMEF.	f	141	129	2024-02-23 17:06:26	2024-02-23 17:06:26	5
28843	Tâche nouvellement créee du nom de Préparation fichier de contrôle par Adrien dans le projet SMEF.	f	141	150	2024-02-23 17:06:26	2024-02-23 17:06:26	5
28844	Tâche nouvellement créee du nom de Préparation fichier de contrôle par Adrien dans le projet SMEF.	f	141	167	2024-02-23 17:06:26	2024-02-23 17:06:26	5
28814	Mickaella a été assigné à la tâche Préparation de fichier de contrôle dans le projet SMEF par Mickaella	f	148	148	2024-02-23 13:19:54	2024-02-23 13:19:54	6
28815	Mickaella a été assigné à la tâche Préparation de fichier de contrôle dans le projet SMEF par Mickaella	f	148	127	2024-02-23 16:19:54	2024-02-23 16:19:54	6
28816	Mickaella a été assigné à la tâche Préparation de fichier de contrôle dans le projet SMEF par Mickaella	f	148	132	2024-02-23 16:19:54	2024-02-23 16:19:54	6
28817	Mickaella a été assigné à la tâche Préparation de fichier de contrôle dans le projet SMEF par Mickaella	f	148	150	2024-02-23 16:19:54	2024-02-23 16:19:54	6
28818	Tâche Importation facture 2016 - 2017 supprimé par Mickaella.	f	148	127	2024-02-23 16:21:11	2024-02-23 16:21:11	3
28819	Tâche Importation facture 2016 - 2017 supprimé par Mickaella.	f	148	135	2024-02-23 16:21:11	2024-02-23 16:21:11	3
28820	Tâche Importation facture 2016 - 2017 supprimé par Mickaella.	f	148	138	2024-02-23 16:21:11	2024-02-23 16:21:11	3
28821	Tâche Importation facture 2016 - 2017 supprimé par Mickaella.	f	148	132	2024-02-23 16:21:11	2024-02-23 16:21:11	3
28822	Tâche Importation facture 2016 - 2017 supprimé par Mickaella.	f	148	131	2024-02-23 16:21:11	2024-02-23 16:21:11	3
28823	Tâche Importation facture 2016 - 2017 supprimé par Mickaella.	f	148	145	2024-02-23 16:21:11	2024-02-23 16:21:11	3
28824	Tâche Importation facture 2016 - 2017 supprimé par Mickaella.	f	148	129	2024-02-23 16:21:11	2024-02-23 16:21:11	3
28825	Tâche Importation facture 2016 - 2017 supprimé par Mickaella.	f	148	150	2024-02-23 16:21:11	2024-02-23 16:21:11	3
28826	Tâche Importation facture 2016 - 2017 supprimé par Mickaella.	f	148	167	2024-02-23 16:21:11	2024-02-23 16:21:11	3
28827	Tâche "Préparation import Facture"\n          du projet SMEF mise dans " En cours " par Mickaella	f	148	127	2024-02-23 16:21:36	2024-02-23 16:21:36	1
28828	Tâche "Préparation import Facture"\n          du projet SMEF mise dans " En cours " par Mickaella	f	148	135	2024-02-23 16:21:36	2024-02-23 16:21:36	1
28829	Tâche "Préparation import Facture"\n          du projet SMEF mise dans " En cours " par Mickaella	f	148	138	2024-02-23 16:21:36	2024-02-23 16:21:36	1
28830	Tâche "Préparation import Facture"\n          du projet SMEF mise dans " En cours " par Mickaella	f	148	132	2024-02-23 16:21:36	2024-02-23 16:21:36	1
28831	Tâche "Préparation import Facture"\n          du projet SMEF mise dans " En cours " par Mickaella	f	148	131	2024-02-23 16:21:36	2024-02-23 16:21:36	1
28832	Tâche "Préparation import Facture"\n          du projet SMEF mise dans " En cours " par Mickaella	f	148	145	2024-02-23 16:21:36	2024-02-23 16:21:36	1
28833	Tâche "Préparation import Facture"\n          du projet SMEF mise dans " En cours " par Mickaella	f	148	129	2024-02-23 16:21:36	2024-02-23 16:21:36	1
28834	Tâche "Préparation import Facture"\n          du projet SMEF mise dans " En cours " par Mickaella	f	148	150	2024-02-23 16:21:36	2024-02-23 16:21:36	1
28835	Tâche "Préparation import Facture"\n          du projet SMEF mise dans " En cours " par Mickaella	f	148	167	2024-02-23 16:21:36	2024-02-23 16:21:36	1
28846	Adrien a été assigné à la tâche Préparation fichier de contrôle dans le projet SMEF par Adrien	f	141	127	2024-02-23 17:06:26	2024-02-23 17:06:26	6
28847	Adrien a été assigné à la tâche Préparation fichier de contrôle dans le projet SMEF par Adrien	f	141	132	2024-02-23 17:06:26	2024-02-23 17:06:26	6
28848	Adrien a été assigné à la tâche Préparation fichier de contrôle dans le projet SMEF par Adrien	f	141	150	2024-02-23 17:06:26	2024-02-23 17:06:26	6
28845	Adrien a été assigné à la tâche Préparation fichier de contrôle dans le projet SMEF par Adrien	f	141	141	2024-02-23 14:06:26	2024-02-23 14:06:26	6
28849	Tâche nouvellement créee du nom de pointage design par Loïc dans le projet Modification du site web .	f	134	127	2024-02-23 18:11:24	2024-02-23 18:11:24	5
28850	Tâche nouvellement créee du nom de pointage design par Loïc dans le projet Modification du site web .	f	134	135	2024-02-23 18:11:24	2024-02-23 18:11:24	5
28851	Tâche nouvellement créee du nom de pointage design par Loïc dans le projet Modification du site web .	f	134	138	2024-02-23 18:11:24	2024-02-23 18:11:24	5
28852	Tâche nouvellement créee du nom de pointage design par Loïc dans le projet Modification du site web .	f	134	132	2024-02-23 18:11:24	2024-02-23 18:11:24	5
28853	Tâche nouvellement créee du nom de pointage design par Loïc dans le projet Modification du site web .	f	134	131	2024-02-23 18:11:24	2024-02-23 18:11:24	5
28854	Tâche nouvellement créee du nom de pointage design par Loïc dans le projet Modification du site web .	f	134	145	2024-02-23 18:11:24	2024-02-23 18:11:24	5
28855	Tâche nouvellement créee du nom de pointage design par Loïc dans le projet Modification du site web .	f	134	129	2024-02-23 18:11:24	2024-02-23 18:11:24	5
28856	Tâche nouvellement créee du nom de pointage design par Loïc dans le projet Modification du site web .	f	134	150	2024-02-23 18:11:24	2024-02-23 18:11:24	5
28857	Tâche nouvellement créee du nom de pointage design par Loïc dans le projet Modification du site web .	f	134	167	2024-02-23 18:11:24	2024-02-23 18:11:24	5
28859	Loïc a été assigné à la tâche pointage design dans le projet Modification du site web  par Loïc	f	134	127	2024-02-23 18:11:24	2024-02-23 18:11:24	6
28860	Loïc a été assigné à la tâche pointage design dans le projet Modification du site web  par Loïc	f	134	132	2024-02-23 18:11:24	2024-02-23 18:11:24	6
28861	Loïc a été assigné à la tâche pointage design dans le projet Modification du site web  par Loïc	f	134	150	2024-02-23 18:11:24	2024-02-23 18:11:24	6
28858	Loïc a été assigné à la tâche pointage design dans le projet Modification du site web  par Loïc	t	134	134	2024-02-23 15:11:24	2024-02-23 15:11:24	6
\.


--
-- Data for Name: notifications_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notifications_type (id, type, inserted_at, updated_at) FROM stdin;
1	moved	2022-07-01 09:25:46	2022-07-01 09:25:46
2	archived	2022-07-01 09:25:46	2022-07-01 09:25:46
3	deleted	2022-07-01 09:25:46	2022-07-01 09:25:46
4	achieved	2022-07-01 09:25:46	2022-07-01 09:25:46
5	created	2022-07-01 09:25:46	2022-07-01 09:25:46
6	assigned	2022-07-01 09:25:46	2022-07-01 09:25:46
7	updated	2022-07-01 09:25:46	2022-07-01 09:25:46
8	requested	2022-07-01 09:25:46	2022-07-01 09:25:46
\.


--
-- Data for Name: planified; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.planified (id, description, dt_start, period, inserted_at, updated_at, attributor_id, contributor_id, project_id, estimated_duration, without_control) FROM stdin;
\.


--
-- Data for Name: priorities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.priorities (id, title, inserted_at, updated_at) FROM stdin;
1	Faible	2021-04-27 18:58:50	2021-04-27 18:58:50
2	Moyenne	2021-04-27 18:59:00	2021-04-27 18:59:09
3	Importante	2021-04-27 18:59:28	2021-04-27 18:59:28
4	Urgente	2021-04-27 18:59:40	2021-04-27 18:59:40
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projects (id, title, description, progression, date_start, date_end, estimated_duration, performed_duration, deadline, active_client_id, status_id, inserted_at, updated_at, board_id) FROM stdin;
71	Test PM	test ticket 	0	2023-11-07	\N	2	0	2023-11-08	39	3	2023-11-07 10:25:56	2023-11-07 10:27:21	91
70	Project monitoring 	Correction des bugs et refonte des designs 	20	2023-11-06	\N	40	0	2023-11-10	39	4	2023-11-06 13:25:00	2024-01-10 06:10:17	89
72	NAJMI - Intervention et accompagnement	Intervention et accompagnement	0	2023-11-14	\N	90	0	2024-12-31	40	3	2023-11-14 13:59:11	2024-01-24 13:24:31	93
76	MAUVILAC - Intervention et accompagnement	Intervention et accompagnement	0	2023-11-14	\N	90	0	2024-12-31	44	3	2023-11-14 14:14:10	2024-01-10 09:06:46	98
85	FOCICOM	Intervention et accompagnement	0	2024-01-24	\N	50	0	2024-12-31	39	3	2024-01-24 13:03:33	2024-01-29 11:36:14	112
83	CDC	Intervention et accompagnement	0	2024-01-24	\N	50	0	2024-12-31	39	3	2024-01-24 13:00:19	2024-01-24 13:33:03	110
75	ZEOP - Mise en place d'une solution	Mise en place d'une solution de gestion	0	2023-11-14	\N	90	0	2023-12-31	38	3	2023-11-14 14:08:17	2024-02-14 07:21:27	97
69	MADAPLAST - Intervention et accompagnement	Intervention et accompagnement ainsi que création des tableaux et reporting	0	2023-11-03	\N	100	0	2024-12-31	38	3	2023-11-03 10:39:59	2024-02-22 06:31:53	87
84	MILLOT	Intervention et accompagnement	0	2024-01-24	\N	540	0	2024-12-31	39	3	2024-01-24 13:01:51	2024-02-22 13:22:31	111
82	SMEF	Migration de Météor vers EBP Bâtiment	0	2024-01-24	\N	100	0	2024-12-31	39	3	2024-01-24 12:35:53	2024-02-23 14:06:26	108
78	ACTIVE NEGOCE - Transfert Compta	Mise à jour comptabilité	0	2023-11-15	\N	100	0	2023-12-31	46	3	2023-11-15 13:46:32	2024-02-19 05:38:26	100
79	Gestion PNR Issoufali	Application de renseignement des informations de vols et des données des passagers	2	2024-01-01	2024-06-30	200000	0	2024-07-01	41	3	2023-12-15 06:53:14	2024-02-19 07:49:24	101
81	MOLLAN	A	0	2024-01-11	\N	910	0	2024-12-31	39	3	2024-01-11 11:34:32	2024-02-15 13:56:36	105
77	QWEHLI v1 - Integration Odoo 16	Migration de Divalto vers Odoo	4	2023-11-14	\N	100	0	2023-12-31	45	3	2023-11-14 14:19:59	2024-02-20 06:54:02	99
74	QLM - Intervention et accompagnement	Intervention et accompagnement	0	2023-11-14	\N	90	0	2024-12-31	42	3	2023-11-14 14:05:15	2024-02-20 11:22:47	96
73	ISSOUFALI - Intervention et accompagnement	Intervention et accompagnement	0	2023-11-14	\N	90	0	2024-12-31	41	3	2023-11-14 14:01:47	2024-02-16 10:30:01	95
80	Modification du site web 	Modification du design et des fonctionnalités	0	2023-12-18	\N	24	0	2024-01-05	49	3	2023-12-18 11:18:19	2024-02-23 15:11:24	102
\.


--
-- Data for Name: record_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.record_types (id, name, inserted_at, updated_at) FROM stdin;
\.


--
-- Data for Name: request_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.request_type (id, name, inserted_at, updated_at) FROM stdin;
\.


--
-- Data for Name: rights; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rights (id, title, inserted_at, updated_at) FROM stdin;
1	Admin	2021-03-24 07:25:41	2021-03-24 07:25:41
3	Contributeur	2021-03-28 20:23:20	2021-03-28 20:23:20
2	Attributeur	2021-04-13 07:55:29	2021-04-13 07:55:29
4	Client	2021-03-28 17:28:09	2021-03-28 17:28:09
5	Non attribué	2021-04-01 20:21:54	2021-04-01 20:21:54
100	Archivé(e)	2021-04-13 08:24:10	2021-04-13 08:24:10
\.


--
-- Data for Name: rights_clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rights_clients (id, name, inserted_at, updated_at) FROM stdin;
1	Administrateur	2023-03-27 15:28:25	2023-03-27 15:28:25
2	Demandeur	2023-03-27 15:28:31	2023-03-27 15:28:31
3	Utilisateur	2023-03-27 15:28:37	2023-03-27 15:28:37
\.


--
-- Data for Name: saisies_validees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.saisies_validees (id, date, h_abs, h_work, user_id, user_validator_id, inserted_at, updated_at) FROM stdin;
1	2024-02-23	246	234	134	127	2024-02-23 15:15:00	2024-02-23 15:15:00
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version, inserted_at) FROM stdin;
20210324072043	2021-03-24 07:21:45
20210324143626	2021-03-24 14:36:51
20210326102201	2021-03-26 10:24:36
20210413124124	2021-04-13 12:42:49
20210414120533	2021-04-14 12:06:36
20210414120935	2021-04-14 12:09:54
20210414132353	2021-04-14 13:24:22
20210414132720	2021-04-14 13:27:54
20210415065852	2021-04-15 06:59:48
20210415071440	2021-04-15 07:15:55
20210426095303	2021-04-26 09:54:09
20210426100413	2021-04-26 10:06:28
20210426101246	2021-04-26 10:13:17
20210426101752	2021-04-26 10:20:09
20210426102215	2021-04-26 10:24:28
20210428121839	2021-04-28 12:20:11
20210428122039	2021-04-28 12:21:49
20210428172927	2021-04-28 17:30:21
20210429061512	2021-04-29 06:17:16
20210514105447	2021-05-14 10:56:17
20210518110212	2021-05-18 11:04:23
20210527155705	2021-05-27 16:12:41
20210602180040	2021-06-02 18:03:01
20210602183517	2021-06-02 18:35:57
20210602190601	2021-06-02 19:06:19
20210602213717	2021-06-02 21:37:34
20210603161444	2021-06-03 16:17:57
20210603162215	2021-06-03 16:24:08
20210607111124	2021-06-07 11:16:10
20210608201833	2021-06-08 20:19:53
20210616083854	2021-06-16 08:40:13
20210831074824	2021-08-31 07:48:46
20210930165500	2021-09-30 16:55:29
20211001070528	2021-10-01 08:10:54
20220328070453	2022-04-15 17:06:03
20220602120914	2022-07-01 07:34:08
20220628124706	2022-07-01 07:34:09
20220628125001	2022-07-01 07:34:09
20220912134511	2022-09-15 11:56:05
20220913080825	2022-09-15 11:56:05
20220923075047	2022-09-28 11:37:32
20220923080323	2022-09-28 11:37:32
20220923082200	2022-09-28 11:37:32
20220928075835	2022-09-28 11:37:32
20220928085527	2022-09-28 11:37:32
20221011111947	2022-10-12 12:03:55
20221110085834	2023-06-13 18:00:18
20221110090536	2023-06-13 18:00:18
20221128083552	2023-06-13 18:00:18
20221128084419	2023-06-13 18:00:18
20221130075142	2023-06-13 18:00:18
20221130083336	2023-06-13 18:00:18
20221208122643	2023-06-13 18:00:18
20221208122931	2023-06-13 18:00:18
20230327051127	2023-06-13 18:00:18
20230327051415	2023-06-13 18:00:18
20230327071139	2023-06-13 18:00:18
20230327071301	2023-06-13 18:00:18
20230327074532	2023-06-13 18:00:18
20230327083150	2023-06-13 18:00:18
20230327090518	2023-06-13 18:00:18
20230327103652	2023-06-13 18:00:18
20230328082146	2023-06-13 18:00:18
20230328082752	2023-06-13 18:00:18
20230328083349	2023-06-13 18:00:18
20230330071842	2023-06-13 18:00:18
20230330072448	2023-06-13 18:00:18
20230330073328	2023-06-13 18:00:18
20230330104853	2023-06-13 18:00:18
20230330104932	2023-06-13 18:00:18
20230330105133	2023-06-13 18:00:18
20230330105249	2023-06-13 18:00:18
20230330192045	2023-06-13 18:00:18
20240122075306	2024-02-05 07:02:16
20240129124226	2024-02-05 07:02:16
20240129124415	2024-02-05 07:02:16
20240130071653	2024-02-05 07:02:16
20240223142143	2024-02-23 14:22:47
20240223142455	2024-02-23 14:25:52
\.


--
-- Data for Name: softwares; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.softwares (id, title, company_id, inserted_at, updated_at) FROM stdin;
\.


--
-- Data for Name: stages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stages (id, name, board_id, status_id, "position", inserted_at, updated_at) FROM stdin;
421	A faire	86	1	0	2023-11-03 10:38:19	2023-11-03 10:38:19
422	En blocage	86	2	1	2023-11-03 10:38:19	2023-11-03 10:38:19
423	En cours	86	3	2	2023-11-03 10:38:19	2023-11-03 10:38:19
424	En contrôle	86	4	3	2023-11-03 10:38:19	2023-11-03 10:38:19
425	Achevée(s)	86	5	4	2023-11-03 10:38:19	2023-11-03 10:38:19
426	A faire	87	1	0	2023-11-03 10:39:59	2023-11-03 10:39:59
427	En blocage	87	2	1	2023-11-03 10:39:59	2023-11-03 10:39:59
428	En cours	87	3	2	2023-11-03 10:39:59	2023-11-03 10:39:59
429	En contrôle	87	4	3	2023-11-03 10:39:59	2023-11-03 10:39:59
430	Achevée(s)	87	5	4	2023-11-03 10:39:59	2023-11-03 10:39:59
431	A faire	88	1	0	2023-11-06 13:24:10	2023-11-06 13:24:10
432	En blocage	88	2	1	2023-11-06 13:24:10	2023-11-06 13:24:10
433	En cours	88	3	2	2023-11-06 13:24:10	2023-11-06 13:24:10
434	En contrôle	88	4	3	2023-11-06 13:24:10	2023-11-06 13:24:10
435	Achevée(s)	88	5	4	2023-11-06 13:24:10	2023-11-06 13:24:10
436	A faire	89	1	0	2023-11-06 13:25:00	2023-11-06 13:25:00
437	En blocage	89	2	1	2023-11-06 13:25:00	2023-11-06 13:25:00
438	En cours	89	3	2	2023-11-06 13:25:00	2023-11-06 13:25:00
439	En contrôle	89	4	3	2023-11-06 13:25:00	2023-11-06 13:25:00
440	Achevée(s)	89	5	4	2023-11-06 13:25:00	2023-11-06 13:25:00
441	A faire	90	1	0	2023-11-07 10:25:11	2023-11-07 10:25:11
442	En blocage	90	2	1	2023-11-07 10:25:11	2023-11-07 10:25:11
443	En cours	90	3	2	2023-11-07 10:25:11	2023-11-07 10:25:11
444	En contrôle	90	4	3	2023-11-07 10:25:11	2023-11-07 10:25:11
445	Achevée(s)	90	5	4	2023-11-07 10:25:11	2023-11-07 10:25:11
446	A faire	91	1	0	2023-11-07 10:25:56	2023-11-07 10:25:56
447	En blocage	91	2	1	2023-11-07 10:25:56	2023-11-07 10:25:56
448	En cours	91	3	2	2023-11-07 10:25:56	2023-11-07 10:25:56
449	En contrôle	91	4	3	2023-11-07 10:25:56	2023-11-07 10:25:56
450	Achevée(s)	91	5	4	2023-11-07 10:25:56	2023-11-07 10:25:56
451	A faire	92	1	0	2023-11-14 13:30:34	2023-11-14 13:30:34
452	En blocage	92	2	1	2023-11-14 13:30:34	2023-11-14 13:30:34
453	En cours	92	3	2	2023-11-14 13:30:34	2023-11-14 13:30:34
454	En contrôle	92	4	3	2023-11-14 13:30:34	2023-11-14 13:30:34
455	Achevée(s)	92	5	4	2023-11-14 13:30:34	2023-11-14 13:30:34
456	A faire	93	1	0	2023-11-14 13:59:11	2023-11-14 13:59:11
457	En blocage	93	2	1	2023-11-14 13:59:11	2023-11-14 13:59:11
458	En cours	93	3	2	2023-11-14 13:59:11	2023-11-14 13:59:11
459	En contrôle	93	4	3	2023-11-14 13:59:11	2023-11-14 13:59:11
460	Achevée(s)	93	5	4	2023-11-14 13:59:11	2023-11-14 13:59:11
461	A faire	94	1	0	2023-11-14 14:01:21	2023-11-14 14:01:21
462	En blocage	94	2	1	2023-11-14 14:01:21	2023-11-14 14:01:21
463	En cours	94	3	2	2023-11-14 14:01:21	2023-11-14 14:01:21
464	En contrôle	94	4	3	2023-11-14 14:01:21	2023-11-14 14:01:21
465	Achevée(s)	94	5	4	2023-11-14 14:01:21	2023-11-14 14:01:21
466	A faire	95	1	0	2023-11-14 14:01:47	2023-11-14 14:01:47
467	En blocage	95	2	1	2023-11-14 14:01:47	2023-11-14 14:01:47
468	En cours	95	3	2	2023-11-14 14:01:47	2023-11-14 14:01:47
469	En contrôle	95	4	3	2023-11-14 14:01:47	2023-11-14 14:01:47
470	Achevée(s)	95	5	4	2023-11-14 14:01:47	2023-11-14 14:01:47
471	A faire	96	1	0	2023-11-14 14:05:15	2023-11-14 14:05:15
472	En blocage	96	2	1	2023-11-14 14:05:15	2023-11-14 14:05:15
473	En cours	96	3	2	2023-11-14 14:05:15	2023-11-14 14:05:15
474	En contrôle	96	4	3	2023-11-14 14:05:15	2023-11-14 14:05:15
475	Achevée(s)	96	5	4	2023-11-14 14:05:15	2023-11-14 14:05:15
476	A faire	97	1	0	2023-11-14 14:08:17	2023-11-14 14:08:17
477	En blocage	97	2	1	2023-11-14 14:08:17	2023-11-14 14:08:17
478	En cours	97	3	2	2023-11-14 14:08:17	2023-11-14 14:08:17
479	En contrôle	97	4	3	2023-11-14 14:08:17	2023-11-14 14:08:17
480	Achevée(s)	97	5	4	2023-11-14 14:08:17	2023-11-14 14:08:17
481	A faire	98	1	0	2023-11-14 14:14:10	2023-11-14 14:14:10
482	En blocage	98	2	1	2023-11-14 14:14:10	2023-11-14 14:14:10
483	En cours	98	3	2	2023-11-14 14:14:10	2023-11-14 14:14:10
484	En contrôle	98	4	3	2023-11-14 14:14:10	2023-11-14 14:14:10
485	Achevée(s)	98	5	4	2023-11-14 14:14:10	2023-11-14 14:14:10
486	A faire	99	1	0	2023-11-14 14:19:59	2023-11-14 14:19:59
487	En blocage	99	2	1	2023-11-14 14:19:59	2023-11-14 14:19:59
488	En cours	99	3	2	2023-11-14 14:19:59	2023-11-14 14:19:59
489	En contrôle	99	4	3	2023-11-14 14:19:59	2023-11-14 14:19:59
490	Achevée(s)	99	5	4	2023-11-14 14:19:59	2023-11-14 14:19:59
491	A faire	100	1	0	2023-11-15 13:46:32	2023-11-15 13:46:32
492	En blocage	100	2	1	2023-11-15 13:46:32	2023-11-15 13:46:32
493	En cours	100	3	2	2023-11-15 13:46:32	2023-11-15 13:46:32
494	En contrôle	100	4	3	2023-11-15 13:46:32	2023-11-15 13:46:32
495	Achevée(s)	100	5	4	2023-11-15 13:46:32	2023-11-15 13:46:32
496	A faire	101	1	0	2023-12-15 06:53:14	2023-12-15 06:53:14
497	En blocage	101	2	1	2023-12-15 06:53:14	2023-12-15 06:53:14
498	En cours	101	3	2	2023-12-15 06:53:14	2023-12-15 06:53:14
499	En contrôle	101	4	3	2023-12-15 06:53:14	2023-12-15 06:53:14
500	Achevée(s)	101	5	4	2023-12-15 06:53:14	2023-12-15 06:53:14
501	A faire	102	1	0	2023-12-18 11:18:19	2023-12-18 11:18:19
502	En blocage	102	2	1	2023-12-18 11:18:19	2023-12-18 11:18:19
503	En cours	102	3	2	2023-12-18 11:18:19	2023-12-18 11:18:19
504	En contrôle	102	4	3	2023-12-18 11:18:19	2023-12-18 11:18:19
505	Achevée(s)	102	5	4	2023-12-18 11:18:19	2023-12-18 11:18:19
506	A faire	103	1	0	2024-01-11 11:33:45	2024-01-11 11:33:45
507	En blocage	103	2	1	2024-01-11 11:33:46	2024-01-11 11:33:46
508	En cours	103	3	2	2024-01-11 11:33:47	2024-01-11 11:33:47
509	En contrôle	103	4	3	2024-01-11 11:33:48	2024-01-11 11:33:48
510	Achevée(s)	103	5	4	2024-01-11 11:33:49	2024-01-11 11:33:49
511	A faire	104	1	0	2024-01-11 11:34:11	2024-01-11 11:34:11
512	En blocage	104	2	1	2024-01-11 11:34:11	2024-01-11 11:34:11
513	En cours	104	3	2	2024-01-11 11:34:11	2024-01-11 11:34:11
514	En contrôle	104	4	3	2024-01-11 11:34:12	2024-01-11 11:34:12
515	Achevée(s)	104	5	4	2024-01-11 11:34:12	2024-01-11 11:34:12
516	A faire	105	1	0	2024-01-11 11:34:30	2024-01-11 11:34:30
519	En contrôle	105	4	3	2024-01-11 11:34:31	2024-01-11 11:34:31
520	Achevée(s)	105	5	4	2024-01-11 11:34:31	2024-01-11 11:34:31
517	En blocage	105	2	1	2024-01-11 11:34:30	2024-01-11 11:34:30
518	En cours	105	3	2	2024-01-11 11:34:31	2024-01-11 11:34:31
521	A faire	106	1	0	2024-01-24 12:34:59	2024-01-24 12:34:59
522	En blocage	106	2	1	2024-01-24 12:34:59	2024-01-24 12:34:59
523	En cours	106	3	2	2024-01-24 12:34:59	2024-01-24 12:34:59
524	En contrôle	106	4	3	2024-01-24 12:34:59	2024-01-24 12:34:59
525	Achevée(s)	106	5	4	2024-01-24 12:34:59	2024-01-24 12:34:59
526	Archivé	106	6	5	2024-01-24 12:34:59	2024-01-24 12:34:59
527	A faire	107	1	0	2024-01-24 12:35:45	2024-01-24 12:35:45
528	En blocage	107	2	1	2024-01-24 12:35:45	2024-01-24 12:35:45
529	En cours	107	3	2	2024-01-24 12:35:45	2024-01-24 12:35:45
530	En contrôle	107	4	3	2024-01-24 12:35:45	2024-01-24 12:35:45
531	Achevée(s)	107	5	4	2024-01-24 12:35:45	2024-01-24 12:35:45
532	Archivé	107	6	5	2024-01-24 12:35:45	2024-01-24 12:35:45
533	A faire	108	1	0	2024-01-24 12:35:53	2024-01-24 12:35:53
534	En blocage	108	2	1	2024-01-24 12:35:53	2024-01-24 12:35:53
535	En cours	108	3	2	2024-01-24 12:35:53	2024-01-24 12:35:53
536	En contrôle	108	4	3	2024-01-24 12:35:53	2024-01-24 12:35:53
537	Achevée(s)	108	5	4	2024-01-24 12:35:53	2024-01-24 12:35:53
538	Archivé	108	6	5	2024-01-24 12:35:53	2024-01-24 12:35:53
539	A faire	109	1	0	2024-01-24 12:59:43	2024-01-24 12:59:43
540	En blocage	109	2	1	2024-01-24 12:59:43	2024-01-24 12:59:43
541	En cours	109	3	2	2024-01-24 12:59:43	2024-01-24 12:59:43
542	En contrôle	109	4	3	2024-01-24 12:59:43	2024-01-24 12:59:43
543	Achevée(s)	109	5	4	2024-01-24 12:59:43	2024-01-24 12:59:43
544	Archivé	109	6	5	2024-01-24 12:59:43	2024-01-24 12:59:43
545	A faire	110	1	0	2024-01-24 13:00:19	2024-01-24 13:00:19
546	En blocage	110	2	1	2024-01-24 13:00:19	2024-01-24 13:00:19
547	En cours	110	3	2	2024-01-24 13:00:19	2024-01-24 13:00:19
548	En contrôle	110	4	3	2024-01-24 13:00:19	2024-01-24 13:00:19
549	Achevée(s)	110	5	4	2024-01-24 13:00:19	2024-01-24 13:00:19
550	Archivé	110	6	5	2024-01-24 13:00:19	2024-01-24 13:00:19
551	A faire	111	1	0	2024-01-24 13:01:51	2024-01-24 13:01:51
552	En blocage	111	2	1	2024-01-24 13:01:51	2024-01-24 13:01:51
553	En cours	111	3	2	2024-01-24 13:01:51	2024-01-24 13:01:51
554	En contrôle	111	4	3	2024-01-24 13:01:51	2024-01-24 13:01:51
555	Achevée(s)	111	5	4	2024-01-24 13:01:51	2024-01-24 13:01:51
556	Archivé	111	6	5	2024-01-24 13:01:51	2024-01-24 13:01:51
557	A faire	112	1	0	2024-01-24 13:03:33	2024-01-24 13:03:33
558	En blocage	112	2	1	2024-01-24 13:03:33	2024-01-24 13:03:33
559	En cours	112	3	2	2024-01-24 13:03:33	2024-01-24 13:03:33
560	En contrôle	112	4	3	2024-01-24 13:03:33	2024-01-24 13:03:33
561	Achevée(s)	112	5	4	2024-01-24 13:03:33	2024-01-24 13:03:33
562	Archivé	112	6	5	2024-01-24 13:03:33	2024-01-24 13:03:33
\.


--
-- Data for Name: statuses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.statuses (id, title, inserted_at, updated_at) FROM stdin;
1	A faire	2021-04-27 18:47:25	2021-04-27 18:47:25
3	En cours	2021-04-27 18:47:50	2021-04-27 18:47:50
4	En contrôle	2021-04-27 18:48:15	2021-04-27 18:48:15
5	Achevée(s)	2021-04-27 18:49:44	2021-04-27 18:49:44
2	En blocage	2021-04-27 18:47:36	2021-04-27 18:47:36
6	Archivé	2021-04-27 18:47:25	2021-04-27 18:47:25
\.


--
-- Data for Name: task_records; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.task_records (id, date, task_id, user_id, start, "end", duration, inserted_at, updated_at, record_type) FROM stdin;
1	2023-11-15	1371	142	2023-11-15 17:07:20	\N	\N	2023-11-15 14:07:20	2023-11-15 14:07:20	\N
\.


--
-- Data for Name: task_tracings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.task_tracings (id, date, start_time, end_time, duration, is_pause, launch_type_id, task_id, user_id, is_recorded, inserted_at, updated_at) FROM stdin;
1	2024-02-08	2024-02-08 11:13:55	\N	\N	f	\N	1379	134	f	2024-02-08 08:13:55	2024-02-08 08:13:55
\.


--
-- Data for Name: tasks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tasks (id, title, progression, date_start, date_end, estimated_duration, performed_duration, deadline, parent_id, project_id, contributor_id, status_id, priority_id, inserted_at, updated_at, attributor_id, achieved_at, hidden, without_control, description, is_major, clients_request_id, is_valid) FROM stdin;
1389	Faire un refonte de l'affichage de la liste des commandes pour l'envoi des mails provenant d'Amadeus	100	2024-01-09	\N	420	0	2024-01-09	\N	79	162	4	2	2024-01-09 15:00:26	2024-01-24 10:25:03	129	2024-01-15 14:18:00	f	f	 	f	\N	t
1370	Préparation fichier d'import écriture compta ODOO vers SAGE 06-10/23	100	2023-11-15	\N	1440	0	2023-11-15	\N	73	147	4	2	2023-11-15 17:00:52	2023-11-17 11:28:08	138	\N	f	f	 Préparation fichier d'import écriture compta ODOO vers SAGE 06-10/23	f	\N	t
1439	Taches	0	2024-01-24	\N	601	0	2024-01-13	\N	72	148	1	2	2024-01-24 15:54:36	2024-01-24 12:54:36	138	\N	f	f	 	f	\N	t
1366	Mise à jour Code-barres DECAKILA	100	2023-11-15	\N	60	0	2023-11-15	\N	74	137	4	2	2023-11-15 16:54:08	2024-01-10 11:17:33	138	\N	f	f	 Mise à jour Code-barres DECAKILA	f	\N	t
1440	Taches 1	0	2024-01-24	\N	61	0	2024-01-24	\N	69	147	1	2	2024-01-24 15:56:09	2024-01-24 12:56:09	138	\N	f	f	 	f	\N	t
1465	PRESTIGE: ajout d'un bouton de rappel de BL et création d'un moyen de paiement "Virement" sur le point de vente de la caisse.	0	2024-01-24	\N	60	0	2024-01-22	\N	85	146	3	2	2024-01-24 16:36:42	2024-01-24 16:36:46	146	\N	f	t	 	f	\N	t
1397	PNR VERIFICATION	0	2024-01-10	\N	240	0	2023-12-07	\N	73	147	3	2	2024-01-10 11:25:29	2024-01-10 11:25:35	147	\N	f	t	Sortir les PNR au nom de PAF CRA (12343) et au nom de ESI amex (31079)	f	\N	t
1396	Préparation TJQ de l'agent Sity	0	2024-01-10	\N	240	0	2023-12-13	\N	73	147	3	2	2024-01-10 11:21:15	2024-01-10 11:29:11	147	\N	f	t	 Envoyer le liste des TJQ non remontée dans Gestion PNR de l'agent Sity	f	\N	t
1364	test minuteur	0	2023-11-15	\N	60	1	2023-11-16	\N	70	129	5	2	2023-11-15 09:34:37	2023-11-15 09:37:16	129	2023-11-15 09:37:16	f	t	 	f	\N	t
1371	Ajustement de sur le tableau "SendMail"	100	2023-11-15	\N	240	0	2023-11-15	\N	72	142	4	2	2023-11-15 17:04:49	2024-01-24 16:28:10	138	\N	f	f	Envoie de 10 mail / minutes	f	\N	t
1376	Optimiser l'exécution du requête SQL dans visual studio	100	2023-11-27	\N	240	0	2023-11-28	\N	76	147	4	2	2023-11-27 17:04:42	2023-12-26 10:38:36	147	\N	f	t	 Optimiser l’exécution du requête SQL dans visual studio.\n	f	\N	t
1561	Analyse d'une facture ayant 5 paiements	0	2024-02-20	\N	120	0	2024-02-20	\N	74	137	1	2	2024-02-20 14:22:47	2024-02-20 11:22:47	137	\N	f	f	\N	f	\N	f
1375	Création des historiques de prix de revient unitaire	100	2023-11-17	\N	240	0	2023-11-17	\N	76	147	4	2	2023-11-17 11:31:28	2023-12-26 10:37:45	147	\N	f	f	Chercher une solution pour avoir l'historique de prix de revient unitaire modifié à une date précise dans un document.	t	\N	t
1374	Création d'une liste des clients avec statuts de validation de leurs adresses mails respectifs	100	2023-11-15	\N	240	0	2023-11-15	\N	72	142	4	2	2023-11-15 17:24:55	2023-11-15 17:25:40	142	\N	f	f	Utilisation d'un macro en vba pour vérifier le statut de chaque mail en utilisant les APIs du site bouncer	f	\N	t
1372	Réalisation tableau "Balance agée"	0	2023-11-15	\N	960	0	2023-11-24	\N	69	148	3	2	2023-11-15 17:06:50	2023-11-15 17:30:07	138	\N	f	f	 Réalisation tableau "Balance agée"	f	\N	t
1373	Modèle d'impression	0	2023-11-15	\N	960	0	2023-11-10	\N	69	148	3	2	2023-11-15 17:14:40	2023-11-15 17:30:46	148	\N	f	f	 Etat de stock pour le sous famille GAINE - ETIQUETTE - 3 ANSE	t	\N	t
1367	Faire le test pour le recalcul du cumul prix de revient	100	2023-11-15	\N	480	0	2023-11-17	\N	76	147	4	2	2023-11-15 16:56:37	2023-12-26 10:38:06	138	\N	f	f	 Faire le test pour le recalcul du cumul prix de revient	f	\N	t
1383	Ajout d'un module default_account_receivable_payable	100	2023-12-19	\N	240	0	2023-12-20	\N	77	133	5	2	2023-12-19 17:38:09	2024-01-19 12:12:02	131	2024-01-19 12:12:02	f	f	 valeur par défaut des comptes tiers d'un partenaire	f	\N	t
1390	Remonter les pénalités provenant du reçu dossier (ZENITH)	0	2024-01-09	\N	360	22	2024-01-15	\N	79	129	5	2	2024-01-09 15:02:06	2024-01-22 11:52:26	129	2024-01-22 11:52:26	f	f	 	t	\N	t
1387	Ajouter une pagination pour les interfaces de la liste d'anomalies, clients et des utilisateur	100	2024-01-09	\N	480	0	2024-01-12	\N	79	162	5	2	2024-01-09 14:53:21	2024-01-23 10:11:42	129	2024-01-23 10:11:42	f	f	 	t	\N	t
1384	Permettre de décommander le PNR dans gestion PNR	100	2024-01-09	\N	120	5	2024-01-09	\N	79	162	5	2	2024-01-09 14:41:03	2024-01-23 10:11:51	129	2024-01-23 10:11:51	f	f	l. L'administrateur saisit le numéro de commande à décommander si disponible\n2. Saisit le motif afin de décommander le PNR	f	\N	t
1388	Ajouter une champ permettant d'ajouter le numéro d'EMD pour l'AVOIR COMPAGNIE	100	2024-01-09	\N	900	0	2024-01-15	\N	79	162	5	2	2024-01-09 14:54:34	2024-01-24 10:24:48	129	2024-01-24 10:24:48	f	f	 	t	\N	t
1369	Intégration du fichier mouvement de stock venant de REFLEX	100	2023-11-15	\N	120	0	2023-11-15	\N	75	147	4	2	2023-11-15 16:58:34	2023-11-17 11:27:01	138	\N	f	f	 Intégration du fichier mouvement de stock venant de REFLEX	f	\N	t
1360	debug modification d'une tâche 	100	2023-11-06	\N	300	31	2023-11-07	\N	70	133	5	2	2023-11-06 16:27:05	2023-11-17 14:38:11	131	2023-11-17 14:38:11	f	f	Correction pour la modification d'une tâche (fonctionnalité) 	f	\N	t
1362	Correction du bug concernant les historiques des tâches (design) 	100	2023-11-06	\N	480	0	2023-11-08	\N	70	128	5	2	2023-11-06 16:33:58	2023-11-17 14:40:21	131	2023-11-17 14:40:21	f	f	 	f	\N	t
1361	Correction du bug concernant les historiques des tâches 	100	2023-11-06	\N	900	0	2023-11-09	\N	70	134	5	2	2023-11-06 16:31:21	2023-11-17 14:40:47	131	2023-11-17 14:40:47	f	f	\N	f	\N	t
1382	Design archivage	100	2023-12-19	\N	960	0	2023-12-22	\N	80	128	4	2	2023-12-19 17:35:26	2024-01-09 16:57:47	131	\N	f	f	 	f	\N	t
1359	Tableau Bon de production	75	2023-11-03	\N	2400	0	2023-11-10	\N	69	139	3	2	2023-11-03 14:31:52	2024-02-19 09:19:25	138	\N	f	f	 	t	\N	t
1379	Ajout de la fonctionnalité pour les recherches avancés 	0	2023-12-19	\N	960	0	2023-12-22	\N	80	134	3	2	2023-12-19 17:27:53	2024-01-10 09:08:07	131	\N	f	f	 Fonctionnalité pour les recherches avancés avec l'intégration du code dans le design.	f	\N	t
1393	qlm : correction page produit 	0	2024-01-10	\N	600	0	2024-01-12	\N	80	128	1	2	2024-01-10 09:07:42	2024-01-10 06:07:42	128	\N	f	f	 corriger le css de la page produit 	f	\N	t
1392	Formation utilisateur	100	2024-01-10	\N	60	0	2024-01-10	\N	80	134	4	2	2024-01-10 09:06:50	2024-01-10 09:07:47	134	\N	f	f	formation des utilisateurs, pour l'utilisation des fonctionalites de base de monitoring	f	\N	t
1391	qlm : correction header 	100	2024-01-10	\N	300	0	2024-01-11	\N	80	128	4	2	2024-01-10 09:05:07	2024-01-10 09:09:21	128	\N	f	f	 rendre le header du site fix ( base teste)	f	\N	t
1381	Ajout du fonctionnalité archivage 	100	2023-12-19	\N	960	0	2023-12-22	\N	80	134	2	2	2023-12-19 17:35:02	2024-01-10 10:49:28	131	\N	f	f	 	f	\N	t
1441	Taches	0	2024-01-24	\N	61	0	2024-12-31	\N	77	137	1	2	2024-01-24 15:57:23	2024-01-24 12:57:23	138	\N	f	f	 	f	\N	t
1461	Préparation du fichier de comparaison du GESCOM et COMPTA, pour la clôture de l'exercice 2022	0	2024-01-24	\N	300	0	2024-01-23	\N	83	146	3	2	2024-01-24 16:29:39	2024-01-24 16:29:43	146	\N	f	t	 	t	\N	t
1438	Préparation import Fournitures	100	2024-01-24	\N	601	0	2024-01-25	\N	82	148	4	2	2024-01-24 15:38:13	2024-02-14 10:15:47	138	\N	f	f	 	f	\N	t
1365	Mise à jour compte comptable auxiliaire	100	2023-11-15	\N	480	0	2023-11-17	\N	78	146	4	2	2023-11-15 16:47:54	2024-02-14 16:21:48	138	\N	f	f	 Mise à jour compte comptable auxiliaire	f	\N	t
1368	Modèle d'impression Consommation matière première 	100	2023-11-15	\N	60	0	2023-11-17	\N	69	139	4	2	2023-11-15 16:56:42	2024-01-10 11:21:25	139	\N	f	f	 Ajout de l’article PET/0.84 et HDPE-COMPMOLD sur modèle « Consommation matière première » 	f	\N	t
1443	Taches	0	2024-01-24	\N	61	0	2024-01-24	\N	72	135	1	2	2024-01-24 15:59:18	2024-01-24 12:59:18	138	\N	f	f	 	f	\N	t
1398	Envoyer le fichier compta journalier	0	2024-01-10	\N	30	0	2024-01-31	\N	73	147	3	2	2024-01-10 11:28:57	2024-01-10 11:29:03	147	\N	f	t	Envoyer le fichier comptabilité par jour à partir du mois de décembre	f	\N	t
1399	Automatiser l'envoi du fichier comptabilité	0	2024-01-10	\N	480	0	2023-12-22	\N	73	147	1	2	2024-01-10 11:31:09	2024-01-10 08:31:09	147	\N	f	f	 Planifier l'heure de l'envoi du fichier pour qu'ils soient automatisés chaque jour à 8h du matin	f	\N	t
1400	CA Cies - 23/11	0	2024-01-10	\N	60	0	2023-12-11	\N	73	147	3	2	2024-01-10 11:36:07	2024-01-10 11:36:32	147	\N	f	t	 Préparation et envoie du fichier CA Cies pour les 3 compagnies du mois de novembre à David	f	\N	t
1401	Données brutes 3 Cies	0	2024-01-10	\N	120	0	2023-12-11	\N	73	147	3	2	2024-01-10 11:40:37	2024-01-10 11:40:42	147	\N	f	t	 Vérification des données entre la base de données TJQ et le fichier de contrôle du TJQ du mois complet.\n*En cas de manque de données, il est nécessaire de visualiser les données manquantes et de demander leur importation.	f	\N	t
1402	les avoirs ladom non retrouvés 01-03/23	0	2024-01-10	\N	240	0	2023-12-14	\N	73	147	3	2	2024-01-10 11:44:50	2024-01-10 11:44:56	147	\N	f	t	 Sortir la liste des avoirs de Ladom non remonté dans la comptabilité.	f	\N	t
1395	décommander PNR	0	2024-01-10	\N	120	0	2024-01-12	\N	79	129	1	2	2024-01-10 10:56:28	2024-01-10 11:02:47	162	\N	f	f	 	f	\N	t
1403	Application pour le recalcul de prix de revient	0	2024-01-10	\N	1440	0	2023-12-20	\N	76	147	3	2	2024-01-10 12:04:10	2024-01-10 12:04:33	147	\N	f	t	Créer une application qui permet de faire le récalcul de prix de revient\n*Utilisation de SSIS pour créer le package qui permet de faire le récalcul de prix de revient et visual studio 2022 pour faire appel au package SSIS et pour générer une interface 	f	\N	t
1447	Taches	0	2024-01-24	\N	61	0	2024-12-31	\N	85	148	1	2	2024-01-24 16:05:20	2024-01-24 13:05:20	138	\N	f	f	 	f	\N	t
1404	Mise en place de la Procédure MAUVILAC	0	2024-01-10	\N	60	0	2023-12-07	\N	76	147	1	2	2024-01-10 12:06:42	2024-01-10 09:06:42	147	\N	f	t	 Mise en place de la Procédure MAUVILAC 	f	\N	t
1405	Mise en place de la Procédure Zeop	0	2024-01-10	\N	60	0	2023-12-12	\N	75	147	3	2	2024-01-10 12:07:53	2024-01-10 12:07:59	147	\N	f	t	 Mise en place de la Procédure Zeop	f	\N	t
1406	Résolution - Articles non descendues	0	2024-01-10	\N	180	0	2023-12-13	\N	75	147	3	2	2024-01-10 13:27:25	2024-01-10 13:27:29	147	\N	f	t	Identifier l'origine qui cause le non descente des articles dans SAGE.	f	\N	t
1407	Résolution - BL non transformé	0	2024-01-10	\N	180	0	2023-12-14	\N	75	147	3	2	2024-01-10 13:29:07	2024-01-10 13:29:13	147	\N	f	t	 Identifier l'origine du problème, et le transformé manuellement	f	\N	t
1408	Export manuel du BC créer à la date J	0	2024-01-10	\N	120	0	2023-12-18	\N	75	147	3	2	2024-01-10 13:34:23	2024-01-10 13:34:35	147	\N	f	t	Exporter manuellement le BC créer à la date J, selon leur demande\n	f	\N	t
1409	Préparation du réunion ZEOP et Réunion ZEOP	0	2024-01-10	\N	90	0	2023-12-19	\N	75	147	3	2	2024-01-10 13:38:55	2024-01-10 13:41:54	147	\N	f	t	Objectif : Échange pour trouver une solution quant à la problématique rencontré lors de l'importation des fichiers et l'automatisation du programme	f	\N	t
1410	TJQ non remontée par agent	0	2024-01-10	\N	480	0	2024-01-12	\N	73	147	3	2	2024-01-10 13:51:01	2024-01-10 14:08:20	147	\N	f	t	Sortir la liste des TJQ par agent à partir de 01/01/2024 jusqu'au date j-1.\nEnsuite, envoyer cette liste à Asma.\nPlanifier l'exécution de l'envoie et l'actualisation du fichier pour qu'il soit envoyé tous les jours.	f	\N	t
1394	Amélioration et correction des fonctions de recherche 	0	2024-01-10	\N	300	0	2024-01-12	\N	70	128	3	2	2024-01-10 09:10:17	2024-01-10 14:22:40	128	\N	f	f	 	f	\N	t
1554	Analyse de devis bloqué sur Reflet de l'ile	50	2024-02-16	\N	300	0	2024-02-16	\N	74	137	3	2	2024-02-16 13:33:17	2024-02-16 13:33:35	137	\N	f	f	\N	f	\N	f
1413	Modification sur le tableau REAPPROVISIONNEMENT	0	2024-01-11	\N	600	0	2024-01-12	\N	81	135	1	2	2024-01-11 14:51:58	2024-01-11 14:52:53	138	\N	f	f	 	f	\N	t
1415	Modification sur le tableau REAPPROVISIONNEMENT	0	2024-01-11	\N	600	0	2024-01-12	\N	81	139	1	2	2024-01-11 14:54:51	2024-01-11 11:54:51	138	\N	f	f	 	f	\N	t
1385	Lister les pnr décommandés	100	2023-12-28	\N	530	0	2023-12-31	\N	79	162	5	2	2024-01-09 14:47:02	2024-01-23 10:11:45	129	2024-01-23 10:11:45	f	f	1. Ajouter une interface pour afficher la liste des pnr décommandés\n2. Ajouter une fonction de recherche\n3. Ajouter une fonction de pagination\n4. Ajouter une table pour stocker les PNR décommandés depuis gestion PNR	f	\N	t
1421	Ajout module tracked_reserved_qty	0	2024-01-19	\N	60	0	2023-12-20	\N	77	133	2	2	2024-01-19 12:04:24	2024-01-19 12:07:14	131	\N	f	f	 	f	\N	t
1422	SMEF	0	2024-01-19	\N	960	0	2024-01-18	\N	69	148	1	2	2024-01-19 12:07:19	2024-01-19 12:08:35	148	\N	f	f	 Traitement données du client : \n- Importation fournitures / famille / sous - famille\n	t	\N	t
1423	SMEF	0	2024-01-19	\N	240	0	2024-01-15	\N	69	148	1	2	2024-01-19 12:10:08	2024-01-19 09:10:08	148	\N	f	f	 Importation Matériel et Main d'œuvre	t	\N	t
1424	SMEF	0	2024-01-19	\N	960	0	2024-01-22	\N	69	148	1	2	2024-01-19 12:11:22	2024-01-19 09:11:22	148	\N	f	f	 Traitement de données et importation \n- Ouvrage\n- Ligne ouvrage	f	\N	t
1417	Faire les test de toutes les modifications apportées par Maphie au niveau de gestion PNR	0	2024-01-15	\N	180	0	2024-01-15	\N	79	129	5	2	2024-01-15 10:14:33	2024-01-23 10:12:14	129	2024-01-23 10:12:14	f	f	 	t	\N	t
1418	Lister toutes les nouvelles modifications du 22 janvier 2024	0	2024-01-15	\N	10	0	2024-01-23	\N	79	129	5	2	2024-01-15 10:15:29	2024-01-23 10:12:09	129	2024-01-23 10:12:09	f	f	 	f	\N	t
1386	Création d'un billet à partir de gestion PNR 	100	2024-01-09	\N	600	0	2024-01-12	\N	79	162	5	2	2024-01-09 14:51:53	2024-01-24 10:24:45	129	2024-01-24 10:24:45	f	f	1. Créer un billet à partir de gestion PNR pour les billets archivés qui ne peuvent plus être remontés à partir d'Amadeus\n2. Réponse anomalie qui nécessite une approbation venant de l'administrateur	t	\N	t
1425	ISSOUFALI - Déploiement du fichier "Préparation d'import"	0	2024-01-19	\N	120	0	2023-01-17	\N	73	147	3	2	2024-01-19 12:12:30	2024-01-19 12:12:34	147	\N	f	t	 Déposer le fichier préparation d'import sur le serveur RDS de ISSOUFALI en créant un répertoire "ETAT EXCEL" dans C, qui ne sera accessible qu'avec David,Phidia et Admin	f	\N	t
1445	Taches	0	2024-01-24	\N	61	0	2024-01-24	\N	84	146	6	2	2024-01-24 16:02:25	2024-02-22 16:22:43	138	\N	f	f	 	f	\N	t
1449	Taches	100	2024-01-24	\N	61	0	2024-12-31	\N	73	141	4	2	2024-01-24 16:08:37	2024-02-14 11:40:55	138	\N	f	f	 	f	\N	t
1414	Modification sur le tableau REAPPROVISIONNEMENT	100	2024-01-11	\N	600	0	2024-01-12	\N	81	142	4	2	2024-01-11 14:54:14	2024-02-14 10:07:03	138	\N	f	f	Mise à jour du fichier direction	f	\N	t
1569	pointage design	0	2024-02-23	\N	180	0	2024-02-26	\N	80	134	1	2	2024-02-23 18:11:24	2024-02-23 15:11:24	134	\N	f	f	designe	f	\N	f
1416	Automatisation de l'import ARTICLE	0	2024-01-11	\N	1440	0	2024-01-12	\N	81	147	3	2	2024-01-11 15:05:59	2024-01-19 12:21:15	147	\N	f	f	 Automatiser l'import du fichier article en utilisant objets métiers de SAGE	f	\N	t
1427	MOLLAN - Import Bon de commande 	0	2024-01-19	\N	90	0	2023-01-15	\N	81	147	3	2	2024-01-19 12:22:58	2024-01-19 12:23:01	147	\N	f	t	 Créer une application via Visual studio et le bibliothèque objets métiers. \nIl y avait déjà un modèle dans le serveur de TEST, mais il faut juste le modifier pour qu’il s’adapte à l’import du bon de commande.\nIdem pour l’interface\n	f	\N	t
1444	Taches	0	2024-01-24	\N	61	0	2024-01-24	\N	83	146	1	2	2024-01-24 16:00:52	2024-01-24 13:00:52	138	\N	f	f	 	f	\N	t
1446	Taches	0	2024-01-24	\N	61	0	2024-12-31	\N	85	146	1	2	2024-01-24 16:04:30	2024-01-24 13:04:30	138	\N	f	f	 	f	\N	t
1429	MOLLAN - Modification des propriétés pour le serveur PROD	0	2024-01-19	\N	30	0	2024-01-15	\N	81	147	3	2	2024-01-19 12:26:25	2024-01-19 12:26:28	147	\N	f	t	 Modifier les paramètres du programme pour qu’il s’adapte aux dossiers sur le serveur PROD.	f	\N	t
1448	Taches	0	2024-01-24	\N	61	0	2024-12-31	\N	69	146	1	2	2024-01-24 16:06:32	2024-01-24 13:06:32	138	\N	f	f	 	f	\N	t
1430	MOLLAN - Mise en place de l'objet métier	0	2024-01-19	\N	120	0	2024-01-16	\N	81	147	3	2	2024-01-19 12:27:33	2024-01-19 12:27:35	147	\N	f	t	 Modification du code pour qu’il s’adapte à l’emplacement du fichier sur le serveur PROD. Modification du fichier à importer pour pouvoir faire le test Installation du runtime qui permet de lancer le fichier .exe gérer par dotnet.	f	\N	t
1431	MOLLAN - Réduction du fichier log	0	2024-01-19	\N	60	0	2024-01-17	\N	81	147	3	2	2024-01-19 12:29:57	2024-01-19 12:30:00	147	\N	f	t	 Réduction du fichier log pour la base de données DW_MOLLAN	f	\N	t
1419	Ecrire un mail indiquant à toutes les utilisateurs de gestion PNR pour la mise à jour le 22 janvier 2024	0	2024-01-15	\N	15	0	2024-01-23	\N	79	129	5	2	2024-01-15 10:17:14	2024-01-23 10:12:06	129	2024-01-23 10:12:06	f	f	Faire un mail indiquant aux utilisateurs qu'une mise à jour de l'application gestion PNR sera faite aujourd'hui vers 17 heures	t	\N	t
1450	Comparaison des données Client par rapport à EBP	0	2024-01-24	\N	1440	0	2023-12-11	\N	72	148	3	2	2024-01-24 16:08:51	2024-01-24 16:09:09	148	\N	f	f	Exercice 2019 - 2022\n- Exportation des données de EBP \n- Fichier de comparaison des données (par journal, par ligne, par compte auxiliaire)	f	\N	t
1454	Taches	0	2024-01-24	\N	61	0	2024-12-31	\N	72	139	1	2	2024-01-24 16:11:31	2024-01-24 13:11:31	138	\N	f	f	 	f	\N	t
1455	Préparation du fichier d'import	0	2024-01-24	\N	480	0	2023-12-14	\N	72	148	3	2	2024-01-24 16:11:40	2024-01-24 16:11:55	148	\N	f	f	 Exercice 2023 :\nDu 01/01/2023 au 31/10/2023\n- Simulation de l'importation en interne	f	\N	t
1442	Taches	0	2024-01-24	\N	61	0	2024-12-31	\N	77	146	6	2	2024-01-24 15:58:21	2024-02-21 08:52:29	138	\N	f	f	 	f	\N	t
1436	ISSOUFALI - Récap billet 	0	2024-01-23	\N	60	0	2024-01-23	\N	73	147	3	2	2024-01-23 10:45:16	2024-01-23 10:45:41	147	\N	f	t	 Faire un contrôle sur les données du fichier récap billet et de l'envoyer ensuite si tout est ok	f	\N	t
1453	Taches	0	2024-01-24	\N	61	0	2024-12-31	\N	84	139	1	2	2024-01-24 16:10:28	2024-01-24 16:18:52	138	\N	f	f	 	f	\N	t
1457	Importation des exercices : Prod	0	2024-01-24	\N	240	0	2023-12-24	\N	72	148	3	2	2024-01-24 16:19:19	2024-01-24 16:19:22	148	\N	f	f	- Exercice 2023 : 01/01/2023 au 31/10/2023	f	\N	t
1426	ISSOUFALI - Actualisation du fichier import compta 	0	2024-01-19	\N	30	0	2023-01-19	\N	73	147	3	2	2024-01-19 12:19:25	2024-01-26 09:29:15	147	\N	f	t	 Tester le fichier d'import compta en actualisant le fichier\n\n*BLOCAGE : Le serveur bloque le port 5433.\n/sol° 1 -Installation du postgreSQL sur le serveur RDS\n/sol° 2 -Installation du driver postgreSQL sur le serveur RDS\n/sol° 3 - Voir le déblocage du port avec Frédérick si c'est leur serveur qui bloque le port ou notre serveur\n\n--Toutes ces solutions ne fonctionnent pas pour le moment (peut-être la création du source ODBC qui a été mal configuré ou autres, à voir actuellement) 	f	\N	t
1458	Modification des modèles d'impression 	0	2024-01-24	\N	240	0	2023-12-29	\N	72	148	3	2	2024-01-24 16:24:31	2024-01-24 16:24:37	148	\N	f	f	Pour les BL - Devis - Commande - Facture :\n* Ajout colonne : Lot et date d'expiration \n* Réajustement colonne 'Total'\n* Correction police en gras \n	f	\N	t
1564	Elaboration du tableau vente annuel	0	2024-02-21	\N	960	0	2024-02-23	\N	69	142	3	2	2024-02-22 09:31:53	2024-02-22 09:31:56	142	\N	f	f	\N	f	\N	f
1432	Front Ajout compagnie information (configurations)	100	2024-01-19	\N	300	1	2024-01-22	\N	79	162	4	2	2024-01-19 16:40:03	2024-02-02 16:06:34	162	2024-02-02 16:05:26	f	f	 	f	\N	t
1499	Relance automatique à 2 niveau	0	2024-02-02	\N	480	0	2024-02-02	\N	77	137	1	2	2024-02-02 08:37:10	2024-02-02 05:37:10	137	\N	f	f	 	f	\N	t
1433	Front Ajout Email PNR	100	2024-01-19	\N	90	48	2024-01-22	\N	79	162	4	2	2024-01-19 16:41:31	2024-02-02 16:06:44	162	2024-02-02 16:05:21	f	f	 	f	\N	t
1477	Modification de la formule sur le rubrique "avantage en nature"	100	2024-01-26	\N	240	0	2024-01-29	\N	84	146	4	2	2024-01-26 17:27:39	2024-02-22 09:37:53	146	\N	f	t	 Le montant ne doit pas être supérieur à 20% du salaire de base.	f	\N	t
1460	Création d'un modèle d'impression	0	2024-01-24	\N	120	0	2023-12-28	\N	85	148	3	2	2024-01-24 16:27:24	2024-01-24 16:27:27	148	\N	f	f	 X de caisse	f	\N	t
1462	Simulation paramétrages Utilisateur 'Caissier'	0	2024-01-24	\N	240	0	2023-12-28	\N	85	148	3	2	2024-01-24 16:29:50	2024-01-24 16:29:52	148	\N	f	f	- Désactivation des quelques champs dans la description de caisse\n- Masquer les champs désactivés dans le modèle d'impression X de caisse	f	\N	t
1363	Test 	0	2023-11-07	\N	180	0	2023-11-08	\N	71	140	2	2	2023-11-07 13:27:21	2024-01-24 16:38:28	144	\N	f	f	 Test de Pm pour Mirindra	f	\N	t
1459	Ajout moyen de paiement	0	2024-01-24	\N	120	0	2023-12-29	\N	85	148	3	2	2024-01-24 16:26:36	2024-01-24 16:27:38	148	\N	f	f	Moyen de paiement : Virement inséré sur l'écran de vente\n- Simulation en interne\n- Mise en production	f	\N	t
1491	Front modifier email pnr, notification, fee	100	2024-01-31	\N	240	48	2024-02-02	\N	79	162	4	2	2024-01-31 10:18:30	2024-02-02 16:06:15	162	2024-02-02 16:05:48	f	f	 	f	\N	t
1451	Taches	0	2024-01-24	\N	61	0	2024-12-31	\N	73	142	6	2	2024-01-24 16:09:02	2024-02-14 10:14:40	138	\N	f	f	 	f	\N	t
1452	Taches	0	2024-01-24	\N	61	0	2024-12-31	\N	75	142	6	2	2024-01-24 16:09:34	2024-02-14 10:20:12	138	\N	f	f	 	f	\N	t
1437	Préparation import Fournisseur	100	2024-01-24	\N	481	0	2024-01-25	\N	82	141	4	2	2024-01-24 15:36:45	2024-02-14 10:28:33	138	\N	f	f	 	f	\N	t
1498	Supprimer les avoirs 	100	2024-02-02	\N	120	0	2024-02-02	\N	74	137	4	2	2024-02-02 08:33:06	2024-02-14 11:27:31	137	\N	f	t	 	f	\N	t
1532	Importation Facture 2017 - 2018	0	2024-02-15	\N	480	0	2024-02-15	\N	82	148	6	2	2024-02-14 10:14:46	2024-02-23 13:31:01	148	\N	f	f	Importation des factures 2017 et 2018\nCorrection des erreurs lors de l'import	f	\N	f
1464	Clôture de l'exercice comptable 2022 (CDC) et ouverture de l'exercice 2024	0	2024-01-24	\N	180	0	2024-01-23	\N	83	146	3	2	2024-01-24 16:33:03	2024-01-24 16:33:07	146	\N	f	t	 	t	\N	t
1467	test	0	2024-01-24	\N	60	0	2023-12-31	\N	80	166	3	2	2024-01-24 16:43:00	2024-01-24 16:43:20	138	\N	f	f	 tast	f	\N	t
1470	MADAPLAST - Analyse du contrôle du prix de revient	0	2024-01-26	\N	240	0	2024-01-26	\N	69	147	3	2	2024-01-26 09:27:15	2024-01-26 09:27:17	147	\N	f	t	Faire une analyse sur l'objectif de l'envoi du mail du contrôle du prix de revient et d'en trouver une solution pour les blocages de mail	f	\N	t
1468	Créer une interface pour les autres commandes RTN, TTH (pour les PNR archivés)	0	2024-01-25	\N	60	35	2024-01-25	1435	79	129	3	2	2024-01-25 10:25:26	2024-01-26 10:55:10	129	\N	f	f	\N	f	\N	t
1558	Création modèles d'impression SALES REPORT	0	2024-02-19	\N	15	0	2024-02-19	\N	69	139	3	2	2024-02-19 09:38:38	2024-02-19 09:38:46	139	\N	f	t	Des modèles dédiées aux familles MPMENAGER et MPMEUBLE	f	\N	f
1487	Compte rendu de la réunion avec Coralie	0	2024-01-31	\N	120	0	2024-01-30	\N	77	146	1	2	2024-01-31 08:48:56	2024-02-20 09:52:01	146	\N	f	t	 •\tEst-ce qu’on peut faire un avoir sur le P.O. pour l’écriture de la régularisation de la banque BP1 du 31/12/2023 ?\n•\tParamétrage de l’immo INPI- DEPOT MARQUE QWEHLI : Affichage du tableau d’immortissement \nLa valeur comptailisée du 31/12/2023 est 0\n	f	\N	t
1556	Mise à jour du compte utilisé sur le montant de la reprise dans Gestion Com. Transférer les écritures dans le compte 531000 dans 531100, ré-transfert en comptabilité	100	2024-02-19	\N	180	0	2024-02-20	\N	78	146	4	2	2024-02-19 08:38:26	2024-02-21 08:52:03	146	\N	f	t	\N	f	\N	f
1484	Remonter les billets en FO PAX (billet initial)	0	2024-01-30	\N	360	0	2024-02-20	\N	79	162	1	2	2024-01-30 10:11:57	2024-01-30 14:42:23	129	\N	f	f	 	t	\N	t
1474	Catalogue Image article sur QLM et CHT	5	2024-01-26	\N	480	0	2024-01-26	\N	74	137	3	2	2024-01-26 11:43:46	2024-01-29 15:32:43	137	\N	f	f	 	f	\N	t
1472	Supression devis 	5	2024-01-26	\N	480	0	2024-01-22	\N	74	137	1	2	2024-01-26 11:24:07	2024-01-29 15:32:50	137	\N	f	f	 Supprimer quelques devis dans toutes les sociétés sur odoo	f	\N	t
1473	Avoir avec montant du signe positif	100	2024-01-26	\N	480	0	2024-01-30	\N	74	137	4	2	2024-01-26 11:26:02	2024-01-29 15:36:26	137	\N	f	f	 	f	\N	t
1555	Modifier la formatage du libellé des écritures des documents d'achats pour le transfert compta (numéro facture fournisseur + numéro facture interne: référence)	100	2024-02-19	\N	120	0	2024-02-19	\N	78	146	4	2	2024-02-19 08:32:44	2024-02-21 08:51:58	146	\N	f	t	\N	f	\N	f
1563	Ajouter la colonne Grade dans le tableau Valeur Rubrique sur une période	0	2024-02-21	\N	60	0	2024-02-21	\N	69	146	3	2	2024-02-21 11:43:08	2024-02-21 11:43:14	146	\N	f	t	\N	f	\N	f
1483	Faire une étude pour remonter les ventes diverses (Zenith)	0	2024-01-30	\N	345	0	2024-02-15	\N	79	162	1	2	2024-01-30 10:11:09	2024-01-30 07:11:09	129	\N	f	f	 	t	\N	t
1485	Etudier les cancelations (Demander à Mr. Tahine) une réunion est peut être requis	0	2024-01-30	\N	720	0	2024-03-26	\N	79	162	1	2	2024-01-30 10:13:05	2024-01-30 07:13:05	129	\N	f	f	 	t	\N	t
1488	Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024	0	2024-01-31	\N	60	0	2024-01-30	\N	77	146	3	2	2024-01-31 08:49:53	2024-01-31 08:49:57	146	\N	f	t	 	f	\N	t
1489	Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST	0	2024-01-31	\N	60	0	2024-01-30	\N	69	146	3	2	2024-01-31 08:51:04	2024-01-31 08:51:09	146	\N	f	t	 	f	\N	t
1492	Front ajout pour  parsing pnr	100	2024-01-31	\N	120	40	2024-02-02	\N	79	162	4	2	2024-01-31 10:20:56	2024-02-02 13:58:08	162	\N	f	f	 	f	\N	t
1566	Mise à jour du tableau contrôle paie, supprimer l'information de la rubrique Médecine du travail	0	2024-02-22	\N	60	0	2024-02-22	\N	84	146	3	2	2024-02-22 16:22:31	2024-02-22 16:22:34	146	\N	f	t	\N	f	\N	f
1420	Optimisation de la liste des PNRs (réduction du temps de rechargement de la page)	100	2024-01-17	\N	240	0	2024-01-17	\N	79	129	5	2	2024-01-17 09:47:21	2024-02-02 16:05:39	129	2024-02-02 16:05:39	f	f	 	t	\N	t
1494	Front Ajout et liste zenith parsing	100	2024-01-31	\N	150	0	2024-02-02	\N	79	162	3	2	2024-01-31 10:24:50	2024-02-02 13:57:16	162	\N	f	f	 	f	\N	t
1480	Modifier les taux salaires horaires sur les salariés horaire et gardien	100	2024-01-29	\N	90	0	2024-01-29	\N	84	146	4	2	2024-01-29 14:39:16	2024-02-22 09:38:30	146	\N	f	t	 	f	\N	t
1493	Front Ajout et liste pour parsing emd	100	2024-01-31	\N	120	0	2024-02-02	\N	79	162	4	2	2024-01-31 10:22:54	2024-02-02 16:06:27	162	2024-02-02 16:05:43	f	f	 	f	\N	t
1497	Attribuer Accès Utilisateur qlm	100	2024-02-02	\N	60	0	2024-02-02	\N	74	137	4	2	2024-02-02 08:32:03	2024-02-02 09:19:52	137	\N	f	t	 	f	\N	t
1533	Importation facture 2018 - 2019	0	2024-02-16	\N	480	0	2024-02-16	\N	82	148	6	2	2024-02-14 10:15:35	2024-02-23 13:31:09	148	\N	f	f	Importation des factures 2018 et 2019\nCorrection 	f	\N	f
1481	Gestion des utilisateurs de gestion PNR	0	2024-01-30	\N	85	0	2024-02-08	\N	79	162	6	2	2024-01-30 10:08:46	2024-02-13 09:21:05	129	\N	f	f	1. Archiver les anciens utilisateurs\n2. Gérer les changements de mot de passe 	f	\N	t
1482	Ajouter un nouvelle champ (is_canceled) pour dire que le PNR a été annulé totalement	100	2024-01-30	\N	90	119	2024-03-08	\N	79	129	4	2	2024-01-30 10:09:51	2024-02-14 09:07:33	129	\N	f	f	 	t	\N	t
1478	Ajouter le champ du rubrique "Bonus COA" dans les tableaux Contrôle paie, IRSA	100	2024-01-29	\N	60	0	2024-01-29	\N	69	146	4	2	2024-01-29 09:59:05	2024-02-14 09:40:56	146	\N	f	t	 Nouveau rubrique	f	\N	t
1495	Front ajout et liste TST parsing	100	2024-01-31	\N	60	0	2024-02-02	\N	79	162	3	2	2024-01-31 10:26:15	2024-02-14 09:17:47	162	\N	f	f	 	f	\N	t
1476	Rectifier la valeur IRSA fausse sur un bulletin	100	2024-01-26	\N	60	0	2024-01-26	\N	69	146	4	2	2024-01-26 17:22:30	2024-02-14 09:14:19	146	\N	f	t	 Problème dû au nombre d’enfant du salarié, le fiche à été mis à jour après la création du bulletin	f	\N	t
1496	Front ajout et liste ticket et zenith receipt parsing	100	2024-01-31	\N	150	0	2024-02-02	\N	79	162	3	2	2024-01-31 10:28:04	2024-02-14 09:17:51	162	\N	f	f	 	f	\N	t
1490	Front modifier compagnie information (configurations)	100	2024-01-31	\N	120	0	2024-02-02	\N	79	162	3	2	2024-01-31 10:17:54	2024-02-14 09:17:55	162	\N	f	f	 	f	\N	t
1469	QWEHLI SAS: Paramétrage des comptes par défaut utilisés pour les entrants et sortant de chaque journal de trésorerie.	100	2024-01-25	\N	120	0	2024-01-25	\N	77	146	4	2	2024-01-25 17:37:00	2024-02-15 16:35:38	146	\N	f	t	\N	f	\N	t
1471	Conditionnement d'article	50	2024-01-26	\N	480	0	2024-01-29	\N	74	137	3	2	2024-01-26 11:22:27	2024-02-14 11:27:42	137	\N	f	f	 Mise en place d'une conditionnement d'article sur Cheinmalt Odoo	f	\N	t
1466	Préparation et import des écritures du novembre/décembre 2023 pour HOME DESIGN	100	2024-01-24	\N	300	0	2024-01-26	\N	78	146	4	2	2024-01-24 16:41:26	2024-02-14 16:21:41	146	\N	f	t	 	f	\N	t
1479	Envoyer un fichier pour l'état de facture et avoir clients/fournisseurs pour FOCICOM REUNION daté du 01/01/2023 au 31/12/2023.	100	2024-01-29	\N	60	0	2024-01-29	\N	85	146	4	2	2024-01-29 14:36:14	2024-02-15 16:44:26	146	\N	f	t	 	f	\N	t
1500	PBDZDI : Le total ne correspond pas dans Odoo (à vérifier le TST)	0	2024-02-02	\N	400	0	2024-02-29	\N	79	162	1	2	2024-02-02 15:02:23	2024-02-02 16:07:24	129	\N	f	f	Le billet est émis par TST avec un montant supérieur au total (TAX + HT). Le programme a seulement pris le total de 24 euros car le montant hors-taxe + montant taxé n'est pas égale à 24 euros. Voir TST.	t	\N	t
1509	Test	0	2024-02-08	\N	60	0	2024-02-08	\N	80	128	1	2	2024-02-08 11:00:47	2024-02-08 08:00:47	128	\N	f	f	dfh	f	\N	f
1557	Ajustement tableau IRSA HC et IRSA EMP	0	2024-02-19	\N	60	0	2024-02-19	\N	69	139	3	2	2024-02-19 09:21:27	2024-02-19 09:21:46	139	\N	f	t	Ajout de rubriques pour le mode de calcul dans les requêtes	t	\N	f
1434	Gérer les configurations du projet avec toutes les modifications qu'on doit apporter avec Maphie	0	2024-01-22	\N	9630	7	2024-02-29	\N	79	162	3	2	2024-01-22 14:11:38	2024-02-14 09:14:50	129	\N	f	f	1. Résoudre les problèmes liées au parsage des mails du PNR (Zenith) pour mercure voyage\n2. Mise à jour des informations utilisés pour les autres agences si nécessaires	t	\N	t
1380	Modification du design recherche avancé avec intégration de la fonctionnalité	70	2023-12-19	\N	960	0	2023-12-22	\N	80	128	3	2	2023-12-19 17:28:30	2024-02-14 09:26:12	131	\N	f	f	 Modification du design du recherche avancé dans la page où il y a tous les projets	f	\N	t
1486	Documentation sur gestion PNR	0	2024-01-30	\N	2400	52	2024-02-29	\N	79	131	1	2	2024-01-30 14:43:33	2024-02-19 10:48:00	129	\N	f	f	PNR\nTKT\nEMD\nTST\nZenith\nAltea	t	\N	t
1517	Création des raccourcis et un nouveau utilisateur dans EPB Compta, Gestion Commerciale, Paie	0	2024-02-12	\N	20	0	2024-02-12	\N	69	146	6	2	2024-02-12 17:02:30	2024-02-14 09:36:45	146	\N	f	t	\N	f	\N	f
1510	Gestion des utilisateur (archiver, supprimer, changer mot de passe) etc	0	2024-02-22	\N	600	0	2024-03-06	\N	79	162	1	2	2024-02-09 15:29:47	2024-02-09 12:29:47	129	\N	f	f	\N	t	\N	t
1511	Réponse automatique d'anomalie à étudier	0	2024-03-09	\N	600	0	2024-04-08	\N	79	162	1	2	2024-02-09 15:31:12	2024-02-09 12:31:12	129	\N	f	t	\N	f	\N	t
1559	00E2W9 : Le montant de l'EMD ne correspond pas (voir reçu dossier) - REMB	0	2024-03-01	\N	180	0	2024-03-05	\N	79	129	1	2	2024-02-19 10:49:24	2024-02-19 07:49:24	129	\N	f	f	\N	t	\N	t
1435	Annuler la modification dans gestion PNR le 22 janvier	100	2024-01-23	\N	465	217	2024-01-24	\N	79	129	5	2	2024-01-23 10:16:57	2024-02-12 09:50:00	129	2024-02-12 09:50:00	f	f	1. Annuler via le gestion de versionning GIT avec la commande git reflog\n2. Créer une interface pour les autres commandes d'Amadeus\n3. Réajouter toutes les fonctionnalités qui ont été mise en plâce ce jour\n4. Attendre l'approbation du directeur pour l'interface et les nouvelles fonctionnalités	t	\N	t
1512	Correction tableau "Analyses prix de vente" sur qlm	0	2024-02-12	\N	120	0	2024-02-13	\N	74	137	1	2	2024-02-12 15:38:51	2024-02-12 12:38:51	137	\N	f	f	\N	f	\N	f
1513	Analyse de la paramètrage des séquences au niveau du module fabrication sur odoo	0	2024-02-12	\N	480	0	2024-02-13	\N	74	137	1	2	2024-02-12 15:41:02	2024-02-12 12:41:02	137	\N	f	f	\N	f	\N	f
1501	Déplacement automaitique des anciens mails et CRON du redémarrage automatique du serveur Django	0	2024-02-02	\N	720	0	2024-02-29	\N	79	162	3	2	2024-02-02 16:10:37	2024-02-21 10:15:44	129	\N	f	f	 	t	\N	t
1528	Importation facture 2016 - 2017	0	2024-02-14	\N	480	0	2024-02-14	\N	82	148	6	2	2024-02-14 10:10:20	2024-02-23 16:21:11	148	\N	f	f	- Importation dans EBP\n- Correction des erreurs	f	\N	f
1411	a	0	2024-01-11	\N	61	0	2024-01-12	\N	81	147	6	2	2024-01-11 14:41:42	2024-02-12 17:04:31	138	\N	f	f	 	f	\N	t
1412	Automatisation de l'import DEVIS	50	2024-01-11	\N	1440	0	2024-01-12	\N	81	147	3	2	2024-01-11 14:44:58	2024-02-14 09:11:20	147	\N	f	f	Automatiser l'import du devis après génération d'un fichier csv via objets métiers 	f	\N	t
1518	Création un nouveau raccourci pour EBP Gescom, Compta, Immo, Paie pour un nouveau utilisateur	100	2024-02-12	\N	20	0	2024-02-12	\N	69	146	4	2	2024-02-14 09:13:28	2024-02-14 09:41:19	146	\N	f	t	\N	f	\N	f
1522	Analayse des relance automatique des paiments en retard sur odoo	100	2024-02-13	\N	240	0	2024-02-13	\N	77	137	4	2	2024-02-14 09:41:21	2024-02-14 09:42:17	137	\N	f	f	\N	f	\N	f
1521	Paramétrage des emails automatiques envoyés à la validation des Bon de livraisons	100	2024-02-13	\N	120	0	2024-02-13	\N	77	137	4	2	2024-02-14 09:40:34	2024-02-14 09:42:36	137	\N	f	f	\N	f	\N	f
1520	Import N° de lot fournisseur sur Odoo	100	2024-02-13	\N	300	0	2024-02-13	\N	77	137	4	2	2024-02-14 09:39:13	2024-02-14 09:42:49	137	\N	f	f	\N	f	\N	f
1514	Analyse Migration odoo v15-V16	60	2024-02-12	\N	120	0	2024-02-16	\N	74	137	3	2	2024-02-12 16:15:03	2024-02-14 09:42:59	137	\N	f	f	\N	f	\N	f
1523	Mise en place du tableau "Ventes_Famille_sousFamille PA V1.0.0" dans le serveur de MADAPLAST	100	2024-01-31	\N	300	0	2024-01-31	\N	69	146	4	2	2024-02-14 09:44:54	2024-02-14 09:45:41	146	\N	f	t	\N	f	\N	f
1525	MOLLAN - Import Bon de commande	100	2024-02-06	\N	240	0	2024-02-09	\N	81	147	4	2	2024-02-14 09:52:17	2024-02-14 09:53:56	147	\N	f	t	Créer une application via Visual studio et le bibliothèque objets métiers. Il y avait déjà un modèle dans le serveur de TEST, mais il faut juste le modifier pour qu’il s’adapte à l’import du bon de commande. Idem pour l’interface	f	\N	f
1428	MOLLAN - Import objets métiers avec vba	0	2024-01-19	\N	60	0	2024-01-15	\N	81	147	3	2	2024-01-19 12:24:44	2024-02-14 09:54:23	147	\N	f	t	 Assister au test de l’import des fichiers BC via le exe gérer par visual studio.\nAide sur le bug et d’en trouver une solution.\n	f	\N	t
1527	Modifcation du tableau 2080	100	2023-10-01	\N	480	0	2023-10-31	\N	81	142	4	2	2024-02-14 10:02:27	2024-02-14 10:05:04	142	\N	f	f	Optimisation du tableau "import 20280"	f	\N	f
1526	Modification et  Ajout de fonctionnalité sur le tableau Surstockage	100	2023-12-19	\N	480	0	2023-12-22	\N	81	142	4	2	2024-02-14 09:57:20	2024-02-14 10:04:43	142	\N	f	f	- Ajout de feuille Formule\n- Ajout  d'une feuille contenant le tableau de liste des articles non vendues selon un mode de calcul \n- Mise en marche de la fonctionnalité tri par valeur et tri par quantité	f	\N	f
1530	Avoir	0	2024-02-22	\N	480	0	2024-02-22	\N	82	148	1	2	2024-02-14 10:13:35	2024-02-14 07:13:35	148	\N	f	f	Importation des avoirs	f	\N	f
1519	Rédaction procédure Gestion des emails sur Outlook.	100	2024-02-08	\N	120	0	2024-02-08	\N	77	137	4	2	2024-02-14 09:33:58	2024-02-14 11:26:51	137	\N	f	f	\N	f	\N	f
1516	désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements » 	0	2024-02-12	\N	120	0	2024-02-13	\N	77	146	6	2	2024-02-12 16:59:57	2024-02-15 16:35:14	146	\N	f	t	\N	f	\N	f
1515	désactiver la comptabilisation automatique des écritures relatives à la TVA, dans les journaux « Différence de change » « TVA sur encaissements » 	100	2024-02-12	\N	180	0	2024-02-13	\N	77	146	4	2	2024-02-12 16:59:20	2024-02-16 10:05:54	146	\N	f	t	Fournir une procédure	f	\N	f
1524	Réglages au niveau du tableau COA vs Budget	100	2024-02-14	\N	300	0	2024-02-14	\N	69	139	4	2	2024-02-14 09:51:52	2024-02-19 09:21:39	139	\N	f	f	Des grilles analytiques ont été renommées. Le tableau ne tient pas compte des modifications. Requêtes améliorées et vérification des valeurs. 	t	\N	f
1549	Faire un point sur teams avec l'équipe de QWEHLI	100	2024-02-16	\N	30	0	2024-02-16	\N	77	146	4	2	2024-02-16 10:09:34	2024-02-20 09:50:49	146	\N	f	t	Comments n'est pas générer automatiquements les écritures TVA sur encaissement et Différence de change	f	\N	f
1529	Automatisation récupération, traitement et envoi dans la base de données	100	2023-11-01	\N	480	0	2024-01-05	\N	73	142	4	2	2024-02-14 10:12:24	2024-02-14 10:15:11	142	\N	f	f	- Automatisation de la récupération journalière des fichiers pdfs et Txt dans leurs sites respectifs.\n- Automatisation du traitement journalier de ces fichiers récupérés\n_ Automatisation de l'envoi dans la base de données de ces données traitées	f	\N	f
1562	Désactiver la génération automatique des écritures dans le journal "Différence de change"	0	2024-02-21	\N	180	0	2024-02-21	\N	77	146	3	2	2024-02-21 08:57:05	2024-02-21 08:57:10	146	\N	f	t	\N	f	\N	f
1560	N'est générer automatiquement les écritures sur le TVA sur encaissement 	100	2024-02-19	\N	60	0	2024-02-19	\N	77	146	4	2	2024-02-20 09:54:02	2024-02-20 09:54:27	146	\N	f	t	Paramétrage au niveau du TVA utilisé sur les articles de service	f	\N	f
1565	Mise à jour du taux de la rubrique Médecine du travail à 6% et supprimer la rubrique Médecine du travail non déductible 1%	100	2024-02-22	\N	60	0	2024-02-22	\N	84	146	3	2	2024-02-22 09:39:33	2024-02-22 16:22:03	146	\N	f	t	\N	f	\N	f
1534	Automatisation d'envoi de mail d'un fichier contenant les erreurs durant l'import	100	2023-08-16	\N	480	0	2023-08-18	\N	75	142	4	2	2024-02-14 10:19:58	2024-02-14 10:21:27	142	\N	f	f	Récupération des erreurs durant l'import du ZEOP\nMise en place de l'envoi automatique d'un courriel si un fichier est déposé  dans le répertoire créé\nContrôle sur les données entre le fichier et SAGE	f	\N	f
1535	Préparation import Devis	0	2024-02-14	\N	480	0	2024-02-14	\N	82	141	3	2	2024-02-14 10:31:13	2024-02-14 10:31:37	141	\N	f	f	- Préparation de données à importer\n- Importation dans EBP	f	\N	f
1536	Analyse erreur lors de la création d'un avoir sur une facture	50	2024-02-14	\N	300	0	2024-02-15	\N	74	137	3	2	2024-02-14 11:24:26	2024-02-14 11:24:39	137	\N	f	f	\N	f	\N	f
1537	Création devis pour qlm 	20	2024-02-14	\N	60	0	2024-02-14	\N	74	137	3	2	2024-02-14 11:28:59	2024-02-14 11:29:10	137	\N	f	f	Elaboration d'un tableau de chiffrage pour delais des taches	f	\N	f
1531	Autamatisation de l'envoi du mail journalier pour les Pnrs non remontés dans Gestion PNR	100	2024-02-13	\N	480	0	2024-02-14	\N	73	142	4	2	2024-02-14 10:14:29	2024-02-14 11:44:17	142	\N	f	f	Envoi du mail journalier pour suivie des Pnrs non remontées dans Gestion PNR	f	\N	f
1539	Transfert compta via le transfert xml dans un répertoire compta	0	2024-02-13	\N	420	0	2024-02-14	\N	78	146	3	2	2024-02-14 16:20:14	2024-02-14 16:20:22	146	\N	f	t	\N	t	\N	f
1475	Mise à jour des paramétrages dans EBP Gestion commerciale et Comptabilité	100	2024-01-26	\N	240	0	2024-01-26	\N	78	146	4	2	2024-01-26 14:46:30	2024-02-14 16:21:45	146	\N	f	t	 - Ajouter un mot de passe utilisateur de la base comptabilité ACTIVE NEGOCE_CPTA, voici le mot de passe ACTIVE@2024 (pour la sécurité de la base de données).\n- Imputation des écritures sur le journal BC du janvier 2023 (HOME DESIGN) dans le journal BCA.\n- Changer les codes journaux des banques dans Gestion Commerciale du dossier HOME DESIGNE et QUINCAILLERIE EXPERT pour qu’ils correspondent au journal utilisé dans la compta,	f	\N	t
1542	tashe tache	0	2024-02-15	\N	60	0	2024-02-16	\N	69	142	6	2	2024-02-15 14:33:21	2024-02-15 14:36:48	127	\N	f	f	esorina avieo rehefa vita le tena tache	f	\N	t
1540	Analyse d'un erreur lors d'annulation d'un reliquat de BR	100	2024-02-15	\N	120	0	2024-02-15	\N	77	137	4	2	2024-02-15 10:36:16	2024-02-15 10:36:49	137	\N	f	f	\N	f	\N	f
1538	Analyse facture imprimée avec plusieurs BL rattachée	50	2024-02-14	\N	300	0	2024-02-15	\N	77	137	3	2	2024-02-14 14:39:00	2024-02-15 10:38:56	137	\N	f	f	\N	f	\N	f
1543	Ajustement fichier IRSA 	100	2024-02-15	\N	480	0	2024-02-16	\N	69	142	4	2	2024-02-15 14:36:25	2024-02-15 17:03:36	142	\N	f	f	Recherche et correction du dysfonctionnement dans le tableau IRSA  paie	f	\N	f
1545	Compte rendu de la réunion avec Coralie	100	2024-01-31	\N	60	0	2024-01-31	\N	77	146	4	2	2024-02-15 16:37:23	2024-02-15 16:38:05	146	\N	f	t	• Est-ce qu’on peut faire un avoir sur le P.O. pour l’écriture de la régularisation de la banque BP1 du 31/12/2023 ? • Paramétrage de l’immo INPI- DEPOT MARQUE QWEHLI : Affichage du tableau d’immortissement La valeur comptailisée du 31/12/2023 est 0	f	\N	f
1546	Comment fait la régularisation de la banque BP1 pour le rapport de rapprochement bancaire avec le PO et est-ce qu'on peut annulé en un Avoir au Janvier 2024	100	2024-01-31	\N	120	0	2024-01-31	\N	77	146	4	2	2024-02-15 16:39:43	2024-02-15 16:40:07	146	\N	f	t	\N	f	\N	f
1547	Etat comparatif des ventes mensuel Année N et Année N-1.	0	2024-02-15	\N	300	0	2024-02-20	\N	69	146	1	2	2024-02-15 16:46:31	2024-02-15 13:46:31	146	\N	f	t	\N	f	\N	f
1544	tache	0	2024-02-15	\N	120	0	2024-02-16	\N	74	142	6	2	2024-02-15 14:40:45	2024-02-15 17:01:02	127	\N	f	f	tache test	f	\N	t
1541	Réctification de l'import devis et article	95	2024-02-15	\N	240	0	2024-02-15	\N	81	147	3	2	2024-02-15 13:46:13	2024-02-15 16:56:36	147	\N	f	t	Réctification de l'import devis et article\n*Modification du code\n*Lancement du programme et gestion des reliquats	f	\N	f
1548	QLM - FINALISATION TABLEAU IMPACT DE L' INCIDENT SUR LES LISTES DE PRIX	100	2023-11-02	\N	480	0	2023-11-09	\N	74	142	4	2	2024-02-15 17:00:48	2024-02-15 17:03:02	142	\N	f	t	Faire les calculs des vrais prix unitaires pour les lignes impactées\nSortir les sous totaux et déduire le TVA\nFaire un TCD représentatif pour pouvoir présenter le cas et l’envergure de l’impact.\n\n 	f	\N	f
1551	ISSOUFALI - Etat de caisse UU 010123-311223	0	2024-02-16	\N	120	0	2024-02-16	\N	73	147	3	2	2024-02-16 13:30:01	2024-02-16 13:30:04	147	\N	f	t	Sortir l'état de caisse du compagnie UU pour l'année 2023.\nUniquement pour les 3 clients : VINCI/SOGEA, BFOI et la COLAS 	f	\N	f
1553	Mise en place d'un module permettant l'interdiction des stocks négatifs dans odoo	100	2024-02-16	\N	300	0	2024-02-16	\N	77	137	4	2	2024-02-16 13:30:50	2024-02-16 13:31:45	137	\N	f	f	\N	f	\N	f
1552	Mise en place d'une selection de lot dans PICK avec Studio	20	2024-02-16	\N	480	0	2024-02-19	\N	77	137	3	2	2024-02-16 13:30:05	2024-02-16 13:31:58	137	\N	f	f	\N	f	\N	f
1550	Remise à zéro quantité réservé d'un article	100	2024-02-16	\N	60	0	2024-02-16	\N	77	137	4	2	2024-02-16 13:29:04	2024-02-16 13:32:08	137	\N	f	f	\N	f	\N	f
1456	Dotation des immobilisations au 31/12/2023	100	2024-01-24	\N	480	0	2024-01-26	\N	84	146	4	2	2024-01-24 16:16:17	2024-02-22 09:38:02	146	\N	f	t	Il y a plusieurs immobilisations complètement amortis alors dans l'état de dotation quelques immos ont des montants ne correspondent pas dans les tableaux des immos et amortissement au niveau des valeurs nettes	t	\N	t
1567	Préparation de fichier de contrôle	0	2024-02-23	\N	480	0	2024-02-26	\N	82	148	3	2	2024-02-23 16:19:54	2024-02-23 16:19:59	148	\N	f	f	- Contrôle Document\n- Contrôle Ligne de document\n- Contrôle des éléments	f	\N	f
1463	Préparation import Facture	100	2024-01-24	\N	480	0	2024-01-24	\N	82	148	3	2	2024-01-24 16:32:47	2024-02-23 16:21:36	148	\N	f	f	- Fichier d'importation\n- Traitement des données client\n- Correction et ajout des articles manquants	f	\N	t
1568	Préparation fiches de contrôles	0	2024-02-23	\N	120	0	2024-02-23	\N	82	141	3	2	2024-02-23 17:06:26	2024-02-23 17:07:07	141	\N	f	f	- Contrôle Fournisseur\n- Contrôle Devis	f	\N	f
\.


--
-- Data for Name: tasks_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tasks_history (id, task_id, intervener_id, tracing_date, status_from_id, status_to_id, reason, inserted_at, updated_at) FROM stdin;
70	1359	138	\N	1	3	\N	2023-11-03 11:32:00	2023-11-03 11:32:00
122	1371	142	\N	3	4	Aucun	2023-11-15 17:16:01	2023-11-15 14:16:01
72	1359	139	\N	2	3	\N	2023-11-06 07:23:58	2023-11-06 07:23:58
71	1359	139	\N	3	2	\N	2023-11-06 07:21:01	2023-11-06 10:24:09
123	1374	142	\N	1	3	Aucun	2023-11-15 17:25:37	2023-11-15 14:25:37
73	1360	131	\N	3	2	test	2023-11-06 13:37:27	2023-11-06 16:38:01
124	1374	142	\N	3	4	Aucun	2023-11-15 17:25:40	2023-11-15 14:25:40
76	1363	144	\N	2	1	\N	2023-11-07 10:28:44	2023-11-07 10:28:44
75	1363	144	\N	1	2	erreur technique	2023-11-07 10:27:43	2023-11-07 13:28:54
77	1360	133	\N	3	4	\N	2023-11-07 14:01:12	2023-11-07 14:01:12
79	1361	134	\N	1	3	\N	2023-11-08 06:20:15	2023-11-08 06:20:15
74	1360	131	\N	2	3	Accompli	2023-11-06 13:37:55	2023-11-10 08:47:32
81	1362	128	\N	3	4	\N	2023-11-10 05:48:37	2023-11-10 05:48:37
78	1362	128	\N	1	3	attente de controle	2023-11-08 06:19:14	2023-11-10 08:48:51
80	1360	131	\N	4	5	xbfd	2023-11-10 05:47:10	2023-11-10 15:18:41
125	1372	148	\N	2	3	Blocage résolu	2023-11-15 17:30:24	2023-11-15 14:30:24
83	1362	131	\N	5	4	ukbn	2023-11-10 12:18:36	2023-11-10 15:19:04
85	1361	131	\N	3	5	\N	2023-11-10 12:19:18	2023-11-10 12:19:18
84	1362	131	\N	4	5	hjhmbj	2023-11-10 12:19:01	2023-11-10 15:19:20
82	1362	127	\N	4	5	recule 	2023-11-10 12:13:25	2023-11-13 15:58:41
126	1367	147	\N	1	3	Aucun	2023-11-17 11:25:17	2023-11-17 08:25:17
87	1360	127	\N	2	3	\N	2023-11-13 12:59:04	2023-11-13 12:59:04
86	1360	127	\N	5	2	progression	2023-11-13 12:58:29	2023-11-13 15:59:15
88	1360	127	\N	3	4	\N	2023-11-13 12:59:45	2023-11-13 12:59:45
89	1360	127	\N	4	5	Aucun	2023-11-13 16:09:12	2023-11-13 13:09:12
90	1362	127	\N	5	4	aszd	2023-11-13 16:09:26	2023-11-13 13:09:26
92	1363	127	\N	1	3	Aucun	2023-11-14 09:27:44	2023-11-14 06:27:44
127	1369	147	\N	1	3	Aucun	2023-11-17 11:25:29	2023-11-17 08:25:29
91	1362	127	\N	4	5	test	2023-11-13 16:09:31	2023-11-14 14:23:43
128	1369	147	\N	3	4	Aucun	2023-11-17 11:26:36	2023-11-17 08:26:36
93	1360	127	\N	5	4	test	2023-11-14 11:23:39	2023-11-14 14:24:21
129	1370	147	\N	1	3	Aucun	2023-11-17 11:27:14	2023-11-17 08:27:14
94	1360	127	\N	4	3	vhv	2023-11-14 11:24:15	2023-11-14 14:24:56
96	1360	127	\N	4	5	\N	2023-11-14 12:55:40	2023-11-14 12:55:40
95	1360	127	\N	3	4	zda	2023-11-14 11:24:37	2023-11-14 15:55:43
97	1362	127	\N	4	2	d	2023-11-14 16:53:43	2023-11-14 13:53:43
98	1362	127	\N	3	4	Aucun	2023-11-14 16:54:14	2023-11-14 13:54:14
99	1362	127	\N	4	3	brfd	2023-11-14 16:54:31	2023-11-14 13:54:31
100	1362	127	\N	3	4	Aucun	2023-11-14 16:54:33	2023-11-14 13:54:33
101	1362	127	\N	4	3	frffg	2023-11-14 16:54:41	2023-11-14 13:54:41
102	1362	127	\N	3	2	gtrf	2023-11-14 16:54:50	2023-11-14 13:54:50
103	1362	127	\N	3	4	Aucun	2023-11-14 16:55:03	2023-11-14 13:55:03
104	1362	127	\N	4	5	Aucun	2023-11-14 16:55:07	2023-11-14 13:55:07
105	1362	127	\N	5	3	fgf	2023-11-14 16:55:51	2023-11-14 13:55:51
106	1362	128	\N	3	2	ma motif	2023-11-14 16:56:03	2023-11-14 13:56:03
107	1362	128	\N	2	4	vita	2023-11-14 16:56:11	2023-11-14 13:56:11
108	1362	127	\N	4	5	Aucun	2023-11-14 16:56:22	2023-11-14 13:56:22
109	1364	129	\N	1	3	Aucun	2023-11-15 09:34:40	2023-11-15 06:34:40
110	1364	129	\N	3	2	test	2023-11-15 09:37:06	2023-11-15 06:37:06
111	1364	129	\N	2	5	test	2023-11-15 09:37:30	2023-11-15 06:37:30
112	1365	138	\N	1	2	Attente retour clients	2023-11-15 16:48:42	2023-11-15 13:48:42
113	1359	139	\N	3	2	EBP SDK Test	2023-11-15 16:49:53	2023-11-15 13:49:53
114	1365	138	\N	2	3	A finir 13/11	2023-11-15 16:50:14	2023-11-15 13:50:14
115	1359	139	\N	2	3	Test sur le serveur de production	2023-11-15 16:53:35	2023-11-15 13:53:35
116	1366	137	\N	1	3	Aucun	2023-11-15 16:56:07	2023-11-15 13:56:07
117	1368	139	\N	1	3	Aucun	2023-11-15 16:56:53	2023-11-15 13:56:53
118	1372	148	\N	1	3	Aucun	2023-11-15 17:11:26	2023-11-15 14:11:26
119	1372	148	\N	3	2	Solde cumulé pour les clients qui ont des soldes dues	2023-11-15 17:12:04	2023-11-15 14:12:04
120	1373	148	\N	1	2	3  ANSE	2023-11-15 17:15:07	2023-11-15 14:15:07
121	1373	148	\N	2	3	3 ANSE	2023-11-15 17:15:18	2023-11-15 14:15:18
130	1370	147	\N	3	4	Aucun	2023-11-17 11:28:08	2023-11-17 08:28:08
131	1375	147	\N	1	3	Aucun	2023-11-17 11:31:32	2023-11-17 08:31:32
132	1368	139	\N	3	4	Aucun	2023-11-17 11:43:05	2023-11-17 08:43:05
133	1360	131	\N	5	4	adino	2023-11-17 13:52:12	2023-11-17 10:52:12
134	1360	127	\N	4	5	Aucun	2023-11-17 13:58:27	2023-11-17 10:58:27
135	1361	131	\N	5	4	averina	2023-11-17 14:22:31	2023-11-17 11:22:31
136	1361	131	\N	4	5	Aucun	2023-11-17 14:22:40	2023-11-17 11:22:40
137	1362	127	\N	5	4	averina 2	2023-11-17 14:24:26	2023-11-17 11:24:26
138	1362	127	\N	4	5	Aucun	2023-11-17 14:24:35	2023-11-17 11:24:35
139	1360	131	\N	4	5	Aucun	2023-11-17 14:38:11	2023-11-17 11:38:11
140	1362	131	\N	5	4	verina	2023-11-17 14:38:33	2023-11-17 11:38:33
141	1361	131	\N	5	4	verina	2023-11-17 14:40:10	2023-11-17 11:40:10
142	1362	131	\N	4	5	Aucun	2023-11-17 14:40:21	2023-11-17 11:40:21
143	1361	131	\N	4	5	Aucun	2023-11-17 14:40:47	2023-11-17 11:40:47
144	1376	147	\N	2	3	rien	2023-11-28 09:14:32	2023-11-28 06:14:32
145	1380	128	\N	1	3	Aucun	2023-12-20 09:14:58	2023-12-20 06:14:58
146	1383	133	\N	3	4	Aucun	2023-12-20 17:18:46	2023-12-20 14:18:46
147	1381	134	\N	1	3	Aucun	2023-12-21 17:00:19	2023-12-21 14:00:19
148	1375	147	\N	3	4	Aucun	2023-12-26 10:37:45	2023-12-26 07:37:45
149	1367	147	\N	3	4	Aucun	2023-12-26 10:38:06	2023-12-26 07:38:06
150	1376	147	\N	3	4	Aucun	2023-12-26 10:38:36	2023-12-26 07:38:36
151	1384	129	\N	3	4	Aucun	2024-01-09 14:42:48	2024-01-09 11:42:48
152	1384	129	\N	4	5	Aucun	2024-01-09 14:42:56	2024-01-09 11:42:56
153	1385	129	\N	1	3	Aucun	2024-01-09 14:49:09	2024-01-09 11:49:09
154	1384	162	\N	3	4	Aucun	2024-01-09 14:49:39	2024-01-09 11:49:39
155	1384	129	\N	4	5	Aucun	2024-01-09 14:54:44	2024-01-09 11:54:44
156	1382	128	\N	1	3	Aucun	2024-01-09 16:34:27	2024-01-09 13:34:27
157	1382	128	\N	3	4	Aucun	2024-01-09 16:41:41	2024-01-09 13:41:41
158	1382	128	\N	3	4	Aucun	2024-01-09 16:42:16	2024-01-09 13:42:16
159	1389	129	\N	1	3	Aucun	2024-01-09 16:47:35	2024-01-09 13:47:35
160	1382	128	\N	4	3	a refaire	2024-01-09 16:56:15	2024-01-09 13:56:15
161	1382	128	\N	3	4	Aucun	2024-01-09 16:56:54	2024-01-09 13:56:54
162	1382	128	\N	4	3	teste 	2024-01-09 16:57:24	2024-01-09 13:57:24
163	1382	128	\N	3	4	Aucun	2024-01-09 16:57:46	2024-01-09 13:57:46
164	1391	128	\N	1	4	Aucun	2024-01-10 09:06:03	2024-01-10 06:06:03
165	1392	134	\N	1	4	Aucun	2024-01-10 09:07:47	2024-01-10 06:07:47
166	1379	134	\N	1	3	Aucun	2024-01-10 09:08:07	2024-01-10 06:08:07
167	1394	128	\N	1	3	Aucun	2024-01-10 09:10:20	2024-01-10 06:10:20
168	1396	147	\N	1	3	Aucun	2024-01-10 11:21:33	2024-01-10 08:21:33
169	1397	147	\N	1	3	Aucun	2024-01-10 11:25:34	2024-01-10 08:25:34
170	1398	147	\N	1	3	Aucun	2024-01-10 11:29:03	2024-01-10 08:29:03
171	1400	147	\N	1	3	Aucun	2024-01-10 11:36:32	2024-01-10 08:36:32
172	1401	147	\N	1	3	Aucun	2024-01-10 11:40:42	2024-01-10 08:40:42
173	1402	147	\N	1	3	Aucun	2024-01-10 11:44:55	2024-01-10 08:44:55
174	1403	147	\N	1	3	Aucun	2024-01-10 12:04:33	2024-01-10 09:04:33
175	1405	147	\N	1	3	Aucun	2024-01-10 12:07:59	2024-01-10 09:07:59
176	1406	147	\N	1	3	Aucun	2024-01-10 13:27:29	2024-01-10 10:27:29
177	1407	147	\N	1	3	Aucun	2024-01-10 13:29:12	2024-01-10 10:29:12
178	1408	147	\N	1	3	Aucun	2024-01-10 13:34:34	2024-01-10 10:34:34
179	1409	147	\N	1	3	Aucun	2024-01-10 13:41:54	2024-01-10 10:41:54
180	1410	147	\N	1	2	Planificateur de tâches windows, le programme ne lance pas	2024-01-10 13:53:11	2024-01-10 10:53:11
181	1394	128	\N	2	3	averina	2024-01-10 14:22:46	2024-01-10 11:22:46
182	1390	129	\N	1	3	Aucun	2024-01-10 14:40:29	2024-01-10 11:40:29
183	1412	147	\N	1	3	Aucun	2024-01-11 15:02:14	2024-01-11 12:02:14
184	1416	147	\N	1	3	Aucun	2024-01-11 15:06:15	2024-01-11 12:06:15
185	1384	129	\N	4	5	Aucun	2024-01-15 14:16:41	2024-01-15 11:16:41
186	1387	129	\N	4	5	Aucun	2024-01-15 14:17:44	2024-01-15 11:17:44
187	1385	129	\N	4	5	Aucun	2024-01-15 14:17:53	2024-01-15 11:17:53
188	1389	129	\N	4	5	Aucun	2024-01-15 14:18:00	2024-01-15 11:18:00
189	1386	129	\N	4	5	Aucun	2024-01-15 16:21:14	2024-01-15 13:21:14
190	1388	129	\N	4	5	Aucun	2024-01-15 16:58:26	2024-01-15 13:58:26
191	1387	129	\N	5	4	Faire test dans l'environnement du serveur linux	2024-01-17 09:44:27	2024-01-17 06:44:27
192	1385	129	\N	5	4	Faire test dans l'environnement du serveur linux	2024-01-17 09:44:37	2024-01-17 06:44:37
193	1389	129	\N	5	4	Faire test dans l'environnement du serveur linux	2024-01-17 09:44:41	2024-01-17 06:44:41
194	1388	129	\N	5	4	Faire test dans l'environnement du serveur linux	2024-01-17 09:44:46	2024-01-17 06:44:46
195	1384	129	\N	5	4	Faire test dans l'environnement du serveur linux	2024-01-17 09:44:51	2024-01-17 06:44:51
196	1386	129	\N	5	4	Faire test dans l'environnement du serveur linux	2024-01-17 09:44:55	2024-01-17 06:44:55
197	1383	131	\N	4	5	Aucun	2024-01-19 12:12:02	2024-01-19 09:12:02
198	1425	147	\N	1	3	Aucun	2024-01-19 12:12:34	2024-01-19 09:12:34
199	1426	147	\N	1	2	PostgreSQL - aucun source dans excel	2024-01-19 12:20:05	2024-01-19 09:20:05
200	1427	147	\N	1	3	Aucun	2024-01-19 12:23:01	2024-01-19 09:23:01
201	1428	147	\N	1	3	Aucun	2024-01-19 12:24:45	2024-01-19 09:24:45
202	1429	147	\N	1	3	Aucun	2024-01-19 12:26:28	2024-01-19 09:26:28
203	1430	147	\N	1	3	Aucun	2024-01-19 12:27:35	2024-01-19 09:27:35
204	1431	147	\N	1	3	Aucun	2024-01-19 12:30:00	2024-01-19 09:30:00
205	1432	162	\N	1	3	Aucun	2024-01-19 16:40:12	2024-01-19 13:40:12
206	1433	162	\N	1	3	Aucun	2024-01-19 16:41:56	2024-01-19 13:41:56
207	1390	129	\N	3	5	Aucun	2024-01-22 11:52:26	2024-01-22 08:52:26
208	1420	129	\N	1	3	Aucun	2024-01-22 13:52:20	2024-01-22 10:52:20
209	1387	129	\N	4	5	Aucun	2024-01-23 10:11:42	2024-01-23 07:11:42
210	1385	129	\N	4	5	Aucun	2024-01-23 10:11:45	2024-01-23 07:11:45
211	1384	129	\N	4	5	Aucun	2024-01-23 10:11:51	2024-01-23 07:11:51
212	1419	129	\N	1	5	Aucun	2024-01-23 10:12:06	2024-01-23 07:12:06
213	1418	129	\N	1	5	Aucun	2024-01-23 10:12:09	2024-01-23 07:12:09
214	1417	129	\N	1	5	Aucun	2024-01-23 10:12:14	2024-01-23 07:12:14
215	1435	129	\N	1	3	Aucun	2024-01-23 10:17:01	2024-01-23 07:17:01
216	1436	147	\N	1	2	 0	2024-01-23 10:45:29	2024-01-23 07:45:29
217	1436	147	\N	2	1	0	2024-01-23 10:45:37	2024-01-23 07:45:37
218	1436	147	\N	1	3	Aucun	2024-01-23 10:45:41	2024-01-23 07:45:41
219	1386	129	\N	4	5	Aucun	2024-01-24 10:24:45	2024-01-24 07:24:45
220	1388	129	\N	4	5	Aucun	2024-01-24 10:24:48	2024-01-24 07:24:48
221	1435	129	\N	1	3	Aucun	2024-01-24 10:25:42	2024-01-24 07:25:42
222	1414	142	\N	1	3	Aucun	2024-01-24 16:04:40	2024-01-24 13:04:40
223	1450	148	\N	1	3	Aucun	2024-01-24 16:09:09	2024-01-24 13:09:09
224	1455	148	\N	1	3	Aucun	2024-01-24 16:11:45	2024-01-24 13:11:45
225	1437	141	\N	1	3	Aucun	2024-01-24 16:12:20	2024-01-24 13:12:20
226	1449	141	\N	1	3	Aucun	2024-01-24 16:15:07	2024-01-24 13:15:07
227	1456	146	\N	1	3	Aucun	2024-01-24 16:16:25	2024-01-24 13:16:25
228	1453	139	\N	1	2	Test	2024-01-24 16:18:44	2024-01-24 13:18:44
229	1457	148	\N	1	3	Aucun	2024-01-24 16:19:22	2024-01-24 13:19:22
230	1458	148	\N	1	3	Aucun	2024-01-24 16:24:37	2024-01-24 13:24:37
231	1460	148	\N	1	3	Aucun	2024-01-24 16:27:27	2024-01-24 13:27:27
232	1459	148	\N	1	3	Aucun	2024-01-24 16:27:38	2024-01-24 13:27:38
235	1464	146	\N	1	3	Aucun	2024-01-24 16:33:07	2024-01-24 13:33:07
238	1467	138	\N	1	3	Aucun	2024-01-24 16:43:09	2024-01-24 13:43:09
233	1461	146	\N	1	3	Aucun	2024-01-24 16:29:43	2024-01-24 13:29:43
234	1462	148	\N	1	3	Aucun	2024-01-24 16:29:52	2024-01-24 13:29:52
236	1465	146	\N	1	3	Aucun	2024-01-24 16:36:46	2024-01-24 13:36:46
237	1466	146	\N	1	3	Aucun	2024-01-24 16:41:33	2024-01-24 13:41:33
239	1468	129	\N	1	3	Aucun	2024-01-25 10:25:36	2024-01-25 07:25:36
240	1449	141	\N	1	3	Aucun	2024-01-25 11:28:31	2024-01-25 08:28:31
241	1469	146	\N	1	3	Aucun	2024-01-25 17:37:03	2024-01-25 14:37:03
242	1470	147	\N	1	3	Aucun	2024-01-26 09:27:17	2024-01-26 06:27:17
243	1426	147	\N	2	3	Ouverture du port 5433	2024-01-26 09:29:53	2024-01-26 06:29:53
244	1471	137	\N	1	3	Aucun	2024-01-26 11:26:16	2024-01-26 08:26:16
245	1473	137	\N	1	3	Aucun	2024-01-26 14:16:26	2024-01-26 11:16:26
246	1475	146	\N	1	3	Aucun	2024-01-26 14:47:00	2024-01-26 11:47:00
247	1476	146	\N	1	3	Aucun	2024-01-26 17:22:34	2024-01-26 14:22:34
248	1477	146	\N	1	3	Aucun	2024-01-26 17:27:43	2024-01-26 14:27:43
249	1478	146	\N	1	3	Aucun	2024-01-29 09:59:09	2024-01-29 06:59:09
250	1432	162	\N	3	4	Aucun	2024-01-29 11:11:34	2024-01-29 08:11:34
251	1433	162	\N	3	4	Aucun	2024-01-29 11:11:38	2024-01-29 08:11:38
252	1479	146	\N	1	3	Aucun	2024-01-29 14:36:32	2024-01-29 11:36:32
253	1480	146	\N	1	3	Aucun	2024-01-29 14:39:20	2024-01-29 11:39:20
254	1435	129	\N	3	2	Blocage au niveau du style CSS	2024-01-30 14:42:17	2024-01-30 11:42:17
255	1486	129	\N	1	3	Aucun	2024-01-30 14:43:46	2024-01-30 11:43:46
256	1420	129	\N	3	4	Aucun	2024-01-30 14:44:43	2024-01-30 11:44:43
257	1487	146	\N	1	3	Aucun	2024-01-31 08:49:01	2024-01-31 05:49:01
258	1488	146	\N	1	3	Aucun	2024-01-31 08:49:57	2024-01-31 05:49:57
259	1489	146	\N	1	3	Aucun	2024-01-31 08:51:09	2024-01-31 05:51:09
260	1491	162	\N	1	3	Aucun	2024-01-31 10:18:41	2024-01-31 07:18:41
261	1492	162	\N	1	3	Aucun	2024-01-31 10:21:23	2024-01-31 07:21:23
262	1493	162	\N	1	3	Aucun	2024-01-31 10:24:58	2024-01-31 07:24:58
263	1494	162	\N	1	3	Aucun	2024-01-31 10:25:04	2024-01-31 07:25:04
264	1491	162	\N	3	4	Aucun	2024-02-02 13:58:04	2024-02-02 10:58:04
265	1492	162	\N	3	4	Aucun	2024-02-02 13:58:08	2024-02-02 10:58:08
266	1493	162	\N	3	4	Aucun	2024-02-02 13:58:14	2024-02-02 10:58:14
267	1433	129	\N	4	5	Aucun	2024-02-02 16:05:21	2024-02-02 13:05:21
268	1432	129	\N	4	5	Aucun	2024-02-02 16:05:26	2024-02-02 13:05:26
269	1420	129	\N	4	5	Aucun	2024-02-02 16:05:39	2024-02-02 13:05:39
270	1493	129	\N	4	5	Aucun	2024-02-02 16:05:43	2024-02-02 13:05:43
271	1491	129	\N	4	5	Aucun	2024-02-02 16:05:48	2024-02-02 13:05:48
272	1434	129	\N	1	3	Aucun	2024-02-02 16:06:53	2024-02-02 13:06:53
278	1435	129	\N	2	3	reprise du tâche	2024-02-09 06:32:07	2024-02-09 06:32:07
279	1435	129	\N	3	3	Aucun	2024-02-09 06:32:37	2024-02-09 06:32:37
280	1481	129	\N	1	3	Aucun	2024-02-09 11:27:19	2024-02-09 11:27:19
281	1435	129	\N	3	5	Aucun	2024-02-12 06:50:00	2024-02-12 06:50:00
282	1486	129	\N	3	2	Olivia est actuellement occupé pour d'autres tâches	2024-02-12 06:50:15	2024-02-12 06:50:15
283	1482	129	\N	3	4	Aucun	2024-02-14 06:07:33	2024-02-14 06:07:33
284	1501	129	\N	1	3	Aucun	2024-02-14 06:07:41	2024-02-14 06:07:41
285	1412	147	\N	3	3	Aucun	2024-02-14 06:11:20	2024-02-14 06:11:20
286	1478	146	\N	3	3	Aucun	2024-02-14 06:11:20	2024-02-14 06:11:20
287	1476	146	\N	3	4	Aucun	2024-02-14 06:14:19	2024-02-14 06:14:19
288	1495	162	\N	1	3	Aucun	2024-02-14 06:17:47	2024-02-14 06:17:47
289	1496	162	\N	1	3	Aucun	2024-02-14 06:17:51	2024-02-14 06:17:51
290	1490	162	\N	1	3	Aucun	2024-02-14 06:17:55	2024-02-14 06:17:55
291	1380	128	\N	3	3	Aucun	2024-02-14 06:26:12	2024-02-14 06:26:12
292	1518	146	\N	1	3	Aucun	2024-02-14 06:36:52	2024-02-14 06:36:52
293	1478	146	\N	3	4	Aucun	2024-02-14 06:40:56	2024-02-14 06:40:56
294	1518	146	\N	3	4	Aucun	2024-02-14 06:41:19	2024-02-14 06:41:19
295	1523	146	\N	1	3	Aucun	2024-02-14 06:44:58	2024-02-14 06:44:58
296	1523	146	\N	3	4	Aucun	2024-02-14 06:45:41	2024-02-14 06:45:41
297	1524	139	\N	1	3	Aucun	2024-02-14 06:52:05	2024-02-14 06:52:05
298	1525	147	\N	1	3	Aucun	2024-02-14 06:52:24	2024-02-14 06:52:24
299	1524	139	\N	3	3	Aucun	2024-02-14 06:52:26	2024-02-14 06:52:26
300	1525	147	\N	3	4	Aucun	2024-02-14 06:53:56	2024-02-14 06:53:56
301	1428	147	\N	3	3	Aucun	2024-02-14 06:54:23	2024-02-14 06:54:23
302	1526	142	\N	1	3	Aucun	2024-02-14 06:57:25	2024-02-14 06:57:25
303	1527	142	\N	3	3	Aucun	2024-02-14 07:02:51	2024-02-14 07:02:51
304	1527	142	\N	3	3	Aucun	2024-02-14 07:03:03	2024-02-14 07:03:03
305	1528	148	\N	1	3	Aucun	2024-02-14 07:10:24	2024-02-14 07:10:24
306	1438	148	\N	1	3	Aucun	2024-02-14 07:10:42	2024-02-14 07:10:42
307	1463	148	\N	1	3	Aucun	2024-02-14 07:11:10	2024-02-14 07:11:10
308	1463	148	\N	3	4	Aucun	2024-02-14 07:12:04	2024-02-14 07:12:04
309	1438	148	\N	3	4	Aucun	2024-02-14 07:12:18	2024-02-14 07:12:18
310	1529	142	\N	1	3	Aucun	2024-02-14 07:12:28	2024-02-14 07:12:28
311	1438	148	\N	4	4	Aucun	2024-02-14 07:15:47	2024-02-14 07:15:47
312	1534	142	\N	1	1	Aucun	2024-02-14 07:20:01	2024-02-14 07:20:01
313	1534	142	\N	1	3	Aucun	2024-02-14 07:20:06	2024-02-14 07:20:06
314	1437	141	\N	3	4	Aucun	2024-02-14 07:28:33	2024-02-14 07:28:33
315	1535	141	\N	1	3	Aucun	2024-02-14 07:31:37	2024-02-14 07:31:37
316	1449	141	\N	3	4	Aucun	2024-02-14 08:40:55	2024-02-14 08:40:55
317	1531	142	\N	3	3	Aucun	2024-02-14 08:42:01	2024-02-14 08:42:01
318	1539	146	\N	1	3	Aucun	2024-02-14 13:20:22	2024-02-14 13:20:22
319	1365	146	\N	3	3	Aucun	2024-02-14 13:20:49	2024-02-14 13:20:49
320	1466	146	\N	3	4	Aucun	2024-02-14 13:21:41	2024-02-14 13:21:41
321	1475	146	\N	3	4	Aucun	2024-02-14 13:21:45	2024-02-14 13:21:45
322	1365	146	\N	3	4	Aucun	2024-02-14 13:21:48	2024-02-14 13:21:48
323	1541	147	\N	1	3	Aucun	2024-02-15 10:46:28	2024-02-15 10:46:28
324	1543	142	\N	1	3	Aucun	2024-02-15 11:36:30	2024-02-15 11:36:30
325	1469	146	\N	3	4	Aucun	2024-02-15 13:35:38	2024-02-15 13:35:38
326	1545	146	\N	1	3	Aucun	2024-02-15 13:37:26	2024-02-15 13:37:26
327	1545	146	\N	3	4	Aucun	2024-02-15 13:38:05	2024-02-15 13:38:05
328	1546	146	\N	1	3	Aucun	2024-02-15 13:39:47	2024-02-15 13:39:47
329	1546	146	\N	3	4	Aucun	2024-02-15 13:40:07	2024-02-15 13:40:07
330	1479	146	\N	3	4	Aucun	2024-02-15 13:44:26	2024-02-15 13:44:26
331	1548	142	\N	1	3	Aucun	2024-02-15 14:00:57	2024-02-15 14:00:57
332	1548	142	\N	4	4	Aucun	2024-02-15 14:02:20	2024-02-15 14:02:20
333	1548	142	\N	4	4	Aucun	2024-02-15 14:02:23	2024-02-15 14:02:23
334	1548	142	\N	4	4	Aucun	2024-02-15 14:02:36	2024-02-15 14:02:36
335	1548	142	\N	4	4	Aucun	2024-02-15 14:03:02	2024-02-15 14:03:02
336	1543	142	\N	3	3	Aucun	2024-02-15 14:03:19	2024-02-15 14:03:19
337	1515	146	\N	1	3	Aucun	2024-02-16 07:05:07	2024-02-16 07:05:07
338	1515	146	\N	3	4	Aucun	2024-02-16 07:05:54	2024-02-16 07:05:54
339	1549	146	\N	1	3	Aucun	2024-02-16 07:09:43	2024-02-16 07:09:43
340	1551	147	\N	1	3	Aucun	2024-02-16 10:30:04	2024-02-16 10:30:04
341	1555	146	\N	1	3	Aucun	2024-02-19 05:32:49	2024-02-19 05:32:49
342	1556	146	\N	1	3	Aucun	2024-02-19 05:38:32	2024-02-19 05:38:32
343	1524	139	\N	3	4	Aucun	2024-02-19 06:21:39	2024-02-19 06:21:39
344	1557	139	\N	1	3	Aucun	2024-02-19 06:21:47	2024-02-19 06:21:47
345	1558	139	\N	1	3	Aucun	2024-02-19 06:38:46	2024-02-19 06:38:46
346	1549	146	\N	3	4	Aucun	2024-02-20 06:50:49	2024-02-20 06:50:49
347	1487	146	\N	1	3	Aucun	2024-02-20 06:50:57	2024-02-20 06:50:57
348	1560	146	\N	1	3	Aucun	2024-02-20 06:54:08	2024-02-20 06:54:08
349	1560	146	\N	3	4	Aucun	2024-02-20 06:54:27	2024-02-20 06:54:27
350	1555	146	\N	3	4	Aucun	2024-02-21 05:51:58	2024-02-21 05:51:58
351	1556	146	\N	3	4	Aucun	2024-02-21 05:52:03	2024-02-21 05:52:03
352	1562	146	\N	1	3	Aucun	2024-02-21 05:57:10	2024-02-21 05:57:10
353	1563	146	\N	1	3	Aucun	2024-02-21 08:43:14	2024-02-21 08:43:14
354	1564	142	\N	1	3	Aucun	2024-02-22 06:31:56	2024-02-22 06:31:56
355	1456	146	\N	3	3	Aucun	2024-02-22 06:37:10	2024-02-22 06:37:10
356	1477	146	\N	3	4	Aucun	2024-02-22 06:37:53	2024-02-22 06:37:53
357	1456	146	\N	3	4	Aucun	2024-02-22 06:38:02	2024-02-22 06:38:02
358	1480	146	\N	3	4	Aucun	2024-02-22 06:38:30	2024-02-22 06:38:30
359	1565	146	\N	1	3	Aucun	2024-02-22 06:39:37	2024-02-22 06:39:37
360	1566	146	\N	1	3	Aucun	2024-02-22 13:22:34	2024-02-22 13:22:34
361	1567	148	\N	1	3	Aucun	2024-02-23 13:19:59	2024-02-23 13:19:59
362	1463	148	\N	4	3	Import des factures récents : 2023 et 2024	2024-02-23 13:22:00	2024-02-23 13:22:00
363	1568	141	\N	1	3	Aucun	2024-02-23 14:06:34	2024-02-23 14:06:34
\.


--
-- Data for Name: time_tracking; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.time_tracking (id, date, h_work, h_abs, task_id, user_id, inserted_at, updated_at) FROM stdin;
1	2024-02-23	234	0	1379	134	2024-02-23 15:13:42	2024-02-23 15:13:42
\.


--
-- Data for Name: tool_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tool_groups (id, name, inserted_at, updated_at, company_id) FROM stdin;
1	Développement	2023-03-27 08:17:04	2023-03-27 08:17:04	1
2	Comptabilité	2023-03-27 08:17:12	2023-03-27 08:17:12	1
\.


--
-- Data for Name: tools; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tools (id, name, tool_group_id, inserted_at, updated_at) FROM stdin;
1	Dev1	1	2023-03-27 08:18:30	2023-03-27 08:18:30
2	Cpt1	2	2023-03-27 08:18:45	2023-03-27 08:18:45
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, profile_picture, email, password, right_id, inserted_at, updated_at, function_id, current_record_id, phone_number) FROM stdin;
127	PhidiaAdmin	images/profiles/default_profile_pic.png	admin@phidia.fr	$pbkdf2-sha512$160000$qYXqo7xGffhtWNDSUvGkzw$HRg2OzQx72prVVNutxWehCZ9zXfGO2q5ihIiYxx8MCEcyi2rNja90Y0Iz.WzRQMn0jW/L8slRXoMbGMce9cT3A	1	2023-11-02 07:37:53	2023-11-02 07:37:53	\N	\N	\N
128	Antonio	images/profiles/default_profile_pic.png	midorimaantonio@gmail.com	$pbkdf2-sha512$160000$zLwxw9uG85asYvPw64J9ig$jb2rTldkWaeYU2HUd5.yJHi15Iv.ofV39Wi44/8DmcPDSQs4Mm22SJa6FDu/SMABm6xyCSkk4DpUasRMgY3gww	3	2023-11-03 05:51:32	2023-11-03 05:52:05	\N	\N	\N
135	Ioly	images/profiles/default_profile_pic.png	ioly@phidia.onmicrosoft.com	$pbkdf2-sha512$160000$z4FlAop14L2ddUMFTrM83A$baXkm2GHyCHumNPgCFcyA897./pS0u0Rpi3edMt56031yn30vniFzQWlqZHNgTfomF5jpBxUpmWO830ETb4mBQ	2	2023-11-03 06:19:45	2023-11-03 06:20:00	\N	\N	\N
137	Fanilo	images/profiles/default_profile_pic.png	fanilomampionona@outlook.fr	$pbkdf2-sha512$160000$PG/euuhiSQgtOX8fOZwzvg$rbUsL.DIdjngzAl40VQbQP3S2IeAUMe/wdkgBdZB0oMmWwi4iAwZuJNc2Hac.uX67mD1.BWzxe5tEXSQvwWoeA	3	2023-11-03 06:21:19	2023-11-03 06:21:31	\N	\N	\N
138	Mathieu	images/profiles/default_profile_pic.png	mathieu@phidia.onmicrosoft.com	$pbkdf2-sha512$160000$6TO7SjTTGZi4EexSW/XRKw$ckdwJwgIdr8GQDZywJOpyDCwHxAA7rlMvVJ8mtVwBTaETqDYch2dU7q3aGTgN5ijrkQD5eJ.DRtGEvwWqkw57g	2	2023-11-03 06:22:00	2023-11-03 06:22:13	\N	\N	\N
139	Kevin	images/profiles/default_profile_pic.png	kevinnandrianina@outlook.fr	$pbkdf2-sha512$160000$d6nbG44aFNlBeyA4U.BYVQ$3hjP2OoN4W4nT.15.Qny6JHc6HI4xzjHjTTSCrY8jYvNkmgyY0yGPgEapv6Mq.tAPdPqN7JqTHp4JVyTIX9QqA	3	2023-11-03 06:22:56	2023-11-03 06:23:07	\N	\N	\N
140	Mirindra	images/profiles/default_profile_pic.png	mirindra@phidia.onmicrosoft.com	$pbkdf2-sha512$160000$0NS6huBhte/3hgn2R7R9fg$77DqRSKANd4MNKAokkc5xNTDRKf8WgR6W3NdXBjipVtKFqg3P17nZdF1rJzU29CcwvtREPxIfAkQrPsUYUvwvQ	3	2023-11-03 06:24:15	2023-11-03 06:24:38	\N	\N	\N
141	Adrien	images/profiles/default_profile_pic.png	herilanto.adrien@outlook.com	$pbkdf2-sha512$160000$0ezLe9rJMAkPERHRgdQ9yQ$ub.mwOLVKdFH1ZUYD.XnmbNlBiRZZIY9KKIatQiSIxdC4Wd4am5masYnXrdEchoWc08Y4ZEnfAwzS1J6XRsPIg	3	2023-11-03 06:25:00	2023-11-03 06:25:27	\N	\N	\N
143	Mickaël	images/profiles/default_profile_pic.png	raz.lovatiana@gmail.com	$pbkdf2-sha512$160000$bv7A8fUK56U661M/QtLqHg$ZYgqbTD4Lw9vWeq5R2tkS7ZzSiHwOoU4qR7qAtqF6.LGJsjTKXGJ3JEQjAWj6ulLOPifDj0JTMOe65XeeWv6kQ	3	2023-11-03 06:28:18	2023-11-03 06:28:39	\N	\N	\N
146	Miandrisoa	images/profiles/default_profile_pic.png	miandrisoa@phidia.onmicrosoft.com	$pbkdf2-sha512$160000$8jxXqAn0M7aduipHcE9NdA$r4GZBDuH7MKO11vD57Rs7mUIhhkaapNRm.ChDgDVXFIT4ga74WtiSyRb6d2LgG4gKQVoDTlWruZtfO60amAp8g	3	2023-11-03 06:31:02	2023-11-03 06:31:22	\N	\N	\N
147	Koloina	images/profiles/default_profile_pic.png	koloina@phidia.onmicrosoft.com	$pbkdf2-sha512$160000$h0DRlerGOtQvPrH7Gdr8XQ$U8Wdgzd4drDf0rUBVOC2LPCfIiVN7Wp2c7L1YZh.GGrKNBWqRd4Rks6Bif8ObFIdiongSZCaq7/iJPbsPfIRHA	3	2023-11-03 06:32:09	2023-11-03 06:32:22	\N	\N	\N
148	Mickaella	images/profiles/default_profile_pic.png	bidmicks@outlook.fr	$pbkdf2-sha512$160000$wTbVruYmhAwD4VLYbK5q7g$xiXL1m81SKmLjGNaHg0vCcebTYcPYLN6UQDowwm7jYIbW1jrEPbnrxy6lHAZRJGeQCXlYayqsAYlKkKGfTOJug	3	2023-11-03 06:33:06	2023-11-03 06:33:16	\N	\N	\N
133	Anja	images/profiles/Anja-profile.jpg	anjaranaivo464@gmail.com	$pbkdf2-sha512$160000$C2uPZxk/z4gRi.Dw1/f9tg$NQLRTZ7Z7oQlkWtIp7yThdXfhF3ZdQ1QuQaKDKCo4CRx2xiNGS3QGq96L8xFSz8r3dF5a.ZICz313/B/K3RCyw	3	2023-11-03 06:16:56	2023-11-03 06:35:40	\N	\N	\N
132	Tahina	images/profiles/default_profile_pic.png	tahina@phidia.onmicrosoft.com	$pbkdf2-sha512$160000$h5MSqLTJabD262b/IHHQyg$5WornfQxwZ1Vy3X31eHl81TLUld2kv.aua1JU/YKh8QCYTSsBOCDduQBeJC7oSOeo9vZAXo7Hw9EzayQFshAoQ	1	2023-11-03 06:16:14	2023-11-07 07:20:49	\N	\N	\N
131	Hasina	images/profiles/Hasina-profile.jpeg	olyviahasina.razakamanantsoa@gmail.com	$pbkdf2-sha512$160000$v/vTJg6fPAj7Dfgn1HxkWQ$PmEfbIVojrBFpR29vmdZZTfo6G3rH6t5SstXx0vF/A3.n93BaABIaKWcmQWZaPa4PqtLCID8A.kk9eutYi3Ksw	2	2023-11-03 06:15:03	2023-11-03 06:36:57	\N	\N	\N
149	Madaplast	images/profiles/default_profile_pic.png	madaplast@madaplast.mg	$pbkdf2-sha512$160000$XSnPJiOY/ecRZSsannsOqg$Y2cxBXfrPN1GBiZPCPQTmMWBFQIDCxeV5mFj96VOJcpksY5MRJ7qd//k/QKFDevtOTxVwhZGreOVDnFjZCsOPA	4	2023-11-03 11:10:12	2023-11-03 11:10:30	\N	\N	\N
151	NAJMI	images/profiles/default_profile_pic.png	najmi@gmail.com	$pbkdf2-sha512$160000$t8y4j7bIz/n2mtXMlu2irA$0VElFzsoUcO49OFbNg7iavTh8S0bOOtt.uM0Viq9adUtRQ36HRrj0u5jPulZQ2D5aRgKjLJ346HnjFsV8lACqA	4	2023-11-14 13:29:01	2023-11-14 13:29:01	\N	\N	\N
152	ISSOUFALI	images/profiles/default_profile_pic.png	issoufali@gmail.com	$pbkdf2-sha512$160000$uiyxjRZnR2juzdQ0695M5Q$6g1i4yCNuipzu5W5vAF57/io/.D5/XZlBZHlfPPW.NqLKQgOLMb8k7Arb14ww8Ip2Y9GVphKtX8Epbc33jeO0A	4	2023-11-14 14:00:42	2023-11-14 14:00:42	\N	\N	\N
153	QLM	images/profiles/default_profile_pic.png	qlm@gmail.com	$pbkdf2-sha512$160000$LpHYpQno81OQcSRRqWZavQ$oH27eVZmiw6OwpOcJ5ePDRA11v09b9vIjGkNvYvrxj7ZvxkoibIuIQ5jonMex.fMU6voHlN2Mc5id.vRq10l7Q	4	2023-11-14 14:03:37	2023-11-14 14:03:37	\N	\N	\N
154	ZEOP	images/profiles/default_profile_pic.png	zeop@gmail.com	$pbkdf2-sha512$160000$Bn4gq/B8cJ4Gh0GlAbGDXA$czHqyXUrq.Ps5LfYDP.Uiu5RLTK8lYWX/GP0/bNE3W4xN.Chhlipx7dkBECM0nBfnh7wUbvRdHVejiFMPGjsNQ	4	2023-11-14 14:07:03	2023-11-14 14:07:03	\N	\N	\N
145	Frederick	images/profiles/default_profile_pic.png	frederick@phidia.onmicrosoft.com	$pbkdf2-sha512$160000$Lk1WTwCIC02Yzn77rKJztw$.hI3X1U3KcMm6/k0Emhgg/YqYf9eiuuVIg5ezvbMzMwGWVkD48iEX1unzO2LfT8l1kKRiboPvS9wGhjJqbVhvw	2	2023-11-03 06:29:55	2024-01-09 14:09:55	\N	\N	\N
136	Matthieu	images/profiles/default_profile_pic.png	matthieu@phidia.onmicrosoft.com	$pbkdf2-sha512$160000$lU3If.N3XEepbGV3atTj1Q$d9q1CuBONUAHKF1sKPM6sk6LVZiwoj6kLJrLp4PFIYaJr4BuS2HellNvjc4kPwT.TRFXwr84MF2l/EdYWI.0TA	100	2023-11-03 06:20:57	2024-01-10 07:18:01	\N	\N	\N
144	Ny Toky	images/profiles/default_profile_pic.png	nytoky@phidia.onmicrosoft.com	$pbkdf2-sha512$160000$c7b5Ivd7i76BGGtS4j.c.Q$ptIeLXAtBE3fqufztkiIi2FPxBhpVjfgTCxhynMjVsYlSwrjrLebY4XONcxLXpukw1knQ8jXzcmSjsYSYhvJqQ	100	2023-11-03 06:28:31	2024-01-10 07:37:43	\N	\N	\N
129	Alain	images/profiles/default_profile_pic.png	alain@phidia.onmicrosoft.com	$pbkdf2-sha512$160000$zLwxw9uG85asYvPw64J9ig$jb2rTldkWaeYU2HUd5.yJHi15Iv.ofV39Wi44/8DmcPDSQs4Mm22SJa6FDu/SMABm6xyCSkk4DpUasRMgY3gww	2	2023-11-03 06:12:01	2024-01-09 11:38:28	\N	\N	\N
130	Philippe	images/profiles/default_profile_pic.png	pp@phidia.onmicrosoft.com	$pbkdf2-sha512$160000$0rU6Xiw1KpHw4mz1UW0XKQ$WU6dt9Ci6M/0337DOyxuGwgaj4fQrTrxg2GBDQJhcHJCZRgaIyJNqlvSzuP47R4RkkbH9EG.gf352So1X0I54w	100	2023-11-03 06:13:47	2024-01-22 06:56:28	\N	\N	\N
150	Philippe Prévost	images/profiles/default_profile_pic.png	mgbi.adm@gmail.com	$pbkdf2-sha512$160000$Qps4cSXSwV4bg9rBuxA6Hg$TB8uZbkO0dOkwNjJlFheHp8ABVpSsnFSTeYacYmc9z4r3T9aU/HIy9mvhhw27wQBUHAOCWw1.YC/gJtj7oYzeQ	1	2023-11-06 13:22:15	2024-01-19 13:12:08	\N	\N	\N
155	MAUVILAC	images/profiles/default_profile_pic.png	mauvilac@gmail.com	$pbkdf2-sha512$160000$xhUMc7fn1j3osKAY0Ib4dw$LNpWFazI/5elqJTmBSrIi.ri0VWmht6P1R615HN1oWfLtn7eruu.OOUnok/YN.JTQcF791WkBTb0kVsvj2fqBA	4	2023-11-14 14:13:04	2023-11-14 14:13:04	\N	\N	\N
156	QWEHLI	images/profiles/default_profile_pic.png	qwehli@gmail.com	$pbkdf2-sha512$160000$oDo1Cbdp8BqptooF4zQ8Dg$FtJns6KFBqJdWha/gRwIixPHX4tlp.pItJnvoKs1TlJATZur0aZlA3t4bQ76UqaLgZFN.HcFbky7iy4vNNPkGQ	4	2023-11-14 14:18:41	2023-11-14 14:18:41	\N	\N	\N
157	ACTIVE NEGOCE	images/profiles/default_profile_pic.png	activenegoce@gmail.com	$pbkdf2-sha512$160000$D8qZ0ZM0GcoO8tKMLGWFpg$wsxjbqBMUnMrhvyqJi1MuzvyqSNRuVTX6UPz9pvAp2xm.rYE1LidKPyuU23chdubfISK2Gk7EVpIXI2yfd8QDw	4	2023-11-15 13:45:19	2023-11-15 13:45:19	\N	\N	\N
142	Hassan	images/profiles/Hassan-profile.jpg	razorhassan@outlook.be	$pbkdf2-sha512$160000$577vPwHx9OZW1kcroL70cg$IbQm2Xh/tPS28tERUoU4Fz43ISBHiv9kdiy33Uw0v0yBLiT3pJVvcb0okNrqNtJz2ypCNe8piIB/5Tj590TkLQ	3	2023-11-03 06:26:57	2023-11-15 14:07:20	\N	1	\N
158	Focicom	images/profiles/default_profile_pic.png	Focicom@gmail.com	$pbkdf2-sha512$160000$5r48zbzFVHzvsP/LG70NNA$17YGVcOCD.TgOmDaTwO0c8e997s4g0XUg/4Ucg.HHTkkl0JG1yATn.4p20aYsxig7UZvwj6wQJFgrdk/1u/ZnA	4	2023-12-18 08:46:41	2023-12-18 08:46:41	\N	\N	\N
159	Bbmay	images/profiles/default_profile_pic.png	Bbmay@gmail.com	$pbkdf2-sha512$160000$5Hk.kv0BMZ3Old7TLEE0HQ$vo7n7wOfevFUTTJbVWN8MVXPx5AFcguU8gemoFed8xyCim.clzkj2XX0vWbYvZp/cYO3lVAJcQfWuHKyHSX53A	4	2023-12-18 08:55:43	2023-12-18 08:55:43	\N	\N	\N
160	Monitoring	images/profiles/default_profile_pic.png	Monitoring@gmail.com	$pbkdf2-sha512$160000$vjJZPcfpg3sN8saVVFtV/A$wQG5JR6shcoFIsgA3/j9RvrqrgG6B9Db.8W/MRqTaL4vBPW9l8Ly57Y0lKo0vuDelx0wvR98KP9FNINA9mW3TA	4	2023-12-18 08:56:40	2023-12-18 08:56:40	\N	\N	\N
162	Maphie	images/profiles/default_profile_pic.png	razafindrakotosonm@gmail.com	$pbkdf2-sha512$160000$WVblHsJP5llYAPHGJX7CPQ$BIzniUEjiCk4p6yv3z.GUgjTVDAsqZsW6A/t3P9J4QE9bnqV2Srn9X3OkyoaRLxOkK.Hb01p6mxRIYMP72rIzA	3	2024-01-03 12:13:58	2024-01-03 12:22:57	\N	\N	\N
161	Ravo	images/profiles/default_profile_pic.png	ravoeliasypaul@gmail.com	$pbkdf2-sha512$160000$D7yzfxlrNs7E3VJitPi7rg$v0aR./rjtv35g.aIzGAwIsaZ5QRVYYpDjNiQUQxyRL0tk8ikhr8zqZqCoOg6bJ5CxcnVx2SmRSlqJ2xDwM1bVg	3	2024-01-03 12:10:46	2024-01-03 12:28:32	\N	\N	\N
163	Claudia	images/profiles/default_profile_pic.png	claudiarahenintsoa@outlook.fr	$pbkdf2-sha512$160000$31dWtA7LpyzdO9BZbTNWgA$FD4lTfw85ZWjcVBb3sZPWw1mZyzxDOMpmFbvIZZmZA.hp0gN9zP6.CIFGXmKAw5Wg4pd/x/kaQa2Vg8VRcpzvA	3	2024-01-03 12:32:08	2024-01-08 08:10:33	\N	\N	\N
164	Antonio H	images/profiles/default_profile_pic.png	haritianaantoniorajohnson@gmail.com	$pbkdf2-sha512$160000$FpoqsC95PEcw2NZPEQ9ODg$FbU7Acz.MMvrNMfMQKezY4HS3JpiFYNObDYvDddU0cleHs/FMyKU/uBksgYbjzb6eGMGDb4pHPPG.b65s96Zdw	3	2024-01-09 11:37:22	2024-01-09 11:37:44	\N	\N	\N
166	Tahina_contributeur	images/profiles/default_profile_pic.png	Tahina_contributeur@phidia.fr	$pbkdf2-sha512$160000$K2pAb0kJu/qzrKlIk1bvIg$q0oxIauxGbvGHMz75SrRfxe7uUzROHKF1W/jnBEZX0KUHp//Kc.ra1mrXVFqDBvv8TcAdxkb/DQ7J702dTzJOQ	3	2024-01-10 08:32:23	2024-01-10 08:32:54	\N	\N	\N
167	Tahina_attributeur	images/profiles/default_profile_pic.png	Tahina_attributeur@phidia.fr	$pbkdf2-sha512$160000$50Gz1AIWeibETcaQ7XBjJg$hfFDmxNnk3PWle7mkimvRO46uWizdmqmsxk2wmQj9O3G.WGrCHtMQjIQVtPpl82nHzWvWuazJqP7dRDOSQllcw	2	2024-01-10 08:33:45	2024-01-10 08:34:03	\N	\N	\N
168	Patrick	images/profiles/default_profile_pic.png	randriarimalala.patrick@outlook.com	$pbkdf2-sha512$160000$B0g4oKZ3fogXpMtSc75I1A$4iFZmvPD36.A0NFIS5VK3c/hZZInXTDt/Ei3/Lk3/Qs.ThCAx1o64iorcL8/cZCh1klNt4wFINlwTqxauHZICg	3	2024-01-24 13:48:02	2024-01-24 13:49:45	\N	\N	\N
169	Mikolo	images/profiles/default_profile_pic.png	Lareinnah.mikoloandria@outlook.com	$pbkdf2-sha512$160000$tRK4/8RHAEoBznWWSq5X2Q$NL7PetQrmlEw/IF5VWDRJxT8GvQ.1jAasbftFFFGGoriUb5QhlSSM.WSbg49cvYlxW9.gzlRngW5FDZlmaZx/w	3	2024-01-24 13:53:40	2024-01-24 13:53:58	\N	\N	\N
134	Loïc	images/profiles/default_profile_pic.png	loicRavelo05@gmail.com	$pbkdf2-sha512$160000$l5tsXJ5Nh6KlI.wBtw1EcA$55SsZaP9mruiOQQ8Na3oVC.i1/zzg8ruKI1HoW14FXwnGVGE1asjBVU1oNVXVLOsWF0rxBJxVm2y647VLswn8g	3	2023-11-03 06:19:17	2024-02-08 12:00:08	\N	\N	0342873090
\.


--
-- Name: active_clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_clients_id_seq', 49, true);


--
-- Name: assist_contracts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.assist_contracts_id_seq', 11, true);


--
-- Name: base_cache_signaling; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.base_cache_signaling', 1, true);


--
-- Name: base_registry_signaling; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.base_registry_signaling', 1, true);


--
-- Name: boards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boards_id_seq', 112, true);


--
-- Name: cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cards_id_seq', 1546, true);


--
-- Name: clients_requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clients_requests_id_seq', 29, true);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comments_id_seq', 156, true);


--
-- Name: companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.companies_id_seq', 11, true);


--
-- Name: contributor_functions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contributor_functions_id_seq', 1, false);


--
-- Name: editors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.editors_id_seq', 13, true);


--
-- Name: launch_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.launch_types_id_seq', 1, false);


--
-- Name: licenses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.licenses_id_seq', 6, true);


--
-- Name: notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.notifications_id_seq', 28861, true);


--
-- Name: notifications_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.notifications_type_id_seq', 1, false);


--
-- Name: planified_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.planified_id_seq', 17, true);


--
-- Name: priorities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.priorities_id_seq', 4, true);


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.projects_id_seq', 85, true);


--
-- Name: record_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.record_types_id_seq', 1, false);


--
-- Name: request_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.request_type_id_seq', 1, false);


--
-- Name: rights_clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rights_clients_id_seq', 1, false);


--
-- Name: rights_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rights_id_seq', 31, true);


--
-- Name: saisies_validees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.saisies_validees_id_seq', 1, true);


--
-- Name: softwares_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.softwares_id_seq', 4, true);


--
-- Name: stages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stages_id_seq', 562, true);


--
-- Name: statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.statuses_id_seq', 5, true);


--
-- Name: task_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.task_records_id_seq', 1, true);


--
-- Name: task_tracings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.task_tracings_id_seq', 1, true);


--
-- Name: tasks_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tasks_history_id_seq', 363, true);


--
-- Name: tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tasks_id_seq', 1569, true);


--
-- Name: time_tracking_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.time_tracking_id_seq', 1, true);


--
-- Name: tool_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tool_groups_id_seq', 1, false);


--
-- Name: tools_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tools_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 169, true);


--
-- Name: active_clients active_clients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_clients
    ADD CONSTRAINT active_clients_pkey PRIMARY KEY (id);


--
-- Name: assist_contracts assist_contracts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assist_contracts
    ADD CONSTRAINT assist_contracts_pkey PRIMARY KEY (id);


--
-- Name: boards boards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards
    ADD CONSTRAINT boards_pkey PRIMARY KEY (id);


--
-- Name: cards cards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cards
    ADD CONSTRAINT cards_pkey PRIMARY KEY (id);


--
-- Name: clients_requests clients_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients_requests
    ADD CONSTRAINT clients_requests_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: companies companies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);


--
-- Name: contributor_functions contributor_functions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contributor_functions
    ADD CONSTRAINT contributor_functions_pkey PRIMARY KEY (id);


--
-- Name: editors editors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.editors
    ADD CONSTRAINT editors_pkey PRIMARY KEY (id);


--
-- Name: launch_types launch_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.launch_types
    ADD CONSTRAINT launch_types_pkey PRIMARY KEY (id);


--
-- Name: licenses licenses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.licenses
    ADD CONSTRAINT licenses_pkey PRIMARY KEY (id);


--
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- Name: notifications_type notifications_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications_type
    ADD CONSTRAINT notifications_type_pkey PRIMARY KEY (id);


--
-- Name: planified planified_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planified
    ADD CONSTRAINT planified_pkey PRIMARY KEY (id);


--
-- Name: priorities priorities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.priorities
    ADD CONSTRAINT priorities_pkey PRIMARY KEY (id);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: record_types record_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.record_types
    ADD CONSTRAINT record_types_pkey PRIMARY KEY (id);


--
-- Name: request_type request_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.request_type
    ADD CONSTRAINT request_type_pkey PRIMARY KEY (id);


--
-- Name: rights_clients rights_clients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rights_clients
    ADD CONSTRAINT rights_clients_pkey PRIMARY KEY (id);


--
-- Name: rights rights_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rights
    ADD CONSTRAINT rights_pkey PRIMARY KEY (id);


--
-- Name: saisies_validees saisies_validees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saisies_validees
    ADD CONSTRAINT saisies_validees_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: softwares softwares_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.softwares
    ADD CONSTRAINT softwares_pkey PRIMARY KEY (id);


--
-- Name: stages stages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stages
    ADD CONSTRAINT stages_pkey PRIMARY KEY (id);


--
-- Name: statuses statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);


--
-- Name: task_records task_records_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task_records
    ADD CONSTRAINT task_records_pkey PRIMARY KEY (id);


--
-- Name: task_tracings task_tracings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task_tracings
    ADD CONSTRAINT task_tracings_pkey PRIMARY KEY (id);


--
-- Name: tasks_history tasks_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks_history
    ADD CONSTRAINT tasks_history_pkey PRIMARY KEY (id);


--
-- Name: tasks tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (id);


--
-- Name: time_tracking time_tracking_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.time_tracking
    ADD CONSTRAINT time_tracking_pkey PRIMARY KEY (id);


--
-- Name: tool_groups tool_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tool_groups
    ADD CONSTRAINT tool_groups_pkey PRIMARY KEY (id);


--
-- Name: tools tools_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tools
    ADD CONSTRAINT tools_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: active_clients_company_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX active_clients_company_id_index ON public.active_clients USING btree (company_id);


--
-- Name: active_clients_user_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX active_clients_user_id_index ON public.active_clients USING btree (user_id);


--
-- Name: assist_contracts_company_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX assist_contracts_company_id_index ON public.assist_contracts USING btree (company_id);


--
-- Name: assist_contracts_title_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX assist_contracts_title_index ON public.assist_contracts USING btree (title);


--
-- Name: cards_position_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cards_position_index ON public.cards USING btree ("position");


--
-- Name: clients_requests_active_client_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX clients_requests_active_client_id_index ON public.clients_requests USING btree (active_client_id);


--
-- Name: clients_requests_title_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX clients_requests_title_index ON public.clients_requests USING btree (title);


--
-- Name: clients_requests_uuid_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX clients_requests_uuid_index ON public.clients_requests USING btree (uuid);


--
-- Name: comments_poster_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX comments_poster_id_index ON public.comments USING btree (poster_id);


--
-- Name: comments_task_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX comments_task_id_index ON public.comments USING btree (task_id);


--
-- Name: editors_company_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX editors_company_id_index ON public.editors USING btree (company_id);


--
-- Name: editors_title_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX editors_title_index ON public.editors USING btree (title);


--
-- Name: licenses_company_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX licenses_company_id_index ON public.licenses USING btree (company_id);


--
-- Name: licenses_title_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX licenses_title_index ON public.licenses USING btree (title);


--
-- Name: notifications_receiver_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX notifications_receiver_id_index ON public.notifications USING btree (receiver_id);


--
-- Name: notifications_sender_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX notifications_sender_id_index ON public.notifications USING btree (sender_id);


--
-- Name: projects_active_client_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX projects_active_client_id_index ON public.projects USING btree (active_client_id);


--
-- Name: projects_status_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX projects_status_id_index ON public.projects USING btree (status_id);


--
-- Name: rights_title_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX rights_title_index ON public.rights USING btree (title);


--
-- Name: saisies_validees_user_id_date_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX saisies_validees_user_id_date_index ON public.saisies_validees USING btree (user_id, date);


--
-- Name: softwares_company_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX softwares_company_id_index ON public.softwares USING btree (company_id);


--
-- Name: softwares_title_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX softwares_title_index ON public.softwares USING btree (title);


--
-- Name: stages_position_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stages_position_index ON public.stages USING btree ("position");


--
-- Name: tasks_contributor_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tasks_contributor_id_index ON public.tasks USING btree (contributor_id);


--
-- Name: tasks_parent_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tasks_parent_id_index ON public.tasks USING btree (parent_id);


--
-- Name: tasks_priority_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tasks_priority_id_index ON public.tasks USING btree (priority_id);


--
-- Name: tasks_project_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tasks_project_id_index ON public.tasks USING btree (project_id);


--
-- Name: tasks_status_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tasks_status_id_index ON public.tasks USING btree (status_id);


--
-- Name: tools_tool_group_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tools_tool_group_id_index ON public.tools USING btree (tool_group_id);


--
-- Name: users_email_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX users_email_index ON public.users USING btree (email);


--
-- Name: users_right_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_right_id_index ON public.users USING btree (right_id);


--
-- Name: users_username_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX users_username_index ON public.users USING btree (username);


--
-- Name: active_clients active_clients_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_clients
    ADD CONSTRAINT active_clients_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- Name: active_clients active_clients_rights_clients_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_clients
    ADD CONSTRAINT active_clients_rights_clients_id_fkey FOREIGN KEY (rights_clients_id) REFERENCES public.rights_clients(id);


--
-- Name: active_clients active_clients_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_clients
    ADD CONSTRAINT active_clients_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: assist_contracts assist_contracts_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assist_contracts
    ADD CONSTRAINT assist_contracts_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- Name: cards cards_stage_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cards
    ADD CONSTRAINT cards_stage_id_fkey FOREIGN KEY (stage_id) REFERENCES public.stages(id) ON DELETE CASCADE;


--
-- Name: cards cards_task_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cards
    ADD CONSTRAINT cards_task_id_fkey FOREIGN KEY (task_id) REFERENCES public.tasks(id);


--
-- Name: clients_requests clients_requests_active_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients_requests
    ADD CONSTRAINT clients_requests_active_client_id_fkey FOREIGN KEY (active_client_id) REFERENCES public.active_clients(id);


--
-- Name: clients_requests clients_requests_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients_requests
    ADD CONSTRAINT clients_requests_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.projects(id);


--
-- Name: clients_requests clients_requests_tool_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients_requests
    ADD CONSTRAINT clients_requests_tool_id_fkey FOREIGN KEY (tool_id) REFERENCES public.tools(id);


--
-- Name: clients_requests clients_requests_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients_requests
    ADD CONSTRAINT clients_requests_type_id_fkey FOREIGN KEY (request_type_id) REFERENCES public.request_type(id);


--
-- Name: comments comments_poster_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_poster_id_fkey FOREIGN KEY (poster_id) REFERENCES public.users(id);


--
-- Name: comments comments_task_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_task_id_fkey FOREIGN KEY (task_id) REFERENCES public.tasks(id) ON DELETE CASCADE;


--
-- Name: editors editors_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.editors
    ADD CONSTRAINT editors_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- Name: licenses licenses_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.licenses
    ADD CONSTRAINT licenses_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- Name: notifications notifications_notifications_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_notifications_type_id_fkey FOREIGN KEY (notifications_type_id) REFERENCES public.notifications_type(id);


--
-- Name: notifications notifications_receiver_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_receiver_id_fkey FOREIGN KEY (receiver_id) REFERENCES public.users(id);


--
-- Name: notifications notifications_sender_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_sender_id_fkey FOREIGN KEY (sender_id) REFERENCES public.users(id);


--
-- Name: projects projects_active_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_active_client_id_fkey FOREIGN KEY (active_client_id) REFERENCES public.active_clients(id);


--
-- Name: projects projects_board_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_board_id_fkey FOREIGN KEY (board_id) REFERENCES public.boards(id);


--
-- Name: projects projects_status_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_status_id_fkey FOREIGN KEY (status_id) REFERENCES public.statuses(id);


--
-- Name: saisies_validees saisies_validees_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saisies_validees
    ADD CONSTRAINT saisies_validees_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: saisies_validees saisies_validees_user_validator_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saisies_validees
    ADD CONSTRAINT saisies_validees_user_validator_fkey FOREIGN KEY (user_validator_id) REFERENCES public.users(id);


--
-- Name: softwares softwares_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.softwares
    ADD CONSTRAINT softwares_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.companies(id);


--
-- Name: stages stages_board_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stages
    ADD CONSTRAINT stages_board_id_fkey FOREIGN KEY (board_id) REFERENCES public.boards(id) ON DELETE CASCADE;


--
-- Name: stages stages_status_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stages
    ADD CONSTRAINT stages_status_id_fkey FOREIGN KEY (status_id) REFERENCES public.statuses(id);


--
-- Name: task_records task_records_record_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task_records
    ADD CONSTRAINT task_records_record_type_fkey FOREIGN KEY (record_type) REFERENCES public.record_types(id);


--
-- Name: task_records task_records_task_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task_records
    ADD CONSTRAINT task_records_task_id_fkey FOREIGN KEY (task_id) REFERENCES public.tasks(id);


--
-- Name: task_records task_records_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task_records
    ADD CONSTRAINT task_records_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: task_tracings task_tracings_launch_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task_tracings
    ADD CONSTRAINT task_tracings_launch_type_id_fkey FOREIGN KEY (launch_type_id) REFERENCES public.launch_types(id);


--
-- Name: task_tracings task_tracings_task_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task_tracings
    ADD CONSTRAINT task_tracings_task_id_fkey FOREIGN KEY (task_id) REFERENCES public.tasks(id);


--
-- Name: task_tracings task_tracings_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task_tracings
    ADD CONSTRAINT task_tracings_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: tasks tasks_attributor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_attributor_id_fkey FOREIGN KEY (attributor_id) REFERENCES public.users(id);


--
-- Name: tasks tasks_clients_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_clients_request_id_fkey FOREIGN KEY (clients_request_id) REFERENCES public.clients_requests(id);


--
-- Name: tasks tasks_contributor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_contributor_id_fkey FOREIGN KEY (contributor_id) REFERENCES public.users(id);


--
-- Name: tasks_history tasks_history_intervener_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks_history
    ADD CONSTRAINT tasks_history_intervener_id_fkey FOREIGN KEY (intervener_id) REFERENCES public.users(id);


--
-- Name: tasks_history tasks_history_status_from_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks_history
    ADD CONSTRAINT tasks_history_status_from_id_fkey FOREIGN KEY (status_from_id) REFERENCES public.statuses(id);


--
-- Name: tasks_history tasks_history_status_to_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks_history
    ADD CONSTRAINT tasks_history_status_to_id_fkey FOREIGN KEY (status_to_id) REFERENCES public.statuses(id);


--
-- Name: tasks_history tasks_history_task_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks_history
    ADD CONSTRAINT tasks_history_task_id_fkey FOREIGN KEY (task_id) REFERENCES public.tasks(id);


--
-- Name: tasks tasks_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.tasks(id) ON DELETE CASCADE;


--
-- Name: tasks tasks_priority_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_priority_id_fkey FOREIGN KEY (priority_id) REFERENCES public.priorities(id);


--
-- Name: tasks tasks_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: tasks tasks_status_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_status_id_fkey FOREIGN KEY (status_id) REFERENCES public.statuses(id);


--
-- Name: time_tracking time_tracking_task_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.time_tracking
    ADD CONSTRAINT time_tracking_task_id_fkey FOREIGN KEY (task_id) REFERENCES public.tasks(id);


--
-- Name: time_tracking time_tracking_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.time_tracking
    ADD CONSTRAINT time_tracking_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: tools tools_tool_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tools
    ADD CONSTRAINT tools_tool_group_id_fkey FOREIGN KEY (tool_group_id) REFERENCES public.tool_groups(id);


--
-- Name: users users_function_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_function_id_fkey FOREIGN KEY (function_id) REFERENCES public.contributor_functions(id);


--
-- Name: users users_right_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_right_id_fkey FOREIGN KEY (right_id) REFERENCES public.rights(id);


--
-- PostgreSQL database dump complete
--

