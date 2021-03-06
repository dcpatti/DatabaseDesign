PGDMP     4    #    
    
        w           PH    11.2    11.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    17148    PH    DATABASE     �   CREATE DATABASE "PH" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "PH";
             postgres    false            �            1259    17154    departments    TABLE     ~   CREATE TABLE public.departments (
    dept_no character varying(12) NOT NULL,
    dept_name character varying(20) NOT NULL
);
    DROP TABLE public.departments;
       public         postgres    false            �            1259    17173    dept_emp    TABLE     �   CREATE TABLE public.dept_emp (
    dept_no character varying(12) NOT NULL,
    emp_no integer NOT NULL,
    from_date date NOT NULL,
    to_date date
);
    DROP TABLE public.dept_emp;
       public         postgres    false            �            1259    17164    dept_manager    TABLE     �   CREATE TABLE public.dept_manager (
    dept_no character varying(12) NOT NULL,
    emp_no integer NOT NULL,
    from_date date NOT NULL,
    to_date date
);
     DROP TABLE public.dept_manager;
       public         postgres    false            �            1259    17149 	   employees    TABLE       CREATE TABLE public.employees (
    emp_no integer NOT NULL,
    birth_date date NOT NULL,
    first_name character varying(16) NOT NULL,
    last_name character varying(16) NOT NULL,
    gender character varying(6) NOT NULL,
    hire_date date NOT NULL
);
    DROP TABLE public.employees;
       public         postgres    false            �            1259    17167    salaries    TABLE     �   CREATE TABLE public.salaries (
    emp_no integer NOT NULL,
    salary integer NOT NULL,
    from_date date NOT NULL,
    to_date date
);
    DROP TABLE public.salaries;
       public         postgres    false            �            1259    17170    titles    TABLE     �   CREATE TABLE public.titles (
    emp_no integer NOT NULL,
    title character varying(32) NOT NULL,
    from_date date NOT NULL,
    to_date date
);
    DROP TABLE public.titles;
       public         postgres    false            �
           2606    17158    departments departments_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (dept_no);
 F   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
       public         postgres    false    197            �
           2606    17153    employees employees_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (emp_no);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public         postgres    false    196           