PGDMP         )                {            chemestrywebsena    15.2    15.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24595    chemestrywebsena    DATABASE     �   CREATE DATABASE chemestrywebsena WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
     DROP DATABASE chemestrywebsena;
                postgres    false            �            1259    24611    articles    TABLE     �   CREATE TABLE public.articles (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL
);
    DROP TABLE public.articles;
       public         heap    postgres    false            �            1259    24610    articles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.articles_id_seq;
       public          postgres    false    215            �           0    0    articles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;
          public          postgres    false    214            e           2604    24614    articles id    DEFAULT     j   ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);
 :   ALTER TABLE public.articles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �          0    24611    articles 
   TABLE DATA           6   COPY public.articles (id, title, content) FROM stdin;
    public          postgres    false    215   �
       �           0    0    articles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.articles_id_seq', 4, true);
          public          postgres    false    214            g           2606    24618    articles articles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_pkey;
       public            postgres    false    215            �   |  x��W=�E�oEi	lK���B�$ sR�S����k�k���B���1^�����B�N��t��W�j�=���EH2����GIĩxW�^��$#�8�:ڎ��)�(�*�GQ��� ��΄]	{�v(��{Ͷ���t
�c��I4�e���#nj.ɳ��q��/��__^v�*G@ոȚ��u���~�i��52��BY�u���|���`�FuF������$���؂����d�9��Q�R �6aa�j�P�'�%O� u��Z	���I��{���u�;�)������a��Q?�Z�A]5��PW@%zg`��H�%:�a��o+��O���ȡ��QqҩN��z��2�p4�\v`������^HI��<��W��*=G�8�D�D����|�ш��j�f���.o9�iĵ�Ygu�E�	Fˍ �J�"B?�V^��:���j.�[�=b�5~T�_}y:�\����w?�'�<	��$<�x~�=}���s�?��������t���C�߇`}?�����W٬ډ۵���Y�E�9{�x�Z,1g�/�[�<��H�]#m���m<:�S�����!U�=�������*�T��H��k[&� -�����Ő&$
 ���
L
͝��6~	�>�8��#Y��[�7u~ߝ��>��7���ifN�LI�%2o��8!��$�zzY!z�~��śS��B�ei��,�����x7�O�i���"�52�k3�B����i3���P��cM{�����\C1�ǅjspaВ�X��f��"f�6����e�e��NICХu��˝��k����L`�~���n3x�8lklG�Kv��MGڂ�,1���i� �J�O}�1Kj���]�v�2/���}�'��U�Z��0E�     