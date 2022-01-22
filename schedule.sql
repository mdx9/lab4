
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


CREATE TABLE public.subject (
    name character varying NOT NULL
);


ALTER TABLE public.subject OWNER TO postgres;


CREATE TABLE public.teacher (
    id integer NOT NULL,
    full_name character varying,
    subject character varying,
    day character varying NOT NULL
);


ALTER TABLE public.teacher OWNER TO postgres;



CREATE SEQUENCE public.teacher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teacher_id_seq OWNER TO postgres;



ALTER SEQUENCE public.teacher_id_seq OWNED BY public.teacher.id;


CREATE TABLE public.timetable (
    id integer NOT NULL,
    day character varying,
    subject character varying,
    room_numb character varying,
    start_time time without time zone
);


ALTER TABLE public.timetable OWNER TO postgres;


CREATE SEQUENCE public.timetable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.timetable_id_seq OWNER TO postgres;



ALTER SEQUENCE public.timetable_id_seq OWNED BY public.timetable.id;



ALTER TABLE ONLY public.teacher ALTER COLUMN id SET DEFAULT nextval('public.teacher_id_seq'::regclass);




ALTER TABLE ONLY public.timetable ALTER COLUMN id SET DEFAULT nextval('public.timetable_id_seq'::regclass);




INSERT INTO public.subject (name) VALUES ('Введение в ИТ');
INSERT INTO public.subject (name) VALUES ('Высш. мат.');
INSERT INTO public.subject (name) VALUES ('Электроника');
INSERT INTO public.subject (name) VALUES ('Выч. тех.');
INSERT INTO public.subject (name) VALUES ('Физ-ра');
INSERT INTO public.subject (name) VALUES ('Экология');
INSERT INTO public.subject (name) VALUES ('Правоведение');
INSERT INTO public.subject (name) VALUES ('ТВиМС');
INSERT INTO public.subject (name) VALUES ('Ин. яз.');
INSERT INTO public.subject (name) VALUES ('ОКАЭЦ');
INSERT INTO public.subject (name) VALUES ('История средств связи');



INSERT INTO public.teacher (id, full_name, subject, day) VALUES (2, 'Ведерников Н.', 'Введение в ИТ', 'понедельник 0');
INSERT INTO public.teacher (id, full_name, subject, day) VALUES (3, 'Сретенская Н.В.', 'Электроника', 'понедельник 1');
INSERT INTO public.teacher (id, full_name, subject, day) VALUES (4, 'Свентковский', 'Высш. мат.', 'понедельник 0');
INSERT INTO public.teacher (id, full_name, subject, day) VALUES (5, 'Селезнев В.С.', 'Выч. тех.', 'понедельник 2');
INSERT INTO public.teacher (id, full_name, subject, day) VALUES (6, 'Антипов А.А.', 'Правоведение', 'вторник 1');
INSERT INTO public.teacher (id, full_name, subject, day) VALUES (7, 'Ерофеева В.В.', 'Экология', 'вторник 1');
INSERT INTO public.teacher (id, full_name, subject, day) VALUES (8, 'Крысанов Д.В.', 'ТВиМС', 'среда 0');
INSERT INTO public.teacher (id, full_name, subject, day) VALUES (9, 'Чайка А.', 'Введение в ИТ', 'среда 0');
INSERT INTO public.teacher (id, full_name, subject, day) VALUES (10, 'Орлова Г.Л.', 'Ин. яз.', 'среда 0');
INSERT INTO public.teacher (id, full_name, subject, day) VALUES (11, 'Воронкова М.Н.', 'Выч. тех.', 'четверг 0');
INSERT INTO public.teacher (id, full_name, subject, day) VALUES (12, 'Сретенская Н.В.', 'Электроника', 'четверг 0');
INSERT INTO public.teacher (id, full_name, subject, day) VALUES (13, 'Микиртичан А.Г.', 'ОКАЭЦ', 'четверг 0');
INSERT INTO public.teacher (id, full_name, subject, day) VALUES (14, 'Аршинов Е.', 'Введение в ИТ', 'четверг 0');
INSERT INTO public.teacher (id, full_name, subject, day) VALUES (15, 'Дёмин Д.Б.', 'ТВиМС', 'пятница 2');
INSERT INTO public.teacher (id, full_name, subject, day) VALUES (16, 'Калабекьянц Н.Э.', 'История средств связи', 'пятница 2');
INSERT INTO public.teacher (id, full_name, subject, day) VALUES (17, 'Еровеева В.В.', 'Экология', 'пятница 2');
INSERT INTO public.teacher (id, full_name, subject, day) VALUES (18, 'Мейрманов А.М.', 'Высш. мат.', 'суббота 0');




INSERT INTO public.timetable (id, day, subject, room_numb, start_time) VALUES (14, 'понедельник 1', 'Электроника', 'Дистанционно', '17:15:00');
INSERT INTO public.timetable (id, day, subject, room_numb, start_time) VALUES (4, 'понедельник 0', 'Введение в ИТ', 'Дистанционно', '11:20:00');
INSERT INTO public.timetable (id, day, subject, room_numb, start_time) VALUES (5, 'понедельник 0', 'Высш. мат.', 'Дистанционно', '15:25:00');
INSERT INTO public.timetable (id, day, subject, room_numb, start_time) VALUES (15, 'понедельник 2', 'Выч. тех.', 'Дистанционно', '17:15:00');
INSERT INTO public.timetable (id, day, subject, room_numb, start_time) VALUES (16, 'вторник 1', 'Физ-ра', 'Дистанционно', '09:30:00');
INSERT INTO public.timetable (id, day, subject, room_numb, start_time) VALUES (17, 'вторник 1', 'Экология', 'Дистанционно', '11:20:00');
INSERT INTO public.timetable (id, day, subject, room_numb, start_time) VALUES (18, 'вторник 1', 'Правоведение', 'Дистанционно', '13:10:00');
INSERT INTO public.timetable (id, day, subject, room_numb, start_time) VALUES (19, 'вторник 1', 'Правоведение', 'Дистанционно', '15:25:00');
INSERT INTO public.timetable (id, day, subject, room_numb, start_time) VALUES (20, 'вторник 2', 'Физ-ра', 'Дистанционно', '13:10:00');
INSERT INTO public.timetable (id, day, subject, room_numb, start_time) VALUES (6, 'среда 0', 'ТВиМС', 'Дистанционно', '09:30:00');
INSERT INTO public.timetable (id, day, subject, room_numb, start_time) VALUES (7, 'среда 0', 'Введение в ИТ', 'Дистанционно', '11:20:00');
INSERT INTO public.timetable (id, day, subject, room_numb, start_time) VALUES (8, 'среда 0', 'Физ-ра', 'Дистанционно', '13:10:00');
INSERT INTO public.timetable (id, day, subject, room_numb, start_time) VALUES (9, 'среда 0', 'Ин. яз.', 'Дистанционно', '15:25:00');
INSERT INTO public.timetable (id, day, subject, room_numb, start_time) VALUES (10, 'четверг 0', 'Выч. тех.', 'Дистанционно', '11:20:00');
INSERT INTO public.timetable (id, day, subject, room_numb, start_time) VALUES (11, 'четверг 0', 'Электроника', 'Дистанционно', '13:10:00');
INSERT INTO public.timetable (id, day, subject, room_numb, start_time) VALUES (12, 'четверг 0', 'ОКАЭЦ', 'Дистанционно', '15:25:00');
INSERT INTO public.timetable (id, day, subject, room_numb, start_time) VALUES (13, 'четверг 0', 'Введение в ИТ', 'Дистанционно', '17:15:00');
INSERT INTO public.timetable (id, day, subject, room_numb, start_time) VALUES (21, 'пятница 2', 'ТВиМС', 'Дистанционно', '09:30:00');
INSERT INTO public.timetable (id, day, subject, room_numb, start_time) VALUES (22, 'пятница 2', 'История средств связи', 'Дистанционно', '11:20:00');
INSERT INTO public.timetable (id, day, subject, room_numb, start_time) VALUES (23, 'пятница 2', 'История средств связи', 'Дистанционно', '13:10:00');
INSERT INTO public.timetable (id, day, subject, room_numb, start_time) VALUES (24, 'пятница 2', 'Экология', 'Дистанционно', '15:25:00');
INSERT INTO public.timetable (id, day, subject, room_numb, start_time) VALUES (25, 'суббота 0', 'Высш. мат.', 'Дистанционно', '11:20:00');
INSERT INTO public.timetable (id, day, subject, room_numb, start_time) VALUES (26, 'суббота 0', 'Высш. мат.', 'Дистанционно', '13:10:00');



SELECT pg_catalog.setval('public.teacher_id_seq', 18, true);



SELECT pg_catalog.setval('public.timetable_id_seq', 26, true);



ALTER TABLE ONLY public.subject
    ADD CONSTRAINT subject_pkey PRIMARY KEY (name);


ALTER TABLE ONLY public.teacher
    ADD CONSTRAINT teacher_pkey PRIMARY KEY (id);



ALTER TABLE ONLY public.timetable
    ADD CONSTRAINT timetable_pkey PRIMARY KEY (id);


ALTER TABLE ONLY public.teacher
    ADD CONSTRAINT teacher_subject_fkey FOREIGN KEY (subject) REFERENCES public.subject(name);



ALTER TABLE ONLY public.timetable
    ADD CONSTRAINT timetable_subject_fkey FOREIGN KEY (subject) REFERENCES public.subject(name);



