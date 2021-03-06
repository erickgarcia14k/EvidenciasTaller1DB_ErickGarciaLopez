PGDMP     0                	    y           MiCatalogoTienda    13.4    14.0 )    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16394    MiCatalogoTienda    DATABASE     o   CREATE DATABASE "MiCatalogoTienda" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Mexico.1252';
 "   DROP DATABASE "MiCatalogoTienda";
                postgres    false            ?           0    0    DATABASE "MiCatalogoTienda"    COMMENT     0   COMMENT ON DATABASE "MiCatalogoTienda" IS 'cd';
                   postgres    false    3054            ?            1259    16414    cliente    TABLE     ?   CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nombre character varying(30) NOT NULL,
    apellido character varying(30) NOT NULL,
    genero integer NOT NULL,
    email character varying(30) NOT NULL,
    telefono numeric NOT NULL
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            ?            1259    16527    detalle_pedido    TABLE     X   CREATE TABLE public.detalle_pedido (
    id_detalle integer NOT NULL,
    fecha date
);
 "   DROP TABLE public.detalle_pedido;
       public         heap    postgres    false            ?            1259    16472 
   inventario    TABLE     _   CREATE TABLE public.inventario (
    id_inventario integer NOT NULL,
    existencia boolean
);
    DROP TABLE public.inventario;
       public         heap    postgres    false            ?            1259    16502    pedido    TABLE     R   CREATE TABLE public.pedido (
    id_pedido integer NOT NULL,
    total integer
);
    DROP TABLE public.pedido;
       public         heap    postgres    false            ?            1259    16457    precio_proveedor    TABLE     ?   CREATE TABLE public.precio_proveedor (
    id_precio integer NOT NULL,
    precio integer,
    CONSTRAINT positive_price CHECK ((precio > 0))
);
 $   DROP TABLE public.precio_proveedor;
       public         heap    postgres    false            ?            1259    16424    producto    TABLE     n   CREATE TABLE public.producto (
    id_producto integer NOT NULL,
    nombre character varying(30) NOT NULL
);
    DROP TABLE public.producto;
       public         heap    postgres    false            ?            1259    16419 
   repartidor    TABLE     ?   CREATE TABLE public.repartidor (
    id_repartidor integer NOT NULL,
    nombre character varying(30) NOT NULL,
    apellido character varying(30) NOT NULL,
    email character varying(30) NOT NULL,
    telefono numeric NOT NULL
);
    DROP TABLE public.repartidor;
       public         heap    postgres    false            ?            1259    16429    tipo_producto    TABLE     m   CREATE TABLE public.tipo_producto (
    id_tipo integer NOT NULL,
    tipo character varying(30) NOT NULL
);
 !   DROP TABLE public.tipo_producto;
       public         heap    postgres    false            ?            1259    16462    ventas    TABLE     X   CREATE TABLE public.ventas (
    id_tipo_ventas integer NOT NULL,
    precio integer
);
    DROP TABLE public.ventas;
       public         heap    postgres    false            ?           0    0    TABLE ventas    ACL     5   GRANT SELECT ON TABLE public.ventas TO contabilidad;
          public          postgres    false    205            ?          0    16414    cliente 
   TABLE DATA           X   COPY public.cliente (id_cliente, nombre, apellido, genero, email, telefono) FROM stdin;
    public          postgres    false    200   [.       ?          0    16527    detalle_pedido 
   TABLE DATA           ;   COPY public.detalle_pedido (id_detalle, fecha) FROM stdin;
    public          postgres    false    208   ?.       ?          0    16472 
   inventario 
   TABLE DATA           ?   COPY public.inventario (id_inventario, existencia) FROM stdin;
    public          postgres    false    206   ?.       ?          0    16502    pedido 
   TABLE DATA           2   COPY public.pedido (id_pedido, total) FROM stdin;
    public          postgres    false    207   /       ?          0    16457    precio_proveedor 
   TABLE DATA           =   COPY public.precio_proveedor (id_precio, precio) FROM stdin;
    public          postgres    false    204   9/       ?          0    16424    producto 
   TABLE DATA           7   COPY public.producto (id_producto, nombre) FROM stdin;
    public          postgres    false    202   g/       ?          0    16419 
   repartidor 
   TABLE DATA           V   COPY public.repartidor (id_repartidor, nombre, apellido, email, telefono) FROM stdin;
    public          postgres    false    201   ?/       ?          0    16429    tipo_producto 
   TABLE DATA           6   COPY public.tipo_producto (id_tipo, tipo) FROM stdin;
    public          postgres    false    203   80       ?          0    16462    ventas 
   TABLE DATA           8   COPY public.ventas (id_tipo_ventas, precio) FROM stdin;
    public          postgres    false    205   ?0       D           2606    16418    cliente cliente_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    200            V           2606    16531 "   detalle_pedido detalle_pedido_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.detalle_pedido
    ADD CONSTRAINT detalle_pedido_pkey PRIMARY KEY (id_detalle);
 L   ALTER TABLE ONLY public.detalle_pedido DROP CONSTRAINT detalle_pedido_pkey;
       public            postgres    false    208            R           2606    16476    inventario inventario_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT inventario_pkey PRIMARY KEY (id_inventario);
 D   ALTER TABLE ONLY public.inventario DROP CONSTRAINT inventario_pkey;
       public            postgres    false    206            F           2606    16435    cliente order_unique 
   CONSTRAINT     U   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT order_unique UNIQUE (id_cliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT order_unique;
       public            postgres    false    200            T           2606    16506    pedido pedido_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_pkey PRIMARY KEY (id_pedido);
 <   ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_pkey;
       public            postgres    false    207            N           2606    16461 &   precio_proveedor precio_proveedor_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.precio_proveedor
    ADD CONSTRAINT precio_proveedor_pkey PRIMARY KEY (id_precio);
 P   ALTER TABLE ONLY public.precio_proveedor DROP CONSTRAINT precio_proveedor_pkey;
       public            postgres    false    204            J           2606    16428    producto producto_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id_producto);
 @   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_pkey;
       public            postgres    false    202            H           2606    16423    repartidor repartidor_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.repartidor
    ADD CONSTRAINT repartidor_pkey PRIMARY KEY (id_repartidor);
 D   ALTER TABLE ONLY public.repartidor DROP CONSTRAINT repartidor_pkey;
       public            postgres    false    201            L           2606    16433     tipo_producto tipo_producto_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.tipo_producto
    ADD CONSTRAINT tipo_producto_pkey PRIMARY KEY (id_tipo);
 J   ALTER TABLE ONLY public.tipo_producto DROP CONSTRAINT tipo_producto_pkey;
       public            postgres    false    203            P           2606    16466    ventas ventas_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_pkey PRIMARY KEY (id_tipo_ventas);
 <   ALTER TABLE ONLY public.ventas DROP CONSTRAINT ventas_pkey;
       public            postgres    false    205            ]           2606    16532 -   detalle_pedido detalle_pedido_id_detalle_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.detalle_pedido
    ADD CONSTRAINT detalle_pedido_id_detalle_fkey FOREIGN KEY (id_detalle) REFERENCES public.producto(id_producto);
 W   ALTER TABLE ONLY public.detalle_pedido DROP CONSTRAINT detalle_pedido_id_detalle_fkey;
       public          postgres    false    2890    202    208            X           2606    16477 (   inventario inventario_id_inventario_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT inventario_id_inventario_fkey FOREIGN KEY (id_inventario) REFERENCES public.producto(id_producto);
 R   ALTER TABLE ONLY public.inventario DROP CONSTRAINT inventario_id_inventario_fkey;
       public          postgres    false    2890    206    202            Y           2606    16507    pedido pedido_id_pedido_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_id_pedido_fkey FOREIGN KEY (id_pedido) REFERENCES public.cliente(id_cliente);
 F   ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_id_pedido_fkey;
       public          postgres    false    200    2884    207            Z           2606    16512    pedido pedido_id_pedido_fkey1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_id_pedido_fkey1 FOREIGN KEY (id_pedido) REFERENCES public.repartidor(id_repartidor);
 G   ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_id_pedido_fkey1;
       public          postgres    false    207    2888    201            [           2606    16517    pedido pedido_id_pedido_fkey2    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_id_pedido_fkey2 FOREIGN KEY (id_pedido) REFERENCES public.ventas(id_tipo_ventas);
 G   ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_id_pedido_fkey2;
       public          postgres    false    2896    205    207            \           2606    16522    pedido pedido_id_pedido_fkey3    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_id_pedido_fkey3 FOREIGN KEY (id_pedido) REFERENCES public.producto(id_producto);
 G   ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_id_pedido_fkey3;
       public          postgres    false    207    2890    202            W           2606    16467 !   ventas ventas_id_tipo_ventas_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_id_tipo_ventas_fkey FOREIGN KEY (id_tipo_ventas) REFERENCES public.precio_proveedor(id_precio);
 K   ALTER TABLE ONLY public.ventas DROP CONSTRAINT ventas_id_tipo_ventas_fkey;
       public          postgres    false    205    204    2894            ?   n   x?]?=
?0@?9=?Пt? .???Fjq??
??ハa?V%?B֕?P???S!?]???:?;?!Qͺ?v????@?4z???~O??`?]/????-?{:tƘ?42      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?3?46?2???????? ??      ?      x?3?43?2Ɯ?\&?\1z\\\ -Z      ?   4   x?3?,H?I-I?2??IM?H?2??JL???2?,????2??*M??????? 	?      ?   }   x?]?;? ??a,?Y?>H???,,?F???>ġ??i?y???Q????9Ȳ%qZ%?h??:?F?3l????<m?g??U?K????Qv){H?h??e??"??ۺ??ζ?zLJ?/?Y=      ?   >   x?3?LJM?LI?2???L?L?K?2??IL.I?/?2?L)?IN-?2????-?L?J?????? ?+?      ?       x?3?440?2?4?2?4?2??0?????? (?)     